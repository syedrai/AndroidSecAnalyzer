#!/usr/bin/env python3
"""
find_secrets.py
- Scans an apktool/jadx decompile folder (output/) for potential secrets and risky constructs
- Produces redacted JSON report + human-readable markdown report in reports/
Usage:
  python3 scripts/find_secrets.py --input output --reports reports
"""
import os
import re
import json
import argparse
import math
from collections import defaultdict

# -----------------------------
# Config
# -----------------------------
DEFAULT_INPUT_DIR = "output"
REPORTS_DIR = "reports"
MIN_ENTROPY = 3.5   # threshold for entropy heuristic (tweakable)
SECRET_PATTERNS = [
    r"(?:api[_-]?key|apiKey|apikey)",
    r"(?:token|bearer)",
    r"(?:password|passwd|pwd)",
    r"(?:secret|client[_-]?secret|aws[_-]?secret|awssecret|access[_-]?key|secret[_-]?key|private[_-]?key)",
    r"(?:auth[_-]?token|jwt)"
]
COMPILED_PAT = re.compile("|".join(SECRET_PATTERNS), re.I)

# -----------------------------
# Helpers
# -----------------------------
def shannon_entropy(data: str) -> float:
    if not data:
        return 0.0
    entropy = 0.0
    for x in set(data):
        p_x = float(data.count(x)) / len(data)
        entropy -= p_x * math.log2(p_x)
    return entropy

def redact_value(match_text: str) -> str:
    # replace long alphanumeric runs with <REDACTED>
    # keep short context intact
    return re.sub(r"[A-Za-z0-9_\-]{6,}", "<REDACTED>", match_text)

def score_finding(match: str, context: str, entropy: float) -> int:
    # simplistic scoring: pattern match + entropy weight + context length
    score = 0
    # COMPILED_PAT is already compiled — do not pass flags here
    if COMPILED_PAT.search(match):
        score += 2
    if entropy and entropy >= MIN_ENTROPY:
        score += 2
    # small context gives less evidence — keep neutral
    if len(context) < 200:
        score += 0
    # clamp to range 1-5
    return min(max(score, 1), 5)

def classify_finding(file_path: str, snippet: str) -> str:
    # quick remediation suggestion based on snippet
    if re.search(r"api[_-]?key|apikey|apiKey", snippet, re.I):
        return "Hardcoded API key. Move to server-side or use Android Keystore / secure vault."
    if re.search(r"aws[_-]?secret|access[_-]?key|secret[_-]?key", snippet, re.I):
        return "AWS credential detected. Rotate keys immediately. Use IAM roles instead of embedding keys."
    if re.search(r"password|passwd|pwd", snippet, re.I):
        return "Hardcoded password. Remove and use secure authentication flows."
    if re.search(r"token|bearer|jwt", snippet, re.I):
        return "Token detected. Ensure tokens are short-lived and not embedded in source."
    return "Potential secret. Review and follow secure storage best practices."

# -----------------------------
# Core scanning
# -----------------------------
def scan_directory(input_dir: str) -> dict:
    findings = []
    files_scanned = 0
    for root, _, files in os.walk(input_dir):
        for fname in files:
            if not fname.lower().endswith(('.smali', '.java', '.xml', '.kt', '.properties', '.gradle')):
                continue
            files_scanned += 1
            path = os.path.join(root, fname)
            try:
                with open(path, 'r', errors='ignore') as fh:
                    text = fh.read()
            except Exception:
                continue

            # Fast-path: if no keyword and no URLs, perform entropy scan for long tokens only
            if not COMPILED_PAT.search(text) and 'http://' not in text and 'https://' not in text:
                # entropy check for random-looking strings (long alnum runs)
                for m in re.finditer(r"[A-Za-z0-9_\-]{20,}", text):
                    seq = m.group(0)
                    ent = shannon_entropy(seq)
                    if ent >= MIN_ENTROPY:
                        context = text[max(0, m.start()-80):m.end()+80].replace('\n',' ')
                        findings.append({
                            "file": path,
                            "match": seq[:200],
                            "context": context[:400],
                            "entropy": ent,
                            "redacted": redact_value(seq),
                            "score": score_finding(seq, context, ent),
                            "remediation": classify_finding(path, seq)
                        })
                continue

            # Otherwise iterate over keyword matches and capture surrounding context
            # Build a pattern that matches up to 80 chars before and 160 after the keyword
            pattern = re.compile(r".{0,80}(" + COMPILED_PAT.pattern + r").{0,160}", re.I)
            for m in pattern.finditer(text):
                snippet = m.group(0)
                # find an alnum sequence inside the snippet if exists
                val_match = re.search(r"([A-Za-z0-9_\-]{6,})", snippet)
                val = val_match.group(0) if val_match else "<N/A>"
                ent = shannon_entropy(val) if val_match else 0.0
                findings.append({
                    "file": path,
                    "match": val[:200],
                    "context": snippet.replace('\n',' ')[:400],
                    "entropy": ent,
                    "redacted": redact_value(val),
                    "score": score_finding(val, snippet, ent),
                    "remediation": classify_finding(path, snippet)
                })

    return {"files_scanned": files_scanned, "findings": findings}

# -----------------------------
# Reporting
# -----------------------------
def save_reports(result: dict, reports_dir: str):
    os.makedirs(reports_dir, exist_ok=True)
    json_path = os.path.join(reports_dir, "report.json")
    md_path = os.path.join(reports_dir, "report.md")

    # sanitize and redact values in JSON before writing
    sanitized = {
        "files_scanned": result.get("files_scanned", 0),
        "findings": []
    }
    for f in result.get("findings", []):
        sanitized["findings"].append({
            "file": f.get("file"),
            "match_redacted": f.get("redacted"),
            "entropy": round(f.get("entropy", 0.0), 2),
            "score": f.get("score"),
            "remediation": f.get("remediation")
        })

    with open(json_path, "w", encoding="utf-8") as jf:
        json.dump(sanitized, jf, indent=2)

    # human readable markdown
    with open(md_path, "w", encoding="utf-8") as md:
        md.write("# AndroidSecAnalyzer Report\n\n")
        md.write(f"- Files scanned: {result.get('files_scanned', 0)}\n")
        md.write(f"- Findings: {len(result.get('findings', []))}\n\n")
        for i, f in enumerate(result.get("findings", []), 1):
            md.write(f"## Finding {i}\n")
            md.write(f"- **File:** `{f.get('file')}`\n")
            md.write(f"- **Redacted value:** `{f.get('redacted')}`\n")
            md.write(f"- **Entropy:** {round(f.get('entropy', 0.0),2)}\n")
            md.write(f"- **Score (1-5):** {f.get('score')}\n")
            md.write(f"- **Remediation:** {f.get('remediation')}\n")
            md.write("\n---\n\n")

    print(f"[+] Reports written: {json_path}, {md_path}")

# -----------------------------
# CLI
# -----------------------------
def parse_args():
    p = argparse.ArgumentParser(description="AndroidSecAnalyzer - find hardcoded secrets in decompiled APK output")
    p.add_argument("--input", "-i", default=DEFAULT_INPUT_DIR, help="Decompile output folder (apktool/jadx)")
    p.add_argument("--reports", "-r", default=REPORTS_DIR, help="Where to write reports")
    return p.parse_args()

def main():
    args = parse_args()
    print(f"[+] Scanning folder: {args.input}")
    res = scan_directory(args.input)
    print(f"[+] Found {len(res.get('findings', []))} potential findings in {res.get('files_scanned',0)} files.")
    save_reports(res, args.reports)

if __name__ == "__main__":
    main()


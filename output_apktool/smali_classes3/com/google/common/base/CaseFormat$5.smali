.class final enum Lcom/google/common/base/CaseFormat$5;
.super Lcom/google/common/base/CaseFormat;
.source "CaseFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/CaseFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 6
    .param p3, "wordBoundary"    # Lcom/google/common/base/CharMatcher;
    .param p4, "wordSeparator"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "wordBoundary",
            "wordSeparator"
        }
    .end annotation

    .line 99
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p3    # "wordBoundary":Lcom/google/common/base/CharMatcher;
    .end local p4    # "wordSeparator":Ljava/lang/String;
    .local v3, "wordBoundary":Lcom/google/common/base/CharMatcher;
    .local v4, "wordSeparator":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lcom/google/common/base/CaseFormat;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CaseFormat-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;Lcom/google/common/base/CaseFormat-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/common/base/CaseFormat$5;-><init>(Ljava/lang/String;ILcom/google/common/base/CharMatcher;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method convert(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Lcom/google/common/base/CaseFormat;
    .param p2, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "s"
        }
    .end annotation

    .line 107
    sget-object v0, Lcom/google/common/base/CaseFormat$5;->LOWER_HYPHEN:Lcom/google/common/base/CaseFormat;

    if-ne p1, v0, :cond_0

    .line 108
    const/16 v0, 0x5f

    const/16 v1, 0x2d

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    sget-object v0, Lcom/google/common/base/CaseFormat$5;->LOWER_UNDERSCORE:Lcom/google/common/base/CaseFormat;

    if-ne p1, v0, :cond_1

    .line 111
    invoke-static {p2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 113
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/common/base/CaseFormat;->convert(Lcom/google/common/base/CaseFormat;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method normalizeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "word"
        }
    .end annotation

    .line 102
    invoke-static {p1}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator;
.super Ljava/lang/Object;
.source "MSOutlookKeyIdCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;,
        Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$GeneralDigest;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateKeyId(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)[B
    .locals 5
    .param p0, "info"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 16
    new-instance v0, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;

    invoke-direct {v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;-><init>()V

    .line 17
    .local v0, "dig":Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->getDigestSize()I

    move-result v1

    new-array v1, v1, [B

    .line 18
    .local v1, "hash":[B
    const/4 v2, 0x0

    new-array v3, v2, [B

    .line 21
    .local v3, "spkiEnc":[B
    :try_start_0
    const-string v4, "DER"

    invoke-virtual {p0, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded(Ljava/lang/String;)[B

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .end local v3    # "spkiEnc":[B
    .local v4, "spkiEnc":[B
    nop

    .line 29
    array-length v3, v4

    invoke-virtual {v0, v4, v2, v3}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->update([BII)V

    .line 31
    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/cert/selector/MSOutlookKeyIdCalculator$SHA1Digest;->doFinal([BI)I

    .line 33
    return-object v1

    .line 23
    .end local v4    # "spkiEnc":[B
    .restart local v3    # "spkiEnc":[B
    :catch_0
    move-exception v4

    .line 25
    .local v4, "e":Ljava/io/IOException;
    new-array v2, v2, [B

    return-object v2
.end method

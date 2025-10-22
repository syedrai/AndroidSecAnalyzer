.class Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;
.super Ljava/lang/Object;
.source "DigestUtil.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 4
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 10
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 12
    .local v0, "hash":[B
    instance-of v1, p0, Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 14
    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/crypto/Xof;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    .line 18
    :cond_0
    invoke-interface {p0, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 21
    :goto_0
    return-object v0
.end method

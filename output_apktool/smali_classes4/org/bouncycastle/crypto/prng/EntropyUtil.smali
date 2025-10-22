.class public Lorg/bouncycastle/crypto/prng/EntropyUtil;
.super Ljava/lang/Object;
.source "EntropyUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateSeed(Lorg/bouncycastle/crypto/prng/EntropySource;I)[B
    .locals 7
    .param p0, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p1, "numBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "entropySource",
            "numBytes"
        }
    .end annotation

    .line 17
    new-array v0, p1, [B

    .line 19
    .local v0, "bytes":[B
    mul-int/lit8 v1, p1, 0x8

    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v2

    const/4 v3, 0x0

    if-gt v1, v2, :cond_0

    .line 21
    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v1

    .line 23
    .local v1, "ent":[B
    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    .end local v1    # "ent":[B
    goto :goto_2

    .line 27
    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    .line 29
    .local v1, "entSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 31
    invoke-interface {p0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v4

    .line 33
    .local v4, "ent":[B
    array-length v5, v4

    array-length v6, v0

    sub-int/2addr v6, v2

    if-gt v5, v6, :cond_1

    .line 35
    array-length v5, v4

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 39
    :cond_1
    array-length v5, v0

    sub-int/2addr v5, v2

    invoke-static {v4, v3, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    .end local v4    # "ent":[B
    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 44
    .end local v1    # "entSize":I
    .end local v2    # "i":I
    :cond_2
    :goto_2
    return-object v0
.end method

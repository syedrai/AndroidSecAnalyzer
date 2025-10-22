.class Lorg/bouncycastle/crypto/prng/drbg/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field static final maxSecurityStrengths:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    .line 15
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const/16 v1, 0x80

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "SHA-1"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const/16 v1, 0xc0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "SHA-224"

    invoke-virtual {v0, v3, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const/16 v2, 0x100

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "SHA-256"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v3, "SHA-384"

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v3, "SHA-512"

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v3, "SHA-512/224"

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v1, "SHA-512/256"

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxSecurityStrength(Lorg/bouncycastle/crypto/Digest;)I
    .locals 2
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 28
    sget-object v0, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static getMaxSecurityStrength(Lorg/bouncycastle/crypto/Mac;)I
    .locals 4
    .param p0, "m"    # Lorg/bouncycastle/crypto/Mac;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .line 33
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    sget-object v1, Lorg/bouncycastle/crypto/prng/drbg/Utils;->maxSecurityStrengths:Ljava/util/Hashtable;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method static hash_df(Lorg/bouncycastle/crypto/Digest;[BI)[B
    .locals 10
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "seedMaterial"    # [B
    .param p2, "seedLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "seedMaterial",
            "seedLength"
        }
    .end annotation

    .line 54
    add-int/lit8 v0, p2, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 56
    .local v0, "temp":[B
    array-length v1, v0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    div-int/2addr v1, v2

    .line 57
    .local v1, "len":I
    const/4 v2, 0x1

    .line 59
    .local v2, "counter":I
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 61
    .local v3, "dig":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-gt v4, v1, :cond_1

    .line 63
    int-to-byte v5, v2

    invoke-interface {p0, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 65
    shr-int/lit8 v5, p2, 0x18

    int-to-byte v5, v5

    invoke-interface {p0, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 66
    shr-int/lit8 v5, p2, 0x10

    int-to-byte v5, v5

    invoke-interface {p0, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 67
    shr-int/lit8 v5, p2, 0x8

    int-to-byte v5, v5

    invoke-interface {p0, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 68
    int-to-byte v5, p2

    invoke-interface {p0, v5}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 70
    array-length v5, p1

    const/4 v6, 0x0

    invoke-interface {p0, p1, v6, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 72
    invoke-interface {p0, v3, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    array-length v5, v0

    array-length v7, v3

    mul-int v7, v7, v4

    sub-int/2addr v5, v7

    array-length v7, v3

    if-le v5, v7, :cond_0

    .line 75
    array-length v5, v3

    goto :goto_1

    .line 76
    :cond_0
    array-length v5, v0

    array-length v7, v3

    mul-int v7, v7, v4

    sub-int/2addr v5, v7

    :goto_1
    nop

    .line 77
    .local v5, "bytesToCopy":I
    array-length v7, v3

    mul-int v7, v7, v4

    invoke-static {v3, v6, v0, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    nop

    .end local v5    # "bytesToCopy":I
    add-int/lit8 v2, v2, 0x1

    .line 61
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_1
    rem-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_2

    .line 85
    rem-int/lit8 v4, p2, 0x8

    rsub-int/lit8 v4, v4, 0x8

    .line 86
    .local v4, "shift":I
    const/4 v5, 0x0

    .line 88
    .local v5, "carry":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v7, v0

    if-eq v6, v7, :cond_2

    .line 90
    aget-byte v7, v0, v6

    and-int/lit16 v7, v7, 0xff

    .line 91
    .local v7, "b":I
    ushr-int v8, v7, v4

    rsub-int/lit8 v9, v4, 0x8

    shl-int v9, v5, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 92
    move v5, v7

    .line 88
    .end local v7    # "b":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 96
    .end local v4    # "shift":I
    .end local v5    # "carry":I
    .end local v6    # "i":I
    :cond_2
    return-object v0
.end method

.method static isTooLarge([BI)Z
    .locals 1
    .param p0, "bytes"    # [B
    .param p1, "maxBytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bytes",
            "maxBytes"
        }
    .end annotation

    .line 101
    if-eqz p0, :cond_0

    array-length v0, p0

    if-le v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

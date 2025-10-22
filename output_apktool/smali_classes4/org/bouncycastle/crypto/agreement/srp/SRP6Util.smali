.class public Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;
.super Ljava/lang/Object;
.source "SRP6Util.java"


# static fields
.field private static ONE:Ljava/math/BigInteger;

.field private static ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    .line 13
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateK(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "g"
        }
    .end annotation

    .line 17
    invoke-static {p0, p1, p1, p2}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateKey(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 5
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "S"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "S"
        }
    .end annotation

    .line 108
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 109
    .local v0, "padLength":I
    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 110
    .local v1, "_S":[B
    array-length v2, v1

    const/4 v3, 0x0

    invoke-interface {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 112
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    .line 113
    .local v2, "output":[B
    invoke-interface {p0, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 114
    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v3
.end method

.method public static calculateM1(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "B"    # Ljava/math/BigInteger;
    .param p4, "S"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "A",
            "B",
            "S"
        }
    .end annotation

    .line 77
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedTriplet(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 78
    .local v0, "M1":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static calculateM2(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "M1"    # Ljava/math/BigInteger;
    .param p4, "S"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "A",
            "M1",
            "S"
        }
    .end annotation

    .line 94
    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedTriplet(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 95
    .local v0, "M2":Ljava/math/BigInteger;
    return-object v0
.end method

.method public static calculateU(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "A"    # Ljava/math/BigInteger;
    .param p3, "B"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "A",
            "B"
        }
    .end annotation

    .line 22
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->hashPaddedPair(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static calculateX(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;[B[B[B)Ljava/math/BigInteger;
    .locals 3
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "salt"    # [B
    .param p3, "identity"    # [B
    .param p4, "password"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "salt",
            "identity",
            "password"
        }
    .end annotation

    .line 27
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 29
    .local v0, "output":[B
    array-length v1, p3

    const/4 v2, 0x0

    invoke-interface {p0, p3, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 30
    const/16 v1, 0x3a

    invoke-interface {p0, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    .line 31
    array-length v1, p4

    invoke-interface {p0, p4, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 32
    invoke-interface {p0, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 34
    array-length v1, p2

    invoke-interface {p0, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 35
    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 36
    invoke-interface {p0, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 38
    new-instance v1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v1
.end method

.method public static generatePrivateValue(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "g",
            "random"
        }
    .end annotation

    .line 43
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x100

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 44
    .local v0, "minBits":I
    sget-object v1, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 45
    .local v1, "min":Ljava/math/BigInteger;
    sget-object v2, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 47
    .local v2, "max":Ljava/math/BigInteger;
    invoke-static {v1, v2, p3}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    return-object v3
.end method

.method private static getPadded(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p0, "n"    # Ljava/math/BigInteger;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "length"
        }
    .end annotation

    .line 153
    invoke-static {p0}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v0

    .line 154
    .local v0, "bs":[B
    array-length v1, v0

    if-ge v1, p1, :cond_0

    .line 156
    new-array v1, p1, [B

    .line 157
    .local v1, "tmp":[B
    array-length v2, v0

    sub-int v2, p1, v2

    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    move-object v0, v1

    .line 160
    .end local v1    # "tmp":[B
    :cond_0
    return-object v0
.end method

.method private static hashPaddedPair(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 6
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "n1"    # Ljava/math/BigInteger;
    .param p3, "n2"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "n1",
            "n2"
        }
    .end annotation

    .line 137
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 139
    .local v0, "padLength":I
    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 140
    .local v1, "n1_bytes":[B
    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 142
    .local v2, "n2_bytes":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {p0, v1, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 143
    array-length v3, v2

    invoke-interface {p0, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 145
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    .line 146
    .local v3, "output":[B
    invoke-interface {p0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 148
    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v4
.end method

.method private static hashPaddedTriplet(Lorg/bouncycastle/crypto/Digest;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "N"    # Ljava/math/BigInteger;
    .param p2, "n1"    # Ljava/math/BigInteger;
    .param p3, "n2"    # Ljava/math/BigInteger;
    .param p4, "n3"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "digest",
            "N",
            "n1",
            "n2",
            "n3"
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 121
    .local v0, "padLength":I
    invoke-static {p2, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 122
    .local v1, "n1_bytes":[B
    invoke-static {p3, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v2

    .line 123
    .local v2, "n2_bytes":[B
    invoke-static {p4, v0}, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->getPadded(Ljava/math/BigInteger;I)[B

    move-result-object v3

    .line 125
    .local v3, "n3_bytes":[B
    array-length v4, v1

    const/4 v5, 0x0

    invoke-interface {p0, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 126
    array-length v4, v2

    invoke-interface {p0, v2, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 127
    array-length v4, v3

    invoke-interface {p0, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 129
    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v4, v4, [B

    .line 130
    .local v4, "output":[B
    invoke-interface {p0, v4, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 132
    new-instance v5, Ljava/math/BigInteger;

    const/4 v6, 0x1

    invoke-direct {v5, v6, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v5
.end method

.method public static validatePublicValue(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p0, "N"    # Ljava/math/BigInteger;
    .param p1, "val"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "N",
            "val"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    .line 53
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 56
    sget-object v0, Lorg/bouncycastle/crypto/agreement/srp/SRP6Util;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    return-object p1

    .line 58
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/CryptoException;

    const-string v1, "Invalid public value: 0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

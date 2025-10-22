.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static volatile IS_64_BITNESS_KNOWN:Z

.field private static volatile IS_64_BIT_JVM:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
    .locals 1
    .param p0, "N"    # I
    .param p1, "numOnes"    # I
    .param p2, "numNegOnes"    # I
    .param p3, "sparse"    # Z
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "numOnes",
            "numNegOnes",
            "sparse",
            "random"
        }
    .end annotation

    .line 72
    if-eqz p3, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public static generateRandomTernary(IIILjava/security/SecureRandom;)[I
    .locals 7
    .param p0, "N"    # I
    .param p1, "numOnes"    # I
    .param p2, "numNegOnes"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "numOnes",
            "numNegOnes",
            "random"
        }
    .end annotation

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 94
    .local v0, "one":Ljava/lang/Integer;
    const/4 v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 95
    .local v1, "minusOne":Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 97
    .local v2, "zero":Ljava/lang/Integer;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v3, "list":Ljava/util/List;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_0

    .line 100
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, p2, :cond_1

    .line 104
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    .end local v4    # "i":I
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, p0, :cond_2

    .line 108
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_2
    invoke-static {v3, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 113
    new-array v4, p0, [I

    .line 114
    .local v4, "arr":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, p0, :cond_3

    .line 116
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 118
    .end local v5    # "i":I
    :cond_3
    return-object v4
.end method

.method public static invert(II)I
    .locals 1
    .param p0, "n"    # I
    .param p1, "modulus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "modulus"
        }
    .end annotation

    .line 26
    rem-int/2addr p0, p1

    .line 27
    if-gez p0, :cond_0

    .line 29
    add-int/2addr p0, p1

    .line 31
    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->calculate(II)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;

    move-result-object v0

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->x:I

    return v0
.end method

.method public static is64BitJVM()Z
    .locals 4

    .line 128
    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    if-nez v0, :cond_2

    .line 130
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "arch":Ljava/lang/String;
    const-string/jumbo v1, "sun.arch.data.model"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "sunModel":Ljava/lang/String;
    const-string v2, "amd64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    const-string/jumbo v2, "x86_64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ppc64"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "64"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    sput-boolean v2, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    .line 133
    sput-boolean v3, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    .line 135
    .end local v0    # "arch":Ljava/lang/String;
    .end local v1    # "sunModel":Ljava/lang/String;
    :cond_2
    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    return v0
.end method

.method public static pow(III)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "modulus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "modulus"
        }
    .end annotation

    .line 39
    const/4 v0, 0x1

    .line 40
    .local v0, "p":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 42
    mul-int v2, v0, p0

    rem-int v0, v2, p2

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public static pow(JIJ)J
    .locals 5
    .param p0, "a"    # J
    .param p2, "b"    # I
    .param p3, "modulus"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "modulus"
        }
    .end annotation

    .line 52
    const-wide/16 v0, 0x1

    .line 53
    .local v0, "p":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_0

    .line 55
    mul-long v3, v0, p0

    rem-long v0, v3, p3

    .line 53
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "i":I
    :cond_0
    return-wide v0
.end method

.method public static readFullLength(Ljava/io/InputStream;I)[B
    .locals 3
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    new-array v0, p1, [B

    .line 152
    .local v0, "arr":[B
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 156
    return-object v0

    .line 154
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Not enough bytes to read."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

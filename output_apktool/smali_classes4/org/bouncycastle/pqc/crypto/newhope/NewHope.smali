.class Lorg/bouncycastle/pqc/crypto/newhope/NewHope;
.super Ljava/lang/Object;
.source "NewHope.java"


# static fields
.field public static final AGREEMENT_SIZE:I = 0x20

.field public static final POLY_SIZE:I = 0x400

.field public static final SENDA_BYTES:I = 0x720

.field public static final SENDB_BYTES:I = 0x800

.field private static final STATISTICAL_TEST:Z = false


# direct methods
.method constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static decodeA([S[B[B)V
    .locals 3
    .param p0, "pk"    # [S
    .param p1, "seed"    # [B
    .param p2, "r"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "seed",
            "r"
        }
    .end annotation

    .line 113
    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    .line 114
    const/4 v0, 0x0

    const/16 v1, 0x20

    const/16 v2, 0x700

    invoke-static {p2, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-void
.end method

.method static decodeB([S[S[B)V
    .locals 5
    .param p0, "b"    # [S
    .param p1, "c"    # [S
    .param p2, "r"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "c",
            "r"
        }
    .end annotation

    .line 119
    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromBytes([S[B)V

    .line 121
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 123
    mul-int/lit8 v1, v0, 0x4

    .line 124
    .local v1, "j":I
    add-int/lit16 v2, v0, 0x700

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    .line 125
    .local v2, "ri":I
    add-int/lit8 v3, v1, 0x0

    and-int/lit8 v4, v2, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 126
    add-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 127
    add-int/lit8 v3, v1, 0x2

    ushr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 128
    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, v2, 0x6

    int-to-short v4, v4

    aput-short v4, p1, v3

    .line 121
    .end local v1    # "j":I
    .end local v2    # "ri":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static encodeA([B[S[B)V
    .locals 3
    .param p0, "r"    # [B
    .param p1, "pk"    # [S
    .param p2, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "pk",
            "seed"
        }
    .end annotation

    .line 134
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    .line 135
    const/16 v0, 0x700

    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-static {p2, v2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    return-void
.end method

.method static encodeB([B[S[S)V
    .locals 5
    .param p0, "r"    # [B
    .param p1, "b"    # [S
    .param p2, "c"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "b",
            "c"
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toBytes([B[S)V

    .line 142
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 144
    mul-int/lit8 v1, v0, 0x4

    .line 145
    .local v1, "j":I
    add-int/lit16 v2, v0, 0x700

    aget-short v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x2

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x3

    aget-short v4, p2, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    .line 142
    .end local v1    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static generateA([S[B)V
    .locals 0
    .param p0, "a"    # [S
    .param p1, "seed"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "seed"
        }
    .end annotation

    .line 151
    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->uniform([S[B)V

    .line 152
    return-void
.end method

.method public static keygen(Ljava/security/SecureRandom;[B[S)V
    .locals 6
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "send"    # [B
    .param p2, "sk"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "rand",
            "send",
            "sk"
        }
    .end annotation

    .line 21
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 22
    .local v1, "seed":[B
    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 24
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    .line 26
    const/16 v2, 0x400

    new-array v3, v2, [S

    .line 27
    .local v3, "a":[S
    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 29
    new-array v0, v0, [B

    .line 30
    .local v0, "noiseSeed":[B
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 32
    const/4 v4, 0x0

    invoke-static {p2, v0, v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 33
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 35
    new-array v4, v2, [S

    .line 36
    .local v4, "e":[S
    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 37
    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 39
    new-array v5, v2, [S

    .line 40
    .local v5, "r":[S
    invoke-static {v3, p2, v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 42
    new-array v2, v2, [S

    .line 43
    .local v2, "pk":[S
    invoke-static {v5, v4, v2}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 45
    invoke-static {p1, v2, v1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->encodeA([B[S[B)V

    .line 46
    return-void
.end method

.method static sha3([B)V
    .locals 3
    .param p0, "sharedKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedKey"
        }
    .end annotation

    .line 156
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    .line 157
    .local v0, "d":Lorg/bouncycastle/crypto/digests/SHA3Digest;
    const/16 v1, 0x20

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 158
    invoke-virtual {v0, p0, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 159
    return-void
.end method

.method public static sharedA([B[S[B)V
    .locals 3
    .param p0, "sharedKey"    # [B
    .param p1, "sk"    # [S
    .param p2, "received"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sharedKey",
            "sk",
            "received"
        }
    .end annotation

    .line 95
    const/16 v0, 0x400

    new-array v1, v0, [S

    .line 96
    .local v1, "bp":[S
    new-array v2, v0, [S

    .line 97
    .local v2, "c":[S
    invoke-static {v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->decodeB([S[S[B)V

    .line 99
    new-array v0, v0, [S

    .line 100
    .local v0, "v":[S
    invoke-static {p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 101
    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 103
    invoke-static {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 107
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    .line 109
    return-void
.end method

.method public static sharedB(Ljava/security/SecureRandom;[B[B[B)V
    .locals 11
    .param p0, "rand"    # Ljava/security/SecureRandom;
    .param p1, "sharedKey"    # [B
    .param p2, "send"    # [B
    .param p3, "received"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rand",
            "sharedKey",
            "send",
            "received"
        }
    .end annotation

    .line 50
    const/16 v0, 0x400

    new-array v1, v0, [S

    .line 51
    .local v1, "pkA":[S
    const/16 v2, 0x20

    new-array v3, v2, [B

    .line 52
    .local v3, "seed":[B
    invoke-static {v1, v3, p3}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->decodeA([S[B[B)V

    .line 54
    new-array v4, v0, [S

    .line 55
    .local v4, "a":[S
    invoke-static {v4, v3}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->generateA([S[B)V

    .line 57
    new-array v2, v2, [B

    .line 58
    .local v2, "noiseSeed":[B
    invoke-virtual {p0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 60
    new-array v5, v0, [S

    .line 61
    .local v5, "sp":[S
    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 62
    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 64
    new-array v6, v0, [S

    .line 65
    .local v6, "ep":[S
    const/4 v7, 0x1

    invoke-static {v6, v2, v7}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 66
    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->toNTT([S)V

    .line 68
    new-array v7, v0, [S

    .line 69
    .local v7, "bp":[S
    invoke-static {v4, v5, v7}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 70
    invoke-static {v7, v6, v7}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 72
    new-array v8, v0, [S

    .line 73
    .local v8, "v":[S
    invoke-static {v1, v5, v8}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->pointWise([S[S[S)V

    .line 74
    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->fromNTT([S)V

    .line 76
    new-array v9, v0, [S

    .line 77
    .local v9, "epp":[S
    const/4 v10, 0x2

    invoke-static {v9, v2, v10}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->getNoise([S[BB)V

    .line 78
    invoke-static {v8, v9, v8}, Lorg/bouncycastle/pqc/crypto/newhope/Poly;->add([S[S[S)V

    .line 80
    new-array v0, v0, [S

    .line 81
    .local v0, "c":[S
    const/4 v10, 0x3

    invoke-static {v0, v8, v2, v10}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->helpRec([S[S[BB)V

    .line 83
    invoke-static {p2, v7, v0}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->encodeB([B[S[S)V

    .line 85
    invoke-static {p1, v8, v0}, Lorg/bouncycastle/pqc/crypto/newhope/ErrorCorrection;->rec([B[S[S)V

    .line 89
    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/newhope/NewHope;->sha3([B)V

    .line 91
    return-void
.end method

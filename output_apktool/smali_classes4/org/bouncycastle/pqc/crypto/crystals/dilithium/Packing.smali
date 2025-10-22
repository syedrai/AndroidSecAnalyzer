.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;
.super Ljava/lang/Object;
.source "Packing.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .locals 6
    .param p0, "t1"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t1",
            "engine"
        }
    .end annotation

    .line 10
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoPublicKeyBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    new-array v0, v0, [B

    .line 12
    .local v0, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Pack()[B

    move-result-object v2

    mul-int/lit16 v3, v1, 0x140

    const/4 v4, 0x0

    const/16 v5, 0x140

    invoke-static {v2, v4, v0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method static packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B
    .locals 6
    .param p0, "rho"    # [B
    .param p1, "tr"    # [B
    .param p2, "key"    # [B
    .param p3, "t0"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p4, "s1"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .param p5, "s2"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p6, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rho",
            "tr",
            "key",
            "t0",
            "s1",
            "s2",
            "engine"
        }
    .end annotation

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [[B

    .line 34
    .local v0, "out":[[B
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 35
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 36
    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 38
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v2

    mul-int v1, v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 41
    invoke-virtual {p4, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v5

    mul-int v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v2

    mul-int v1, v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 45
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 47
    invoke-virtual {p5, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v5

    mul-int v5, v5, v1

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 50
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    mul-int/lit16 v1, v1, 0x1a0

    new-array v1, v1, [B

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 51
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 53
    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    aget-object v4, v0, v2

    mul-int/lit16 v5, v1, 0x1a0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Pack([BI)[B

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 55
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method static packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .locals 7
    .param p0, "c"    # [B
    .param p1, "z"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .param p2, "h"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p3, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "z",
            "h",
            "engine"
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    .line 87
    .local v0, "end":I
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoBytes()I

    move-result v1

    new-array v1, v1, [B

    .line 89
    .local v1, "outBytes":[B
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v2

    add-int/2addr v0, v2

    .line 92
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 94
    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zPack()[B

    move-result-object v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    mul-int v5, v5, v2

    add-int/2addr v5, v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v6

    invoke-static {v4, v3, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    mul-int v4, v4, v5

    add-int/2addr v0, v4

    .line 98
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v4

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    .line 100
    add-int v4, v0, v2

    aput-byte v3, v1, v4

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 103
    :cond_1
    const/4 v3, 0x0

    .line 104
    .local v3, "k":I
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v4

    if-ge v2, v4, :cond_4

    .line 106
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    const/16 v5, 0x100

    if-ge v4, v5, :cond_3

    .line 108
    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v5

    invoke-virtual {v5, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "k":I
    .local v5, "k":I
    add-int/2addr v3, v0

    int-to-byte v6, v4

    aput-byte v6, v1, v3

    move v3, v5

    .line 106
    .end local v5    # "k":I
    .restart local v3    # "k":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 113
    :cond_3
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v5

    add-int/2addr v5, v0

    add-int/2addr v5, v2

    int-to-byte v6, v3

    aput-byte v6, v1, v5

    .line 104
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 116
    .end local v4    # "j":I
    :cond_4
    return-object v1
.end method

.method static unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .locals 4
    .param p0, "t1"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p1, "publicKey"    # [B
    .param p2, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "t1",
            "publicKey",
            "engine"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 25
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x140

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v3, v3, 0x140

    add-int/lit8 v3, v3, 0x20

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Unpack([B)V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-object p0
.end method

.method static unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .locals 3
    .param p0, "t0"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p1, "s1"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .param p2, "s2"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p3, "t0Enc"    # [B
    .param p4, "s1Enc"    # [B
    .param p5, "s2Enc"    # [B
    .param p6, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "t0",
            "s1",
            "s2",
            "t0Enc",
            "s1Enc",
            "s2Enc",
            "engine"
        }
    .end annotation

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 70
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v2

    mul-int v2, v2, v0

    invoke-virtual {v1, p4, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 75
    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v2

    mul-int v2, v2, v0

    invoke-virtual {v1, p5, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    .line 73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 78
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 80
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x1a0

    invoke-virtual {v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Unpack([BI)V

    .line 78
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method static unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z
    .locals 8
    .param p0, "z"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;
    .param p1, "h"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .param p2, "sig"    # [B
    .param p3, "engine"    # Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "z",
            "h",
            "sig",
            "engine"
        }
    .end annotation

    .line 124
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v0

    .line 125
    .local v0, "end":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 127
    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v3

    mul-int v3, v3, v1

    add-int/2addr v3, v0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    mul-int v4, v4, v5

    add-int/2addr v4, v0

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zUnpack([B)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v3

    mul-int v2, v2, v3

    add-int/2addr v0, v2

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "k":I
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v1, v3, :cond_6

    .line 134
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    const/16 v6, 0x100

    if-ge v3, v6, :cond_1

    .line 136
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 134
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 139
    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    add-int/2addr v6, v0

    add-int/2addr v6, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    if-lt v6, v2, :cond_5

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    add-int/2addr v6, v0

    add-int/2addr v6, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v7

    if-le v6, v7, :cond_2

    goto :goto_4

    .line 144
    :cond_2
    move v3, v2

    :goto_3
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    add-int/2addr v6, v0

    add-int/2addr v6, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    if-ge v3, v6, :cond_4

    .line 146
    if-le v3, v2, :cond_3

    add-int v6, v0, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int v7, v0, v3

    sub-int/2addr v7, v5

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    if-gt v6, v7, :cond_3

    .line 148
    return v4

    .line 150
    :cond_3
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v6

    add-int v7, v0, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 153
    :cond_4
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    aget-byte v2, p2, v4

    .line 132
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 141
    :cond_5
    :goto_4
    return v4

    .line 155
    .end local v3    # "j":I
    :cond_6
    move v3, v2

    .restart local v3    # "j":I
    :goto_5
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    if-ge v3, v6, :cond_8

    .line 157
    add-int v6, v0, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    if-eqz v6, :cond_7

    .line 159
    return v4

    .line 155
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 162
    :cond_8
    return v5
.end method

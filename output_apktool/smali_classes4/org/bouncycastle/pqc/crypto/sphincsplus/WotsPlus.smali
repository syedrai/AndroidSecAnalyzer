.class Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;
.super Ljava/lang/Object;
.source "WotsPlus.java"


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field private final w:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 1
    .param p1, "engine"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_W:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    .line 15
    return-void
.end method


# virtual methods
.method base_w([BII[III)V
    .locals 6
    .param p1, "X"    # [B
    .param p2, "XOff"    # I
    .param p3, "w"    # I
    .param p4, "output"    # [I
    .param p5, "outOff"    # I
    .param p6, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "XOff",
            "w",
            "output",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .line 116
    .local v0, "total":I
    const/4 v1, 0x0

    .line 118
    .local v1, "bits":I
    const/4 v2, 0x0

    .local v2, "consumed":I
    :goto_0
    if-ge v2, p6, :cond_1

    .line 120
    if-nez v1, :cond_0

    .line 122
    add-int/lit8 v3, p2, 0x1

    .end local p2    # "XOff":I
    .local v3, "XOff":I
    aget-byte p2, p1, p2

    .line 123
    .end local v0    # "total":I
    .local p2, "total":I
    add-int/lit8 v1, v1, 0x8

    move v0, p2

    move p2, v3

    .line 125
    .end local v3    # "XOff":I
    .restart local v0    # "total":I
    .local p2, "XOff":I
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    sub-int/2addr v1, v3

    .line 126
    add-int/lit8 v3, p5, 0x1

    .end local p5    # "outOff":I
    .local v3, "outOff":I
    ushr-int v4, v0, v1

    add-int/lit8 v5, p3, -0x1

    and-int/2addr v4, v5

    aput v4, p4, p5

    .line 118
    add-int/lit8 v2, v2, 0x1

    move p5, v3

    goto :goto_0

    .line 128
    .end local v2    # "consumed":I
    .end local v3    # "outOff":I
    .restart local p5    # "outOff":I
    :cond_1
    return-void
.end method

.method chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 3
    .param p1, "X"    # [B
    .param p2, "i"    # I
    .param p3, "s"    # I
    .param p4, "pkSeed"    # [B
    .param p5, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "i",
            "s",
            "pkSeed",
            "adrs"
        }
    .end annotation

    .line 49
    if-nez p3, :cond_0

    .line 51
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    add-int v0, p2, p3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 55
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_1
    move-object v0, p1

    .line 58
    .local v0, "result":[B
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 60
    add-int v2, p2, v1

    invoke-virtual {p5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    .line 61
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v2, p4, p5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "j":I
    :cond_2
    return-object v0
.end method

.method public pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 16
    .param p1, "sig"    # [B
    .param p2, "M"    # [B
    .param p3, "pkSeed"    # [B
    .param p4, "adrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "M",
            "pkSeed",
            "adrs"
        }
    .end annotation

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v7, p4

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v1, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    move-object v8, v1

    .line 134
    .local v8, "wotspkADRS":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v4, v1, [I

    .line 137
    .local v4, "msg":[I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    .line 140
    const/4 v1, 0x0

    .line 141
    .local v1, "csum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    const/4 v9, 0x1

    if-ge v2, v3, :cond_0

    .line 143
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    sub-int/2addr v3, v9

    aget v5, v4, v2

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 141
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "i":I
    :cond_0
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int v2, v2, v3

    rem-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x8

    shl-int v10, v1, v2

    .line 148
    .end local v1    # "csum":I
    .local v10, "csum":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v11, v1, 0x8

    .line 149
    .local v11, "len_2_bytes":I
    invoke-static {v10}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    .line 150
    .local v1, "csum_bytes":[B
    rsub-int/lit8 v2, v11, 0x4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    .line 152
    move-object v12, v1

    move-object v6, v4

    .end local v1    # "csum_bytes":[B
    .end local v4    # "msg":[I
    .local v6, "msg":[I
    .local v12, "csum_bytes":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v1, v1, [B

    .line 153
    .local v1, "sigI":[B
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v13, v2, [[B

    .line 154
    .local v13, "tmp":[[B
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    if-ge v14, v2, :cond_1

    .line 156
    invoke-virtual {v7, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    .line 157
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    mul-int v2, v2, v14

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    const/4 v4, 0x0

    move-object/from16 v15, p1

    invoke-static {v15, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    aget v2, v6, v14

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    sub-int/2addr v3, v9

    aget v4, v6, v14

    sub-int/2addr v3, v4

    move-object/from16 v4, p3

    move-object v5, v7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v13, v14

    .line 154
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, p4

    goto :goto_1

    :cond_1
    move-object/from16 v15, p1

    .line 161
    .end local v14    # "i":I
    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 162
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 164
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v13}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v3

    move-object/from16 v4, p3

    invoke-virtual {v2, v4, v8, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v2

    return-object v2
.end method

.method pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 11
    .param p1, "skSeed"    # [B
    .param p2, "pkSeed"    # [B
    .param p3, "paramAdrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "skSeed",
            "pkSeed",
            "paramAdrs"
        }
    .end annotation

    .line 19
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    .line 21
    .local v0, "wotspkADRS":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v1, v1, [[B

    .line 22
    .local v1, "tmp":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_0

    .line 24
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v3, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    move-object v10, v3

    .line 25
    .local v10, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    const/4 v3, 0x5

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 26
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v3

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 27
    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    .line 28
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    .line 30
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v5, p2, p1, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v6

    .line 32
    .local v6, "sk":[B
    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 33
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v5

    invoke-virtual {v10, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 34
    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    .line 35
    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    .line 36
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v8, v3, -0x1

    const/4 v7, 0x0

    move-object v5, p0

    move-object v9, p2

    .end local p2    # "pkSeed":[B
    .local v9, "pkSeed":[B
    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object p2

    aput-object p2, v1, v2

    .line 22
    .end local v6    # "sk":[B
    .end local v10    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    add-int/lit8 v2, v2, 0x1

    move-object p2, v9

    goto :goto_0

    .end local v9    # "pkSeed":[B
    .restart local p2    # "pkSeed":[B
    :cond_0
    move-object v5, p0

    move-object v9, p2

    .line 39
    .end local v2    # "i":I
    .end local p2    # "pkSeed":[B
    .restart local v9    # "pkSeed":[B
    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 40
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 42
    iget-object p2, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v2

    invoke-virtual {p2, v9, v0, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p2

    return-object p2
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 15
    .param p1, "M"    # [B
    .param p2, "skSeed"    # [B
    .param p3, "pkSeed"    # [B
    .param p4, "paramAdrs"    # Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "M",
            "skSeed",
            "pkSeed",
            "paramAdrs"
        }
    .end annotation

    .line 70
    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    move-object/from16 v7, p4

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    move-object v8, v5

    .line 72
    .local v8, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v4, v1, [I

    .line 75
    .local v4, "msg":[I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "csum":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    if-ge v2, v3, :cond_0

    .line 81
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v3, v3, -0x1

    aget v5, v4, v2

    sub-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int v2, v2, v3

    rem-int/lit8 v2, v2, 0x8

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    move v9, v1

    goto :goto_1

    .line 85
    :cond_1
    move v9, v1

    .line 89
    .end local v1    # "csum":I
    .local v9, "csum":I
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v10, v1, 0x8

    .line 90
    .local v10, "len_2_bytes":I
    invoke-static {v9}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    .line 91
    .local v1, "csum_bytes":[B
    rsub-int/lit8 v2, v10, 0x4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    .line 93
    move-object v11, v1

    move-object v6, v4

    .end local v1    # "csum_bytes":[B
    .end local v4    # "msg":[I
    .local v6, "msg":[I
    .local v11, "csum_bytes":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v12, v1, [[B

    .line 94
    .local v12, "sig":[[B
    const/4 v1, 0x0

    move v13, v1

    .local v13, "i":I
    :goto_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    if-ge v13, v1, :cond_2

    .line 96
    const/4 v1, 0x5

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 97
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v1

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 98
    invoke-virtual {v8, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    .line 99
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    .line 100
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-object/from16 v14, p2

    move-object/from16 v4, p3

    invoke-virtual {v2, v4, v14, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    .line 101
    .local v2, "sk":[B
    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    .line 102
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    .line 103
    invoke-virtual {v8, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    .line 104
    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    .line 105
    move-object v1, v2

    .end local v2    # "sk":[B
    .local v1, "sk":[B
    const/4 v2, 0x0

    aget v3, v6, v13

    move-object v0, p0

    move-object v5, v8

    .end local v8    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .local v5, "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v12, v13

    .line 94
    .end local v1    # "sk":[B
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 107
    .end local v5    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    .end local v13    # "i":I
    .restart local v8    # "adrs":Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;
    :cond_2
    invoke-static {v12}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

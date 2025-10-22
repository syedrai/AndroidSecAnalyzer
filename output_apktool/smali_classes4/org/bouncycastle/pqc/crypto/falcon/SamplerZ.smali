.class Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;
.super Ljava/lang/Object;
.source "SamplerZ.java"


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    .line 11
    return-void
.end method


# virtual methods
.method BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 9
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;
    .param p2, "x"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "ccs"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "x",
            "ccs"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_trunc(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v0

    long-to-int v1, v0

    .line 96
    .local v1, "s":I
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v4, v1

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    .line 107
    .local v0, "r":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    move v2, v1

    .line 108
    .local v2, "sw":I
    xor-int/lit8 v3, v2, 0x3f

    rsub-int/lit8 v4, v2, 0x3f

    ushr-int/lit8 v4, v4, 0x1f

    neg-int v4, v4

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 109
    move v1, v2

    .line 122
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_expm_p63(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    const/4 v5, 0x1

    shl-long/2addr v3, v5

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    ushr-long/2addr v3, v1

    .line 130
    .local v3, "z":J
    const/16 v5, 0x40

    .line 133
    .local v5, "i":I
    :cond_0
    add-int/lit8 v5, v5, -0x8

    .line 134
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    ushr-long v7, v3, v5

    long-to-int v8, v7

    and-int/lit16 v7, v8, 0xff

    sub-int/2addr v6, v7

    .line 136
    .local v6, "w":I
    if-nez v6, :cond_1

    if-gtz v5, :cond_0

    .line 137
    :cond_1
    ushr-int/lit8 v7, v6, 0x1f

    return v7
.end method

.method gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I
    .locals 14
    .param p1, "p"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 25
    const/16 v0, 0x36

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 54
    .local v0, "dist":[I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u64()J

    move-result-wide v1

    .line 55
    .local v1, "lo":J
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 56
    .local v3, "hi":I
    long-to-int v4, v1

    const v5, 0xffffff

    and-int/2addr v4, v5

    .line 57
    .local v4, "v0":I
    const/16 v6, 0x18

    ushr-long v6, v1, v6

    long-to-int v7, v6

    and-int/2addr v5, v7

    .line 58
    .local v5, "v1":I
    const/16 v6, 0x30

    ushr-long v6, v1, v6

    long-to-int v7, v6

    shl-int/lit8 v6, v3, 0x10

    or-int/2addr v6, v7

    .line 64
    .local v6, "v2":I
    const/4 v7, 0x0

    .line 65
    .local v7, "z":I
    const/4 v8, 0x0

    .local v8, "u":I
    :goto_0
    array-length v9, v0

    if-ge v8, v9, :cond_0

    .line 69
    add-int/lit8 v9, v8, 0x2

    aget v9, v0, v9

    .line 70
    .local v9, "w0":I
    add-int/lit8 v10, v8, 0x1

    aget v10, v0, v10

    .line 71
    .local v10, "w1":I
    add-int/lit8 v11, v8, 0x0

    aget v11, v0, v11

    .line 72
    .local v11, "w2":I
    sub-int v12, v4, v9

    ushr-int/lit8 v12, v12, 0x1f

    .line 73
    .local v12, "cc":I
    sub-int v13, v5, v10

    sub-int/2addr v13, v12

    ushr-int/lit8 v12, v13, 0x1f

    .line 74
    sub-int v13, v6, v11

    sub-int/2addr v13, v12

    ushr-int/lit8 v12, v13, 0x1f

    .line 75
    add-int/2addr v7, v12

    .line 65
    .end local v9    # "w0":I
    .end local v10    # "w1":I
    .end local v11    # "w2":I
    .end local v12    # "cc":I
    add-int/lit8 v8, v8, 0x3

    goto :goto_0

    .line 77
    :cond_0
    return v7

    :array_0
    .array-data 4
        0xa3f7f4
        0x2ed3ac
        0x391802
        0x54d32b
        0x181f3f
        0x7ddb82
        0x227dcd
        0xd09348
        0x29c1ff
        0xad175
        0x4377c7
        0x994ae4
        0x29584
        0x6caef3
        0x3f1f6f
        0x774a
        0xc754ed
        0x74bd5f
        0x1024
        0xdd542b
        0x776ae4
        0x1a1
        0xffdc65
        0xad63da
        0x1f
        0x80d88a
        0x7b6428
        0x1
        0xc3fdb2
        0x40c69
        0x0
        0x12cf24
        0xd031fb
        0x0
        0x949f
        0x8b091f
        0x0
        0x366
        0x5da998
        0x0
        0xe
        0xbf6ebb
        0x0
        0x0
        0x2f5d7e
        0x0
        0x0
        0x7098
        0x0
        0x0
        0xc6
        0x0
        0x0
        0x1
    .end array-data
.end method

.method sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 1
    .param p1, "ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p2, "mu"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "iSigma"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "mu",
            "iSigma"
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v0

    return v0
.end method

.method sampler(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I
    .locals 14
    .param p1, "ctx"    # Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    .param p2, "mu"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .param p3, "isigma"    # Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ctx",
            "mu",
            "isigma"
        }
    .end annotation

    .line 154
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object v2, p1

    .line 160
    .local v2, "spc":Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_floor(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v3

    long-to-int v4, v3

    .line 161
    .local v4, "s":I
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    .line 166
    .local v3, "r":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    .line 171
    .local v5, "dss":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v6, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    .line 192
    .local v6, "ccs":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    :goto_0
    iget-object v7, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->gaussian0_sampler(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;)I

    move-result v7

    .line 193
    .local v7, "z0":I
    iget-object v8, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_get_u8()B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v8, v8, 0x1

    .line 194
    .local v8, "b":I
    shl-int/lit8 v9, v8, 0x1

    add-int/lit8 v9, v9, -0x1

    mul-int v9, v9, v7

    add-int/2addr v9, v8

    .line 221
    .local v9, "z":I
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    int-to-long v0, v9

    invoke-virtual {v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    invoke-virtual {v12, v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    invoke-virtual {v10, v0, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    .line 222
    .local v0, "x":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    mul-int v12, v7, v7

    int-to-long v12, v12

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    invoke-virtual {v1, v0, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    .line 223
    iget-object v1, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {p0, v1, v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->BerExp(Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    add-int v1, v4, v9

    return v1

    .line 231
    .end local v0    # "x":Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .end local v7    # "z0":I
    .end local v8    # "b":I
    .end local v9    # "z":I
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    goto :goto_0
.end method

.class Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;
.super Ljava/lang/Object;
.source "FalconNIST.java"


# instance fields
.field CRYPTO_BYTES:I

.field private CRYPTO_PUBLICKEYBYTES:I

.field private CRYPTO_SECRETKEYBYTES:I

.field LOGN:I

.field private N:I

.field NONCELEN:I

.field private codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(IILjava/security/SecureRandom;)V
    .locals 5
    .param p1, "logn"    # I
    .param p2, "noncelen"    # I
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logn",
            "noncelen",
            "random"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    .line 24
    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    .line 25
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    .line 26
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    .line 27
    const/4 v0, 0x1

    shl-int v1, v0, p1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    .line 28
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v1, v1, 0xe

    const/16 v2, 0x8

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    .line 29
    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 31
    const/16 v0, 0x901

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    .line 32
    const/16 v0, 0x532

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_2

    .line 34
    :cond_0
    const/16 v1, 0x9

    const/4 v3, 0x6

    const/16 v4, 0x2b2

    if-eq p1, v1, :cond_4

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 39
    :cond_1
    const/4 v1, 0x7

    if-eq p1, v1, :cond_3

    if-ne p1, v3, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    .line 47
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_2

    .line 41
    :cond_3
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v3, v3, 0x7

    mul-int/lit8 v3, v3, 0x2

    div-int/2addr v3, v2

    add-int/2addr v3, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v3, v0

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    .line 42
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_2

    .line 36
    :cond_4
    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v1, v1, 0x6

    mul-int/lit8 v1, v1, 0x2

    div-int/2addr v1, v2

    add-int/2addr v1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    .line 37
    iput v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    .line 49
    :goto_2
    return-void
.end method


# virtual methods
.method crypto_sign(Z[B[BII[BI)[B
    .locals 27
    .param p1, "attached"    # Z
    .param p2, "srcsm"    # [B
    .param p3, "srcm"    # [B
    .param p4, "m"    # I
    .param p5, "mlen"    # I
    .param p6, "srcsk"    # [B
    .param p7, "sk"    # I
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
            "attached",
            "srcsm",
            "srcm",
            "m",
            "mlen",
            "srcsk",
            "sk"
        }
    .end annotation

    .line 135
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v4, v2, [B

    .line 136
    .local v4, "f":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v2, v2, [B

    .line 137
    .local v2, "g":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v13, v3, [B

    .line 138
    .local v13, "F":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v14, v3, [B

    .line 140
    .local v14, "G":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v15, v3, [S

    .line 141
    .local v15, "sig":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v11, v3, [S

    .line 143
    .local v11, "hm":[S
    const/16 v12, 0x30

    new-array v3, v12, [B

    .line 144
    .local v3, "seed":[B
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v5, v5, [B

    .line 147
    .local v5, "nonce":[B
    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    .line 149
    .local v6, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;-><init>()V

    move-object/from16 v16, v7

    .line 150
    .local v16, "sign":Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    move-object/from16 v17, v7

    .line 151
    .local v17, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    .line 160
    .local v7, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    const/16 v18, 0x0

    .line 161
    .local v18, "u":I
    move-object v8, v3

    .end local v3    # "seed":[B
    .local v8, "seed":[B
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    move-object v9, v6

    .end local v6    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v9, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v10, v10, v12

    move-object v12, v9

    .end local v9    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v12, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    add-int v9, p7, v18

    move-object/from16 v20, v2

    .end local v2    # "g":[B
    .local v20, "g":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v2, v2, v18

    move-object/from16 v21, v5

    .end local v5    # "nonce":[B
    .local v21, "nonce":[B
    const/4 v5, 0x0

    move-object/from16 v22, v7

    move v7, v10

    move v10, v2

    move-object v2, v8

    move-object/from16 v8, p6

    .end local v7    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v8    # "seed":[B
    .local v2, "seed":[B
    .local v22, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v3

    .line 163
    .local v3, "v":I
    if-eqz v3, :cond_7

    .line 167
    add-int v18, v18, v3

    .line 168
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v9, v6, v7

    move-object v6, v11

    .end local v11    # "hm":[S
    .local v6, "hm":[S
    add-int v11, p7, v18

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v7, v7, v18

    move-object v10, v12

    move v12, v7

    .end local v12    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v10, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    const/4 v7, 0x0

    move-object/from16 v23, v6

    move-object/from16 v19, v10

    move-object/from16 v6, v20

    move-object/from16 v24, v21

    const/16 v20, 0x30

    move-object/from16 v10, p6

    .end local v10    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v20    # "g":[B
    .end local v21    # "nonce":[B
    .local v6, "g":[B
    .local v19, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v23, "hm":[S
    .local v24, "nonce":[B
    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v3

    .line 170
    move-object/from16 v21, v6

    .end local v6    # "g":[B
    .local v21, "g":[B
    if-eqz v3, :cond_6

    .line 174
    add-int v18, v18, v3

    .line 175
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v9, v6, v7

    add-int v11, p7, v18

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v12, v6, v18

    const/4 v7, 0x0

    move-object/from16 v10, p6

    move-object v6, v13

    .end local v13    # "F":[B
    .local v6, "F":[B
    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v25

    .line 177
    move-object v10, v6

    .end local v3    # "v":I
    .end local v6    # "F":[B
    .local v10, "F":[B
    .local v25, "v":I
    if-eqz v25, :cond_5

    .line 181
    add-int v3, v18, v25

    .line 182
    .end local v18    # "u":I
    .local v3, "u":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v3, v5, :cond_4

    .line 187
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v5, v5, 0x2

    new-array v13, v5, [S

    move-object v7, v4

    move-object v4, v14

    .end local v14    # "G":[B
    .local v4, "G":[B
    .local v7, "f":[B
    const/4 v14, 0x0

    const/4 v5, 0x0

    move-object v6, v7

    const/4 v8, 0x1

    .end local v7    # "f":[B
    .local v6, "f":[B
    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v8, v21

    const/4 v1, 0x1

    move/from16 v21, v3

    move-object/from16 v3, v17

    .end local v17    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v3, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v8, "g":[B
    .local v21, "u":I
    invoke-virtual/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->complete_private([BI[BI[BI[BII[SI)Z

    move-result v5

    move-object/from16 v26, v3

    move-object v13, v4

    move-object v4, v6

    .end local v3    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .end local v6    # "f":[B
    .local v4, "f":[B
    .local v13, "G":[B
    .local v26, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    if-eqz v5, :cond_3

    .line 196
    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    move-object/from16 v5, v24

    .end local v24    # "nonce":[B
    .restart local v5    # "nonce":[B
    invoke-virtual {v3, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 205
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    .line 206
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 v6, 0x0

    move-object/from16 v12, v19

    .end local v19    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v12    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    invoke-virtual {v12, v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 207
    move-object/from16 v3, p3

    move/from16 v7, p4

    move/from16 v9, p5

    invoke-virtual {v12, v3, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 208
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    .line 210
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v1, v22

    move-object/from16 v14, v23

    const/16 v22, 0x1

    .end local v22    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v23    # "hm":[S
    .local v1, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v14, "hm":[S
    invoke-virtual {v1, v12, v14, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    .line 217
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v11, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 221
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    .line 222
    array-length v11, v2

    invoke-virtual {v12, v2, v6, v11}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 223
    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    .line 231
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v6, v6, 0xa

    new-array v6, v6, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v19, 0x0

    .end local v5    # "nonce":[B
    .restart local v24    # "nonce":[B
    const/4 v5, 0x0

    move-object v9, v8

    .end local v8    # "g":[B
    .local v9, "g":[B
    const/4 v8, 0x0

    move/from16 v17, v11

    const/16 v18, 0x0

    move-object v11, v10

    .end local v10    # "F":[B
    .local v11, "F":[B
    const/4 v10, 0x0

    move-object/from16 v18, v6

    move-object v6, v12

    const/16 v23, 0x0

    .end local v12    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v6, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    const/4 v12, 0x0

    move-object v7, v4

    move-object v4, v15

    move-object v15, v14

    .end local v14    # "hm":[S
    .local v4, "sig":[S
    .restart local v7    # "f":[B
    .local v15, "hm":[S
    const/4 v14, 0x0

    move-object/from16 v3, v16

    .end local v16    # "sign":Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
    .local v3, "sign":Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
    const/16 v16, 0x0

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    move-object/from16 v24, v2

    const/4 v2, 0x0

    .end local v2    # "seed":[B
    .local v1, "nonce":[B
    .local v23, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v24, "seed":[B
    invoke-virtual/range {v3 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    .line 235
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move-object v12, v9

    move-object v14, v13

    move-object v9, v4

    move-object v4, v7

    move-object v13, v11

    .end local v3    # "sign":Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
    .end local v6    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v7    # "f":[B
    .end local v11    # "F":[B
    .local v4, "f":[B
    .local v9, "sig":[S
    .local v12, "g":[B
    .local v13, "F":[B
    .local v14, "G":[B
    .restart local v16    # "sign":Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
    .restart local v19    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    add-int/lit8 v3, v3, -0x2

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v3, v5

    new-array v6, v3, [B

    .line 236
    .local v6, "esig":[B
    const-string/jumbo v3, "signature failed to generate"

    if-eqz p1, :cond_1

    .line 244
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v5, v5, 0x20

    int-to-byte v5, v5

    aput-byte v5, v6, v2

    .line 245
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    array-length v7, v6

    add-int/lit8 v8, v7, -0x1

    const/4 v10, 0x0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v7, 0x1

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v5

    .line 246
    .local v5, "sig_len":I
    if-eqz v5, :cond_0

    .line 250
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 248
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 254
    .end local v5    # "sig_len":I
    :cond_1
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    array-length v8, v6

    const/4 v10, 0x0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v7, 0x0

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v5

    .line 255
    .restart local v5    # "sig_len":I
    if-eqz v5, :cond_2

    .line 262
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v3, v3, 0x30

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 264
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v7, p2

    const/4 v8, 0x1

    invoke-static {v1, v2, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v3, v8

    invoke-static {v6, v2, v7, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 269
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/2addr v3, v8

    add-int/2addr v3, v5

    invoke-static {v7, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    return-object v2

    .line 257
    :cond_2
    move-object/from16 v7, p2

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 189
    .end local v1    # "nonce":[B
    .end local v5    # "sig_len":I
    .end local v6    # "esig":[B
    .end local v9    # "sig":[S
    .end local v12    # "g":[B
    .end local v14    # "G":[B
    .restart local v2    # "seed":[B
    .restart local v8    # "g":[B
    .restart local v10    # "F":[B
    .local v13, "G":[B
    .local v15, "sig":[S
    .restart local v22    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v23, "hm":[S
    .local v24, "nonce":[B
    :cond_3
    move-object/from16 v1, v24

    move-object/from16 v24, v2

    .end local v2    # "seed":[B
    .restart local v1    # "nonce":[B
    .local v24, "seed":[B
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "complete_private failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 184
    .end local v1    # "nonce":[B
    .end local v8    # "g":[B
    .end local v13    # "G":[B
    .end local v26    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v2    # "seed":[B
    .local v3, "u":I
    .restart local v14    # "G":[B
    .restart local v17    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v21, "g":[B
    .local v24, "nonce":[B
    :cond_4
    move-object/from16 v12, v21

    move-object/from16 v1, v24

    move-object/from16 v24, v2

    move/from16 v21, v3

    .end local v2    # "seed":[B
    .end local v3    # "u":I
    .restart local v1    # "nonce":[B
    .restart local v12    # "g":[B
    .local v21, "u":I
    .local v24, "seed":[B
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "full key not used"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 179
    .end local v1    # "nonce":[B
    .end local v12    # "g":[B
    .restart local v2    # "seed":[B
    .restart local v18    # "u":I
    .local v21, "g":[B
    .local v24, "nonce":[B
    :cond_5
    move-object/from16 v1, v24

    move-object/from16 v24, v2

    .end local v2    # "seed":[B
    .restart local v1    # "nonce":[B
    .local v24, "seed":[B
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "F decode failed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    .end local v1    # "nonce":[B
    .end local v10    # "F":[B
    .end local v25    # "v":I
    .restart local v2    # "seed":[B
    .local v3, "v":I
    .local v13, "F":[B
    .local v24, "nonce":[B
    :cond_6
    move-object/from16 v1, v24

    move-object/from16 v24, v2

    .end local v2    # "seed":[B
    .restart local v1    # "nonce":[B
    .local v24, "seed":[B
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "g decode failed"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    .end local v1    # "nonce":[B
    .end local v19    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v23    # "hm":[S
    .end local v24    # "seed":[B
    .restart local v2    # "seed":[B
    .local v11, "hm":[S
    .local v12, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v20    # "g":[B
    .local v21, "nonce":[B
    :cond_7
    move-object/from16 v24, v2

    .end local v2    # "seed":[B
    .restart local v24    # "seed":[B
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v5, "f decode failed"

    invoke-direct {v2, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method crypto_sign_keypair([BI[BI)[[B
    .locals 22
    .param p1, "srcpk"    # [B
    .param p2, "pk"    # I
    .param p3, "srcsk"    # [B
    .param p4, "sk"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcpk",
            "pk",
            "srcsk",
            "sk"
        }
    .end annotation

    .line 54
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v4, v1, [B

    .line 55
    .local v4, "f":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v5, v1, [B

    .line 56
    .local v5, "g":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v8, v1, [B

    .line 57
    .local v8, "F":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v12, v1, [S

    .line 58
    .local v12, "h":[S
    const/16 v1, 0x30

    new-array v15, v1, [B

    .line 59
    .local v15, "seed":[B
    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    .line 61
    .local v3, "rng":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;-><init>()V

    .line 69
    .local v2, "keygen":Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v1, v15}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 73
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    .line 74
    array-length v1, v15

    const/4 v6, 0x0

    invoke-virtual {v3, v15, v6, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 75
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    .line 78
    const/4 v13, 0x0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object v6, v5

    const/4 v1, 0x0

    .end local v5    # "g":[B
    .local v6, "g":[B
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v2 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V

    .line 86
    move-object v13, v2

    move-object v11, v3

    move-object v9, v6

    move-object v10, v8

    .end local v2    # "keygen":Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
    .end local v3    # "rng":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v6    # "g":[B
    .end local v8    # "F":[B
    .local v9, "g":[B
    .local v10, "F":[B
    .local v11, "rng":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v13, "keygen":Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;
    add-int/lit8 v1, p4, 0x0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    .line 87
    const/4 v14, 0x1

    .line 88
    .local v14, "u":I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v3, p4, v14

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v2, v14

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v4

    move v4, v2

    move-object/from16 v2, p3

    .end local v4    # "f":[B
    .local v5, "f":[B
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v17

    .line 90
    move-object/from16 v18, v5

    .end local v5    # "f":[B
    .local v17, "v":I
    .local v18, "f":[B
    if-eqz v17, :cond_4

    .line 94
    add-int v1, p4, v14

    add-int v3, v14, v17

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v19

    .line 95
    .local v19, "fEnc":[B
    add-int v14, v14, v17

    .line 96
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v3, p4, v14

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v4, v14

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v9

    .end local v9    # "g":[B
    .local v5, "g":[B
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v9

    .line 98
    move-object/from16 v20, v5

    .end local v5    # "g":[B
    .end local v17    # "v":I
    .local v9, "v":I
    .local v20, "g":[B
    if-eqz v9, :cond_3

    .line 102
    add-int v1, p4, v14

    add-int v3, v14, v9

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    .line 103
    .local v17, "gEnc":[B
    add-int/2addr v14, v9

    .line 105
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v3, p4, v14

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int/2addr v4, v14

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v5, v6

    const/4 v6, 0x0

    move-object v5, v10

    .end local v10    # "F":[B
    .local v5, "F":[B
    invoke-virtual/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v8

    .line 107
    move-object v10, v2

    move-object/from16 v21, v5

    .end local v5    # "F":[B
    .end local v9    # "v":I
    .local v8, "v":I
    .local v21, "F":[B
    if-eqz v8, :cond_2

    .line 111
    add-int v1, p4, v14

    add-int v2, v14, v8

    invoke-static {v10, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    .line 112
    .local v9, "FEnc":[B
    add-int/2addr v14, v8

    .line 113
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    if-ne v14, v1, :cond_1

    .line 121
    add-int/lit8 v1, p2, 0x0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 122
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v3, p2, 0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    const/4 v6, 0x0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move v4, v2

    move-object v5, v12

    const/4 v12, 0x1

    move-object/from16 v2, p1

    .end local v12    # "h":[S
    .local v5, "h":[S
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_encode([BII[SII)I

    move-result v1

    .line 123
    .end local v8    # "v":I
    .local v1, "v":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v3, v12

    if-ne v1, v3, :cond_0

    .line 128
    array-length v3, v2

    invoke-static {v2, v12, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [[B

    aput-object v3, v4, v16

    aput-object v19, v4, v12

    const/4 v3, 0x2

    aput-object v17, v4, v3

    const/4 v3, 0x3

    aput-object v9, v4, v3

    return-object v4

    .line 125
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "public key encoding failed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    .end local v1    # "v":I
    .end local v5    # "h":[S
    .restart local v8    # "v":I
    .restart local v12    # "h":[S
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "secret key encoding failed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    .end local v9    # "FEnc":[B
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "F encode failed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 100
    .end local v8    # "v":I
    .end local v17    # "gEnc":[B
    .end local v21    # "F":[B
    .local v9, "v":I
    .restart local v10    # "F":[B
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "g encode failed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 92
    .end local v19    # "fEnc":[B
    .end local v20    # "g":[B
    .local v9, "g":[B
    .local v17, "v":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "f encode failed"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method crypto_sign_open(Z[B[B[B[BI)I
    .locals 21
    .param p1, "attached"    # Z
    .param p2, "sig_encoded"    # [B
    .param p3, "nonce"    # [B
    .param p4, "msg"    # [B
    .param p5, "srcpk"    # [B
    .param p6, "pk"    # I
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
            "attached",
            "sig_encoded",
            "nonce",
            "msg",
            "srcpk",
            "pk"
        }
    .end annotation

    .line 275
    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v8, p4

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v10, v1, [S

    .line 276
    .local v10, "h":[S
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v1, v1, [S

    .line 277
    .local v1, "hm":[S
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v2, v2, [S

    .line 278
    .local v2, "sig":[S
    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    .line 280
    .local v3, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    new-instance v9, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    move-object v4, v9

    .line 281
    .local v4, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    new-instance v6, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    .line 290
    .local v6, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v11, 0x1

    add-int/lit8 v15, v7, -0x1

    const/4 v7, 0x1

    const/4 v11, 0x0

    move-object/from16 v13, p5

    move/from16 v14, p6

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_decode([SII[BII)I

    move-result v9

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    sub-int/2addr v11, v7

    const/16 v19, -0x1

    if-eq v9, v11, :cond_0

    .line 293
    return v19

    .line 295
    :cond_0
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v11, 0x0

    invoke-virtual {v4, v10, v11, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->to_ntt_monty([SII)V

    .line 305
    array-length v9, v5

    .line 310
    .local v9, "sig_len":I
    array-length v12, v8

    .line 316
    .local v12, "msg_len":I
    if-eqz p1, :cond_4

    .line 318
    if-lt v9, v7, :cond_3

    aget-byte v7, v5, v11

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v13, v13, 0x20

    int-to-byte v13, v13

    if-eq v7, v13, :cond_1

    move-object v14, v1

    move-object v13, v3

    move-object/from16 v16, v4

    move-object v15, v6

    goto :goto_0

    .line 322
    :cond_1
    move-object v7, v1

    .end local v1    # "hm":[S
    .local v7, "hm":[S
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    move-object v13, v4

    .end local v4    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v13, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object v14, v7

    .end local v7    # "hm":[S
    .local v14, "hm":[S
    add-int/lit8 v7, v9, -0x1

    move-object v15, v3

    .end local v3    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v15, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    const/4 v3, 0x0

    move-object/from16 v16, v6

    .end local v6    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v16, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    const/4 v6, 0x1

    move-object/from16 v20, v16

    move-object/from16 v16, v13

    move-object v13, v15

    move-object/from16 v15, v20

    .local v13, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v15, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v16, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v1

    add-int/lit8 v3, v9, -0x1

    if-eq v1, v3, :cond_2

    .line 325
    return v19

    .line 322
    :cond_2
    move v7, v9

    goto :goto_1

    .line 318
    .end local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v14    # "hm":[S
    .end local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v1    # "hm":[S
    .restart local v3    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v4    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v6    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    :cond_3
    move-object v14, v1

    move-object v13, v3

    move-object/from16 v16, v4

    move-object v15, v6

    .line 320
    .end local v1    # "hm":[S
    .end local v3    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v4    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .end local v6    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .restart local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v14    # "hm":[S
    .restart local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .restart local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    :goto_0
    return v19

    .line 330
    .end local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v14    # "hm":[S
    .end local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v1    # "hm":[S
    .restart local v3    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v4    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v6    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    :cond_4
    move-object v14, v1

    move-object v13, v3

    move-object/from16 v16, v4

    move-object v15, v6

    .end local v1    # "hm":[S
    .end local v3    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v4    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .end local v6    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .restart local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v14    # "hm":[S
    .restart local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .restart local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    if-lt v9, v7, :cond_7

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object/from16 v5, p2

    move v7, v9

    .end local v9    # "sig_len":I
    .local v7, "sig_len":I
    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v1

    if-eq v1, v7, :cond_5

    move v1, v12

    move-object v12, v2

    move v2, v1

    move-object/from16 v3, p3

    move-object v6, v13

    move-object v1, v15

    move-object/from16 v9, v16

    goto :goto_2

    .line 340
    :cond_5
    :goto_1
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    .line 341
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v3, p3

    invoke-virtual {v13, v3, v11, v1}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 342
    invoke-virtual {v13, v8, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    .line 343
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    .line 344
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-virtual {v15, v13, v14, v11, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    .line 349
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v4, v4, [S

    const/16 v18, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move-object v6, v13

    .end local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .local v6, "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    const/4 v13, 0x0

    move-object v9, v15

    .end local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v9, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    const/4 v15, 0x0

    move-object/from16 v17, v16

    move/from16 v16, v1

    move-object v1, v9

    move-object/from16 v9, v17

    move/from16 v17, v12

    move-object v12, v2

    move/from16 v2, v17

    move-object/from16 v17, v14

    move-object v14, v10

    move-object/from16 v10, v17

    move-object/from16 v17, v4

    .end local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v1, "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v2, "msg_len":I
    .local v9, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v10, "hm":[S
    .local v12, "sig":[S
    .local v14, "h":[S
    invoke-virtual/range {v9 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->verify_raw([SI[SI[SII[SI)I

    move-result v4

    move-object/from16 v20, v14

    move-object v14, v10

    move-object/from16 v10, v20

    .local v10, "h":[S
    .local v14, "hm":[S
    if-nez v4, :cond_6

    .line 351
    return v19

    .line 359
    :cond_6
    return v5

    .line 330
    .end local v1    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v6    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v7    # "sig_len":I
    .local v2, "sig":[S
    .local v9, "sig_len":I
    .local v12, "msg_len":I
    .restart local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .restart local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    :cond_7
    move v1, v12

    move-object v12, v2

    move v2, v1

    move-object/from16 v3, p3

    move v7, v9

    move-object v6, v13

    move-object v1, v15

    move-object/from16 v9, v16

    .line 333
    .end local v13    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .end local v15    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .end local v16    # "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .restart local v1    # "common":Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
    .local v2, "msg_len":I
    .restart local v6    # "sc":Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .restart local v7    # "sig_len":I
    .local v9, "vrfy":Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;
    .local v12, "sig":[S
    :goto_2
    return v19
.end method

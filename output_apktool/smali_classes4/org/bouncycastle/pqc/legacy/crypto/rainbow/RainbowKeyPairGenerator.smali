.class public Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;
.super Ljava/lang/Object;
.source "RainbowKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private A1:[[S

.field private A1inv:[[S

.field private A2:[[S

.field private A2inv:[[S

.field private b1:[S

.field private b2:[S

.field private initialized:Z

.field private layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

.field private numOfLayers:I

.field private pub_quadratic:[[S

.field private pub_scalar:[S

.field private pub_singular:[[S

.field private rainbowParams:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

.field private sr:Ljava/security/SecureRandom;

.field private vi:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 56
    return-void
.end method

.method private compactPublicKey([[[S)V
    .locals 10
    .param p1, "coeff_quadratic_to_compact"    # [[[S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coeff_quadratic_to_compact"
        }
    .end annotation

    .line 380
    array-length v0, p1

    .line 381
    .local v0, "polynomials":I
    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    .line 382
    .local v2, "n":I
    add-int/lit8 v3, v2, 0x1

    mul-int v3, v3, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    .line 383
    .local v3, "entries":I
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    .line 384
    const/4 v1, 0x0

    .line 386
    .local v1, "offset":I
    const/4 v4, 0x0

    .local v4, "p":I
    :goto_0
    if-ge v4, v0, :cond_3

    .line 388
    const/4 v1, 0x0

    .line 389
    const/4 v5, 0x0

    .local v5, "x":I
    :goto_1
    if-ge v5, v2, :cond_2

    .line 391
    move v6, v5

    .local v6, "y":I
    :goto_2
    if-ge v6, v2, :cond_1

    .line 393
    if-ne v6, v5, :cond_0

    .line 395
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v5

    aget-short v8, v8, v6

    aput-short v8, v7, v1

    goto :goto_3

    .line 399
    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    aget-object v7, v7, v4

    aget-object v8, p1, v4

    aget-object v8, v8, v5

    aget-short v8, v8, v6

    aget-object v9, p1, v4

    aget-object v9, v9, v6

    aget-short v9, v9, v5

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v8

    aput-short v8, v7, v1

    .line 403
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 391
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 389
    .end local v6    # "y":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 386
    .end local v5    # "x":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 407
    .end local v4    # "p":I
    :cond_3
    return-void
.end method

.method private computePublicKey()V
    .locals 26

    .line 229
    move-object/from16 v0, p0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 230
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;
    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v2, v2, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v5, 0x0

    aget v3, v3, v5

    sub-int/2addr v2, v3

    .line 231
    .local v2, "rows":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v3, v3, v6

    .line 233
    .local v3, "vars":I
    const/4 v6, 0x3

    new-array v7, v6, [I

    const/4 v8, 0x2

    aput v3, v7, v8

    aput v3, v7, v4

    aput v2, v7, v5

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    .line 234
    .local v7, "coeff_quadratic_3dim":[[[S
    new-array v9, v8, [I

    aput v3, v9, v4

    aput v2, v9, v5

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    .line 235
    new-array v9, v2, [S

    iput-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    .line 244
    const/4 v9, 0x0

    .line 245
    .local v9, "oils":I
    const/4 v10, 0x0

    .line 246
    .local v10, "vins":I
    const/4 v11, 0x0

    .line 248
    .local v11, "crnt_row":I
    new-array v12, v3, [S

    .line 249
    .local v12, "vect_tmp":[S
    const/4 v13, 0x0

    .line 252
    .local v13, "sclr_tmp":S
    const/4 v14, 0x0

    .local v14, "l":I
    :goto_0
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    array-length v15, v15

    if-ge v14, v15, :cond_6

    .line 255
    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v15, v15, v14

    invoke-virtual {v15}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffAlpha()[[[S

    move-result-object v15

    .line 256
    .local v15, "coeff_alpha":[[[S
    const/16 v16, 0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v4, v4, v14

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffBeta()[[[S

    move-result-object v4

    .line 257
    .local v4, "coeff_beta":[[[S
    const/16 v17, 0x0

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v5, v5, v14

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffGamma()[[S

    move-result-object v5

    .line 258
    .local v5, "coeff_gamma":[[S
    const/16 v18, 0x2

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    aget-object v8, v8, v14

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;->getCoeffEta()[S

    move-result-object v8

    .line 259
    .local v8, "coeff_eta":[S
    aget-object v6, v15, v17

    array-length v9, v6

    .line 260
    aget-object v6, v4, v17

    array-length v10, v6

    .line 262
    const/4 v6, 0x0

    .local v6, "p":I
    :goto_1
    if-ge v6, v9, :cond_5

    .line 265
    const/16 v19, 0x0

    move/from16 v25, v19

    move/from16 v19, v3

    move/from16 v3, v25

    .local v3, "x1":I
    .local v19, "vars":I
    :goto_2
    if-ge v3, v9, :cond_1

    .line 267
    const/16 v20, 0x0

    move/from16 v25, v20

    move/from16 v20, v3

    move/from16 v3, v25

    .local v3, "x2":I
    .local v20, "x1":I
    :goto_3
    if-ge v3, v10, :cond_0

    .line 270
    aget-object v21, v15, v6

    aget-object v21, v21, v20

    move/from16 v22, v3

    .end local v3    # "x2":I
    .local v22, "x2":I
    aget-short v3, v21, v22

    move-object/from16 v21, v4

    .end local v4    # "coeff_beta":[[[S
    .local v21, "coeff_beta":[[[S
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    add-int v23, v20, v10

    aget-object v4, v4, v23

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 272
    .end local v12    # "vect_tmp":[S
    .local v3, "vect_tmp":[S
    add-int v4, v11, v6

    add-int v12, v11, v6

    aget-object v12, v7, v12

    move/from16 v23, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v4, v4, v22

    .line 274
    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v4

    .line 272
    invoke-virtual {v1, v12, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v7, v23

    .line 276
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v22

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 277
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v12, v11, v6

    move-object/from16 v23, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v24, v11, v6

    aget-object v4, v4, v24

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v4

    aput-object v4, v23, v12

    .line 280
    aget-object v4, v15, v6

    aget-object v4, v4, v20

    aget-short v4, v4, v22

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v12, v12, v22

    invoke-virtual {v1, v4, v12}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 282
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    add-int v12, v20, v10

    aget-short v4, v4, v12

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v12

    .line 283
    .end local v3    # "vect_tmp":[S
    .restart local v12    # "vect_tmp":[S
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v4, v11, v6

    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v24, v11, v6

    aget-object v3, v3, v24

    invoke-virtual {v1, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v3

    aput-object v3, v23, v4

    .line 286
    aget-object v3, v15, v6

    aget-object v3, v3, v20

    aget-short v3, v3, v22

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    add-int v23, v20, v10

    aget-short v4, v4, v23

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v13

    .line 288
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v4, v11, v6

    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v24, v11, v6

    aget-short v3, v3, v24

    move/from16 v24, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v22

    .line 290
    invoke-static {v13, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 288
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v23, v24

    .line 267
    add-int/lit8 v3, v22, 0x1

    move-object/from16 v4, v21

    .end local v22    # "x2":I
    .local v3, "x2":I
    goto/16 :goto_3

    .end local v21    # "coeff_beta":[[[S
    .restart local v4    # "coeff_beta":[[[S
    :cond_0
    move/from16 v22, v3

    move-object/from16 v21, v4

    .line 265
    .end local v3    # "x2":I
    .end local v4    # "coeff_beta":[[[S
    .restart local v21    # "coeff_beta":[[[S
    add-int/lit8 v3, v20, 0x1

    .end local v20    # "x1":I
    .local v3, "x1":I
    goto/16 :goto_2

    .end local v21    # "coeff_beta":[[[S
    .restart local v4    # "coeff_beta":[[[S
    :cond_1
    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 294
    .end local v3    # "x1":I
    .end local v4    # "coeff_beta":[[[S
    .restart local v21    # "coeff_beta":[[[S
    const/4 v3, 0x0

    .restart local v3    # "x1":I
    :goto_4
    if-ge v3, v10, :cond_3

    .line 296
    const/4 v4, 0x0

    .local v4, "x2":I
    :goto_5
    if-ge v4, v10, :cond_2

    .line 299
    aget-object v20, v21, v6

    aget-object v20, v20, v3

    move/from16 v22, v3

    .end local v3    # "x1":I
    .local v22, "x1":I
    aget-short v3, v20, v4

    move/from16 v20, v4

    .end local v4    # "x2":I
    .local v20, "x2":I
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v4, v4, v22

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 301
    .end local v12    # "vect_tmp":[S
    .local v3, "vect_tmp":[S
    add-int v4, v11, v6

    add-int v12, v11, v6

    aget-object v12, v7, v12

    move/from16 v23, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v4, v4, v20

    .line 303
    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVects([S[S)[[S

    move-result-object v4

    .line 301
    invoke-virtual {v1, v12, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v4

    aput-object v4, v7, v23

    .line 305
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v20

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 306
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v12, v11, v6

    move-object/from16 v23, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v24, v11, v6

    aget-object v4, v4, v24

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v4

    aput-object v4, v23, v12

    .line 309
    aget-object v4, v21, v6

    aget-object v4, v4, v22

    aget-short v4, v4, v20

    iget-object v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v12, v12, v20

    invoke-virtual {v1, v4, v12}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v3

    .line 311
    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v22

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v12

    .line 312
    .end local v3    # "vect_tmp":[S
    .restart local v12    # "vect_tmp":[S
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v4, v11, v6

    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v24, v11, v6

    aget-object v3, v3, v24

    invoke-virtual {v1, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v3

    aput-object v3, v23, v4

    .line 315
    aget-object v3, v21, v6

    aget-object v3, v3, v22

    aget-short v3, v3, v20

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v22

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v13

    .line 317
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v4, v11, v6

    move-object/from16 v23, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v24, v11, v6

    aget-short v3, v3, v24

    move/from16 v24, v4

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v4, v4, v20

    .line 319
    invoke-static {v13, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 317
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v23, v24

    .line 296
    add-int/lit8 v4, v20, 0x1

    move/from16 v3, v22

    .end local v20    # "x2":I
    .restart local v4    # "x2":I
    goto/16 :goto_5

    .end local v22    # "x1":I
    .local v3, "x1":I
    :cond_2
    move/from16 v22, v3

    move/from16 v20, v4

    .line 294
    .end local v3    # "x1":I
    .end local v4    # "x2":I
    .restart local v22    # "x1":I
    add-int/lit8 v3, v22, 0x1

    .end local v22    # "x1":I
    .restart local v3    # "x1":I
    goto/16 :goto_4

    :cond_3
    move/from16 v22, v3

    .line 323
    .end local v3    # "x1":I
    const/4 v3, 0x0

    .local v3, "n":I
    :goto_6
    add-int v4, v10, v9

    if-ge v3, v4, :cond_4

    .line 326
    aget-object v4, v5, v6

    aget-short v4, v4, v3

    move/from16 v20, v3

    .end local v3    # "n":I
    .local v20, "n":I
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v3, v3, v20

    invoke-virtual {v1, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v12

    .line 327
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v4, v11, v6

    move-object/from16 v22, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    add-int v23, v11, v6

    aget-object v3, v3, v23

    invoke-virtual {v1, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v3

    aput-object v3, v22, v4

    .line 330
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v4, v11, v6

    move-object/from16 v22, v3

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v23, v11, v6

    aget-short v3, v3, v23

    aget-object v23, v5, v6

    move/from16 v24, v4

    aget-short v4, v23, v20

    move-object/from16 v23, v5

    .end local v5    # "coeff_gamma":[[S
    .local v23, "coeff_gamma":[[S
    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    aget-short v5, v5, v20

    .line 331
    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v4

    .line 330
    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v22, v24

    .line 323
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v5, v23

    .end local v20    # "n":I
    .restart local v3    # "n":I
    goto :goto_6

    .end local v23    # "coeff_gamma":[[S
    .restart local v5    # "coeff_gamma":[[S
    :cond_4
    move/from16 v20, v3

    move-object/from16 v23, v5

    .line 335
    .end local v3    # "n":I
    .end local v5    # "coeff_gamma":[[S
    .restart local v23    # "coeff_gamma":[[S
    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v4, v11, v6

    iget-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    add-int v20, v11, v6

    aget-short v5, v5, v20

    move-object/from16 v20, v3

    aget-short v3, v8, v6

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v3

    aput-short v3, v20, v4

    .line 262
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v23

    goto/16 :goto_1

    .end local v19    # "vars":I
    .end local v21    # "coeff_beta":[[[S
    .end local v23    # "coeff_gamma":[[S
    .local v3, "vars":I
    .local v4, "coeff_beta":[[[S
    .restart local v5    # "coeff_gamma":[[S
    :cond_5
    move/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    .line 338
    .end local v3    # "vars":I
    .end local v4    # "coeff_beta":[[[S
    .end local v5    # "coeff_gamma":[[S
    .end local v6    # "p":I
    .restart local v19    # "vars":I
    .restart local v21    # "coeff_beta":[[[S
    .restart local v23    # "coeff_gamma":[[S
    add-int/2addr v11, v9

    .line 252
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto/16 :goto_0

    .end local v8    # "coeff_eta":[S
    .end local v15    # "coeff_alpha":[[[S
    .end local v19    # "vars":I
    .end local v21    # "coeff_beta":[[[S
    .end local v23    # "coeff_gamma":[[S
    .restart local v3    # "vars":I
    :cond_6
    move/from16 v19, v3

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x2

    .line 344
    .end local v3    # "vars":I
    .end local v14    # "l":I
    .restart local v19    # "vars":I
    const/4 v3, 0x3

    new-array v3, v3, [I

    aput v19, v3, v18

    aput v19, v3, v16

    aput v2, v3, v17

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    .line 345
    .local v3, "tmp_c_quad":[[[S
    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v19, v4, v16

    aput v2, v4, v17

    sget-object v5, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    .line 346
    .local v4, "tmp_c_sing":[[S
    new-array v5, v2, [S

    .line 347
    .local v5, "tmp_c_scal":[S
    const/4 v6, 0x0

    .local v6, "r":I
    :goto_7
    if-ge v6, v2, :cond_8

    .line 349
    const/4 v8, 0x0

    .local v8, "q":I
    :goto_8
    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    array-length v14, v14

    if-ge v8, v14, :cond_7

    .line 351
    aget-object v14, v3, v6

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v15, v15, v6

    aget-short v15, v15, v8

    move/from16 v16, v2

    .end local v2    # "rows":I
    .local v16, "rows":I
    aget-object v2, v7, v8

    .line 352
    invoke-virtual {v1, v15, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multMatrix(S[[S)[[S

    move-result-object v2

    .line 351
    invoke-virtual {v1, v14, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addSquareMatrix([[S[[S)[[S

    move-result-object v2

    aput-object v2, v3, v6

    .line 353
    aget-object v2, v4, v6

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v14, v14, v6

    aget-short v14, v14, v8

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    aget-object v15, v15, v8

    invoke-virtual {v1, v14, v15}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->multVect(S[S)[S

    move-result-object v14

    invoke-virtual {v1, v2, v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    aput-object v2, v4, v6

    .line 355
    aget-short v2, v5, v6

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v14, v14, v6

    aget-short v14, v14, v8

    iget-object v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    aget-short v15, v15, v8

    .line 356
    invoke-static {v14, v15}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->multElem(SS)S

    move-result v14

    .line 355
    invoke-static {v2, v14}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v5, v6

    .line 349
    add-int/lit8 v8, v8, 0x1

    move/from16 v2, v16

    goto :goto_8

    .end local v16    # "rows":I
    .restart local v2    # "rows":I
    :cond_7
    move/from16 v16, v2

    .line 358
    .end local v2    # "rows":I
    .end local v8    # "q":I
    .restart local v16    # "rows":I
    aget-short v2, v5, v6

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    aget-short v8, v8, v6

    invoke-static {v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/GF2Field;->addElem(SS)S

    move-result v2

    aput-short v2, v5, v6

    .line 347
    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    goto :goto_7

    .end local v16    # "rows":I
    .restart local v2    # "rows":I
    :cond_8
    move/from16 v16, v2

    .line 361
    .end local v2    # "rows":I
    .end local v6    # "r":I
    .restart local v16    # "rows":I
    move-object v2, v3

    .line 362
    .end local v7    # "coeff_quadratic_3dim":[[[S
    .local v2, "coeff_quadratic_3dim":[[[S
    iput-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    .line 363
    iput-object v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    .line 365
    .end local v3    # "tmp_c_quad":[[[S
    .end local v4    # "tmp_c_sing":[[S
    .end local v5    # "tmp_c_scal":[S
    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->compactPublicKey([[[S)V

    .line 366
    return-void
.end method

.method private generateF()V
    .locals 6

    .line 210
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    .line 211
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    if-ge v0, v1, :cond_0

    .line 213
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    aget v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;-><init>(IILjava/security/SecureRandom;)V

    aput-object v2, v1, v0

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private generateL1()V
    .locals 6

    .line 134
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    sub-int/2addr v0, v1

    .line 135
    .local v0, "dim":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    aput v0, v1, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    .line 136
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    .line 137
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 140
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    if-nez v2, :cond_2

    .line 142
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 144
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 146
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 142
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    goto :goto_0

    .line 153
    :cond_2
    new-array v2, v0, [S

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    .line 154
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_3

    .line 156
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 154
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 158
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private generateL2()V
    .locals 6

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    .line 174
    .local v0, "dim":I
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    .line 175
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    .line 176
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;-><init>()V

    .line 179
    .local v1, "c":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    if-nez v2, :cond_2

    .line 181
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 183
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v0, :cond_0

    .line 185
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/security/SecureRandom;->nextInt()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    aput-short v5, v4, v3

    .line 183
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 181
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2:[[S

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/util/ComputeInField;->inverse([[S)[[S

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    goto :goto_0

    .line 191
    :cond_2
    new-array v2, v0, [S

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    .line 192
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    if-ge v2, v0, :cond_3

    .line 194
    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 192
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 197
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method private initializeDefault()V
    .locals 3

    .line 105
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;-><init>()V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;)V

    .line 106
    .local v0, "rbKGParams":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 107
    return-void
.end method

.method private keygen()V
    .locals 0

    .line 115
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->generateL1()V

    .line 116
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->generateL2()V

    .line 117
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->generateF()V

    .line 118
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->computePublicKey()V

    .line 119
    return-void
.end method


# virtual methods
.method public genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    .line 69
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    if-nez v0, :cond_0

    .line 71
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initializeDefault()V

    .line 75
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->keygen()V

    .line 78
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A1inv:[[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b1:[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->A2inv:[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->b2:[S

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v7, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->layers:[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;-><init>([[S[S[[S[S[I[Lorg/bouncycastle/pqc/legacy/crypto/rainbow/Layer;)V

    .line 82
    .local v1, "privKey":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPrivateKeyParameters;
    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_quadratic:[[S

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_singular:[[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->pub_scalar:[S

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;-><init>(I[[S[[S[S)V

    .line 84
    .local v0, "pubKey":Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowPublicKeyParameters;
    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method

.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 411
    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 412
    return-void
.end method

.method public initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1
    .param p1, "param"    # Lorg/bouncycastle/crypto/KeyGenerationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 91
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->sr:Ljava/security/SecureRandom;

    .line 97
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->getVi()[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->vi:[I

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->rainbowParams:Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowParameters;->getNumOfLayers()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->numOfLayers:I

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/rainbow/RainbowKeyPairGenerator;->initialized:Z

    .line 101
    return-void
.end method

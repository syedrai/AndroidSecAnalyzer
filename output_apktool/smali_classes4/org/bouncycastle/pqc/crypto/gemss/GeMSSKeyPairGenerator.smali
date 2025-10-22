.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;
.super Ljava/lang/Object;
.source "GeMSSKeyPairGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sec_rand(I)[B
    .locals 2
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 128
    new-array v0, p1, [B

    .line 129
    .local v0, "rv":[B
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 130
    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 26

    .line 27
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v1

    .line 29
    .local v1, "engine":Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    iget v2, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->sec_rand(I)[B

    move-result-object v2

    .line 30
    .local v2, "seed":[B
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    add-int/lit8 v3, v3, 0x2

    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    mul-int v4, v4, v5

    ushr-int/2addr v4, v6

    add-int/2addr v3, v4

    .line 31
    .local v3, "NB_COEFS_HFEPOLY":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    sub-int/2addr v4, v6

    add-int/2addr v4, v3

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v5, v6

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    mul-int v5, v5, v7

    add-int/2addr v4, v5

    .line 32
    .local v4, "NB_COEFS_HFEVPOLY":I
    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    .line 33
    .local v5, "NB_UINT_HFEVPOLY":I
    iget v7, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/2addr v7, v6

    add-int/2addr v7, v5

    iget v8, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    shl-int/2addr v8, v6

    add-int/2addr v7, v8

    shl-int/lit8 v7, v7, 0x3

    .line 34
    .local v7, "sk_uncomp_length":I
    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    ushr-int/lit8 v9, v7, 0x3

    invoke-direct {v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 35
    .local v8, "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-array v9, v7, [B

    .line 36
    .local v9, "sk_uncomp":[B
    new-instance v10, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v11, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    invoke-direct {v10, v11}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 37
    .local v10, "shakeDigest":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    iget v11, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    const/4 v12, 0x0

    invoke-virtual {v10, v2, v12, v11}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 38
    invoke-virtual {v10, v9, v12, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 39
    iget v11, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    new-array v11, v11, [B

    .line 40
    .local v11, "sk":[B
    iget v13, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v14, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    mul-int v13, v13, v14

    add-int/lit8 v13, v13, 0x7

    shr-int/lit8 v13, v13, 0x3

    .line 41
    .local v13, "SIZE_PK_HFE":I
    new-array v14, v13, [B

    .line 42
    .local v14, "pk":[B
    array-length v15, v11

    invoke-static {v2, v12, v11, v12, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    array-length v15, v9

    invoke-virtual {v8, v12, v9, v12, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 44
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 45
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    const/16 v17, 0x1

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v12, v12, v6

    invoke-direct {v15, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 46
    .local v15, "Q":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/16 v12, 0x22

    if-le v6, v12, :cond_0

    .line 48
    invoke-virtual {v1, v15, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->genSecretMQS_gf2_opt(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 50
    :cond_0
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v12, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    invoke-direct {v6, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 51
    .local v6, "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v12, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v12, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 52
    .local v12, "T":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move-object/from16 v19, v2

    .end local v2    # "seed":[B
    .local v19, "seed":[B
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v8, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 53
    .local v2, "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move/from16 v20, v3

    .end local v3    # "NB_COEFS_HFEPOLY":I
    .local v20, "NB_COEFS_HFEPOLY":I
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move/from16 v21, v4

    .end local v4    # "NB_COEFS_HFEVPOLY":I
    .local v21, "NB_COEFS_HFEVPOLY":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 54
    .local v3, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 55
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 57
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v6, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 58
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    move/from16 v22, v5

    const/16 v5, 0x22

    .end local v5    # "NB_UINT_HFEVPOLY":I
    .local v22, "NB_UINT_HFEVPOLY":I
    if-gt v4, v5, :cond_2

    .line 60
    invoke-virtual {v1, v15, v8, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->interpolateHFE_FS_ref(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I

    move-result v4

    .line 61
    .local v4, "ret":I
    if-nez v4, :cond_1

    goto :goto_0

    .line 63
    :cond_1
    new-instance v5, Ljava/lang/IllegalArgumentException;

    move/from16 v18, v4

    .end local v4    # "ret":I
    .local v18, "ret":I
    const-string v4, "Error"

    invoke-direct {v5, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 68
    .end local v18    # "ret":I
    :cond_2
    invoke-virtual {v1, v15, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->changeVariablesMQS64_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 70
    :goto_0
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 71
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v4

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 72
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 73
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 74
    sget-object v4, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v12, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 75
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v4, :cond_8

    .line 77
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    mul-int v4, v4, v5

    iget v5, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v5, v5, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    .line 78
    .local v4, "MQ_GFqm8_SIZE":I
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(I)V

    .line 80
    .local v5, "pk_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    move-object/from16 v18, v2

    .end local v2    # "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_3

    const/16 v16, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    :goto_1
    move/from16 v2, v16

    .local v2, "i":I
    :goto_2
    move-object/from16 v16, v3

    .end local v3    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v16, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v2, v3, :cond_4

    .line 82
    sget-object v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v5, v15, v12, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 84
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v15, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 85
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 80
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, v16

    goto :goto_2

    .line 88
    :cond_4
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_6

    .line 90
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move/from16 v23, v2

    .end local v2    # "i":I
    .local v23, "i":I
    iget v2, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-direct {v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 91
    .local v3, "pk_last":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v3, v15, v12, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 92
    const/4 v2, 0x0

    .end local v23    # "i":I
    .restart local v2    # "i":I
    :goto_3
    move/from16 v24, v4

    .end local v4    # "MQ_GFqm8_SIZE":I
    .local v24, "MQ_GFqm8_SIZE":I
    iget v4, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    if-ge v2, v4, :cond_5

    .line 94
    move-object/from16 v25, v6

    move v4, v7

    .end local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "sk_uncomp_length":I
    .local v4, "sk_uncomp_length":I
    .local v25, "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v6

    invoke-virtual {v5, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->set(IJ)V

    .line 92
    add-int/lit8 v2, v2, 0x1

    move v7, v4

    move/from16 v4, v24

    move-object/from16 v6, v25

    goto :goto_3

    .end local v4    # "sk_uncomp_length":I
    .end local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "sk_uncomp_length":I
    :cond_5
    move-object/from16 v25, v6

    move v4, v7

    .end local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "sk_uncomp_length":I
    .restart local v4    # "sk_uncomp_length":I
    .restart local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    goto :goto_4

    .line 88
    .end local v3    # "pk_last":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v24    # "MQ_GFqm8_SIZE":I
    .end local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "MQ_GFqm8_SIZE":I
    .restart local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "sk_uncomp_length":I
    :cond_6
    move/from16 v23, v2

    move/from16 v24, v4

    move-object/from16 v25, v6

    move v4, v7

    .line 97
    .end local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "sk_uncomp_length":I
    .local v4, "sk_uncomp_length":I
    .restart local v24    # "MQ_GFqm8_SIZE":I
    .restart local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_4
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    .line 98
    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v3, v3, v6

    new-array v3, v3, [B

    .line 99
    .local v3, "pk_U":[B
    invoke-virtual {v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_to_last_mr8_equations_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 100
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    .line 101
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v6, :cond_7

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_7

    .line 103
    invoke-virtual {v1, v14, v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_eq_to_hybrid_rep8_uncomp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V

    goto :goto_5

    .line 107
    :cond_7
    invoke-virtual {v1, v14, v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_eq_to_hybrid_rep8_comp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V

    .line 109
    .end local v3    # "pk_U":[B
    .end local v5    # "pk_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v24    # "MQ_GFqm8_SIZE":I
    :goto_5
    goto :goto_7

    .line 112
    .end local v4    # "sk_uncomp_length":I
    .end local v16    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v18    # "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "sk_uncomp_length":I
    :cond_8
    move-object/from16 v18, v2

    move-object/from16 v16, v3

    move-object/from16 v25, v6

    move v4, v7

    .end local v2    # "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v3    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v6    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "sk_uncomp_length":I
    .restart local v4    # "sk_uncomp_length":I
    .restart local v16    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v18    # "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v25    # "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    iget v3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    shl-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(I)V

    .line 113
    .local v2, "pk_last":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    const/4 v3, 0x0

    .line 114
    .local v3, "pk_p":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v5, v6, :cond_9

    .line 116
    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v1, v2, v15, v12, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 117
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v2, v14, v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v3

    .line 118
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    .line 119
    iget v6, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v15, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 114
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_9
    move v2, v5

    .line 122
    .end local v3    # "pk_p":I
    .end local v5    # "i":I
    .local v2, "i":I
    :goto_7
    new-instance v3, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-direct {v5, v6, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-direct {v6, v7, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V

    invoke-direct {v3, v5, v6}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
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

    .line 20
    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 22
    return-void
.end method

.class Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
.super Ljava/lang/Object;
.source "GeMSSEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    }
.end annotation


# instance fields
.field final ACCESS_last_equations8:I

.field Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

.field final ENABLED_REMOVE_ODD_DEGREE:Z

.field final HFEDELTA:I

.field final HFEDeg:I

.field final HFEDegI:I

.field final HFEDegJ:I

.field final HFENr8:I

.field final HFENr8c:I

.field HFE_odd_degree:I

.field final HFEm:I

.field final HFEmq:I

.field final HFEmq8:I

.field final HFEmr:I

.field final HFEmr8:I

.field final HFEn:I

.field HFEn1h_rightmost:I

.field HFEn_1rightmost:I

.field final HFEnq:I

.field final HFEnr:I

.field final HFEnv:I

.field final HFEnvq:I

.field final HFEnvr:I

.field final HFEnvr8:I

.field final HFEv:I

.field final HFEvq:I

.field final HFEvr:I

.field II:I

.field KP:I

.field KX:I

.field final LEN_UNROLLED_64:I

.field final LOST_BITS:I

.field LTRIANGULAR_NV_SIZE:I

.field final LTRIANGULAR_N_SIZE:I

.field final MASK_GF2m:J

.field final MASK_GF2n:J

.field final MATRIXn_SIZE:I

.field final MATRIXnv_SIZE:I

.field final MLv_GFqn_SIZE:I

.field MQv_GFqn_SIZE:I

.field final NB_BITS_UINT:I

.field final NB_BYTES_EQUATION:I

.field final NB_BYTES_GFqm:I

.field final NB_BYTES_GFqn:I

.field final NB_BYTES_GFqnv:I

.field NB_COEFS_HFEPOLY:I

.field final NB_ITE:I

.field NB_MONOMIAL_PK:I

.field NB_MONOMIAL_VINEGAR:I

.field NB_UINT_HFEVPOLY:I

.field NB_WORD_GF2m:I

.field NB_WORD_GF2nv:I

.field final NB_WORD_GF2nvm:I

.field NB_WORD_GFqn:I

.field final NB_WORD_GFqv:I

.field NB_WORD_MMUL:I

.field final NB_WORD_MUL:I

.field final NB_WORD_UNCOMP_EQ:I

.field POW_II:I

.field final SIZE_DIGEST:I

.field final SIZE_DIGEST_UINT:I

.field final SIZE_ROW:I

.field final SIZE_SEED_SK:I

.field final SIZE_SIGN_UNCOMPRESSED:I

.field final Sha3BitStrength:I

.field final ShakeBitStrength:I

.field final VAL_BITS_M:I

.field private buffer:I

.field mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

.field private random:Ljava/security/SecureRandom;

.field rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

.field sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;


# direct methods
.method public constructor <init>(IIIIIIII)V
    .locals 27
    .param p1, "K"    # I
    .param p2, "HFEn"    # I
    .param p3, "HFEv"    # I
    .param p4, "HFEDELTA"    # I
    .param p5, "NB_ITE"    # I
    .param p6, "HFEDeg"    # I
    .param p7, "HFEDegI"    # I
    .param p8, "HFEDegJ"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "K",
            "HFEn",
            "HFEv",
            "HFEDELTA",
            "NB_ITE",
            "HFEDeg",
            "HFEDegI",
            "HFEDegJ"
        }
    .end annotation

    .line 90
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/16 v9, 0x40

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BITS_UINT:I

    .line 65
    const/4 v10, 0x4

    iput v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LEN_UNROLLED_64:I

    .line 91
    iput v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    .line 92
    iput v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    .line 93
    iput v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    .line 94
    iput v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    .line 95
    iput v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    .line 96
    iput v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    .line 97
    iput v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    .line 98
    ushr-int/lit8 v11, v2, 0x3

    and-int/lit8 v12, v2, 0x7

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz v12, :cond_0

    const/4 v12, 0x1

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    :goto_0
    add-int/2addr v11, v12

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    .line 99
    add-int/lit8 v11, v7, 0x1

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    .line 100
    add-int v11, v2, v3

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    .line 101
    ushr-int/lit8 v11, v2, 0x6

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 102
    and-int/lit8 v11, v2, 0x3f

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    .line 103
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    const/4 v12, 0x6

    ushr-int/2addr v11, v12

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    .line 104
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    and-int/lit8 v11, v11, 0x3f

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    .line 105
    ushr-int/lit8 v11, v1, 0x3

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    .line 106
    add-int/lit8 v11, v2, -0x1

    shl-int/2addr v11, v14

    ushr-int/2addr v11, v12

    add-int/2addr v11, v14

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    .line 107
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    .line 122
    :sswitch_0
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;-><init>()V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    goto :goto_1

    .line 119
    :sswitch_1
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;-><init>()V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    .line 120
    goto :goto_1

    .line 116
    :sswitch_2
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;-><init>()V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    .line 117
    goto :goto_1

    .line 113
    :sswitch_3
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;-><init>()V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    .line 114
    goto :goto_1

    .line 110
    :sswitch_4
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;-><init>()V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    .line 111
    nop

    .line 125
    :goto_1
    and-int/lit8 v17, v2, 0x3f

    .line 126
    .local v17, "KI":I
    rsub-int/lit8 v18, v17, 0x40

    .line 127
    .local v18, "KI64":I
    sub-int v11, v2, v4

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    .line 128
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/2addr v11, v12

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    .line 129
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    and-int/lit8 v11, v11, 0x3f

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    .line 130
    ushr-int/lit8 v11, v3, 0x6

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    .line 131
    and-int/lit8 v11, v3, 0x3f

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    .line 132
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-eqz v11, :cond_1

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    add-int/2addr v11, v14

    goto :goto_2

    :cond_1
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    :goto_2
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    .line 133
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/lit8 v11, v11, 0x3

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    .line 134
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    and-int/lit8 v11, v11, 0x7

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    .line 135
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v15, :cond_2

    const/4 v15, 0x1

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    add-int/2addr v11, v15

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    .line 136
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    add-int/2addr v15, v14

    mul-int v11, v11, v15

    ushr-int/2addr v11, v14

    mul-int/lit8 v11, v11, 0x40

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    add-int/2addr v15, v14

    const/16 v16, 0x40

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    mul-int v15, v15, v9

    add-int/2addr v11, v15

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    .line 137
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    and-int/lit8 v9, v9, 0x7

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    .line 138
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    ushr-int/lit8 v9, v9, 0x3

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v11, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    :goto_4
    add-int/2addr v9, v11

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    .line 139
    add-int v9, v4, v3

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    const/16 v15, 0x8

    rsub-int/lit8 v11, v11, 0x8

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    .line 140
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v10

    iput-wide v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    .line 141
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v9

    iput-wide v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    .line 142
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_5

    :cond_4
    const/4 v10, 0x0

    :goto_5
    add-int/2addr v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 144
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    add-int/2addr v10, v14

    mul-int v9, v9, v10

    ushr-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x40

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    .line 145
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v9, v9, v2

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    .line 146
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_6

    :cond_5
    const/4 v10, 0x0

    :goto_6
    add-int/2addr v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    .line 147
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    mul-int v9, v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    .line 148
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    add-int/2addr v10, v14

    mul-int v9, v9, v10

    ushr-int/2addr v9, v14

    mul-int/lit8 v9, v9, 0x40

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    mul-int v10, v10, v11

    add-int/2addr v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    .line 149
    add-int/lit8 v9, v3, 0x1

    mul-int v9, v9, v3

    ushr-int/2addr v9, v14

    add-int/2addr v9, v14

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    .line 150
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/2addr v10, v14

    mul-int v9, v9, v10

    ushr-int/2addr v9, v14

    add-int/2addr v9, v14

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    .line 151
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v9, v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    .line 152
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    mul-int v9, v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    .line 153
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    add-int/lit8 v9, v9, 0x7

    ushr-int/lit8 v9, v9, 0x3

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    .line 154
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    and-int/lit8 v9, v9, 0x7

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    .line 155
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    rsub-int/lit8 v9, v9, 0x8

    and-int/lit8 v9, v9, 0x7

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    .line 156
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v9, v14

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int v9, v9, v10

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    .line 157
    add-int/lit8 v9, v2, -0x1

    shl-int/2addr v9, v14

    ushr-int/2addr v9, v12

    add-int/2addr v9, v14

    iput v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    .line 158
    const/4 v9, 0x0

    .local v9, "K1":I
    const/4 v10, 0x0

    .local v10, "K2":I
    const/4 v11, 0x0

    .local v11, "K164":I
    const/16 v20, 0x0

    .line 159
    .local v20, "K264":I
    sparse-switch v2, :sswitch_data_1

    .line 214
    new-instance v12, Ljava/lang/IllegalArgumentException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "error: need to add support for HFEn="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 209
    :sswitch_5
    const/16 v21, 0x80

    .line 210
    .local v21, "K3":I
    const/4 v10, 0x3

    .line 211
    const/4 v9, 0x1

    .line 212
    move/from16 v15, v21

    goto :goto_7

    .line 204
    .end local v21    # "K3":I
    :sswitch_6
    const/16 v21, 0xa

    .line 205
    .restart local v21    # "K3":I
    const/4 v10, 0x2

    .line 206
    const/4 v9, 0x1

    .line 207
    move/from16 v15, v21

    goto :goto_7

    .line 201
    .end local v21    # "K3":I
    :sswitch_7
    const/16 v21, 0xab

    .line 202
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 198
    .end local v21    # "K3":I
    :sswitch_8
    const/16 v21, 0x1d

    .line 199
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 195
    .end local v21    # "K3":I
    :sswitch_9
    const/16 v21, 0x9

    .line 196
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 192
    .end local v21    # "K3":I
    :sswitch_a
    const/16 v21, 0x39

    .line 193
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 189
    .end local v21    # "K3":I
    :sswitch_b
    const/16 v21, 0x63

    .line 190
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 186
    .end local v21    # "K3":I
    :sswitch_c
    const/16 v21, 0x3a

    .line 187
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 183
    .end local v21    # "K3":I
    :sswitch_d
    const/16 v21, 0x35

    .line 184
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 180
    .end local v21    # "K3":I
    :sswitch_e
    const/16 v21, 0x19

    .line 181
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 177
    .end local v21    # "K3":I
    :sswitch_f
    const/16 v21, 0x2f

    .line 178
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 174
    .end local v21    # "K3":I
    :sswitch_10
    const/16 v21, 0x2a

    .line 175
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 171
    .end local v21    # "K3":I
    :sswitch_11
    const/16 v21, 0x1f

    .line 172
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 168
    .end local v21    # "K3":I
    :sswitch_12
    const/16 v21, 0x8

    .line 169
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 165
    .end local v21    # "K3":I
    :sswitch_13
    const/16 v21, 0x10

    .line 166
    .restart local v21    # "K3":I
    move/from16 v15, v21

    goto :goto_7

    .line 162
    .end local v21    # "K3":I
    :sswitch_14
    const/16 v21, 0xd

    .line 163
    .restart local v21    # "K3":I
    move/from16 v15, v21

    .line 216
    .end local v21    # "K3":I
    .local v15, "K3":I
    :goto_7
    if-eqz v10, :cond_6

    .line 219
    rsub-int/lit8 v11, v9, 0x40

    .line 220
    rsub-int/lit8 v20, v10, 0x40

    move/from16 v22, v20

    move/from16 v20, v11

    goto :goto_8

    .line 216
    :cond_6
    move/from16 v22, v20

    move/from16 v20, v11

    .line 222
    .end local v11    # "K164":I
    .local v20, "K164":I
    .local v22, "K264":I
    :goto_8
    and-int/lit8 v11, v15, 0x3f

    rsub-int/lit8 v11, v11, 0x40

    .line 223
    .local v11, "K364":I
    and-int/lit8 v23, v6, 0x1

    if-nez v23, :cond_a

    .line 226
    iput-boolean v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    .line 228
    shl-int v23, v14, v7

    add-int/lit8 v12, v23, 0x1

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    .line 229
    and-int/lit8 v12, v6, 0x1

    if-nez v12, :cond_9

    .line 233
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-gt v12, v6, :cond_8

    .line 237
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v12, v14, :cond_7

    .line 241
    add-int/lit8 v12, v8, 0x2

    add-int/lit8 v23, v7, -0x1

    mul-int v23, v23, v7

    ushr-int/lit8 v23, v23, 0x1

    add-int v12, v12, v23

    add-int/2addr v12, v7

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    goto :goto_9

    .line 239
    :cond_7
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "The case where the term X^3 is removing is not implemented."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 235
    :cond_8
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "It is useless to remove 0 term."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 231
    :cond_9
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "HFEDeg is odd, so to remove the leading term would decrease the degree."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 245
    :cond_a
    iput-boolean v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    .line 246
    add-int/lit8 v12, v8, 0x2

    add-int/lit8 v23, v7, 0x1

    mul-int v23, v23, v7

    ushr-int/lit8 v23, v23, 0x1

    add-int v12, v12, v23

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    .line 248
    :goto_9
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v13, :cond_b

    const/4 v13, 0x1

    goto :goto_a

    :cond_b
    const/4 v13, 0x0

    :goto_a
    add-int/2addr v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    .line 249
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v12, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v13, :cond_c

    const/4 v13, 0x1

    goto :goto_b

    :cond_c
    const/4 v13, 0x0

    :goto_b
    add-int/2addr v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    .line 250
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    add-int/lit8 v13, v5, -0x1

    const/16 v26, 0x1

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int v13, v13, v14

    add-int/2addr v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    .line 251
    const/16 v12, 0x20

    const/16 v13, 0x80

    const/16 v14, 0x100

    if-gt v1, v13, :cond_d

    .line 253
    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    .line 254
    const/4 v12, 0x4

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    .line 255
    iput v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    .line 256
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    goto :goto_c

    .line 258
    :cond_d
    const/16 v12, 0xc0

    if-gt v1, v12, :cond_e

    .line 260
    const/16 v12, 0x30

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    .line 261
    const/4 v12, 0x6

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    .line 262
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    .line 263
    const/16 v12, 0x180

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    goto :goto_c

    .line 267
    :cond_e
    const/16 v12, 0x40

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    .line 268
    const/16 v12, 0x8

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    .line 269
    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    .line 270
    const/16 v12, 0x200

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    .line 272
    :goto_c
    new-instance v12, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    iput-object v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    .line 273
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v13, v13, -0x1

    add-int/2addr v12, v13

    add-int/lit8 v13, v7, 0x1

    mul-int v13, v13, v3

    add-int/2addr v12, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v12, v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    .line 274
    add-int/lit8 v12, v3, 0x1

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v12, v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    .line 275
    const/16 v12, 0x22

    if-le v6, v12, :cond_f

    const/16 v12, 0xc4

    if-le v2, v12, :cond_12

    if-ge v6, v14, :cond_12

    .line 277
    :cond_f
    const/16 v12, 0x11

    if-ne v6, v12, :cond_10

    .line 279
    const/4 v12, 0x4

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    goto :goto_d

    .line 283
    :cond_10
    const/4 v12, 0x6

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    .line 285
    :goto_d
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    shl-int v12, v26, v12

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    .line 286
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    ushr-int v12, v6, v12

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    rem-int v13, v6, v13

    if-eqz v13, :cond_11

    const/4 v13, 0x1

    goto :goto_e

    :cond_11
    const/4 v13, 0x0

    :goto_e
    add-int/2addr v12, v13

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    .line 287
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int v12, v6, v12

    iput v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    .line 289
    :cond_12
    if-eqz v10, :cond_14

    .line 291
    const/16 v12, 0x220

    if-ne v2, v12, :cond_13

    const/16 v12, 0x80

    if-ne v15, v12, :cond_13

    .line 293
    move/from16 v16, v15

    .end local v15    # "K3":I
    .local v16, "K3":I
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move/from16 v19, v16

    move/from16 v16, v9

    move/from16 v9, v19

    move/from16 v19, v18

    move/from16 v21, v22

    move-wide/from16 v22, v12

    move/from16 v18, v17

    move/from16 v17, v10

    .end local v10    # "K2":I
    .end local v22    # "K264":I
    .local v9, "K3":I
    .local v16, "K1":I
    .local v17, "K2":I
    .local v18, "KI":I
    .local v19, "KI64":I
    .local v21, "K264":I
    invoke-direct/range {v15 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;-><init>(IIIIIIJ)V

    move/from16 v17, v18

    move/from16 v18, v19

    .end local v19    # "KI64":I
    .restart local v10    # "K2":I
    .local v17, "KI":I
    .local v18, "KI64":I
    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    move/from16 v12, v16

    move/from16 v16, v9

    move v9, v12

    move/from16 v19, v11

    move/from16 v12, v20

    move/from16 v22, v21

    goto/16 :goto_f

    .line 291
    .end local v16    # "K1":I
    .end local v21    # "K264":I
    .local v9, "K1":I
    .restart local v15    # "K3":I
    .restart local v22    # "K264":I
    :cond_13
    move/from16 v16, v9

    move v9, v15

    move/from16 v21, v22

    .line 297
    .end local v15    # "K3":I
    .end local v22    # "K264":I
    .local v9, "K3":I
    .restart local v16    # "K1":I
    .restart local v21    # "K264":I
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;

    iget-wide v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move/from16 v23, v11

    move-wide/from16 v24, v12

    move/from16 v19, v17

    move/from16 v22, v21

    move/from16 v17, v10

    move/from16 v21, v20

    move/from16 v20, v18

    move/from16 v18, v9

    .end local v9    # "K3":I
    .end local v10    # "K2":I
    .end local v11    # "K364":I
    .local v17, "K2":I
    .local v18, "K3":I
    .local v19, "KI":I
    .local v20, "KI64":I
    .local v21, "K164":I
    .restart local v22    # "K264":I
    .local v23, "K364":I
    invoke-direct/range {v15 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;-><init>(IIIIIIIIJ)V

    move/from16 v9, v16

    move/from16 v11, v18

    move/from16 v17, v19

    move/from16 v18, v20

    move/from16 v12, v21

    move/from16 v19, v23

    .end local v16    # "K1":I
    .end local v20    # "KI64":I
    .end local v21    # "K164":I
    .end local v23    # "K364":I
    .local v9, "K1":I
    .restart local v10    # "K2":I
    .local v11, "K3":I
    .local v12, "K164":I
    .local v17, "KI":I
    .local v18, "KI64":I
    .local v19, "K364":I
    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    move/from16 v16, v11

    goto/16 :goto_f

    .line 302
    .end local v12    # "K164":I
    .end local v19    # "K364":I
    .local v11, "K364":I
    .restart local v15    # "K3":I
    .local v20, "K164":I
    :cond_14
    move/from16 v19, v11

    move v11, v15

    move/from16 v12, v20

    .end local v15    # "K3":I
    .end local v20    # "K164":I
    .local v11, "K3":I
    .restart local v12    # "K164":I
    .restart local v19    # "K364":I
    if-le v2, v14, :cond_15

    const/16 v13, 0x121

    if-ge v2, v13, :cond_15

    const/16 v13, 0x20

    if-le v11, v13, :cond_15

    const/16 v13, 0x40

    if-ge v11, v13, :cond_15

    .line 304
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move/from16 v16, v11

    move-wide/from16 v20, v13

    .end local v11    # "K3":I
    .local v16, "K3":I
    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto :goto_f

    .line 302
    .end local v16    # "K3":I
    .restart local v11    # "K3":I
    :cond_15
    move/from16 v16, v11

    .line 306
    .end local v11    # "K3":I
    .restart local v16    # "K3":I
    const/16 v11, 0x162

    if-ne v2, v11, :cond_16

    .line 308
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto :goto_f

    .line 310
    :cond_16
    const/16 v11, 0x166

    if-ne v2, v11, :cond_17

    .line 312
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_SPECIALIZED358_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto :goto_f

    .line 314
    :cond_17
    const/16 v11, 0x192

    if-ne v2, v11, :cond_18

    .line 316
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto :goto_f

    .line 320
    :cond_18
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    sparse-switch v11, :sswitch_data_2

    goto :goto_f

    .line 329
    :sswitch_15
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    goto :goto_f

    .line 326
    :sswitch_16
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM288_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    .line 327
    goto :goto_f

    .line 323
    :sswitch_17
    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;

    iget-wide v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    move-wide/from16 v20, v13

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;-><init>(IIIIJ)V

    iput-object v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    .line 324
    nop

    .line 333
    :goto_f
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 334
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 335
    const/16 v11, 0x1f

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    .line 336
    add-int/lit8 v13, v2, -0x1

    .line 337
    .local v13, "e":I
    :goto_10
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    ushr-int v14, v13, v14

    if-nez v14, :cond_19

    .line 339
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    add-int/lit8 v14, v14, -0x1

    iput v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    goto :goto_10

    .line 341
    :cond_19
    add-int/lit8 v14, v2, 0x1

    ushr-int/lit8 v13, v14, 0x1

    .line 343
    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    .line 344
    :goto_11
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    ushr-int v11, v13, v11

    if-nez v11, :cond_1a

    .line 346
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    goto :goto_11

    .line 348
    :cond_1a
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    add-int/lit8 v11, v11, -0x1

    iput v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    .line 349
    return-void

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_4
        0x9 -> :sswitch_3
        0xc -> :sswitch_2
        0xd -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0xae -> :sswitch_14
        0xaf -> :sswitch_13
        0xb1 -> :sswitch_12
        0xb2 -> :sswitch_11
        0x109 -> :sswitch_10
        0x10a -> :sswitch_f
        0x10c -> :sswitch_e
        0x10e -> :sswitch_d
        0x10f -> :sswitch_c
        0x162 -> :sswitch_b
        0x166 -> :sswitch_a
        0x16c -> :sswitch_9
        0x16e -> :sswitch_8
        0x192 -> :sswitch_7
        0x219 -> :sswitch_6
        0x220 -> :sswitch_5
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x6 -> :sswitch_17
        0x9 -> :sswitch_16
        0xc -> :sswitch_15
    .end sparse-switch
.end method

.method private CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 18
    .param p1, "tab"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "tab_j"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "prod"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tab",
            "tab_j",
            "prod"
        }
    .end annotation

    .line 2501
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    const-wide/16 v4, 0x0

    .local v4, "mask":J
    const-wide/16 v6, 0x0

    move-wide v7, v6

    .local v7, "d":J
    :goto_0
    if-lez v1, :cond_0

    .line 2503
    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v11

    xor-long/2addr v9, v11

    .line 2504
    .local v9, "bo":J
    invoke-static {v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v9

    .line 2505
    or-long/2addr v4, v9

    .line 2506
    add-long/2addr v7, v4

    .line 2501
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2509
    .end local v9    # "bo":J
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move v9, v1

    move-wide v10, v4

    .end local v1    # "i":I
    .end local v4    # "mask":J
    .local v9, "i":I
    .local v10, "mask":J
    :goto_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    if-ge v9, v1, :cond_1

    .line 2511
    int-to-long v4, v9

    xor-long/2addr v4, v7

    .line 2512
    .local v4, "bo":J
    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide v4

    .line 2513
    neg-long v12, v4

    invoke-virtual {v3, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v14

    move-wide/from16 v16, v4

    .end local v4    # "bo":J
    .local v16, "bo":J
    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    invoke-static {v14, v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->CMP_LT_UINT(JJ)J

    move-result-wide v3

    and-long/2addr v3, v12

    or-long/2addr v10, v3

    .line 2509
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, p2

    goto :goto_1

    .line 2515
    .end local v16    # "bo":J
    :cond_1
    neg-long v4, v10

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move-object/from16 v3, p2

    move-object/from16 v1, p3

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V

    .line 2516
    return-void
.end method

.method private LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V
    .locals 9
    .param p1, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "L_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "U"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "NB_IT"    # I
    .param p5, "nq"    # I
    .param p6, "nr"    # I
    .param p7, "iq"    # I
    .param p8, "REM"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "S",
            "L_cp",
            "U",
            "NB_IT",
            "nq",
            "nr",
            "iq",
            "REM"
        }
    .end annotation

    .line 1700
    const/4 v0, 0x0

    .local v0, "ir":I
    :goto_0
    if-ge v0, p4, :cond_2

    .line 1702
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v5, v1

    .line 1704
    .local v5, "U_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v1, 0x1

    move v8, v1

    .local v8, "jq":I
    :goto_1
    if-gt v8, p5, :cond_0

    .line 1706
    const/16 v6, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    .line 1704
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1708
    :cond_0
    if-eqz p8, :cond_1

    .line 1710
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    .line 1712
    :cond_1
    move/from16 v7, p7

    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1700
    .end local v5    # "U_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v8    # "jq":I
    :cond_2
    move/from16 v7, p7

    .line 1714
    .end local v0    # "ir":I
    return-void
.end method

.method private LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 9
    .param p1, "MQS2_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "MQS_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "MQS_cpi"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "S_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p5, "STARTIR"    # I
    .param p6, "NB_ITIR"    # I
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
            "MQS2_cp",
            "MQS_cpj",
            "MQS_cpi",
            "S_cpj",
            "STARTIR",
            "NB_ITIR"
        }
    .end annotation

    .line 2988
    move v0, p5

    .local v0, "ir":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 2990
    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 2991
    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2993
    const/4 v7, 0x0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v5, p4

    .end local p1    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p2    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v5, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2995
    iget p1, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v5, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2988
    add-int/lit8 v0, v0, 0x1

    move-object p1, v4

    goto :goto_0

    .line 2997
    .end local v0    # "ir":I
    .end local v4    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v6    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p1    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p2    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_0
    return-void
.end method

.method private LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 7
    .param p1, "MQS2_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "S_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "MQS_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "STARTIR"    # I
    .param p5, "NB_ITIR"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MQS2_cp",
            "S_cpj",
            "MQS_cpj",
            "STARTIR",
            "NB_ITIR"
        }
    .end annotation

    .line 3001
    move v0, p4

    .local v0, "ir":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 3004
    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 3001
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3006
    .end local v0    # "ir":I
    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v3    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p1    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_0
    return-void
.end method

.method private LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .locals 6
    .param p1, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "L"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "U"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "NB_IT"    # I
    .param p5, "iq"    # I
    .param p6, "jq"    # I
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
            "S",
            "L",
            "U",
            "NB_IT",
            "iq",
            "jq"
        }
    .end annotation

    .line 1718
    invoke-static {p5, p6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1719
    .local v0, "mini":I
    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    .line 1721
    const/4 v1, 0x0

    .local v1, "jr":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 1724
    const/4 v2, 0x0

    invoke-virtual {p2, v2, p3, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v2

    .line 1725
    .local v2, "tmp":J
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v2

    .line 1726
    shl-long v4, v2, v1

    invoke-virtual {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    .line 1727
    invoke-virtual {p3, p6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1721
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1729
    .end local v1    # "jr":I
    .end local v2    # "tmp":J
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    .line 1730
    return-void
.end method

.method private LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J
    .locals 6
    .param p1, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk64"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "START"    # I
    .param p4, "NB_IT"    # I
    .param p5, "xj"    # J
    .param p7, "NB_BYTES_EQ"    # I
    .param p8, "NB_WORD_EQ"    # I
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
            "c",
            "pk64",
            "START",
            "NB_IT",
            "xj",
            "NB_BYTES_EQ",
            "NB_WORD_EQ"
        }
    .end annotation

    .line 1431
    move v0, p3

    .local v0, "jr":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 1433
    const-wide/16 v1, 0x1

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 1435
    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2, v1, p8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1437
    :cond_0
    invoke-virtual {p2, p7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1438
    const/4 v1, 0x1

    ushr-long/2addr p5, v1

    .line 1431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1440
    .end local v0    # "jr":I
    :cond_1
    return-wide p5
.end method

.method private LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V
    .locals 10
    .param p1, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk64"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "START"    # I
    .param p4, "NB_IT"    # I
    .param p5, "xj"    # J
    .param p7, "NB_BYTES_EQ"    # I
    .param p8, "NB_WORD_EQ"    # I
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
            "c",
            "pk64",
            "START",
            "NB_IT",
            "xj",
            "NB_BYTES_EQ",
            "NB_WORD_EQ"
        }
    .end annotation

    .line 1422
    move v0, p3

    move-wide v6, p5

    .end local p5    # "xj":J
    .local v0, "jr":I
    .local v6, "xj":J
    :goto_0
    add-int/lit8 v1, p4, -0x4

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1424
    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    move-result-wide v6

    .line 1422
    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 1426
    :cond_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move/from16 v8, p7

    move/from16 v9, p8

    move v4, v0

    .end local v0    # "jr":I
    .local v4, "jr":I
    invoke-direct/range {v1 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    .line 1427
    return-void
.end method

.method private LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V
    .locals 4
    .param p1, "MQS_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "MQS2_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "bit_kr"    # J
    .param p5, "START"    # I
    .param p6, "NB_IT"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MQS_cpj",
            "MQS2_cp",
            "bit_kr",
            "START",
            "NB_IT"
        }
    .end annotation

    .line 3024
    move v0, p5

    .local v0, "kr":I
    :goto_0
    if-ge v0, p6, :cond_0

    .line 3027
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const-wide/16 v2, 0x1

    and-long/2addr v2, p3

    neg-long v2, v2

    invoke-virtual {p2, p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 3028
    const/4 v1, 0x1

    ushr-long/2addr p3, v1

    .line 3024
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3030
    .end local v0    # "kr":I
    :cond_0
    return-void
.end method

.method private LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 8
    .param p1, "MQS2_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "S_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "MQS_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "MQS2_cp",
            "S_cpj",
            "MQS_cpj",
            "start",
            "end"
        }
    .end annotation

    .line 3010
    move v0, p4

    move v7, v0

    .local v7, "kq":I
    :goto_0
    if-ge v7, p5, :cond_0

    .line 3012
    invoke-virtual {p2, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object v0, p0

    move-object v2, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    .line 3010
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3014
    .end local v7    # "kq":I
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v1, :cond_1

    .line 3016
    invoke-virtual {p2, p5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v3

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v0, p0

    move-object v2, p1

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    .line 3019
    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3020
    return-void
.end method

.method private chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .locals 17
    .param p1, "root"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .param p3, "U"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "root",
            "F",
            "U"
        }
    .end annotation

    .line 1830
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v4, p2

    move-object/from16 v9, p3

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v7, v1

    .line 1831
    .local v7, "hash":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v10, 0x1

    shl-int/2addr v2, v10

    sub-int/2addr v2, v10

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1832
    .local v1, "poly":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v3, v10

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v5

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v11, v2

    .line 1833
    .local v11, "poly2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v5, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1835
    .local v5, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget-object v2, v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v5, v2, v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1837
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/16 v3, 0x22

    const-wide/16 v12, 0x1

    if-le v2, v3, :cond_1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    const/16 v3, 0xc4

    if-le v2, v3, :cond_0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/16 v3, 0x100

    if-ge v2, v3, :cond_0

    move-object v15, v1

    move-object v14, v4

    move-object v1, v5

    goto :goto_0

    .line 1850
    :cond_0
    const/4 v2, 0x2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int/2addr v2, v3

    .line 1852
    .local v2, "i":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v2

    invoke-virtual {v1, v3, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1854
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    move v3, v2

    move-object v6, v5

    move-object/from16 v5, p2

    .end local v5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1855
    move-object v5, v6

    move v6, v2

    .end local v2    # "i":I
    .restart local v5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "i":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v2, v10

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v15, v1

    move-object v14, v4

    move-object v1, v5

    .end local v5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v15, "poly":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    goto :goto_1

    .line 1837
    .end local v6    # "i":I
    .end local v15    # "poly":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "poly":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_1
    move-object v15, v1

    move-object v14, v4

    move-object v1, v5

    .line 1842
    .end local v5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v15    # "poly":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_0
    invoke-direct {v0, v15, v14, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1858
    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v15, v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1860
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    .line 1862
    .local v2, "l":I
    iget-object v3, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1863
    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    .line 1864
    invoke-virtual {v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 1866
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v4

    invoke-virtual {v11, v3, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1868
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v11, v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1869
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int/2addr v4, v10

    invoke-virtual {v15, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getD_for_not0_or_plus(II)I

    move-result v2

    .line 1871
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    invoke-direct {v0, v11, v3, v15, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v12

    .line 1872
    .end local v2    # "l":I
    .local v12, "l":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    if-eqz v2, :cond_2

    .line 1874
    invoke-virtual {v15, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1876
    :cond_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v13, 0x0

    invoke-virtual {v15, v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v2

    if-nez v2, :cond_3

    .line 1881
    return v13

    .line 1885
    :cond_3
    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1886
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v12

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1887
    .local v2, "roots":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct {v0, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1888
    if-ne v12, v10, :cond_4

    .line 1891
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object/from16 v16, v1

    move-object v10, v2

    move-object v1, v7

    goto :goto_2

    .line 1896
    :cond_4
    invoke-virtual {v0, v2, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1898
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v3, v3, 0x3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v4

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v5, v5, 0x3

    new-array v5, v5, [B

    move-object v10, v2

    .end local v2    # "roots":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v10, "roots":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    move-object/from16 v16, v1

    move-object v1, v7

    move-object v7, v5

    .end local v7    # "hash":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "hash":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v16, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 1900
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v2

    int-to-long v4, v12

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->remainderUnsigned(JJ)J

    move-result-wide v2

    long-to-int v3, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v13, v10, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1902
    :goto_2
    return v12
.end method

.method private choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V
    .locals 9
    .param p1, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "START"    # I
    .param p4, "xj"    # J
    .param p6, "NB_BYTES_EQ"    # I
    .param p7, "NB_WORD_EQ"    # I
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
            "c",
            "pk",
            "START",
            "xj",
            "NB_BYTES_EQ",
            "NB_WORD_EQ"
        }
    .end annotation

    .line 1409
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1411
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_NOCST_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)J

    goto :goto_0

    .line 1415
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v5, p4

    move v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    .line 1417
    :goto_0
    return-void
.end method

.method private convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 19
    .param p1, "pk2"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk2",
            "pk"
        }
    .end annotation

    .line 1017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v6, p2

    invoke-direct {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1019
    .local v2, "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v7, v3, -0x1

    .line 1020
    .local v7, "k":I
    ushr-int/lit8 v4, v7, 0x6

    .line 1021
    .local v4, "HFEnvqm1":I
    and-int/lit8 v8, v7, 0x3f

    .line 1022
    .local v8, "HFEnvrm1":I
    invoke-direct {v0, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v3

    .line 1023
    .local v3, "nb_bits":I
    if-eqz v8, :cond_0

    .line 1025
    add-int/lit8 v5, v8, 0x1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result v3

    .line 1029
    :cond_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v5, v9

    .line 1030
    .end local v7    # "k":I
    .local v5, "k":I
    ushr-int/lit8 v7, v5, 0x6

    .line 1031
    .local v7, "LAST_ROW_Q":I
    and-int/lit8 v9, v5, 0x3f

    .line 1032
    .local v9, "LAST_ROW_R":I
    move v10, v7

    .line 1034
    .local v10, "iq":I
    const/16 v11, 0x40

    if-eqz v9, :cond_6

    .line 1036
    move v12, v9

    .line 1037
    .local v12, "ir":I
    and-int/lit8 v13, v3, 0x3f

    if-eqz v13, :cond_4

    .line 1039
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x7

    ushr-int/lit8 v13, v13, 0x3

    and-int/lit8 v13, v13, 0x7

    if-eqz v13, :cond_3

    .line 1041
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v14, v15

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v14, v15

    and-int/lit8 v14, v14, 0x3f

    rsub-int/lit8 v14, v14, 0x40

    and-int/lit8 v14, v14, 0x3f

    sub-int/2addr v13, v14

    ushr-int/lit8 v13, v13, 0x6

    .line 1042
    .local v13, "NB_WHOLE_BLOCKS":I
    invoke-virtual {v1, v2, v13, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1043
    move v5, v13

    .line 1044
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v14

    and-int/lit8 v16, v3, 0x3f

    ushr-long v14, v14, v16

    invoke-virtual {v1, v5, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1045
    if-ge v13, v7, :cond_1

    .line 1047
    add-int/lit8 v14, v5, 0x1

    invoke-virtual {v2, v14}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v14

    .line 1048
    .local v14, "end":J
    and-int/lit8 v16, v3, 0x3f

    rsub-int/lit8 v11, v16, 0x40

    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "nb_bits":I
    .end local v4    # "HFEnvqm1":I
    .local v16, "HFEnvqm1":I
    .local v17, "nb_bits":I
    shl-long v3, v14, v11

    invoke-virtual {v1, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1049
    add-int/lit8 v3, v5, 0x1

    and-int/lit8 v4, v17, 0x3f

    move/from16 v18, v7

    .end local v7    # "LAST_ROW_Q":I
    .local v18, "LAST_ROW_Q":I
    ushr-long v6, v14, v4

    invoke-virtual {v1, v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_0

    .line 1051
    .end local v14    # "end":J
    .end local v16    # "HFEnvqm1":I
    .end local v17    # "nb_bits":I
    .end local v18    # "LAST_ROW_Q":I
    .restart local v3    # "nb_bits":I
    .restart local v4    # "HFEnvqm1":I
    .restart local v7    # "LAST_ROW_Q":I
    :cond_1
    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v18, v7

    .end local v3    # "nb_bits":I
    .end local v4    # "HFEnvqm1":I
    .end local v7    # "LAST_ROW_Q":I
    .restart local v16    # "HFEnvqm1":I
    .restart local v17    # "nb_bits":I
    .restart local v18    # "LAST_ROW_Q":I
    and-int/lit8 v3, v17, 0x3f

    add-int/2addr v3, v12

    if-le v3, v11, :cond_2

    .line 1053
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v3

    and-int/lit8 v6, v17, 0x3f

    sub-int/2addr v11, v6

    shl-long/2addr v3, v11

    invoke-virtual {v1, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1055
    .end local v13    # "NB_WHOLE_BLOCKS":I
    :cond_2
    :goto_0
    goto/16 :goto_1

    .line 1058
    .end local v16    # "HFEnvqm1":I
    .end local v17    # "nb_bits":I
    .end local v18    # "LAST_ROW_Q":I
    .restart local v3    # "nb_bits":I
    .restart local v4    # "HFEnvqm1":I
    .restart local v7    # "LAST_ROW_Q":I
    :cond_3
    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v18, v7

    .end local v3    # "nb_bits":I
    .end local v4    # "HFEnvqm1":I
    .end local v7    # "LAST_ROW_Q":I
    .restart local v16    # "HFEnvqm1":I
    .restart local v17    # "nb_bits":I
    .restart local v18    # "LAST_ROW_Q":I
    and-int/lit8 v3, v17, 0x3f

    invoke-virtual {v1, v2, v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1059
    invoke-virtual {v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    and-int/lit8 v6, v17, 0x3f

    ushr-long/2addr v3, v6

    invoke-virtual {v1, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1060
    and-int/lit8 v3, v17, 0x3f

    add-int/2addr v3, v12

    if-le v3, v11, :cond_9

    .line 1062
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    and-int/lit8 v6, v17, 0x3f

    sub-int/2addr v11, v6

    shl-long/2addr v3, v11

    invoke-virtual {v1, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_1

    .line 1068
    .end local v16    # "HFEnvqm1":I
    .end local v17    # "nb_bits":I
    .end local v18    # "LAST_ROW_Q":I
    .restart local v3    # "nb_bits":I
    .restart local v4    # "HFEnvqm1":I
    .restart local v7    # "LAST_ROW_Q":I
    :cond_4
    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v18, v7

    .end local v3    # "nb_bits":I
    .end local v4    # "HFEnvqm1":I
    .end local v7    # "LAST_ROW_Q":I
    .restart local v16    # "HFEnvqm1":I
    .restart local v17    # "nb_bits":I
    .restart local v18    # "LAST_ROW_Q":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_5

    .line 1070
    invoke-virtual {v1, v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    .line 1071
    invoke-virtual {v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v3

    invoke-virtual {v1, v10, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_1

    .line 1075
    :cond_5
    add-int/lit8 v3, v10, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    goto :goto_1

    .line 1079
    .end local v12    # "ir":I
    .end local v16    # "HFEnvqm1":I
    .end local v17    # "nb_bits":I
    .end local v18    # "LAST_ROW_Q":I
    .restart local v3    # "nb_bits":I
    .restart local v4    # "HFEnvqm1":I
    .restart local v7    # "LAST_ROW_Q":I
    :cond_6
    move/from16 v17, v3

    move/from16 v16, v4

    move/from16 v18, v7

    .end local v3    # "nb_bits":I
    .end local v4    # "HFEnvqm1":I
    .end local v7    # "LAST_ROW_Q":I
    .restart local v16    # "HFEnvqm1":I
    .restart local v17    # "nb_bits":I
    .restart local v18    # "LAST_ROW_Q":I
    if-eqz v18, :cond_9

    .line 1081
    and-int/lit8 v3, v17, 0x3f

    if-eqz v3, :cond_8

    .line 1083
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    ushr-int/lit8 v3, v3, 0x3

    and-int/lit8 v3, v3, 0x7

    if-eqz v3, :cond_7

    .line 1085
    add-int/lit8 v3, v10, -0x1

    and-int/lit8 v4, v17, 0x3f

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1086
    add-int/lit8 v5, v10, -0x1

    .line 1087
    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    and-int/lit8 v6, v17, 0x3f

    ushr-long/2addr v3, v6

    invoke-virtual {v1, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1088
    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck(I)J

    move-result-wide v3

    and-int/lit8 v6, v17, 0x3f

    sub-int/2addr v11, v6

    shl-long/2addr v3, v11

    invoke-virtual {v1, v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_1

    .line 1092
    :cond_7
    and-int/lit8 v3, v17, 0x3f

    invoke-virtual {v1, v2, v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    goto :goto_1

    .line 1097
    :cond_8
    invoke-virtual {v1, v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    .line 1101
    :cond_9
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide v3

    const-wide/16 v6, 0x1

    and-long/2addr v3, v6

    return-wide v3
.end method

.method private convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 7
    .param p1, "pk2"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk2",
            "pk"
        }
    .end annotation

    .line 946
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    move-object v3, v0

    .line 947
    .local v3, "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-direct {p0, p1, v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I

    move-result v4

    .line 948
    .local v4, "nb_bits":I
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v0, :cond_0

    .line 950
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    add-int/lit8 v6, v0, 0x1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    goto :goto_0

    .line 948
    .end local v2    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p1    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_0
    move-object v2, p1

    .line 953
    .end local p1    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide v0

    const-wide/16 v5, 0x1

    and-long/2addr v0, v5

    return-wide v0
.end method

.method private convMonic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 4
    .param p1, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "F",
            "d"
        }
    .end annotation

    .line 2240
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2241
    .local v0, "inv":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    .line 2242
    .local v1, "F_orig":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p2

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2244
    const/4 v2, 0x0

    invoke-direct {p0, v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2245
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    .line 2246
    add-int/lit8 v2, p2, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 2248
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2250
    invoke-virtual {p0, p1, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2246
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2252
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2253
    return-void
.end method

.method private copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 3
    .param p1, "tmp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "tab_ipa"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "tab"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "tab_i"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p5, "prod"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p6, "pb"    # I
    .param p7, "i"    # I
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
            "tmp",
            "tab_ipa",
            "tab",
            "tab_i",
            "prod",
            "pb",
            "i"
        }
    .end annotation

    .line 2477
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2478
    move v0, p6

    .local v0, "pc":I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2480
    add-int v1, p7, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    invoke-virtual {p4, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2481
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2478
    ushr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2483
    .end local v0    # "pc":I
    :cond_0
    return-void
.end method

.method private copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2
    .param p1, "buf"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "F_cp",
            "len"
        }
    .end annotation

    .line 572
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 573
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 574
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 576
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v1, v1, 0x1

    mul-int v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 577
    return-void
.end method

.method private div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 7
    .param p1, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "da"    # I
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "db"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "da",
            "B",
            "db"
        }
    .end annotation

    .line 2150
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v3, v0

    .line 2151
    .local v3, "leading_coef":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2154
    .local v2, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_0
    if-lt p2, p4, :cond_1

    .line 2157
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    .line 2158
    if-ge p2, p4, :cond_0

    .line 2161
    move-object v4, p3

    move v6, p4

    goto :goto_1

    .line 2163
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2164
    shl-int/lit8 v0, p4, 0x1

    sub-int/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2165
    .local v5, "i":I
    sub-int v0, p2, p4

    add-int/2addr v0, v5

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v1

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2166
    move-object v1, p0

    move-object v4, p3

    move v6, p4

    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .local v4, "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "db":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2167
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2154
    .end local v4    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "i":I
    .end local v6    # "db":I
    .restart local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "db":I
    :cond_1
    move-object v4, p3

    move v6, p4

    .line 2169
    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .restart local v4    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "db":I
    :goto_1
    return-void
.end method

.method private div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 7
    .param p1, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "da"    # I
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "db"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "da",
            "B",
            "db"
        }
    .end annotation

    .line 2395
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v2, v0

    .line 2396
    .local v2, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    .line 2398
    .local v0, "A_orig":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2399
    :goto_0
    if-lt p2, p4, :cond_0

    .line 2401
    neg-int v1, p4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v3

    invoke-virtual {v2, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2402
    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move v6, p4

    .end local p1    # "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .local v3, "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "db":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2404
    iget p1, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int p1, p1

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2399
    add-int/lit8 p2, p2, -0x1

    move-object p1, v3

    goto :goto_0

    .line 2406
    .end local v3    # "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v6    # "db":I
    .restart local p1    # "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "db":I
    :cond_0
    move-object v3, p1

    .end local p1    # "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "A":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2407
    return-void
.end method

.method private div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 7
    .param p1, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "da"    # I
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "db"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "da",
            "B",
            "db"
        }
    .end annotation

    .line 2173
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v3, v0

    .line 2174
    .local v3, "leading_coef":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2176
    .local v2, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_0
    if-lt p2, p4, :cond_1

    .line 2179
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    .line 2180
    if-ge p2, p4, :cond_0

    .line 2183
    move-object v1, p0

    move-object v4, p3

    move v6, p4

    goto :goto_1

    .line 2185
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    invoke-virtual {v3, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2186
    neg-int v0, p4

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v1

    invoke-virtual {v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2187
    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p3

    move v6, p4

    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .local v4, "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "db":I
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2189
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2176
    .end local v4    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v6    # "db":I
    .restart local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "db":I
    :cond_1
    move-object v1, p0

    move-object v4, p3

    move v6, p4

    .line 2191
    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .restart local v4    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "db":I
    :goto_1
    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 2193
    add-int/lit8 p2, p2, 0x1

    .line 2196
    :cond_2
    iget p3, v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 p4, 0x1

    invoke-virtual {p1, p2, p4, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    .line 2198
    return p2
.end method

.method private divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6
    .param p1, "poly"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "idx"    # I
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .param p6, "cst"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
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
            "poly",
            "idx",
            "start",
            "end",
            "F",
            "cst"
        }
    .end annotation

    .line 2077
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p2

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2078
    .local v0, "leading_coef":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2079
    .local v1, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move v2, p3

    .local v2, "j":I
    :goto_0
    if-lt v2, p4, :cond_1

    .line 2081
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    neg-int v3, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v4

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2083
    invoke-virtual {p0, v1, v0, p6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2084
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge v3, v4, :cond_0

    .line 2086
    iget-object v4, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v4, v4, v3

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2087
    iget-object v4, p5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v3

    invoke-virtual {p0, v1, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2084
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2089
    .end local v3    # "i":I
    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2079
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2091
    .end local v2    # "j":I
    :cond_1
    return-void
.end method

.method private dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 4
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "vec_x"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "vec_y"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "vec_x",
            "vec_y",
            "len"
        }
    .end annotation

    .line 589
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 590
    .local v0, "tmp_mul":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    .line 591
    .local v1, "vec_x_orig":I
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    .line 593
    .local v2, "vec_y_orig":I
    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 594
    add-int/lit8 v3, p4, -0x1

    invoke-virtual {p0, v0, p2, p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 595
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 596
    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 597
    invoke-virtual {p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 598
    return-void
.end method

.method private dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2
    .param p1, "buf"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "alpha_vec"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "F_cp",
            "alpha_vec",
            "len"
        }
    .end annotation

    .line 581
    invoke-direct {p0, p1, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 582
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 584
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v0, p4

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 585
    return-void
.end method

.method private evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 5
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "x"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "mq_quo"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p4, "mq_rem_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "x",
            "mq_quo",
            "mq_rem_orig"
        }
    .end annotation

    .line 1231
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1232
    .local v0, "mq_rem":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1233
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 1235
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1237
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-ge v1, v2, :cond_1

    .line 1239
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v3

    shl-long/2addr v3, v1

    invoke-virtual {p1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1240
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 1237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1242
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 27
    .param p1, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "m"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "pk_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "m",
            "pk_orig"
        }
    .end annotation

    .line 1341
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    .line 1342
    .local v2, "i":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/lit8 v3, v3, 0x3

    if-eqz v3, :cond_0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    ushr-int/lit8 v3, v3, 0x3

    shl-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    :goto_0
    move v10, v3

    .line 1343
    .local v10, "NB_EQ":I
    and-int/lit8 v3, v10, 0x7

    const/4 v11, 0x1

    if-eqz v3, :cond_1

    ushr-int/lit8 v3, v10, 0x3

    add-int/2addr v3, v11

    goto :goto_1

    :cond_1
    ushr-int/lit8 v3, v10, 0x3

    :goto_1
    move v6, v3

    .line 1344
    .local v6, "NB_BYTES_EQ":I
    ushr-int/lit8 v3, v6, 0x3

    and-int/lit8 v4, v6, 0x7

    const/4 v12, 0x0

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    add-int v7, v3, v4

    .line 1346
    .local v7, "NB_WORD_EQ":I
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v13, p3

    invoke-direct {v3, v13}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1347
    .local v3, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getArray()[J

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getArray()[J

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v8

    invoke-static {v4, v12, v5, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1348
    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1350
    const/4 v4, 0x0

    move v14, v4

    .local v14, "iq":I
    :goto_3
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x1

    if-ge v14, v4, :cond_7

    .line 1352
    invoke-virtual {v9, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    .line 1353
    .local v4, "xi":J
    const/4 v8, 0x0

    move/from16 v19, v2

    move-wide/from16 v20, v4

    move v2, v8

    .end local v4    # "xi":J
    .local v2, "ir":I
    .local v19, "i":I
    .local v20, "xi":J
    :goto_4
    const/16 v4, 0x40

    if-ge v2, v4, :cond_6

    .line 1355
    and-long v4, v20, v17

    cmp-long v8, v4, v15

    if-eqz v8, :cond_5

    .line 1359
    invoke-virtual {v1, v12, v3, v12, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1360
    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1361
    move v8, v7

    move v7, v6

    .end local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_BYTES_EQ":I
    .local v8, "NB_WORD_EQ":I
    ushr-long v5, v20, v11

    .line 1362
    .local v5, "xj":J
    move v4, v2

    move-object v2, v3

    .end local v3    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v2, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v4, "ir":I
    add-int/lit8 v3, v4, 0x1

    move/from16 v22, v4

    .end local v4    # "ir":I
    .local v22, "ir":I
    const/16 v4, 0x40

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    .line 1363
    add-int/lit8 v1, v14, 0x1

    move-wide/from16 v23, v5

    .end local v5    # "xj":J
    .local v1, "jq":I
    .local v23, "xj":J
    :goto_5
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v1, v3, :cond_3

    .line 1365
    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v5

    .line 1366
    .end local v23    # "xj":J
    .restart local v5    # "xj":J
    const/4 v3, 0x0

    const/16 v4, 0x40

    move/from16 v25, v1

    move-object/from16 v1, p1

    .end local v1    # "jq":I
    .local v25, "jq":I
    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPJR_UNROLLED_64(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IIJII)V

    .line 1363
    add-int/lit8 v1, v25, 0x1

    move-wide/from16 v23, v5

    .end local v25    # "jq":I
    .restart local v1    # "jq":I
    goto :goto_5

    .line 1368
    .end local v5    # "xj":J
    .restart local v23    # "xj":J
    :cond_3
    move/from16 v25, v1

    .end local v1    # "jq":I
    .restart local v25    # "jq":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v1, :cond_4

    .line 1370
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-virtual {v9, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    const/4 v3, 0x0

    move-object/from16 v1, p1

    move v6, v7

    move v7, v8

    .end local v8    # "NB_WORD_EQ":I
    .restart local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_WORD_EQ":I
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    move-object v3, v2

    move v7, v6

    .end local v2    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v6    # "NB_BYTES_EQ":I
    .restart local v3    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v7, "NB_BYTES_EQ":I
    .restart local v8    # "NB_WORD_EQ":I
    goto :goto_6

    .line 1368
    .end local v3    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v2    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    :cond_4
    move-object/from16 v1, p1

    move-object v3, v2

    .end local v2    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v3    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    goto :goto_6

    .line 1375
    .end local v8    # "NB_WORD_EQ":I
    .end local v22    # "ir":I
    .end local v23    # "xj":J
    .end local v25    # "jq":I
    .local v2, "ir":I
    .restart local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_WORD_EQ":I
    :cond_5
    move/from16 v22, v2

    move v8, v7

    move v7, v6

    .end local v2    # "ir":I
    .end local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_BYTES_EQ":I
    .restart local v8    # "NB_WORD_EQ":I
    .restart local v22    # "ir":I
    mul-int v6, v19, v7

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1377
    :goto_6
    ushr-long v20, v20, v11

    .line 1353
    add-int/lit8 v2, v22, 0x1

    .end local v22    # "ir":I
    .restart local v2    # "ir":I
    add-int/lit8 v19, v19, -0x1

    move v6, v7

    move v7, v8

    goto :goto_4

    .line 1350
    .end local v8    # "NB_WORD_EQ":I
    .restart local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_WORD_EQ":I
    :cond_6
    move/from16 v22, v2

    move v8, v7

    move v7, v6

    .end local v2    # "ir":I
    .end local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_BYTES_EQ":I
    .restart local v8    # "NB_WORD_EQ":I
    .restart local v22    # "ir":I
    add-int/lit8 v14, v14, 0x1

    move v7, v8

    move/from16 v2, v19

    goto/16 :goto_3

    .line 1381
    .end local v8    # "NB_WORD_EQ":I
    .end local v19    # "i":I
    .end local v20    # "xi":J
    .end local v22    # "ir":I
    .local v2, "i":I
    .restart local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_WORD_EQ":I
    :cond_7
    move v8, v7

    move v7, v6

    .end local v6    # "NB_BYTES_EQ":I
    .local v7, "NB_BYTES_EQ":I
    .restart local v8    # "NB_WORD_EQ":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v4, :cond_a

    .line 1383
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    .line 1384
    .local v4, "xi":J
    const/4 v6, 0x0

    move/from16 v19, v2

    move-wide/from16 v20, v4

    move v2, v6

    .end local v4    # "xi":J
    .local v2, "ir":I
    .restart local v19    # "i":I
    .restart local v20    # "xi":J
    :goto_7
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v2, v4, :cond_9

    .line 1386
    and-long v4, v20, v17

    cmp-long v6, v4, v15

    if-eqz v6, :cond_8

    .line 1390
    invoke-virtual {v1, v12, v3, v12, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1391
    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1392
    move v6, v2

    move-object v2, v3

    .end local v3    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v2, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v6, "ir":I
    add-int/lit8 v3, v6, 0x1

    ushr-long v4, v20, v11

    move/from16 v26, v8

    move v8, v6

    move v6, v7

    move/from16 v7, v26

    .local v6, "NB_BYTES_EQ":I
    .local v7, "NB_WORD_EQ":I
    .local v8, "ir":I
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->choose_LOOPJR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;IJII)V

    move-object v0, v2

    move v3, v7

    move v7, v6

    .end local v2    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v6    # "NB_BYTES_EQ":I
    .local v0, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "NB_WORD_EQ":I
    .local v7, "NB_BYTES_EQ":I
    goto :goto_8

    .line 1396
    .end local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v2, "ir":I
    .local v3, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v8, "NB_WORD_EQ":I
    :cond_8
    move-object v0, v3

    move v3, v8

    move v8, v2

    .end local v2    # "ir":I
    .restart local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "NB_WORD_EQ":I
    .local v8, "ir":I
    mul-int v6, v19, v7

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1398
    :goto_8
    ushr-long v20, v20, v11

    .line 1384
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "ir":I
    .restart local v2    # "ir":I
    add-int/lit8 v19, v19, -0x1

    move v8, v3

    move-object v3, v0

    move-object/from16 v0, p0

    goto :goto_7

    .end local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v8, "NB_WORD_EQ":I
    :cond_9
    move-object v0, v3

    move v3, v8

    move v8, v2

    .end local v2    # "ir":I
    .restart local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "NB_WORD_EQ":I
    .local v8, "ir":I
    move/from16 v2, v19

    goto :goto_9

    .line 1381
    .end local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v19    # "i":I
    .end local v20    # "xi":J
    .local v2, "i":I
    .local v3, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v8, "NB_WORD_EQ":I
    :cond_a
    move-object v0, v3

    move v3, v8

    .line 1401
    .end local v8    # "NB_WORD_EQ":I
    .restart local v0    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "NB_WORD_EQ":I
    :goto_9
    and-int/lit8 v4, v10, 0x3f

    if-eqz v4, :cond_b

    .line 1403
    add-int/lit8 v4, v3, -0x1

    and-int/lit8 v5, v10, 0x3f

    shl-long v5, v17, v5

    sub-long v5, v5, v17

    invoke-virtual {v1, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1405
    :cond_b
    return-void
.end method

.method private evalMQnocst_unrolled_no_simd_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J
    .locals 19
    .param p1, "m"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "mq_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "mq_orig"
        }
    .end annotation

    .line 1445
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    .line 1447
    .local v2, "acc":J
    const/16 v4, 0x40

    .line 1448
    .local v4, "loop_end":I
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v6, p2

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1449
    .local v5, "mq":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v7

    .line 1450
    .local v7, "mj":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x1

    if-ge v9, v4, :cond_1

    .line 1452
    ushr-long v14, v7, v9

    and-long/2addr v12, v14

    cmp-long v14, v12, v10

    if-eqz v14, :cond_0

    .line 1454
    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v10

    and-long/2addr v10, v7

    xor-long/2addr v2, v10

    .line 1450
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1457
    :cond_1
    const/16 v14, 0x40

    invoke-virtual {v5, v14}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 1458
    const/4 v15, 0x1

    .local v15, "j":I
    :goto_1
    move-wide/from16 v16, v10

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ge v15, v10, :cond_5

    .line 1460
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    add-int/lit8 v11, v15, 0x1

    if-ne v10, v11, :cond_2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v10, :cond_2

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    goto :goto_2

    :cond_2
    const/16 v10, 0x40

    :goto_2
    move v4, v10

    .line 1461
    invoke-virtual {v1, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v7

    .line 1462
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v4, :cond_4

    .line 1464
    ushr-long v10, v7, v9

    and-long/2addr v10, v12

    cmp-long v18, v10, v16

    if-eqz v18, :cond_3

    .line 1466
    add-int/lit8 v10, v15, 0x1

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v1, v11, v10}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J

    move-result-wide v10

    xor-long/2addr v2, v10

    .line 1468
    :cond_3
    add-int/lit8 v10, v15, 0x1

    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 1462
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1458
    :cond_4
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v10, v16

    goto :goto_1

    .line 1471
    .end local v15    # "j":I
    :cond_5
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->XORBITS_UINT(J)J

    move-result-wide v2

    .line 1472
    return-wide v2
.end method

.method private findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10
    .param p1, "roots"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "f"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "deg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "roots",
            "f",
            "deg"
        }
    .end annotation

    .line 2257
    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 2260
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2261
    return-void

    .line 2263
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    .line 2265
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2266
    return-void

    .line 2269
    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    shl-int/lit8 v2, p3, 0x1

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2271
    .local v1, "poly_frob":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, p3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2273
    .local v2, "poly_trace":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    add-int/lit8 v4, p3, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2274
    .local v3, "f_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2278
    .local v4, "inv":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_2
    shl-int/lit8 v5, p3, 0x1

    sub-int/2addr v5, v0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 2280
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, p3

    invoke-virtual {v2, v6, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 2285
    :cond_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    invoke-virtual {v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    .line 2287
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v5, v0

    sub-int/2addr v5, v0

    iget-wide v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v2, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 2289
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v5

    if-nez v5, :cond_3

    .line 2291
    add-int/lit8 v5, p3, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v6

    invoke-virtual {v3, p2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2292
    invoke-direct {p0, v2, v1, v3, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2294
    add-int/lit8 v5, p3, -0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v5, v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result v5

    .line 2295
    .local v5, "d":I
    invoke-direct {p0, v3, p3, v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v6

    .line 2296
    .local v6, "l":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    .line 2298
    .local v7, "b":I
    if-eqz v6, :cond_2

    if-eq v6, p3, :cond_2

    .line 2299
    if-eqz v7, :cond_4

    .line 2301
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2306
    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v6

    invoke-direct {p0, v4, v3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2307
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    .line 2308
    add-int/lit8 v0, v6, -0x1

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2311
    invoke-direct {p0, p2, p3, v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_q_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2315
    invoke-direct {p0, p1, v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2318
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v8, v8, v6

    invoke-direct {v0, p1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v9, v9, v6

    invoke-direct {v8, p2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sub-int v9, p3, v6

    invoke-direct {p0, v0, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2319
    return-void
.end method

.method private for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 7
    .param p1, "L_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "iq"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "L_cp",
            "iq",
            "len"
        }
    .end annotation

    .line 704
    const-wide/16 v0, 0x0

    .line 705
    .local v0, "mask":J
    const/4 v2, 0x0

    .local v2, "ir":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 708
    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(J)V

    .line 709
    const-wide/16 v3, 0x1

    shl-long v5, v3, v2

    invoke-virtual {p1, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    .line 710
    const/4 v5, 0x1

    shl-long/2addr v0, v5

    .line 711
    add-long/2addr v0, v3

    .line 712
    invoke-virtual {p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 705
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 714
    .end local v2    # "ir":I
    :cond_0
    return-void
.end method

.method private for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 2
    .param p1, "tab_i"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "tab_ipa"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "prod"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "len"    # I
    .param p5, "shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tab_i",
            "tab_ipa",
            "prod",
            "len",
            "shift"
        }
    .end annotation

    .line 2487
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p5

    .line 2488
    .local v0, "move":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, p4, :cond_0

    .line 2490
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->CMP_AND_SWAP_CST_TIME(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2491
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2492
    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2488
    add-int/2addr v1, p5

    goto :goto_0

    .line 2494
    .end local v1    # "j":I
    :cond_0
    return-void
.end method

.method private for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V
    .locals 6
    .param p1, "table"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "F"
        }
    .end annotation

    .line 2068
    const/4 v0, 0x1

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .local v1, "shift":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    if-ge v0, v2, :cond_0

    .line 2070
    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    aget v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2071
    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2068
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 2073
    .end local v0    # "i":I
    .end local v1    # "shift":I
    :cond_0
    return-void
.end method

.method private for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 3
    .param p1, "res_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "inv"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "start"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res_orig",
            "inv",
            "start"
        }
    .end annotation

    .line 1946
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p3

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1947
    .local v0, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move v1, p3

    .local v1, "i":I
    :goto_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1949
    invoke-virtual {p0, v0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1950
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v2, v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1947
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1952
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 3
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "leading_coef"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "start"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "leading_coef",
            "B",
            "start",
            "end"
        }
    .end annotation

    .line 2203
    move v0, p4

    .local v0, "i":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p4

    .local v1, "shift":I
    :goto_0
    if-ge v0, p5, :cond_0

    .line 2205
    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2206
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2203
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v1, v2

    goto :goto_0

    .line 2208
    .end local v0    # "i":I
    .end local v1    # "shift":I
    :cond_0
    return-void
.end method

.method private for_setPK([B[BIII)I
    .locals 9
    .param p1, "pk"    # [B
    .param p2, "pk_U"    # [B
    .param p3, "pk_p"    # I
    .param p4, "pk_U_cp"    # I
    .param p5, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "pk_U",
            "pk_p",
            "pk_U_cp",
            "end"
        }
    .end annotation

    .line 2658
    aget-byte v1, p2, p4

    and-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    aput-byte v1, p1, p3

    .line 2660
    const/4 v1, 0x2

    .local v1, "k":I
    const/4 v2, 0x2

    move v6, v1

    move v3, v2

    .end local v1    # "k":I
    .local v3, "i":I
    .local v6, "k":I
    :goto_0
    if-ge v3, p5, :cond_0

    .line 2662
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v7, v1, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    sub-int v8, v1, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    move-result v6

    .line 2660
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2664
    :cond_0
    return v6
.end method

.method private for_setpk2_end_move_plus(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)I
    .locals 8
    .param p1, "pk2"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk64"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk2",
            "pk64",
            "len"
        }
    .end annotation

    .line 1106
    const/4 v0, 0x1

    .line 1108
    .local v0, "nb_bits":I
    const/4 v1, 0x0

    move v5, v0

    move v6, v1

    .end local v0    # "nb_bits":I
    .local v5, "nb_bits":I
    .local v6, "iq":I
    :goto_0
    if-ge v6, p3, :cond_0

    .line 1110
    const/16 v7, 0x40

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p2    # "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I

    move-result p1

    .line 1111
    .end local v5    # "nb_bits":I
    .local p1, "nb_bits":I
    invoke-direct {p0, v3, v4, p1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 1112
    add-int/lit8 p2, v6, 0x1

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 1113
    add-int/lit8 p2, v6, 0x1

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1114
    add-int/lit8 p2, v6, 0x1

    shl-int/lit8 p2, p2, 0x6

    add-int v5, p1, p2

    .line 1108
    .end local p1    # "nb_bits":I
    .restart local v5    # "nb_bits":I
    add-int/lit8 v6, v6, 0x1

    move-object p1, v3

    move-object p2, v4

    goto :goto_0

    .line 1116
    .end local v3    # "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v6    # "iq":I
    .local p1, "pk2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p2    # "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    :cond_0
    return v5
.end method

.method private for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 9
    .param p1, "Xqn"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .param p5, "cst"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Xqn",
            "start",
            "end",
            "F",
            "cst"
        }
    .end annotation

    .line 2049
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2052
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2054
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v4, v1, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/lit8 v1, v1, -0x1

    shl-int/lit8 v5, v1, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    move-object v2, p0

    move-object v3, p1

    move-object v7, p4

    move-object v8, p5

    .end local p1    # "Xqn":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "F":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .end local p5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "Xqn":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "F":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .local v8, "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2049
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2056
    .end local v0    # "i":I
    .end local v3    # "Xqn":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "F":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .end local v8    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p1    # "Xqn":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "F":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .restart local p5    # "cst":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_0
    return-void
.end method

.method private frobeniusMap_multisqr_HFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 16
    .param p1, "Xqn"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;
    .param p3, "cst"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "Xqn",
            "F",
            "cst"
        }
    .end annotation

    .line 1967
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v8, v1

    .line 1968
    .local v8, "Xqn_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v9, v1

    .line 1969
    .local v9, "Xqn_sqr":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v10, v1

    .line 1972
    .local v10, "current_coef":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KX:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1974
    .local v1, "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    sub-int v11, v2, v3

    .line 1976
    .local v11, "j":I
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v11

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v12, v2

    .line 1977
    .local v12, "table_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move-object/from16 v6, p3

    invoke-virtual {v12, v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1978
    move-object/from16 v5, p2

    invoke-direct {v0, v12, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_copy_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;)V

    .line 1982
    add-int/lit8 v2, v11, -0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v2, v3

    add-int/lit8 v3, v11, -0x1

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1985
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    const/4 v13, 0x1

    add-int/2addr v2, v13

    move v14, v2

    .local v14, "k":I
    :goto_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    const/4 v3, 0x0

    if-ge v14, v2, :cond_0

    .line 1988
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1990
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v12, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 1991
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {v12, v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1993
    invoke-virtual {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1997
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    sub-int/2addr v2, v13

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    add-int/2addr v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    sub-int/2addr v3, v13

    const/4 v4, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->divsqr_r_HFE_cstdeg_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1985
    move-object v6, v1

    .end local v1    # "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1999
    .end local v6    # "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v1    # "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_0
    move-object v6, v1

    .end local v1    # "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "table":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 2002
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    shl-int v1, v13, v1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    mul-int v1, v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-virtual {v7, v3, v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2003
    const/4 v1, 0x0

    move v15, v14

    move v14, v11

    move v11, v1

    .local v11, "i":I
    .local v14, "j":I
    .local v15, "k":I
    :goto_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    div-int/2addr v1, v2

    if-ge v11, v1, :cond_6

    .line 2008
    invoke-direct {v0, v9, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2010
    const/4 v1, 0x1

    .end local v14    # "j":I
    .local v1, "j":I
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    if-ge v1, v2, :cond_1

    .line 2012
    invoke-direct {v0, v9, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2010
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2017
    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v3

    invoke-virtual {v10, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2018
    invoke-virtual {v12, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2019
    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2020
    const/4 v2, 0x0

    .end local v15    # "k":I
    .local v2, "k":I
    :goto_3
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v2, v3, :cond_2

    .line 2022
    invoke-virtual {v0, v8, v12, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2023
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2024
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v12, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2020
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2026
    :cond_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    add-int/2addr v3, v13

    move v15, v2

    .end local v1    # "j":I
    .end local v2    # "k":I
    .local v3, "j":I
    .restart local v15    # "k":I
    :goto_4
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v3, v1, :cond_4

    .line 2028
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2029
    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2030
    const/4 v1, 0x0

    move v15, v1

    :goto_5
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v15, v1, :cond_3

    .line 2032
    invoke-virtual {v0, v8, v12, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2033
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2034
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2030
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 2026
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2038
    :cond_4
    const/4 v1, 0x0

    move v14, v1

    .end local v3    # "j":I
    .restart local v14    # "j":I
    :goto_6
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->KP:I

    if-ge v14, v1, :cond_5

    .line 2041
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->POW_II:I

    mul-int v1, v1, v14

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v14

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v1, v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2038
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2003
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 2044
    :cond_6
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->II:I

    rem-int v3, v1, v2

    const/4 v2, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_sqr_divsqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IILorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2045
    return-void
.end method

.method private gcd_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 4
    .param p1, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "da"    # I
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "db"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "da",
            "B",
            "db"
        }
    .end annotation

    .line 1907
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1911
    .local v0, "inv":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    .line 1912
    :goto_0
    if-eqz p4, :cond_1

    .line 1917
    shl-int/lit8 v1, p4, 0x1

    if-le v1, p2, :cond_0

    .line 1920
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p2

    goto :goto_1

    .line 1925
    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1926
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    .line 1927
    add-int/lit8 v1, p4, -0x1

    invoke-direct {p0, p3, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1928
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result p2

    .line 1931
    :goto_1
    move-object v1, p1

    .line 1932
    .local v1, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move-object p1, p3

    .line 1933
    move-object p3, v1

    .line 1935
    move v2, p2

    .line 1936
    .local v2, "tmp_word":I
    move p2, p4

    .line 1937
    move p4, v2

    .line 1939
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    rsub-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    .line 1940
    .end local v2    # "tmp_word":I
    goto :goto_0

    .line 1941
    .end local v1    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_1
    return p2
.end method

.method private getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V
    .locals 2
    .param p1, "output"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "outOff"    # I
    .param p3, "outLength"    # I
    .param p4, "input"    # [B
    .param p5, "inOff"    # I
    .param p6, "inputLenth"    # I
    .param p7, "hash"    # [B
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
            "output",
            "outOff",
            "outLength",
            "input",
            "inOff",
            "inputLenth",
            "hash"
        }
    .end annotation

    .line 1192
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    invoke-virtual {v0, p4, p5, p6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    .line 1193
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sha3Digest:Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/4 v1, 0x0

    invoke-virtual {v0, p7, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    .line 1194
    invoke-virtual {p1, p2, p7, v1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 1195
    return-void
.end method

.method private initListDifferences_gf2nx([I)V
    .locals 6
    .param p1, "L"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "L"
        }
    .end annotation

    .line 1743
    const/4 v0, 0x2

    .line 1744
    .local v0, "k":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v2, 0x1

    aput v1, p1, v2

    .line 1745
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v4, 0x0

    if-ge v1, v3, :cond_2

    .line 1747
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v3, :cond_1

    shl-int v3, v2, v1

    add-int/2addr v3, v2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v3, v5, :cond_1

    .line 1750
    if-eqz v1, :cond_0

    .line 1752
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "k":I
    .local v3, "k":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v4, v2

    aput v4, p1, v0

    move v0, v3

    .line 1755
    .end local v3    # "k":I
    .restart local v0    # "k":I
    :cond_0
    invoke-direct {p0, p1, v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    goto :goto_1

    .line 1760
    :cond_1
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "k":I
    .restart local v3    # "k":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    .line 1762
    invoke-direct {p0, p1, v3, v4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move-result v0

    .line 1745
    .end local v3    # "k":I
    .restart local v0    # "k":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1765
    :cond_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v3, :cond_4

    .line 1767
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v3, :cond_3

    shl-int v3, v2, v1

    add-int/2addr v3, v2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v3, v5, :cond_3

    .line 1770
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "k":I
    .restart local v3    # "k":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v4, v2

    aput v4, p1, v0

    .line 1772
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v3, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move v0, v3

    goto :goto_2

    .line 1777
    .end local v3    # "k":I
    .restart local v0    # "k":I
    :cond_3
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "k":I
    .restart local v3    # "k":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    aput v5, p1, v0

    .line 1778
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v0, v2

    invoke-direct {p0, p1, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setArrayL([IIII)I

    move v0, v3

    .line 1781
    .end local v3    # "k":I
    .restart local v0    # "k":I
    :cond_4
    :goto_2
    return-void
.end method

.method private inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 6
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "AOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "AOff"
        }
    .end annotation

    .line 2212
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    .line 2213
    .local v0, "A_orig":I
    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2214
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2217
    .local v1, "multi_sqr":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2218
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn_1rightmost:I

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    .line 2220
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v3, v3, -0x1

    add-int/lit8 v4, v2, 0x1

    ushr-int/2addr v3, v4

    .line 2222
    .local v3, "nb_sqr":I
    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2223
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 2225
    invoke-direct {p0, v1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2223
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2227
    :cond_0
    invoke-virtual {p0, p1, p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2228
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v5, v5, -0x1

    ushr-int/2addr v5, v2

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    .line 2230
    invoke-direct {p0, v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2231
    invoke-virtual {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2218
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2234
    .end local v3    # "nb_sqr":I
    .end local v4    # "j":I
    :cond_2
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2235
    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2236
    return-void
.end method

.method private loop_sqr(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3
    .param p1, "Xqn_sqr"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "Xqn"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "Xqn_sqr",
            "Xqn"
        }
    .end annotation

    .line 2060
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-ge v0, v1, :cond_0

    .line 2062
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v0

    invoke-direct {p0, p1, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2060
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2064
    .end local v0    # "k":I
    :cond_0
    return-void
.end method

.method private loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I
    .locals 15
    .param p1, "Sinv_cpi"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "Sinv_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "L_cpj"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "L"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p5, "i"    # I
    .param p6, "iq"    # I
    .param p7, "len"    # I
    .param p8, "innerloopbound"    # I
    .param p9, "nextrow"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Sinv_cpi",
            "Sinv_cpj",
            "L_cpj",
            "L",
            "i",
            "iq",
            "len",
            "innerloopbound",
            "nextrow"
        }
    .end annotation

    .line 809
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p6

    move/from16 v3, p9

    const/4 v4, 0x0

    move v5, v4

    move/from16 v4, p5

    .end local p5    # "i":I
    .local v4, "i":I
    .local v5, "ir":I
    :goto_0
    move/from16 v6, p7

    if-ge v5, v6, :cond_1

    .line 812
    const-wide/16 v7, 0x1

    shl-long v9, v7, v5

    invoke-virtual {v0, v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 813
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 814
    invoke-virtual/range {p3 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 816
    move v9, v4

    .local v9, "j":I
    :goto_1
    move/from16 v10, p8

    if-ge v9, v10, :cond_0

    .line 819
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 820
    ushr-int/lit8 v11, v9, 0x6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 821
    add-int/lit8 v11, v2, 0x1

    invoke-virtual {v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v13

    ushr-long/2addr v13, v5

    and-long/2addr v13, v7

    neg-long v13, v13

    invoke-virtual {v1, v0, v11, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 816
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 824
    :cond_0
    move-object/from16 v12, p3

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 825
    add-int/lit8 v7, v2, 0x1

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 809
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 827
    .end local v9    # "j":I
    :cond_1
    move-object/from16 v12, p3

    move-object/from16 v8, p4

    move/from16 v10, p8

    return v4
.end method

.method private mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 10
    .param p1, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "L"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "U"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "functionParams"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "S",
            "L",
            "U",
            "functionParams"
        }
    .end annotation

    .line 1670
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v9

    .line 1671
    .local v9, "S_orig":I
    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1684
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid parameter for MULMATRICESLU_GF2"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1674
    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 1675
    .local v1, "nq":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    .line 1676
    .local v2, "nr":I
    const/4 v3, 0x1

    .line 1677
    .local v3, "REM":Z
    move v5, v1

    move v4, v2

    move v8, v3

    goto :goto_1

    .line 1679
    .end local v1    # "nq":I
    .end local v2    # "nr":I
    .end local v3    # "REM":Z
    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    .line 1680
    .restart local v1    # "nq":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    .line 1681
    .restart local v2    # "nr":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1682
    .restart local v3    # "REM":Z
    :goto_0
    move v5, v1

    move v4, v2

    move v8, v3

    .line 1687
    .end local v1    # "nq":I
    .end local v2    # "nr":I
    .end local v3    # "REM":Z
    .local v4, "nr":I
    .local v5, "nq":I
    .local v8, "REM":Z
    :goto_1
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1689
    .local v2, "L_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v1, 0x1

    move v7, v1

    .local v7, "iq":I
    :goto_2
    if-gt v7, v5, :cond_1

    .line 1691
    move v6, v4

    .end local v4    # "nr":I
    .local v6, "nr":I
    const/16 v4, 0x40

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    .line 1689
    add-int/lit8 v7, v7, 0x1

    move v4, v6

    goto :goto_2

    .line 1693
    .end local v6    # "nr":I
    .restart local v4    # "nr":I
    :cond_1
    move v6, v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIIZ)V

    .line 1694
    .end local v4    # "nr":I
    .restart local v6    # "nr":I
    invoke-virtual {p1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 1695
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .locals 9
    .param p1, "sk_HFE"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
    .param p2, "linear_coefs"    # [Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk_HFE",
            "linear_coefs",
            "sk"
        }
    .end annotation

    .line 1593
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V

    .line 1594
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->L:[I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->initListDifferences_gf2nx([I)V

    .line 1595
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1596
    .local v0, "F_HFEv":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_COEFS_HFEPOLY:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    .line 1597
    .local v1, "NB_UINT_HFEPOLY":I
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1599
    .local v2, "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    const/4 v4, 0x0

    aput-object v3, p2, v4

    .line 1601
    aget-object v3, p2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1602
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1603
    .local v3, "F_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 1606
    shl-int v6, v7, v5

    add-int/2addr v6, v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-le v6, v8, :cond_0

    iget-boolean v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    sub-int v6, v5, v7

    .line 1607
    .local v6, "j":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v6

    invoke-virtual {v3, v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1608
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v6

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1609
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v6

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1611
    add-int/lit8 v7, v5, 0x1

    new-instance v8, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    aput-object v8, p2, v7

    .line 1613
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1614
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1603
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1616
    .end local v6    # "j":I
    :cond_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v6, :cond_3

    .line 1619
    shl-int v6, v7, v5

    add-int/2addr v6, v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFE_odd_degree:I

    if-gt v6, v8, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x1

    .line 1620
    .local v4, "j":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v6, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v6, v6, v7

    invoke-virtual {v3, v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1622
    .end local v4    # "j":I
    :cond_3
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object v6, v4, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1623
    return-void
.end method

.method private precSignHFESeed(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[B)V
    .locals 7
    .param p1, "sk_HFE"    # Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
    .param p2, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sk_HFE",
            "sk"
        }
    .end annotation

    .line 1628
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    add-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 1629
    .local v0, "length_tmp":I
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1630
    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 1631
    .local v1, "shakeDigest":Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    const/4 v3, 0x0

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    .line 1632
    shl-int/lit8 v2, v0, 0x3

    new-array v2, v2, [B

    .line 1633
    .local v2, "sk_uncomp_byte":[B
    array-length v4, v2

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    .line 1634
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    array-length v5, v2

    invoke-virtual {v4, v3, v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 1635
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1636
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    iput-object v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1638
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iput-object v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1639
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1641
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->sk_uncomp:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1642
    .local v3, "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1643
    .local v4, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    sget-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1644
    sget-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1646
    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-direct {p0, v5, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1648
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1649
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    invoke-virtual {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1650
    sget-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1651
    sget-object v5, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1653
    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-direct {p0, v5, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mulMatricesLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1654
    return-void
.end method

.method private rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3
    .param p1, "P"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "p_cp"    # I
    .param p3, "Pol"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "p_cp",
            "Pol"
        }
    .end annotation

    .line 655
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    add-int/2addr p2, v0

    .line 656
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    .line 657
    return-void
.end method

.method private static remainderUnsigned(JJ)J
    .locals 4
    .param p0, "dividend"    # J
    .param p2, "divisor"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dividend",
            "divisor"
        }
    .end annotation

    .line 3213
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    .line 3215
    rem-long v0, p0, p2

    return-wide v0

    .line 3219
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private setArrayL([IIII)I
    .locals 3
    .param p1, "L"    # [I
    .param p2, "k"    # I
    .param p3, "pos"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "L",
            "k",
            "pos",
            "len"
        }
    .end annotation

    .line 1734
    move v0, p3

    .local v0, "j":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 1736
    add-int/lit8 v1, p2, 0x1

    .end local p2    # "k":I
    .local v1, "k":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v2, v0

    aput v2, p1, p2

    .line 1734
    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    .line 1738
    .end local v0    # "j":I
    .end local v1    # "k":I
    .restart local p2    # "k":I
    :cond_0
    return p2
.end method

.method private setPK([B[BIIIIII)I
    .locals 5
    .param p1, "pk"    # [B
    .param p2, "pk_U"    # [B
    .param p3, "nb_bits"    # I
    .param p4, "pk_p"    # I
    .param p5, "pk_U_cp"    # I
    .param p6, "k"    # I
    .param p7, "start"    # I
    .param p8, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "pk_U",
            "nb_bits",
            "pk_p",
            "pk_U_cp",
            "k",
            "start",
            "end"
        }
    .end annotation

    .line 2670
    move v0, p7

    .local v0, "j":I
    :goto_0
    if-lt v0, p8, :cond_0

    .line 2672
    ushr-int/lit8 v1, p6, 0x3

    add-int/2addr v1, p4

    aget-byte v2, p1, v1

    ushr-int/lit8 v3, p3, 0x3

    add-int/2addr v3, p5

    aget-byte v3, p2, v3

    and-int/lit8 v4, p3, 0x7

    ushr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0x1

    and-int/lit8 v4, p6, 0x7

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    .line 2673
    add-int/2addr p3, v0

    .line 2670
    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p6, p6, 0x1

    goto :goto_0

    .line 2675
    .end local v0    # "j":I
    :cond_0
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    .line 2676
    return p6
.end method

.method private setPk2Value(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;III)I
    .locals 5
    .param p1, "pk2"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk64"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "nb_bits"    # I
    .param p4, "iq"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk2",
            "pk64",
            "nb_bits",
            "iq",
            "len"
        }
    .end annotation

    .line 959
    const/4 v0, 0x1

    .local v0, "ir":I
    :goto_0
    if-ge v0, p5, :cond_3

    .line 961
    and-int/lit8 v1, p3, 0x3f

    if-eqz v1, :cond_1

    .line 963
    and-int/lit8 v1, p3, 0x3f

    invoke-virtual {p1, p2, p4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    .line 964
    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v1

    and-int/lit8 v3, p3, 0x3f

    ushr-long/2addr v1, v3

    invoke-virtual {p1, p4, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 965
    and-int/lit8 v1, p3, 0x3f

    add-int/2addr v1, v0

    const/16 v2, 0x40

    if-le v1, v2, :cond_0

    .line 967
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get(I)J

    move-result-wide v3

    and-int/lit8 v1, p3, 0x3f

    rsub-int/lit8 v1, v1, 0x40

    shl-long/2addr v3, v1

    invoke-virtual {p1, p4, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 969
    :cond_0
    and-int/lit8 v1, p3, 0x3f

    add-int/2addr v1, v0

    if-lt v1, v2, :cond_2

    .line 971
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveIncremental()V

    goto :goto_1

    .line 976
    :cond_1
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    .line 978
    :cond_2
    :goto_1
    invoke-virtual {p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 980
    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    invoke-virtual {p1, p4, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 981
    add-int/lit8 v1, p4, 0x1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 982
    shl-int/lit8 v1, p4, 0x6

    add-int/2addr v1, v0

    add-int/2addr p3, v1

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 984
    :cond_3
    return p3
.end method

.method private setPk2_endValue(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 2
    .param p1, "pk2"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "pk64"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "nb_bits"    # I
    .param p4, "iq"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk2",
            "pk64",
            "nb_bits",
            "iq"
        }
    .end annotation

    .line 990
    and-int/lit8 v0, p3, 0x3f

    if-eqz v0, :cond_0

    .line 992
    add-int/lit8 v0, p4, 0x1

    and-int/lit8 v1, p3, 0x3f

    invoke-virtual {p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V

    goto :goto_0

    .line 996
    :cond_0
    add-int/lit8 v0, p4, 0x1

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V

    .line 998
    :goto_0
    return-void
.end method

.method private special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6
    .param p1, "buf"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "alpha_vec"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "F",
            "alpha_vec"
        }
    .end annotation

    .line 496
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    .line 499
    .local v0, "F_orig":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v2, v2, 0x1

    mul-int v1, v1, v2

    shl-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 501
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 502
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 504
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v3, v3, 0x2

    mul-int v2, v2, v3

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 507
    .local v1, "F_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    .line 510
    add-int/lit8 v3, v2, -0x1

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 512
    :cond_0
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v3, :cond_1

    .line 514
    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 518
    add-int/lit8 v3, v2, -0x2

    invoke-direct {p0, p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_move_matrix_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 514
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 522
    :cond_1
    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set1_gf2n(II)V

    .line 523
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {p1, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 525
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_6

    .line 528
    invoke-virtual {p0, p1, p3, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 529
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 531
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v5, v5, 0x2

    mul-int v4, v4, v5

    invoke-virtual {v1, p2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 533
    const/4 v2, 0x2

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v2, v4, :cond_2

    .line 535
    invoke-direct {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 533
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 537
    :cond_2
    iget-boolean v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ENABLED_REMOVE_ODD_DEGREE:Z

    if-eqz v4, :cond_4

    .line 539
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 540
    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_3

    .line 542
    add-int/lit8 v4, v2, -0x1

    invoke-direct {p0, p1, v1, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotproduct_move_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 540
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 544
    :cond_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 547
    :cond_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-nez v4, :cond_5

    .line 550
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 551
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 553
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_5

    .line 557
    :cond_5
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-direct {p0, p1, p3, v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 559
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 560
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 562
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    sub-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 525
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 565
    :cond_6
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 566
    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 567
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 568
    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 3
    .param p1, "C"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "c_shift"    # I
    .param p3, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "a_shift"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "C",
            "c_shift",
            "A",
            "a_shift"
        }
    .end annotation

    .line 662
    iget v0, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr p4, v0

    .line 663
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, v2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    .line 664
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 665
    return-void
.end method

.method private sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 4
    .param p1, "C"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "C",
            "A"
        }
    .end annotation

    .line 669
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->sqr_gf2x([J[JI)V

    .line 670
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n([JI[J)V

    .line 671
    return-void
.end method

.method private sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 5
    .param p1, "poly"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "d"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "poly",
            "d"
        }
    .end annotation

    .line 2095
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v0, v0, p2

    .line 2097
    .local v0, "i":I
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v1

    .line 2098
    .local v1, "poly_orig":I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2101
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2103
    .local v2, "poly_2i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 2105
    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2106
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2107
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2109
    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 2110
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2113
    :cond_0
    invoke-direct {p0, p1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2114
    invoke-virtual {p1, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2115
    return-void
.end method

.method private traceMap_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 5
    .param p1, "poly_trace"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "poly_frob"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "f"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "deg"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "poly_trace",
            "poly_frob",
            "f",
            "deg"
        }
    .end annotation

    .line 2365
    const/4 v0, 0x1

    .line 2367
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x1

    shl-int v2, v1, v0

    if-ge v2, p4, :cond_0

    .line 2370
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v3, v0, -0x1

    shl-int/2addr v2, v3

    invoke-direct {p0, p1, v1, p1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2373
    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v0, v2, :cond_1

    .line 2376
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v4, v0, -0x1

    shl-int/2addr v3, v4

    invoke-direct {p0, p2, v2, p1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2378
    shl-int v2, v1, v0

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2380
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2381
    :goto_1
    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v0, v2, :cond_1

    .line 2384
    add-int/lit8 v2, p4, -0x1

    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2386
    add-int/lit8 v2, p4, -0x1

    shl-int/2addr v2, v1

    invoke-direct {p0, p2, v2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->div_r_monic_cst_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2388
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, p4

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    goto :goto_1

    .line 2391
    :cond_1
    return-void
.end method

.method private uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V
    .locals 12
    .param p1, "sm"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "sm8"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sm",
            "sm8"
        }
    .end annotation

    .line 1247
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1248
    .local v0, "sm64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    const/4 v2, 0x1

    shl-int v1, v2, v1

    sub-int/2addr v1, v2

    .line 1250
    .local v1, "MASK8_GF2nv":I
    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    invoke-virtual {v0, v3, p2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    .line 1252
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v3, :cond_0

    .line 1254
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    sub-int/2addr v3, v2

    int-to-long v4, v1

    invoke-virtual {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    .line 1259
    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    .line 1260
    .local v3, "nb_bits":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v4, v4, 0x3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v5, v5, 0x7

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1261
    const/4 v4, 0x1

    .local v4, "k1":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v4, v5, :cond_9

    .line 1264
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    and-int/lit8 v6, v3, 0x7

    rsub-int/lit8 v6, v6, 0x8

    and-int/lit8 v6, v6, 0x7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1266
    .local v5, "val_n":I
    and-int/lit8 v6, v3, 0x7

    if-eqz v6, :cond_3

    .line 1268
    ushr-int/lit8 v6, v3, 0x3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    and-int/lit8 v7, v3, 0x7

    ushr-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    shl-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    .line 1270
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v6, v5, v6

    .line 1271
    .local v6, "nb_rem":I
    if-ltz v6, :cond_1

    .line 1274
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 1276
    :cond_1
    if-lez v6, :cond_2

    .line 1278
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    add-int/2addr v3, v7

    .line 1279
    ushr-int/lit8 v7, v3, 0x3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v3, 0x7

    ushr-int/2addr v7, v8

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    .line 1280
    add-int/2addr v3, v6

    goto :goto_1

    .line 1284
    :cond_2
    add-int/2addr v3, v5

    .line 1288
    .end local v6    # "nb_rem":I
    :cond_3
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v6, v7

    sub-int/2addr v6, v5

    .line 1291
    .local v6, "nb_rem2":I
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v7, v5

    and-int/lit8 v7, v7, 0x7

    .line 1293
    .local v7, "nb_rem_m":I
    if-eqz v7, :cond_6

    .line 1296
    const/4 v8, 0x0

    .local v8, "k2":I
    :goto_2
    add-int/lit8 v9, v6, -0x1

    ushr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_4

    .line 1298
    ushr-int/lit8 v9, v3, 0x3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v7

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    .line 1299
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 1300
    ushr-int/lit8 v9, v3, 0x3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v7, 0x8

    ushr-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    .line 1301
    add-int/lit8 v3, v3, 0x8

    .line 1296
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1304
    :cond_4
    ushr-int/lit8 v9, v3, 0x3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v7

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setXorByte(I)V

    .line 1305
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 1307
    add-int/lit8 v9, v6, 0x7

    and-int/lit8 v9, v9, 0x7

    add-int/lit8 v6, v9, 0x1

    .line 1308
    rsub-int/lit8 v9, v7, 0x8

    if-le v6, v9, :cond_5

    .line 1310
    ushr-int/lit8 v9, v3, 0x3

    aget-byte v9, p2, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v10, v7, 0x8

    ushr-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    .line 1311
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 1313
    :cond_5
    add-int/2addr v3, v6

    goto :goto_4

    .line 1319
    .end local v8    # "k2":I
    :cond_6
    const/4 v8, 0x0

    .restart local v8    # "k2":I
    :goto_3
    add-int/lit8 v9, v6, 0x7

    ushr-int/lit8 v9, v9, 0x3

    if-ge v8, v9, :cond_7

    .line 1321
    ushr-int/lit8 v9, v3, 0x3

    aget-byte v9, p2, v9

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByte(I)V

    .line 1322
    add-int/lit8 v3, v3, 0x8

    .line 1323
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 1319
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 1326
    :cond_7
    and-int/lit8 v9, v6, 0x7

    rsub-int/lit8 v9, v9, 0x8

    and-int/lit8 v9, v9, 0x7

    sub-int/2addr v3, v9

    .line 1329
    :goto_4
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr8:I

    if-eqz v9, :cond_8

    .line 1331
    const/4 v9, -0x1

    int-to-long v10, v1

    invoke-virtual {v0, v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndByte(IJ)V

    .line 1334
    :cond_8
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v9, v9, 0x7

    rsub-int/lit8 v9, v9, 0x8

    and-int/lit8 v9, v9, 0x7

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v10, v10, 0x7

    add-int/2addr v9, v10

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 1261
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1336
    .end local v5    # "val_n":I
    .end local v6    # "nb_rem2":I
    .end local v7    # "nb_rem_m":I
    .end local v8    # "k2":I
    :cond_9
    return-void
.end method

.method private vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2
    .param p1, "acc"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "V"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acc",
            "V",
            "F"
        }
    .end annotation

    .line 3206
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 3207
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3208
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MLv_GFqn_SIZE:I

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3209
    return-void
.end method


# virtual methods
.method changeVariablesMQS64_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 18
    .param p1, "MQS"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MQS",
            "S"
        }
    .end annotation

    .line 2826
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2829
    .local v3, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    mul-int v2, v2, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v4

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v9, v1

    .line 2831
    .local v9, "MQS2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v10, v1

    .line 2832
    .local v10, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2833
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v11, v2

    .line 2848
    .local v11, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    move v12, v2

    .local v12, "j":I
    :goto_0
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    const/16 v13, 0x40

    if-ge v12, v2, :cond_4

    .line 2851
    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2853
    const/4 v2, 0x0

    move v14, v2

    .local v14, "iq":I
    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v14, v2, :cond_1

    .line 2855
    const/4 v2, 0x0

    move v5, v2

    .local v5, "ir":I
    :goto_2
    if-ge v5, v13, :cond_0

    .line 2858
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v15

    ushr-long/2addr v15, v5

    const/16 v6, 0x40

    move-object v2, v1

    move-object v1, v3

    move-wide v3, v15

    .end local v3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    .line 2859
    move-object v3, v1

    move-object v1, v2

    move v6, v5

    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "ir":I
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "ir":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    sub-int v5, v2, v14

    const/4 v4, 0x1

    move-object v2, v11

    .end local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2855
    .end local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "ir":I
    .restart local v5    # "ir":I
    goto :goto_2

    .line 2862
    :cond_0
    move v6, v5

    .end local v5    # "ir":I
    .restart local v6    # "ir":I
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    .line 2853
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 2865
    .end local v6    # "ir":I
    :cond_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_3

    .line 2867
    const/4 v2, 0x0

    move v5, v2

    .restart local v5    # "ir":I
    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v5, v2, :cond_2

    .line 2870
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v15

    ushr-long/2addr v15, v5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object v2, v1

    move-object v1, v3

    move-wide v3, v15

    .end local v3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPKR(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JII)V

    .line 2872
    move-object v3, v1

    move-object v1, v2

    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2867
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 2875
    :cond_2
    invoke-virtual {v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    .line 2848
    .end local v5    # "ir":I
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 2881
    .end local v14    # "iq":I
    :cond_4
    invoke-virtual {v10, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2882
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2883
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v14, v2

    .line 2894
    .local v14, "S_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    move v15, v2

    .local v15, "jq":I
    :goto_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v15, v2, :cond_8

    .line 2896
    const/4 v2, 0x0

    move v5, v2

    .local v5, "jr":I
    :goto_5
    if-ge v5, v13, :cond_7

    .line 2898
    invoke-virtual {v11, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2900
    const/16 v6, 0x40

    move-object v2, v3

    move-object v3, v10

    move-object v4, v11

    .end local v10    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2901
    move-object v10, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v10

    move v10, v5

    .end local v5    # "jr":I
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v10, "jr":I
    add-int/lit8 v5, v15, 0x1

    move v11, v5

    .local v11, "iq":I
    :goto_6
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v11, v5, :cond_5

    .line 2903
    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v17

    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2901
    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v17

    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 2906
    :cond_5
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_6

    .line 2908
    const/4 v5, 0x0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v17

    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v2, v1

    move-object v1, v3

    move-object/from16 v3, v17

    .line 2911
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_6
    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2913
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v14, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2896
    add-int/lit8 v5, v10, 0x1

    move-object v10, v1

    move-object v1, v2

    move-object v11, v4

    .end local v10    # "jr":I
    .restart local v5    # "jr":I
    goto :goto_5

    .line 2894
    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v10, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v11, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_7
    move-object v2, v1

    move-object v1, v10

    move-object v4, v11

    move v10, v5

    .end local v5    # "jr":I
    .end local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v10, "jr":I
    add-int/lit8 v15, v15, 0x1

    move-object v10, v1

    move-object v1, v2

    goto :goto_4

    .line 2917
    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v10, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_8
    move-object v2, v1

    move-object v1, v10

    move-object v4, v11

    .end local v10    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v11    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v5, :cond_a

    .line 2919
    const/4 v5, 0x0

    .restart local v5    # "jr":I
    :goto_7
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-ge v5, v6, :cond_9

    .line 2921
    invoke-virtual {v4, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2922
    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2924
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    move-object/from16 v17, v3

    move-object v3, v1

    move-object v1, v2

    move-object/from16 v2, v17

    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_INIT(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2925
    move-object v6, v3

    move-object v3, v2

    .end local v2    # "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "MQS_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2926
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v14, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2919
    add-int/lit8 v5, v5, 0x1

    move-object v2, v1

    move-object v1, v6

    goto :goto_7

    .end local v6    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_9
    move-object v6, v1

    move-object v1, v2

    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    goto :goto_8

    .line 2917
    .end local v5    # "jr":I
    .end local v6    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_a
    move-object v6, v1

    move-object v1, v2

    .line 2930
    .end local v2    # "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "MQS2_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "MQS_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_8
    invoke-virtual {v6, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2931
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2932
    invoke-virtual {v4, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2941
    const/4 v2, 0x0

    move v10, v2

    .end local v15    # "jq":I
    .local v10, "jq":I
    :goto_9
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v10, v2, :cond_e

    .line 2943
    const/4 v2, 0x0

    move v11, v2

    .local v11, "jr":I
    :goto_a
    if-ge v11, v13, :cond_d

    .line 2946
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2948
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2949
    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2951
    move-object v2, v4

    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v4, v11, 0x1

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2952
    move-object v4, v2

    .end local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v2, v10, 0x1

    move v15, v2

    .local v15, "iq":I
    :goto_b
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    if-ge v15, v2, :cond_b

    .line 2954
    move-object v2, v4

    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v4, 0x0

    const/16 v5, 0x40

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2952
    move-object v4, v2

    .end local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 2957
    :cond_b
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_c

    .line 2959
    move-object v2, v4

    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v4, 0x0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    move-object v4, v2

    .line 2962
    .end local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_c
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2943
    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    .line 2941
    .end local v15    # "iq":I
    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2966
    .end local v11    # "jr":I
    :cond_e
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-eqz v2, :cond_f

    .line 2968
    const/4 v2, 0x0

    move v11, v2

    .restart local v11    # "jr":I
    :goto_c
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    add-int/lit8 v2, v2, -0x1

    if-ge v11, v2, :cond_f

    .line 2971
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2973
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v2, v2, v5

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2974
    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2977
    move-object v2, v4

    .end local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v4, v11, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOOPIR_LOOPK_COMPLETE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2979
    move-object v4, v2

    .end local v2    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "S_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2968
    add-int/lit8 v11, v11, 0x1

    goto :goto_c

    .line 2982
    .end local v11    # "jr":I
    :cond_f
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 2983
    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 2984
    return-void
.end method

.method cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 5
    .param p1, "L"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "cleanLowerMatrix"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "L",
            "cleanLowerMatrix"
        }
    .end annotation

    .line 677
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 688
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :pswitch_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 681
    .local v0, "nq":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    .line 682
    .local v1, "nr":I
    goto :goto_0

    .line 684
    .end local v0    # "nq":I
    .end local v1    # "nr":I
    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    .line 685
    .restart local v0    # "nq":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    .line 686
    .restart local v1    # "nr":I
    nop

    .line 690
    :goto_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 692
    .local v2, "L_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v3, 0x1

    .local v3, "iq":I
    :goto_1
    if-gt v3, v0, :cond_0

    .line 694
    const/16 v4, 0x40

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 696
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    .line 692
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 699
    :cond_0
    invoke-direct {p0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_and_xor_shift_incre_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 700
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3
    .param p1, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "F"
        }
    .end annotation

    .line 1659
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v0, v0, -0x1

    .local v0, "F_idx":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_UINT_HFEVPOLY:I

    if-ge v0, v1, :cond_0

    .line 1661
    iget-wide v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1659
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1663
    .end local v0    # "F_idx":I
    :cond_0
    return-void
.end method

.method public compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 12
    .param p1, "sm8"    # [B
    .param p2, "sm"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sm8",
            "sm"
        }
    .end annotation

    .line 2520
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v0

    shl-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v0

    .line 2522
    .local v0, "sm64":[B
    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2526
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    .line 2527
    .local v1, "nb_bits":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v3, v3, 0x7

    add-int/2addr v2, v3

    .line 2528
    .local v2, "sm64_cp":I
    const/4 v3, 0x1

    .local v3, "k1":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v3, v4, :cond_8

    .line 2531
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v4, v5

    and-int/lit8 v5, v1, 0x7

    rsub-int/lit8 v5, v5, 0x8

    and-int/lit8 v5, v5, 0x7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 2533
    .local v4, "val_n":I
    and-int/lit8 v5, v1, 0x7

    if-eqz v5, :cond_3

    .line 2535
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v5, :cond_2

    .line 2537
    ushr-int/lit8 v5, v1, 0x3

    aget-byte v6, p1, v5

    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    ushr-int/2addr v7, v8

    and-int/lit8 v8, v1, 0x7

    shl-int/2addr v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 2539
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    sub-int v5, v4, v5

    .line 2540
    .local v5, "nb_rem":I
    if-ltz v5, :cond_0

    .line 2543
    add-int/lit8 v2, v2, 0x1

    .line 2545
    :cond_0
    if-lez v5, :cond_1

    .line 2547
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->VAL_BITS_M:I

    add-int/2addr v1, v6

    .line 2548
    ushr-int/lit8 v6, v1, 0x3

    aget-byte v7, p1, v6

    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    and-int/lit8 v9, v1, 0x7

    shl-int/2addr v8, v9

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v6

    .line 2549
    add-int/2addr v1, v5

    goto :goto_1

    .line 2553
    :cond_1
    add-int/2addr v1, v4

    goto :goto_1

    .line 2559
    .end local v5    # "nb_rem":I
    :cond_2
    ushr-int/lit8 v5, v1, 0x3

    aget-byte v6, p1, v5

    aget-byte v7, v0, v2

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v1, 0x7

    shl-int/2addr v7, v8

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    .line 2560
    add-int/2addr v1, v4

    .line 2564
    :cond_3
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDELTA:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    .line 2567
    .local v5, "nb_rem2":I
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    add-int/2addr v6, v4

    and-int/lit8 v6, v6, 0x7

    .line 2569
    .local v6, "nb_rem_m":I
    if-eqz v6, :cond_6

    .line 2572
    const/4 v7, 0x0

    .local v7, "k2":I
    :goto_2
    add-int/lit8 v8, v5, -0x1

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_4

    .line 2574
    ushr-int/lit8 v8, v1, 0x3

    aget-byte v9, v0, v2

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v6

    add-int/lit8 v2, v2, 0x1

    aget-byte v10, v0, v2

    and-int/lit16 v10, v10, 0xff

    rsub-int/lit8 v11, v6, 0x8

    shl-int/2addr v10, v11

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, p1, v8

    .line 2575
    add-int/lit8 v1, v1, 0x8

    .line 2572
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2578
    :cond_4
    ushr-int/lit8 v8, v1, 0x3

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sm64_cp":I
    .local v9, "sm64_cp":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/2addr v2, v6

    int-to-byte v2, v2

    aput-byte v2, p1, v8

    .line 2580
    add-int/lit8 v2, v5, 0x7

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v5, v2, 0x1

    .line 2581
    rsub-int/lit8 v2, v6, 0x8

    if-le v5, v2, :cond_5

    .line 2583
    ushr-int/lit8 v2, v1, 0x3

    aget-byte v8, p1, v2

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "sm64_cp":I
    .local v10, "sm64_cp":I
    aget-byte v9, v0, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v11, v6, 0x8

    shl-int/2addr v9, v11

    int-to-byte v9, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v2

    move v9, v10

    .line 2585
    .end local v10    # "sm64_cp":I
    .restart local v9    # "sm64_cp":I
    :cond_5
    add-int/2addr v1, v5

    goto :goto_4

    .line 2591
    .end local v7    # "k2":I
    .end local v9    # "sm64_cp":I
    .restart local v2    # "sm64_cp":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "k2":I
    :goto_3
    add-int/lit8 v8, v5, 0x7

    ushr-int/lit8 v8, v8, 0x3

    if-ge v7, v8, :cond_7

    .line 2593
    ushr-int/lit8 v8, v1, 0x3

    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sm64_cp":I
    .restart local v9    # "sm64_cp":I
    aget-byte v2, v0, v2

    aput-byte v2, p1, v8

    .line 2594
    add-int/lit8 v1, v1, 0x8

    .line 2591
    add-int/lit8 v7, v7, 0x1

    move v2, v9

    goto :goto_3

    .line 2597
    .end local v9    # "sm64_cp":I
    .restart local v2    # "sm64_cp":I
    :cond_7
    and-int/lit8 v8, v5, 0x7

    rsub-int/lit8 v8, v8, 0x8

    and-int/lit8 v8, v8, 0x7

    sub-int/2addr v1, v8

    move v9, v2

    .line 2600
    .end local v2    # "sm64_cp":I
    .restart local v9    # "sm64_cp":I
    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    and-int/lit8 v2, v2, 0x7

    rsub-int/lit8 v2, v2, 0x8

    and-int/lit8 v2, v2, 0x7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    and-int/lit8 v8, v8, 0x7

    add-int/2addr v2, v8

    add-int/2addr v2, v9

    .line 2528
    .end local v9    # "sm64_cp":I
    .restart local v2    # "sm64_cp":I
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2602
    .end local v4    # "val_n":I
    .end local v5    # "nb_rem2":I
    .end local v6    # "nb_rem_m":I
    .end local v7    # "k2":I
    :cond_8
    return-void
.end method

.method convMQS_one_eq_to_hybrid_rep8_comp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .locals 3
    .param p1, "pk"    # [B
    .param p2, "pk_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "pk_U"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "pk_cp",
            "pk_U"
        }
    .end annotation

    .line 2681
    const/4 v0, 0x0

    .line 2682
    .local v0, "pk_p":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    invoke-virtual {p0, p1, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    .line 2684
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v1, v2, :cond_1

    .line 2686
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v0

    .line 2688
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v2, :cond_0

    .line 2690
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 2684
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2693
    :cond_1
    return-void
.end method

.method convMQS_one_eq_to_hybrid_rep8_uncomp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V
    .locals 12
    .param p1, "pk"    # [B
    .param p2, "pk_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p3, "pk_U"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "pk_cp",
            "pk_U"
        }
    .end annotation

    .line 2697
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v9, v3, -0x1

    .line 2698
    .local v9, "j":I
    const-wide/16 v10, 0x0

    .line 2699
    .local v10, "val":J
    invoke-virtual {p0, p1, p3, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_UL_gf2([B[BI)V

    .line 2701
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v4, v4, v9

    add-int/2addr v3, v4

    .line 2702
    .local v3, "pk2_cp":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v4, v4, v9

    .line 2703
    .local v4, "pk_U_cp":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    move-result v6

    .line 2705
    .local v6, "k":I
    move v5, v4

    move v4, v3

    .end local v3    # "pk2_cp":I
    .local v4, "pk2_cp":I
    .local v5, "pk_U_cp":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    .line 2707
    .local v3, "nb_bits":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v7, v1, -0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->setPK([B[BIIIIII)I

    move-result v6

    .line 2708
    move v2, v3

    move v3, v4

    move v4, v5

    .end local v5    # "pk_U_cp":I
    .local v2, "nb_bits":I
    .local v3, "pk2_cp":I
    .local v4, "pk_U_cp":I
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v5, v5, -0x1

    .end local v9    # "j":I
    .local v5, "j":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->buffer:I

    :goto_0
    if-ltz v5, :cond_0

    .line 2710
    ushr-int/lit8 v7, v2, 0x3

    add-int/2addr v7, v4

    aget-byte v7, p3, v7

    and-int/lit8 v8, v2, 0x7

    ushr-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1

    int-to-long v7, v7

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    add-int/lit8 v9, v9, -0x1

    sub-int/2addr v9, v5

    shl-long/2addr v7, v9

    xor-long/2addr v10, v7

    .line 2711
    add-int/2addr v2, v5

    .line 2708
    add-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2715
    :cond_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    add-int/lit8 v7, v7, -0x1

    .line 2716
    .end local v3    # "pk2_cp":I
    .local v7, "pk2_cp":I
    const/4 v3, 0x0

    .end local v5    # "j":I
    .local v3, "j":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_1

    .line 2719
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    add-int/2addr v7, v5

    .line 2720
    aget-byte v5, p1, v7

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int v8, v8, v3

    ushr-long v8, v10, v8

    long-to-int v9, v8

    int-to-byte v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    shl-int/2addr v8, v9

    xor-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, p1, v7

    .line 2716
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2723
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    .line 2724
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v7, 0x0

    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v5, v8, :cond_2

    .line 2726
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, p1, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v7

    .line 2728
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextByte()V

    .line 2724
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2730
    :cond_2
    return-void
.end method

.method convMQS_one_to_last_mr8_equations_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 12
    .param p1, "pk_U"    # [B
    .param p2, "pk_cp"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk_U",
            "pk_cp"
        }
    .end annotation

    .line 2606
    const/4 v0, 0x0

    .line 2608
    .local v0, "pk_U_cp":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2609
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 2610
    .local v1, "pk_cp2":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    ushr-int/lit8 v2, v2, 0x3

    .line 2612
    .local v2, "HFENq8":I
    const/4 v3, 0x0

    .local v3, "ir":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-ge v3, v4, :cond_4

    .line 2615
    invoke-virtual {v1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 2616
    const/4 v4, 0x0

    .local v4, "jq":I
    :goto_1
    if-ge v4, v2, :cond_1

    .line 2619
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v5

    ushr-int/2addr v5, v3

    and-int/lit8 v5, v5, 0x1

    .line 2620
    .local v5, "tmp":I
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2621
    const/4 v6, 0x1

    .local v6, "jr":I
    :goto_2
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    .line 2623
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    shl-int/2addr v7, v6

    xor-int/2addr v5, v7

    .line 2624
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2621
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2626
    :cond_0
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "pk_U_cp":I
    .local v7, "pk_U_cp":I
    int-to-byte v8, v5

    aput-byte v8, p1, v0

    .line 2616
    add-int/lit8 v4, v4, 0x1

    move v0, v7

    goto :goto_1

    .line 2628
    .end local v5    # "tmp":I
    .end local v6    # "jr":I
    .end local v7    # "pk_U_cp":I
    .restart local v0    # "pk_U_cp":I
    :cond_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v5, :cond_3

    .line 2631
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v5

    ushr-long/2addr v5, v3

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    .line 2632
    .local v5, "tmp1":J
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2633
    const/4 v9, 0x1

    .local v9, "jr":I
    :goto_3
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-ge v9, v10, :cond_2

    .line 2635
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getWithCheck()J

    move-result-wide v10

    ushr-long/2addr v10, v3

    and-long/2addr v10, v7

    shl-long/2addr v10, v9

    xor-long/2addr v5, v10

    .line 2636
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2633
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 2638
    :cond_2
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "pk_U_cp":I
    .restart local v7    # "pk_U_cp":I
    long-to-int v8, v5

    int-to-byte v8, v8

    aput-byte v8, p1, v0

    move v0, v7

    .line 2612
    .end local v5    # "tmp1":J
    .end local v7    # "pk_U_cp":I
    .end local v9    # "jr":I
    .restart local v0    # "pk_U_cp":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2641
    .end local v4    # "jq":I
    :cond_4
    return-void
.end method

.method convMQ_UL_gf2([B[BI)V
    .locals 9
    .param p1, "pk"    # [B
    .param p2, "pk_U"    # [B
    .param p3, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "pk_U",
            "end"
        }
    .end annotation

    .line 2646
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 2648
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v2, v2, v0

    add-int v6, v1, v2

    .line 2649
    .local v6, "pk_p":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v7, v0, v1

    .line 2650
    .local v7, "pk_U_cp":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    add-int/lit8 v8, v1, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "pk":[B
    .end local p2    # "pk_U":[B
    .local v4, "pk":[B
    .local v5, "pk_U":[B
    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_setPK([B[BIII)I

    .line 2646
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2652
    .end local v0    # "j":I
    .end local v4    # "pk":[B
    .end local v5    # "pk_U":[B
    .end local v6    # "pk_p":I
    .end local v7    # "pk_U_cp":I
    .restart local p1    # "pk":[B
    .restart local p2    # "pk_U":[B
    :cond_0
    return-void
.end method

.method public crypto_sign_open([B[B[B)I
    .locals 18
    .param p1, "PK"    # [B
    .param p2, "message"    # [B
    .param p3, "signature"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "PK",
            "message",
            "signature"
        }
    .end annotation

    .line 2734
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    move-object/from16 v8, p1

    invoke-direct {v4, v8}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>([B)V

    .line 2736
    .local v4, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    const-wide/16 v2, 0x0

    .line 2737
    .local v2, "val":J
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-le v5, v6, :cond_1

    .line 2739
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 2740
    .local v5, "pk_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    sub-int/2addr v7, v6

    invoke-virtual {v5, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2741
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v9, v6

    if-ge v7, v9, :cond_0

    .line 2744
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    .line 2745
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte()B

    move-result v9

    int-to-long v9, v9

    const-wide/16 v11, 0xff

    and-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    ushr-long/2addr v9, v11

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8c:I

    mul-int v11, v11, v7

    shl-long/2addr v9, v11

    xor-long/2addr v2, v9

    .line 2741
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v9, v2

    goto :goto_1

    .line 2748
    .end local v5    # "pk_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v7    # "i":I
    :cond_1
    move-wide v9, v2

    .end local v2    # "val":J
    .local v9, "val":J
    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    const/16 v3, 0x40

    if-eqz v2, :cond_7

    .line 2750
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    mul-int v5, v5, v7

    add-int/2addr v5, v6

    invoke-direct {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v7, v2

    .line 2751
    .local v7, "pk_tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const-wide/16 v11, 0x0

    .line 2752
    .local v11, "cst":J
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    move-object v13, v2

    .line 2753
    .local v13, "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    const/4 v2, 0x0

    move-wide v14, v11

    move v11, v2

    .local v11, "i":I
    .local v14, "cst":J
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v2, v6

    if-ge v11, v2, :cond_2

    .line 2755
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v5, v5, v11

    add-int/2addr v2, v5

    invoke-virtual {v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    .line 2756
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v5, v5, v11

    add-int/2addr v5, v6

    invoke-direct {v2, v7, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v16

    shl-long v16, v16, v11

    xor-long v14, v14, v16

    .line 2753
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 2758
    :cond_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ACCESS_last_equations8:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int v5, v5, v11

    add-int/2addr v2, v5

    invoke-virtual {v13, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setByteIndex(I)V

    .line 2760
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v5, v5, v11

    add-int/2addr v5, v6

    invoke-direct {v2, v7, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQ_last_uncompressL_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)J

    move-result-wide v16

    shl-long v16, v16, v11

    xor-long v14, v14, v16

    .line 2761
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v2, :cond_6

    .line 2764
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v2, :cond_3

    .line 2766
    add-int/lit8 v2, v11, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v2, v2, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v3, v5

    shl-long v5, v9, v3

    invoke-virtual {v7, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_3

    .line 2768
    :cond_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    if-le v2, v5, :cond_4

    .line 2772
    add-int/lit8 v2, v11, 0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    sub-int/2addr v3, v5

    shl-long v5, v9, v3

    invoke-virtual {v7, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    goto :goto_3

    .line 2774
    :cond_4
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    if-ne v2, v5, :cond_5

    .line 2776
    add-int/lit8 v2, v11, 0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v2, v2, v3

    invoke-virtual {v7, v2, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    goto :goto_3

    .line 2780
    :cond_5
    add-int/lit8 v2, v11, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v2, v2, v5

    sub-int/2addr v2, v6

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v5, v6

    sub-int/2addr v3, v5

    shl-long v5, v9, v3

    invoke-virtual {v7, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 2781
    add-int/lit8 v2, v11, 0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_UNCOMP_EQ:I

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LOST_BITS:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    sub-int/2addr v3, v5

    ushr-long v5, v9, v3

    invoke-virtual {v7, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 2784
    :cond_6
    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    sub-int/2addr v2, v3

    shl-long v2, v14, v2

    invoke-virtual {v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(J)V

    .line 2785
    array-length v2, v1

    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v5, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object/from16 v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I

    move-result v2

    move-object v12, v4

    .end local v4    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v12, "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    return v2

    .line 2789
    .end local v7    # "pk_tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v11    # "i":I
    .end local v12    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v13    # "pk64":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v14    # "cst":J
    .restart local v4    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    :cond_7
    move-object v12, v4

    .end local v4    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v12    # "pk":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v11, v2

    .line 2790
    .local v11, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v13, v2

    .line 2792
    .local v13, "Si_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v14, v2

    .line 2794
    .local v14, "Si":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2796
    .local v2, "D":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    const/4 v5, 0x0

    move-object/from16 v15, p3

    invoke-virtual {v11, v5, v15, v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    .line 2797
    new-array v7, v3, [B

    .line 2799
    .local v7, "hashbuffer":[B
    array-length v6, v1

    move-object v1, v2

    .end local v2    # "D":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "D":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    const/16 v3, 0x40

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 2801
    invoke-direct {v0, v14, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSnocst8_quo_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 2803
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v14, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v2

    return v2
.end method

.method div_r_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 8
    .param p1, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "da"    # I
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "db"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "A",
            "da",
            "B",
            "db"
        }
    .end annotation

    .line 2119
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v4, v0

    .line 2120
    .local v4, "leading_coef":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2121
    .local v0, "inv":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2123
    .local v3, "res":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p4

    invoke-direct {p0, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2125
    :goto_0
    if-lt p2, p4, :cond_1

    .line 2128
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    .line 2129
    if-ge p2, p4, :cond_0

    .line 2132
    move-object v2, p0

    move-object v5, p3

    move v7, p4

    goto :goto_1

    .line 2134
    :cond_0
    sub-int v1, p2, p4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, v2

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2135
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v1, v1, p2

    invoke-virtual {p0, v4, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2137
    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, p3

    move v7, p4

    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .local v5, "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "db":I
    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_rem_xor_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2140
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 2125
    .end local v5    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "db":I
    .restart local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local p4    # "db":I
    :cond_1
    move-object v2, p0

    move-object v5, p3

    move v7, p4

    .line 2143
    .end local p3    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p4    # "db":I
    .restart local v5    # "B":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "db":I
    :goto_1
    const/4 p3, 0x1

    iget p4, v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->searchDegree(III)I

    move-result p2

    .line 2145
    return p2
.end method

.method evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 18
    .param p1, "Fxv"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "xv"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "Fxv",
            "F",
            "xv"
        }
    .end annotation

    .line 3133
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v4, p3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v8, v2

    .line 3134
    .local v8, "cur_acc":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v9, v2

    .line 3135
    .local v9, "acc":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v3, v3, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v5

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v10, v2

    .line 3136
    .local v10, "tab_Xqj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v11, v2

    .line 3137
    .local v11, "tab_Xqj_cp2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v12

    .line 3138
    .local v12, "F_orig":I
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 3139
    .local v2, "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v3, v10, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    move-object v13, v3

    .line 3141
    .local v13, "tab_Xqj_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v10, v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3142
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v3, v3, -0x1

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v10, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 3144
    const/4 v3, 0x1

    move v14, v3

    .local v14, "j":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v15, 0x0

    if-gt v14, v3, :cond_0

    .line 3146
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v3, v3

    invoke-direct {v0, v13, v15, v13, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3147
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3144
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 3150
    :cond_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v3, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v3, v5, :cond_1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    goto :goto_1

    :cond_1
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    move v6, v3

    .line 3151
    .local v6, "endloop":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v5, v3, -0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v7, v3, 0x40

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    .line 3152
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v3, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-eq v3, v5, :cond_2

    .line 3154
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v3, v6

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v16

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    ushr-long v3, v16, v3

    invoke-virtual {v2, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 3157
    :cond_2
    invoke-virtual {v0, v8, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3158
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3164
    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3165
    invoke-virtual {v13, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3167
    invoke-virtual {v0, v8, v13, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3169
    const/4 v3, 0x1

    .end local v14    # "j":I
    .local v3, "j":I
    :goto_2
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v3, v4, :cond_3

    .line 3172
    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3173
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    sub-int/2addr v5, v7

    invoke-virtual {v9, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 3175
    invoke-virtual {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3176
    invoke-virtual {v0, v9, v1, v11, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3177
    invoke-direct {v0, v9, v15, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3178
    invoke-virtual {v0, v8, v11, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3169
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 3181
    :cond_3
    invoke-direct {v0, v9, v2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vmpv_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3183
    invoke-virtual {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3184
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    if-eqz v4, :cond_4

    .line 3186
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MMUL:I

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    sub-int/2addr v5, v7

    invoke-virtual {v9, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 3187
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    invoke-virtual {v0, v9, v1, v11, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3189
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v11, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3190
    invoke-direct {v0, v9, v15, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_3

    .line 3195
    :cond_4
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v9, v11, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3197
    :goto_3
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3198
    invoke-virtual {v0, v8, v13, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3200
    move-object/from16 v4, p1

    invoke-direct {v0, v4, v15, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3201
    invoke-virtual {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 3202
    return-void
.end method

.method evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 11
    .param p1, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "m"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "pk"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "m",
            "pk"
        }
    .end annotation

    .line 1785
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1786
    .local v0, "x":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    ushr-int/lit8 v1, v1, 0x6

    .line 1787
    .local v1, "NB_VARq":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    and-int/lit8 v2, v2, 0x3f

    .line 1788
    .local v2, "NB_VARr":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    ushr-int/lit8 v3, v3, 0x6

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/lit8 v4, v4, 0x3f

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/2addr v3, v4

    .line 1789
    .local v3, "NB_WORD_EQ":I
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v4

    .line 1790
    .local v4, "pk_orig":I
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1793
    .local v5, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v6, 0x0

    .local v6, "i":I
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    if-ge v6, v1, :cond_1

    .line 1795
    invoke-virtual {p2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v8

    const/16 v10, 0x40

    invoke-virtual {v0, v8, v9, v7, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    move-result v7

    .line 1793
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1797
    :cond_1
    if-eqz v2, :cond_2

    .line 1799
    invoke-virtual {p2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9, v7, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRange_xi(JII)I

    .line 1802
    :cond_2
    invoke-virtual {p1, p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1803
    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1805
    const/4 v6, 0x0

    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v6, v8, :cond_5

    .line 1809
    invoke-virtual {v5, p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1810
    invoke-virtual {p3, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 1811
    add-int/lit8 v8, v6, 0x1

    .local v8, "j":I
    :goto_3
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v9, v9, -0x3

    if-ge v8, v9, :cond_3

    .line 1813
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, p3, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1814
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, p3, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1815
    add-int/lit8 v9, v8, 0x2

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, p3, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1816
    add-int/lit8 v9, v8, 0x3

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, p3, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1811
    add-int/lit8 v8, v8, 0x4

    goto :goto_3

    .line 1818
    :cond_3
    :goto_4
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-ge v8, v9, :cond_4

    .line 1820
    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {v5, p3, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1818
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 1823
    :cond_4
    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v9

    invoke-virtual {p1, v5, v3, v9, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 1805
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1825
    .end local v8    # "j":I
    :cond_5
    invoke-virtual {p3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 1826
    return-void
.end method

.method fast_sort_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 14
    .param p1, "tab"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "l"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tab",
            "l"
        }
    .end annotation

    .line 2420
    move-object v6, p1

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v7, v1

    .line 2421
    .local v7, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2422
    .local v3, "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2423
    .local v1, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 2427
    .local v2, "tab_ipa":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    add-int/lit8 v4, p2, -0x1

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->Highest_One(I)I

    move-result v8

    .line 2428
    .local v8, "pow2_prev":I
    move v4, v8

    .local v4, "pa":I
    :goto_0
    const/4 v9, 0x1

    if-le v4, v9, :cond_4

    .line 2431
    shl-int/lit8 v5, v4, 0x1

    div-int v9, p2, v5

    .line 2434
    .local v9, "quo":I
    shl-int/lit8 v5, v4, 0x1

    mul-int v5, v5, v9

    sub-int v5, p2, v5

    sub-int/2addr v5, v4

    const/4 v10, 0x0

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 2435
    .local v10, "rem":I
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2436
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    invoke-virtual {v2, p1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2437
    const/4 v5, 0x0

    move v11, v5

    .local v11, "i":I
    :goto_1
    if-ge v11, v9, :cond_0

    .line 2439
    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2440
    move v12, v4

    .end local v4    # "pa":I
    .local v12, "pa":I
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v12

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2441
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v12

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2437
    add-int/lit8 v11, v11, 0x1

    move v4, v12

    goto :goto_1

    .line 2443
    .end local v12    # "pa":I
    .restart local v4    # "pa":I
    :cond_0
    move v12, v4

    .end local v4    # "pa":I
    .restart local v12    # "pa":I
    const/4 v5, 0x1

    move-object v0, p0

    move v4, v10

    .end local v10    # "rem":I
    .local v4, "rem":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2444
    .end local v4    # "rem":I
    .restart local v10    # "rem":I
    move v4, v8

    .local v4, "pb":I
    const/4 v5, 0x0

    .end local v11    # "i":I
    .local v5, "i":I
    :goto_2
    if-le v4, v12, :cond_3

    .line 2447
    :goto_3
    sub-int v11, p2, v4

    if-ge v5, v11, :cond_2

    .line 2449
    and-int v11, v5, v12

    if-nez v11, :cond_1

    .line 2451
    add-int v11, v5, v12

    iget v13, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v11, v11, v13

    invoke-virtual {v2, p1, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2452
    move v0, v4

    move-object v4, v1

    move-object v1, v7

    move v7, v5

    move-object v5, v3

    move-object v3, v6

    move v6, v0

    move-object v0, p0

    .end local v3    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v5, "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "pb":I
    .local v7, "i":I
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2453
    move-object v11, v1

    move-object v1, v4

    move v4, v6

    move-object v6, v3

    move-object v3, v5

    .end local v5    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v6    # "pb":I
    .local v1, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "pb":I
    .local v11, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v11, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    goto :goto_4

    .line 2449
    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v5, "i":I
    .local v7, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_1
    move-object v11, v7

    move v7, v5

    .line 2447
    .end local v5    # "i":I
    .local v7, "i":I
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_4
    add-int/lit8 v5, v7, 0x1

    move-object v7, v11

    .end local v7    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .line 2444
    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_2
    move-object v11, v7

    move v7, v5

    .end local v5    # "i":I
    .local v7, "i":I
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    ushr-int/lit8 v4, v4, 0x1

    move-object v7, v11

    goto :goto_2

    .line 2428
    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "i":I
    .local v7, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_3
    move-object v11, v7

    .end local v7    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    ushr-int/lit8 v7, v12, 0x1

    move v4, v7

    move-object v7, v11

    .end local v12    # "pa":I
    .local v7, "pa":I
    goto :goto_0

    .line 2459
    .end local v5    # "i":I
    .end local v9    # "quo":I
    .end local v10    # "rem":I
    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "pa":I
    .local v7, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_4
    move v12, v4

    move-object v11, v7

    .end local v4    # "pa":I
    .end local v7    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v12    # "pa":I
    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2460
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2461
    add-int/lit8 v4, p2, -0x1

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_casct_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2462
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, p1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2463
    move v4, v8

    .local v4, "pb":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_5
    if-le v4, v9, :cond_6

    move v7, v5

    .line 2466
    .end local v5    # "i":I
    .local v7, "i":I
    :goto_6
    sub-int v5, p2, v4

    if-ge v7, v5, :cond_5

    .line 2468
    move-object v0, p0

    move-object v5, v3

    move-object v3, v6

    move v6, v4

    move-object v4, v1

    move-object v1, v11

    .end local v3    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v5, "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "pb":I
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->copy_for_casct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2469
    move-object v3, v5

    .end local v5    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "prod":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v2, v1, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2470
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    shl-int/2addr v5, v9

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2466
    add-int/lit8 v7, v7, 0x2

    move-object v1, v4

    move v4, v6

    move-object v6, p1

    goto :goto_6

    .line 2463
    .end local v6    # "pb":I
    .local v1, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "pb":I
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_5
    move v6, v4

    move-object v4, v1

    move-object v1, v11

    .end local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "pb":I
    ushr-int/lit8 v5, v6, 0x1

    move-object v6, p1

    move-object v1, v4

    move v4, v5

    move v5, v7

    .end local v6    # "pb":I
    .local v5, "pb":I
    goto :goto_5

    .line 2473
    .end local v7    # "i":I
    .local v1, "tab_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "pb":I
    .local v5, "i":I
    .restart local v11    # "tmp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_6
    return-void
.end method

.method findRootsSplit2_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 11
    .param p1, "roots"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "f"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "roots",
            "f"
        }
    .end annotation

    .line 2323
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2324
    .local v0, "c":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2325
    .local v1, "alpha":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v2

    .line 2326
    .local v2, "f_orig":I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v4, 0x0

    invoke-direct {p0, v0, v4, p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2327
    invoke-direct {p0, p1, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->inv_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2328
    invoke-virtual {p0, v0, p2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2329
    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2330
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 2331
    invoke-virtual {p0, p1, v1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2332
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v9, 0x0

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v7, 0x0

    move-object v6, p1

    move-object v4, p1

    move-object v8, p2

    .end local p1    # "roots":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local p2    # "f":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "roots":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v8, "f":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 2333
    invoke-virtual {v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 2334
    return-void
.end method

.method findRootsSplit_x2_x_c_HT_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 6
    .param p1, "root"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "c"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "c"
        }
    .end annotation

    .line 2338
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 2339
    .local v0, "alpha":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 2342
    .local v1, "e":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2343
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn1h_rightmost:I

    .local v2, "i":I
    const/4 v3, 0x1

    .local v3, "e2":I
    :goto_0
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 2345
    shl-int/lit8 v3, v3, 0x1

    .line 2347
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2348
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_0

    .line 2350
    invoke-direct {p0, v0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2348
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2352
    :cond_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, v0, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2353
    ushr-int v3, v1, v2

    .line 2354
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_1

    .line 2356
    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2357
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 2358
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p1, p2, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 2343
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2361
    .end local v4    # "j":I
    :cond_2
    return-void
.end method

.method for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 2
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B",
            "len"
        }
    .end annotation

    .line 618
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 620
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v1, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 621
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 622
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 618
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 624
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method genSecretMQS_gf2_opt(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 22
    .param p1, "MQS"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "MQS",
            "F"
        }
    .end annotation

    .line 356
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v5, v3

    .line 359
    .local v5, "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v3, v3, 0x1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    add-int/lit8 v4, v4, 0x1

    mul-int v3, v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v4

    invoke-direct {v9, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 360
    .local v9, "F_lin":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-direct {v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 361
    .local v3, "F_cp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    const/4 v12, 0x0

    if-gt v4, v6, :cond_1

    .line 363
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_1
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    if-gt v6, v7, :cond_0

    .line 365
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v7, v7, 0x1

    mul-int v7, v7, v6

    add-int/2addr v7, v4

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v8

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v9, v7, v3, v12, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 366
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 363
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 368
    :cond_0
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v4

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 371
    .end local v6    # "k":I
    :cond_1
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    add-int/lit8 v8, v8, -0x1

    mul-int v7, v7, v8

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v8

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v13, v6

    .line 374
    .local v13, "alpha_vec":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v4, 0x1

    :goto_2
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v4, v6, :cond_3

    .line 377
    ushr-int/lit8 v6, v4, 0x6

    and-int/lit8 v7, v4, 0x3f

    const-wide/16 v10, 0x1

    shl-long v7, v10, v7

    invoke-virtual {v13, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 379
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-ge v6, v7, :cond_2

    .line 381
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v0, v13, v7, v13, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->sqr_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 382
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 379
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 384
    :cond_2
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v13, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 374
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 386
    .end local v6    # "j":I
    :cond_3
    invoke-virtual {v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 388
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 389
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    invoke-virtual {v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 390
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 392
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    mul-int v7, v7, v8

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v7, v7, v8

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v14, v6

    .line 393
    .local v14, "buf":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct {v0, v14, v2, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->special_buffer(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 395
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v6, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v15, v6

    .line 397
    .local v15, "buf_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v7, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 400
    .local v7, "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 401
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 402
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v1, v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 405
    invoke-virtual {v3, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 407
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v1, v3, v6, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 410
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v6, v13, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 412
    .local v6, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v8, 0x1

    .local v8, "kp":I
    :goto_4
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v8, v10, :cond_4

    .line 415
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-direct {v0, v1, v6, v15, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 416
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v10, v10, v11

    invoke-virtual {v6, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 418
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v7, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 412
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 421
    :cond_4
    :goto_5
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v8, v10, :cond_5

    .line 423
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 424
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 425
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    invoke-virtual {v1, v3, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 421
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 429
    :cond_5
    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v10, v13, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 430
    .local v10, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v11, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_MUL:I

    invoke-direct {v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v12, v11

    .line 432
    .local v12, "acc":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v11, 0x1

    move/from16 v16, v8

    move v8, v11

    .local v8, "k":I
    .local v16, "kp":I
    :goto_6
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v8, v11, :cond_9

    .line 435
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    move/from16 v17, v4

    .end local v4    # "i":I
    .local v17, "i":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v11, v11, v4

    invoke-virtual {v15, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 437
    invoke-virtual {v6, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 438
    invoke-virtual {v7, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 440
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v18, v5

    .end local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v19, v7

    .end local v7    # "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v19, "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v7, v7

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    invoke-virtual {v4, v11, v9, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 443
    const/4 v4, 0x1

    .end local v17    # "i":I
    .restart local v4    # "i":I
    :goto_7
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v4, v5, :cond_6

    .line 446
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    move-object v7, v6

    .end local v6    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v6, 0x0

    move/from16 v17, v8

    .end local v8    # "k":I
    .local v17, "k":I
    const/4 v8, 0x0

    move-object/from16 v20, v10

    move v10, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v20

    move/from16 v20, v4

    move-object v4, v7

    move-object/from16 v7, v19

    move/from16 v19, v17

    .end local v10    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v17    # "k":I
    .local v4, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v19, "k":I
    .local v20, "i":I
    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 447
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v6, v5, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 448
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 449
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 443
    add-int/lit8 v6, v20, 0x1

    move v8, v6

    move-object v6, v4

    move v4, v8

    move-object/from16 v10, v18

    move/from16 v8, v19

    move-object/from16 v18, v5

    move-object/from16 v19, v7

    .end local v20    # "i":I
    .local v6, "i":I
    goto :goto_7

    .line 453
    .end local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v7    # "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "i":I
    .local v6, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v8    # "k":I
    .restart local v10    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v19, "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_6
    move/from16 v20, v4

    move-object v4, v6

    move-object/from16 v5, v18

    move-object/from16 v7, v19

    move/from16 v19, v8

    move-object/from16 v18, v10

    .end local v6    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v8    # "k":I
    .end local v10    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "buf_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v19, "k":I
    .restart local v20    # "i":I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 454
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/4 v8, 0x0

    invoke-direct {v0, v1, v8, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 455
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 457
    add-int/lit8 v8, v19, 0x1

    .end local v16    # "kp":I
    .local v8, "kp":I
    :goto_8
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    if-ge v8, v6, :cond_7

    .line 459
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v6

    .line 460
    .local v6, "a_vec_kp_orig":I
    invoke-virtual {v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v10

    .line 461
    .local v10, "buf_k_orig":I
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v11

    .line 462
    .local v11, "a_vec_k_orig":I
    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v16

    .line 464
    .local v16, "buf_kp_orig":I
    invoke-virtual {v0, v12, v4, v15}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 465
    move-object/from16 v21, v5

    .end local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v21, "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v0, v12, v4, v15, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 466
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    move/from16 v17, v6

    move-object/from16 v6, v18

    .end local v18    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v17, "a_vec_kp_orig":I
    invoke-virtual {v0, v12, v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->for_mul_xorrange_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 467
    const/4 v5, 0x0

    invoke-direct {v0, v1, v5, v12}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 468
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    move/from16 v18, v5

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v18

    add-int v5, v17, v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 469
    invoke-virtual {v15, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 470
    invoke-virtual {v6, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 471
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    move-object/from16 v18, v4

    .end local v4    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v4

    add-int v5, v16, v5

    invoke-virtual {v7, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 472
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 457
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    move-object/from16 v18, v6

    goto :goto_8

    .line 475
    .end local v6    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v10    # "buf_k_orig":I
    .end local v11    # "a_vec_k_orig":I
    .end local v16    # "buf_kp_orig":I
    .end local v17    # "a_vec_kp_orig":I
    .end local v21    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_7
    move-object/from16 v21, v5

    move-object/from16 v6, v18

    move-object/from16 v18, v4

    .end local v4    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v6    # "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v21    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v3, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 476
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    neg-int v4, v4

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 477
    :goto_9
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v8, v4, :cond_8

    .line 479
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v4, v4, 0x1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v4, v4, v5

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 480
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v1, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->dotProduct_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 481
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 477
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 483
    :cond_8
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_ROW:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v5, v5, v10

    add-int/2addr v4, v5

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 432
    add-int/lit8 v4, v19, 0x1

    move-object v10, v6

    move/from16 v16, v8

    move-object/from16 v6, v18

    move-object/from16 v5, v21

    move v8, v4

    move/from16 v4, v20

    .end local v19    # "k":I
    .local v4, "k":I
    goto/16 :goto_6

    .line 487
    .end local v18    # "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v20    # "i":I
    .end local v21    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "i":I
    .restart local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "a_vec_kp":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v8, "k":I
    .local v10, "a_vec_k":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v16, "kp":I
    :cond_9
    move/from16 v17, v4

    move-object/from16 v21, v5

    .end local v4    # "i":I
    .end local v5    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v17, "i":I
    .restart local v21    # "tmp3":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MQv_GFqn_SIZE:I

    sub-int/2addr v4, v5

    invoke-virtual {v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 488
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v5, v5, -0x1

    mul-int v4, v4, v5

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 489
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 490
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 491
    return-void
.end method

.method interpolateHFE_FS_ref(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I
    .locals 16
    .param p1, "MQS"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "F"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "MQS",
            "F",
            "S"
        }
    .end annotation

    .line 3060
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v10, v2

    .line 3061
    .local v10, "e_ijS":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    .line 3062
    .local v5, "tab_eval_i2":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>()V

    move-object v11, v2

    .line 3067
    .local v11, "e_i2S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int v3, v3, v4

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v12, v2

    .line 3069
    .local v12, "tab_eval":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3071
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v13, v2

    .line 3072
    .local v13, "e_iS":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3073
    .local v3, "tab_eval_i":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v2, v4, :cond_0

    .line 3076
    invoke-virtual {v0, v3, v8, v13}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3077
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3079
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3073
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3081
    :cond_0
    invoke-virtual {v13, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3082
    invoke-virtual {v3, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3083
    const/4 v2, 0x0

    move v14, v2

    .end local v2    # "i":I
    .local v14, "i":I
    :goto_1
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v14, v2, :cond_2

    .line 3086
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3088
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3089
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3091
    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3092
    invoke-virtual {v11, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3093
    add-int/lit8 v2, v14, 0x1

    move v15, v2

    .local v15, "i2":I
    :goto_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    if-ge v15, v2, :cond_1

    .line 3095
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3096
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3097
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3099
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v10, v13, v11, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 3100
    invoke-virtual {v0, v1, v8, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 3102
    const/4 v6, 0x0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 3093
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_2

    .line 3104
    :cond_1
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3105
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v13, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 3083
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    .line 3107
    .end local v15    # "i2":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->indexReset()V

    .line 3108
    const/4 v1, 0x0

    return v1
.end method

.method invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 22
    .param p1, "S"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "L_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "U_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "imluParams"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "S",
            "L_orig",
            "U_orig",
            "imluParams"
        }
    .end annotation

    .line 734
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v3, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 735
    .local v3, "L_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v4, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 736
    .local v4, "L":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v12, p3

    invoke-direct {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v13, v1

    .line 739
    .local v13, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v1

    const/4 v14, 0x1

    packed-switch v1, :pswitch_data_0

    .line 757
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid Input"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 749
    :pswitch_1
    const/4 v1, 0x0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXn_SIZE:I

    invoke-virtual {v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 750
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 751
    .local v1, "outloopbound":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    sub-int/2addr v2, v14

    .line 752
    .local v2, "innerloopbound":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 753
    .local v5, "nextrow":I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    .line 754
    .local v6, "ifCondition":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    .line 755
    .local v7, "endOfU":I
    move v15, v1

    move v8, v2

    move v9, v5

    goto :goto_0

    .line 742
    .end local v1    # "outloopbound":I
    .end local v2    # "innerloopbound":I
    .end local v5    # "nextrow":I
    .end local v6    # "ifCondition":I
    .end local v7    # "endOfU":I
    :pswitch_2
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    .line 743
    .restart local v1    # "outloopbound":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    sub-int/2addr v2, v14

    .line 744
    .restart local v2    # "innerloopbound":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    .line 745
    .restart local v5    # "nextrow":I
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    .line 746
    .restart local v6    # "ifCondition":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    .line 747
    .restart local v7    # "endOfU":I
    move v15, v1

    move v8, v2

    move v9, v5

    .line 760
    .end local v1    # "outloopbound":I
    .end local v2    # "innerloopbound":I
    .end local v5    # "nextrow":I
    .local v8, "innerloopbound":I
    .local v9, "nextrow":I
    .local v15, "outloopbound":I
    :goto_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 761
    .local v1, "Sinv_cpi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 763
    .local v2, "Sinv_cpj":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v5, 0x0

    .local v5, "i":I
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v6

    move/from16 v6, v21

    .local v6, "iq":I
    .local v16, "ifCondition":I
    :goto_1
    if-ge v6, v15, :cond_0

    .line 765
    move/from16 v17, v7

    .end local v7    # "endOfU":I
    .local v17, "endOfU":I
    const/16 v7, 0x40

    move/from16 v11, v16

    move/from16 v18, v17

    .end local v16    # "ifCondition":I
    .end local v17    # "endOfU":I
    .local v11, "ifCondition":I
    .local v18, "endOfU":I
    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    move-result v5

    .line 767
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->moveIncremental()V

    .line 763
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v7, v18

    move-object/from16 v11, p2

    goto :goto_1

    .line 769
    .end local v11    # "ifCondition":I
    .end local v18    # "endOfU":I
    .restart local v7    # "endOfU":I
    .restart local v16    # "ifCondition":I
    :cond_0
    move/from16 v18, v7

    move/from16 v11, v16

    .end local v7    # "endOfU":I
    .end local v16    # "ifCondition":I
    .restart local v11    # "ifCondition":I
    .restart local v18    # "endOfU":I
    move-object/from16 v16, v13

    .end local v13    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v16, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    if-le v11, v14, :cond_1

    .line 771
    add-int/lit8 v7, v11, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->loop_xor_loop_move_xorandmask_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IIIII)I

    .line 773
    add-int/lit8 v0, v11, -0x1

    const-wide/16 v19, 0x1

    shl-long v12, v19, v0

    invoke-virtual {v1, v6, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 774
    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    goto :goto_2

    .line 776
    :cond_1
    const-wide/16 v19, 0x1

    if-ne v11, v14, :cond_2

    .line 779
    move-wide/from16 v12, v19

    invoke-virtual {v1, v6, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 780
    invoke-virtual {v1, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 784
    :cond_2
    :goto_2
    move-object/from16 v0, v16

    move/from16 v7, v18

    .end local v16    # "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v18    # "endOfU":I
    .local v0, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "endOfU":I
    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 786
    move v5, v8

    :goto_3
    if-lez v5, :cond_4

    .line 789
    ushr-int/lit8 v12, v5, 0x6

    rsub-int/lit8 v12, v12, -0x1

    invoke-virtual {v0, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 791
    neg-int v12, v9

    invoke-virtual {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 793
    invoke-virtual {v2, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 795
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    if-ge v12, v5, :cond_3

    .line 798
    ushr-int/lit8 v13, v12, 0x6

    invoke-virtual {v0, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v13

    and-int/lit8 v16, v12, 0x3f

    ushr-long v13, v13, v16

    const-wide/16 v19, 0x1

    and-long v13, v13, v19

    neg-long v13, v13

    invoke-virtual {v2, v1, v9, v13, v14}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 800
    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 795
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 786
    :cond_3
    const-wide/16 v19, 0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    .line 803
    .end local v12    # "j":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3
    .param p1, "P"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "AOff"    # I
    .param p4, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "A",
            "AOff",
            "B"
        }
    .end annotation

    .line 603
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    .line 604
    .local v0, "A_orig":I
    invoke-virtual {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 605
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v1, v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 606
    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 607
    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 608
    return-void
.end method

.method mul_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 2
    .param p1, "P"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "P",
            "A",
            "B"
        }
    .end annotation

    .line 612
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 613
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem_gf2n(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 614
    return-void
.end method

.method mul_move(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B"
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 629
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 630
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 631
    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 4
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B"
        }
    .end annotation

    .line 640
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v0, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 641
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    .line 642
    return-void
.end method

.method public mul_rem_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 5
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "b_cp"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B",
            "b_cp"
        }
    .end annotation

    .line 646
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    .line 647
    .local v0, "B_orig":I
    invoke-virtual {p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 648
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-virtual {v1, v2, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 649
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->rem:Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_MUL:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-virtual {v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;->rem_gf2n_xor([JI[J)V

    .line 650
    invoke-virtual {p3, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    .line 651
    return-void
.end method

.method public mul_xorrange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "A"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "B"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "A",
            "B"
        }
    .end annotation

    .line 635
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->mul:Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 636
    return-void
.end method

.method public signHFE_FeistelPatarin(Ljava/security/SecureRandom;[B[BII[B)V
    .locals 41
    .param p1, "random"    # Ljava/security/SecureRandom;
    .param p2, "sm8"    # [B
    .param p3, "m"    # [B
    .param p4, "m_cp"    # I
    .param p5, "len"    # I
    .param p6, "sk"    # [B
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
            "random",
            "sm8",
            "m",
            "m_cp",
            "len",
            "sk"
        }
    .end annotation

    .line 1477
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iput-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->random:Ljava/security/SecureRandom;

    .line 1478
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v10, v1

    .line 1479
    .local v10, "U":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v11, v1

    .line 1480
    .local v11, "Hi_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v12, v1

    .line 1481
    .local v12, "Hi1_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v13, v1

    .line 1482
    .local v13, "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    and-int/lit8 v14, v1, 0x7

    .line 1484
    .local v14, "HFEvr8":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    ushr-int/lit8 v1, v1, 0x3

    const/4 v2, 0x1

    if-eqz v14, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/2addr v1, v3

    .line 1485
    .local v1, "NB_BYTES_GFqv":I
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->maskUINT(I)J

    move-result-wide v3

    .line 1487
    .local v3, "HFE_MASKv":J
    const-wide/16 v16, 0x0

    .line 1488
    .local v16, "rem_char":J
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;)V

    .line 1489
    .local v5, "sk_HFE":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object/from16 v20, v6

    .line 1490
    .local v20, "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/2addr v6, v2

    new-array v6, v6, [Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    .line 1491
    .local v6, "linear_coefs":[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move-object/from16 v7, p6

    invoke-direct {v0, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->precSignHFE(Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    .line 1492
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget-object v15, v5, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    iget-object v15, v15, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;->poly:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v15, v2

    .line 1494
    .local v15, "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v2, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1495
    .local v2, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move/from16 v19, v1

    .end local v1    # "NB_BYTES_GFqv":I
    .local v19, "NB_BYTES_GFqv":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Sha3BitStrength:I

    ushr-int/lit8 v1, v1, 0x3

    new-array v1, v1, [B

    .line 1496
    .local v1, "hash":[B
    move-object/from16 v21, v2

    .end local v2    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v21, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    move-wide/from16 v22, v3

    .end local v3    # "HFE_MASKv":J
    .local v22, "HFE_MASKv":J
    array-length v3, v1

    move-object/from16 v4, p3

    move-object v7, v1

    move-object/from16 v35, v6

    move-object/from16 v31, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v13

    move/from16 v34, v14

    move-object/from16 v24, v15

    move/from16 v11, v19

    move-object/from16 v9, v20

    move-object/from16 v1, v21

    move-wide/from16 v12, v22

    const/4 v15, 0x1

    move/from16 v6, p5

    move-object v14, v5

    move/from16 v5, p4

    .end local v5    # "sk_HFE":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
    .end local v6    # "linear_coefs":[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v13    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v15    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v19    # "NB_BYTES_GFqv":I
    .end local v20    # "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v21    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v22    # "HFE_MASKv":J
    .local v1, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "hash":[B
    .local v9, "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v11, "NB_BYTES_GFqv":I
    .local v12, "HFE_MASKv":J
    .local v14, "sk_HFE":Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;
    .local v24, "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v31, "Hi_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v32, "Hi1_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v33, "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v34, "HFEvr8":I
    .local v35, "linear_coefs":[Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 1498
    move-object/from16 v36, v7

    .end local v7    # "hash":[B
    .local v36, "hash":[B
    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1499
    .local v2, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v3, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1500
    .local v3, "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v4, v3}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1501
    .local v4, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    const/4 v5, 0x1

    .local v5, "k":I
    :goto_1
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-gt v5, v6, :cond_a

    .line 1504
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v3, v2, v1, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    .line 1505
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v6, :cond_1

    .line 1508
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v6, v15

    move-object v7, v1

    move-object/from16 v37, v2

    .end local v1    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v2    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v37, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget-wide v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v3, v6, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1510
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->getByte(I)B

    move-result v1

    int-to-long v1, v1

    move-wide/from16 v22, v1

    .end local v16    # "rem_char":J
    .local v1, "rem_char":J
    goto :goto_2

    .line 1505
    .end local v7    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v2    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v16    # "rem_char":J
    :cond_1
    move-object v7, v1

    move-object/from16 v37, v2

    .end local v1    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v2    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    move-wide/from16 v22, v16

    .line 1516
    .end local v16    # "rem_char":J
    .local v22, "rem_char":J
    :goto_2
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v1, :cond_2

    .line 1519
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    sub-int/2addr v2, v6

    add-int/2addr v2, v15

    invoke-virtual {v4, v1, v8, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    .line 1521
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq8:I

    const-wide/16 v16, 0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    move/from16 v19, v1

    shl-long v1, v16, v2

    neg-long v1, v1

    move-wide/from16 v20, v1

    move-object/from16 v18, v4

    .end local v4    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v18, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    invoke-virtual/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->setAndThenXorByte(IJJ)V

    move-object/from16 v1, v18

    move-wide/from16 v16, v22

    .end local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v22    # "rem_char":J
    .local v1, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v16    # "rem_char":J
    goto :goto_3

    .line 1525
    .end local v1    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v16    # "rem_char":J
    .restart local v4    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v22    # "rem_char":J
    :cond_2
    move-object v1, v4

    move-wide/from16 v16, v22

    .end local v4    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v22    # "rem_char":J
    .restart local v1    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v16    # "rem_char":J
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqn:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    sub-int/2addr v4, v6

    invoke-virtual {v1, v2, v8, v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillRandomBytes(ILjava/security/SecureRandom;I)V

    .line 1528
    :goto_3
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEn:I

    and-int/lit8 v2, v2, 0x7

    if-eqz v2, :cond_3

    .line 1530
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    sub-int/2addr v2, v15

    move-object v4, v7

    .end local v7    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2n:J

    invoke-virtual {v3, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_4

    .line 1528
    .end local v4    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v7    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_3
    move-object v4, v7

    .line 1534
    .end local v7    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_4
    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->T:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0, v10, v3, v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1535
    const/4 v2, 0x0

    invoke-virtual {v9, v2, v8, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fillRandom(ILjava/security/SecureRandom;I)V

    .line 1536
    if-eqz v34, :cond_4

    .line 1539
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    sub-int/2addr v2, v15

    invoke-virtual {v9, v2, v12, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1542
    :cond_4
    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_HFEv:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v6, v24

    .end local v24    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v6, "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v0, v6, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQSv_unrolled_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1543
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    if-gt v2, v7, :cond_5

    .line 1545
    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v38, 0x1

    new-instance v15, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v39, v1

    .end local v1    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v39, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    aget-object v1, v35, v2

    move/from16 v40, v2

    .end local v2    # "i":I
    .local v40, "i":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-direct {v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->V:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v0, v7, v9, v15, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1546
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v2, v40, 0x1

    mul-int v2, v2, v40

    ushr-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    mul-int v25, v1, v2

    aget-object v26, v35, v40

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->Buffer_NB_WORD_GFqn:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    const/16 v29, 0x0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    const/16 v27, 0x0

    move-object/from16 v28, v1

    move/from16 v30, v2

    move-object/from16 v24, v6

    .end local v6    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v24    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual/range {v24 .. v30}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1543
    add-int/lit8 v2, v40, 0x1

    move-object/from16 v1, v39

    const/4 v15, 0x1

    .end local v40    # "i":I
    .restart local v2    # "i":I
    goto :goto_5

    .line 1549
    .end local v24    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v1    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v6    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_5
    move-object/from16 v39, v1

    move/from16 v40, v2

    move-object/from16 v24, v6

    const/16 v38, 0x1

    .end local v1    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v2    # "i":I
    .end local v6    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v24    # "F":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v40    # "i":I
    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->F_struct:Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;

    invoke-direct {v0, v3, v1, v10}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->chooseRootHFE_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE$complete_sparse_monic_gf2nx;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I

    move-result v1

    if-eqz v1, :cond_9

    .line 1551
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get()J

    move-result-wide v6

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    shl-long/2addr v6, v2

    invoke-virtual {v3, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1552
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v22, v2, -0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v23, v2, 0x40

    const/16 v21, 0x0

    move/from16 v19, v1

    move-object/from16 v18, v3

    move-object/from16 v20, v9

    .end local v3    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v9    # "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v20    # "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V

    .line 1553
    move-object/from16 v15, v18

    .end local v18    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v20    # "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v9    # "V":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v15, "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    if-ne v1, v2, :cond_6

    .line 1555
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqv:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    rsub-int/lit8 v6, v6, 0x40

    ushr-long/2addr v2, v6

    invoke-virtual {v15, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->set(IJ)V

    .line 1558
    :cond_6
    iget-object v1, v14, Lorg/bouncycastle/pqc/crypto/gemss/SecretKeyHFE;->S:Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-object/from16 v3, v37

    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v0, v3, v15, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    .line 1559
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-eq v5, v1, :cond_8

    .line 1562
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int v2, v2, v6

    add-int/2addr v1, v2

    .line 1563
    .local v1, "index":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    sub-int/2addr v2, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    invoke-virtual {v3, v1, v3, v2, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1565
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v2, :cond_7

    .line 1567
    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    not-long v6, v6

    invoke-virtual {v3, v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1570
    :cond_7
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v2

    .line 1571
    .local v2, "Hi_bytes":[B
    move-object/from16 v37, v3

    .end local v3    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    move v6, v5

    .end local v5    # "k":I
    .local v6, "k":I
    const/4 v5, 0x0

    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    array-length v6, v2

    move-object/from16 v21, v4

    move-object v4, v2

    .end local v2    # "Hi_bytes":[B
    .local v4, "Hi_bytes":[B
    .restart local v21    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v2, 0x0

    move/from16 v18, v7

    .end local v7    # "k":I
    .local v18, "k":I
    move-object v7, v4

    move/from16 v20, v1

    move/from16 v19, v18

    move-object/from16 v8, v21

    move-object/from16 v1, v33

    move-object/from16 v18, v39

    .end local v21    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v1, "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v8, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v18, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v19, "k":I
    .local v20, "index":I
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 1573
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    goto :goto_6

    .line 1559
    .end local v1    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v19    # "k":I
    .end local v20    # "index":I
    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v5    # "k":I
    .restart local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    :cond_8
    move-object/from16 v37, v3

    move-object v8, v4

    move/from16 v19, v5

    move-object/from16 v1, v33

    move-object/from16 v18, v39

    .line 1501
    .end local v3    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "k":I
    .end local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v1    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v19    # "k":I
    .restart local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :goto_6
    add-int/lit8 v5, v19, 0x1

    move-object/from16 v33, v1

    move-object v1, v8

    move-object v3, v15

    move-object/from16 v4, v18

    move-object/from16 v2, v37

    const/4 v15, 0x1

    move-object/from16 v8, p1

    .end local v19    # "k":I
    .restart local v5    # "k":I
    goto/16 :goto_1

    .line 1549
    .end local v1    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v15    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .local v3, "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v4    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    :cond_9
    move-object v15, v3

    move-object v8, v4

    move/from16 v19, v5

    move-object/from16 v1, v33

    move-object/from16 v18, v39

    .end local v3    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v5    # "k":I
    .end local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v39    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v1    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v15    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v19    # "k":I
    move-object v7, v8

    move-wide/from16 v22, v16

    move-object/from16 v4, v18

    const/4 v15, 0x1

    move-object/from16 v8, p1

    goto/16 :goto_2

    .line 1576
    .end local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v15    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v19    # "k":I
    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v40    # "i":I
    .local v1, "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v2, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v4, "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v5    # "k":I
    .restart local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_a
    move-object v8, v1

    move-object/from16 v37, v2

    move-object v15, v3

    move-object/from16 v18, v4

    move/from16 v19, v5

    move-object/from16 v1, v33

    const/16 v38, 0x1

    .end local v2    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v3    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .end local v4    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .end local v5    # "k":I
    .end local v33    # "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v1, "Hi1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v8    # "Hi":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v15    # "DR":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v18    # "DR_cp":Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .restart local v19    # "k":I
    .restart local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1579
    invoke-virtual/range {v37 .. v37}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getLength()I

    move-result v2

    shl-int/lit8 v2, v2, 0x3

    move-object/from16 v3, v37

    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v3, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v3, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->toBytes(I)[B

    move-result-object v2

    .line 1580
    .local v2, "sm64":[B
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqnv:I

    move-object/from16 v5, p2

    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1581
    .end local v2    # "sm64":[B
    goto :goto_7

    .line 1584
    .end local v3    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    :cond_b
    move-object/from16 v5, p2

    move-object/from16 v3, v37

    .end local v37    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .restart local v3    # "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual {v0, v5, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->compress_signHFE([BLorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1586
    :goto_7
    return-void
.end method

.method public sign_openHFE_huncomp_pk([BI[BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)I
    .locals 22
    .param p1, "m"    # [B
    .param p2, "len"    # I
    .param p3, "sm8"    # [B
    .param p4, "pk"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .param p5, "hpk"    # Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "len",
            "sm8",
            "pk",
            "hpk"
        }
    .end annotation

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SIGN_UNCOMPRESSED:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v10, v1

    .line 1140
    .local v10, "sm":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v11, v1

    .line 1141
    .local v11, "Si_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move-object v12, v1

    .line 1143
    .local v12, "Si1_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v13, v1

    .line 1144
    .local v13, "Si":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v1, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    move-object v14, v1

    .line 1146
    .local v14, "Si1":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/16 v1, 0x40

    new-array v4, v1, [B

    .line 1147
    .local v4, "hash":[B
    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v2, v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    .line 1148
    .local v1, "D":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    const/4 v5, 0x0

    .line 1149
    .local v5, "m_cp":I
    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->get()J

    move-result-wide v2

    .line 1151
    .local v2, "cst":J
    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->move(I)V

    .line 1152
    move-object/from16 v6, p3

    invoke-direct {v0, v10, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->uncompress_signHFE(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;[B)V

    .line 1154
    move-wide/from16 v16, v2

    .end local v2    # "cst":J
    .local v16, "cst":J
    const/4 v2, 0x0

    const/16 v3, 0x40

    move/from16 v6, p2

    move-object v7, v4

    move-object/from16 v4, p1

    move-wide/from16 v20, v16

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    move-wide/from16 v11, v20

    .end local v4    # "hash":[B
    .end local v12    # "Si1_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v7, "hash":[B
    .local v11, "cst":J
    .local v16, "Si_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .local v17, "Si1_tab":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 1155
    move/from16 v18, v5

    move-object v4, v7

    .end local v5    # "m_cp":I
    .end local v7    # "hash":[B
    .restart local v4    # "hash":[B
    .local v18, "m_cp":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    if-ge v2, v3, :cond_0

    .line 1158
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v3, v3, v2

    const/4 v5, 0x0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST:I

    move v7, v2

    move v2, v3

    .end local v2    # "i":I
    .local v7, "i":I
    const/16 v3, 0x40

    move/from16 v19, v7

    .end local v7    # "i":I
    .local v19, "i":I
    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->getSHA3Hash(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II[BII[B)V

    .line 1160
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v3, v19, -0x1

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v15

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1155
    add-int/lit8 v2, v19, 0x1

    .end local v19    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 1163
    :cond_0
    move/from16 v19, v2

    .end local v2    # "i":I
    .restart local v19    # "i":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    add-int/lit8 v3, v19, -0x1

    mul-int v2, v2, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v15

    iget-wide v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1165
    invoke-direct {v0, v13, v10, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1166
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-virtual {v13, v2, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1167
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v2, v15

    .end local v19    # "i":I
    .restart local v2    # "i":I
    :goto_1
    if-lez v2, :cond_2

    .line 1170
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_DIGEST_UINT:I

    mul-int v3, v3, v2

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v13, v1, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1172
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    sub-int/2addr v5, v15

    sub-int/2addr v5, v2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    mul-int v5, v5, v6

    add-int/2addr v3, v5

    .line 1173
    .local v3, "index":I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v5, v15

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v13, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    .line 1175
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v5, v15

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v6

    invoke-virtual {v13, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1176
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    if-eq v5, v15, :cond_1

    .line 1178
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    add-int/lit8 v3, v3, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nvm:I

    sub-int/2addr v6, v15

    invoke-virtual {v13, v5, v10, v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V

    .line 1181
    :cond_1
    invoke-direct {v0, v14, v13, v8, v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->evalMQShybrid8_uncomp_nocst_gf2_m(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    .line 1182
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmq:I

    invoke-virtual {v14, v5, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    .line 1184
    invoke-virtual {v14, v13}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 1167
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1187
    .end local v3    # "index":I
    :cond_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v13, v1, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I

    move-result v3

    return v3
.end method

.method vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V
    .locals 18
    .param p1, "res"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p2, "vec"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p3, "S_orig"    # Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    .param p4, "vecMatProduct"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "res",
            "vec",
            "S_orig",
            "vecMatProduct"
        }
    .end annotation

    .line 842
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    .local v3, "iq":I
    const/4 v4, 0x0

    .line 843
    .local v4, "ir":I
    new-instance v5, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    move-object/from16 v6, p3

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    .line 844
    .local v5, "S":Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v7

    const-string v8, "Invalid input for vecMatProduct"

    const/4 v9, 0x0

    packed-switch v7, :pswitch_data_0

    .line 871
    move-object/from16 v15, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 865
    :pswitch_0
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-virtual {v1, v9, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 866
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 867
    .local v7, "nq":I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    .line 868
    .local v9, "gf2_len":I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 869
    .local v10, "S_cp_increase":I
    goto :goto_0

    .line 859
    .end local v7    # "nq":I
    .end local v9    # "gf2_len":I
    .end local v10    # "S_cp_increase":I
    :pswitch_1
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v9, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 860
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 861
    .restart local v9    # "gf2_len":I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 862
    .restart local v10    # "S_cp_increase":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    .line 863
    .restart local v7    # "nq":I
    goto :goto_0

    .line 853
    .end local v7    # "nq":I
    .end local v9    # "gf2_len":I
    .end local v10    # "S_cp_increase":I
    :pswitch_2
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v1, v9, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 854
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 855
    .restart local v9    # "gf2_len":I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    .line 856
    .restart local v10    # "S_cp_increase":I
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    .line 857
    .restart local v7    # "nq":I
    goto :goto_0

    .line 847
    .end local v7    # "nq":I
    .end local v9    # "gf2_len":I
    .end local v10    # "S_cp_increase":I
    :pswitch_3
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    invoke-virtual {v1, v9, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    .line 848
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    .line 849
    .restart local v7    # "nq":I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    .line 850
    .restart local v9    # "gf2_len":I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2nv:I

    .line 851
    .restart local v10    # "S_cp_increase":I
    nop

    .line 874
    :goto_0
    const/4 v13, 0x1

    if-ge v3, v7, :cond_1

    .line 876
    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v14

    .line 877
    .local v14, "bit_ir":J
    :goto_1
    const-wide/16 v16, 0x1

    const/16 v11, 0x40

    if-ge v4, v11, :cond_0

    .line 879
    and-long v11, v14, v16

    neg-long v11, v11

    invoke-virtual {v1, v5, v9, v11, v12}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 881
    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 882
    ushr-long/2addr v14, v13

    .line 877
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 884
    :cond_0
    const/4 v4, 0x0

    .line 874
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 887
    .end local v14    # "bit_ir":J
    :cond_1
    const-wide/16 v16, 0x1

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->ordinal()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    .line 911
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 907
    :pswitch_4
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnq:I

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v11

    .line 908
    .local v11, "bit_ir":J
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnr:I

    .line 909
    .local v8, "loopir_param":I
    goto :goto_2

    .line 898
    .end local v8    # "loopir_param":I
    .end local v11    # "bit_ir":J
    :pswitch_5
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    if-nez v8, :cond_2

    .line 900
    return-void

    .line 902
    :cond_2
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvq:I

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v11

    .line 903
    .restart local v11    # "bit_ir":J
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEvr:I

    .line 904
    .restart local v8    # "loopir_param":I
    goto :goto_2

    .line 890
    .end local v8    # "loopir_param":I
    .end local v11    # "bit_ir":J
    :pswitch_6
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    if-nez v8, :cond_3

    .line 892
    return-void

    .line 894
    :cond_3
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvq:I

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v11

    .line 895
    .restart local v11    # "bit_ir":J
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnvr:I

    .line 896
    .restart local v8    # "loopir_param":I
    nop

    .line 913
    :goto_2
    if-ge v4, v8, :cond_4

    .line 915
    and-long v14, v11, v16

    neg-long v14, v14

    invoke-virtual {v1, v5, v9, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    .line 917
    invoke-virtual {v5, v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    .line 918
    ushr-long/2addr v11, v13

    .line 913
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 920
    :cond_4
    sget-object v14, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    move-object/from16 v15, p4

    if-ne v15, v14, :cond_5

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr:I

    if-eqz v14, :cond_5

    .line 922
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    sub-int/2addr v14, v13

    move v13, v3

    .end local v3    # "iq":I
    .local v13, "iq":I
    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MASK_GF2m:J

    invoke-virtual {v1, v14, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    goto :goto_3

    .line 920
    .end local v13    # "iq":I
    .restart local v3    # "iq":I
    :cond_5
    move v13, v3

    .line 924
    .end local v3    # "iq":I
    .restart local v13    # "iq":I
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

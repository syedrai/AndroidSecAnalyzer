.class Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;
.source "CMCEEngine.java"


# instance fields
.field private COND_BYTES:I

.field private GFBITS:I

.field private GFMASK:I

.field private IRR_BYTES:I

.field private PK_NCOLS:I

.field private PK_NROWS:I

.field private PK_ROW_BYTES:I

.field private SYND_BYTES:I

.field private SYS_N:I

.field private SYS_T:I

.field private benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

.field private countErrorIndices:Z

.field private final defaultKeySize:I

.field private gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field private poly:[I

.field private usePadding:Z

.field private usePivots:Z


# direct methods
.method public constructor <init>(III[IZI)V
    .locals 5
    .param p1, "m"    # I
    .param p2, "n"    # I
    .param p3, "t"    # I
    .param p4, "p"    # [I
    .param p5, "usePivots"    # Z
    .param p6, "defaultKeySize"    # I
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
            "m",
            "n",
            "t",
            "p",
            "usePivots",
            "defaultKeySize"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    .line 70
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    .line 71
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    .line 72
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    .line 73
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    .line 74
    iput p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    .line 76
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    .line 77
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x1

    shl-int v0, v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v1

    mul-int v0, v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    .line 79
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int v0, v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    .line 80
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    .line 86
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    .line 88
    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    .line 89
    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;-><init>(III)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    .line 94
    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;-><init>(III)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    .line 97
    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    rem-int/lit8 v0, v0, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    .line 98
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v1, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-le v0, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    .line 99
    return-void
.end method

.method private bm([S[S)V
    .locals 18
    .param p1, "out"    # [S
    .param p2, "s"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "s"
        }
    .end annotation

    .line 766
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 767
    .local v1, "N":S
    const/4 v2, 0x0

    .line 771
    .local v2, "L":S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [S

    .line 772
    .local v3, "T":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v5, v4

    new-array v5, v5, [S

    .line 773
    .local v5, "C":[S
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v6, v4

    new-array v6, v6, [S

    .line 775
    .local v6, "B":[S
    const/4 v7, 0x1

    .line 778
    .local v7, "b":S
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v9, v4

    const/4 v10, 0x0

    if-ge v8, v9, :cond_0

    .line 780
    aput-short v10, v6, v8

    aput-short v10, v5, v8

    .line 778
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 783
    .end local v8    # "i":I
    :cond_0
    aput-short v4, v5, v10

    aput-short v4, v6, v4

    .line 787
    const/4 v1, 0x0

    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v1, v8, :cond_5

    .line 789
    const/4 v8, 0x0

    .line 790
    .local v8, "d_ext":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v1, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->min(SI)I

    move-result v11

    if-gt v9, v11, :cond_1

    .line 792
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v12, v5, v9

    sub-int v13, v1, v9

    aget-short v13, p2, v13

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_ext(SS)I

    move-result v11

    xor-int/2addr v8, v11

    .line 790
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 795
    .end local v9    # "i":I
    :cond_1
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v9, v8}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_reduce(I)S

    move-result v9

    .line 797
    .local v9, "d":S
    move v11, v9

    .line 798
    .local v11, "mne":S
    add-int/lit8 v12, v11, -0x1

    int-to-short v11, v12

    .line 799
    shr-int/lit8 v12, v11, 0xf

    int-to-short v11, v12

    .line 800
    and-int/lit8 v12, v11, 0x1

    int-to-short v11, v12

    .line 801
    add-int/lit8 v12, v11, -0x1

    int-to-short v11, v12

    .line 802
    move v12, v1

    .line 803
    .local v12, "mle":S
    mul-int/lit8 v13, v2, 0x2

    sub-int v13, v12, v13

    int-to-short v12, v13

    .line 804
    shr-int/lit8 v13, v12, 0xf

    int-to-short v12, v13

    .line 805
    and-int/lit8 v13, v12, 0x1

    int-to-short v12, v13

    .line 806
    add-int/lit8 v13, v12, -0x1

    int-to-short v12, v13

    .line 807
    and-int v13, v12, v11

    int-to-short v12, v13

    .line 809
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v13, v14, :cond_2

    .line 811
    aget-short v14, v5, v13

    aput-short v14, v3, v13

    .line 809
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 814
    .end local v13    # "i":I
    :cond_2
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v13, v7, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_frac(SS)S

    move-result v13

    .line 816
    .local v13, "f":S
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v14, v15, :cond_3

    .line 818
    aget-short v15, v5, v14

    const/16 v16, 0x1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    const/16 v17, 0x0

    aget-short v10, v6, v14

    invoke-virtual {v4, v13, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v4

    and-int/2addr v4, v11

    xor-int/2addr v4, v15

    int-to-short v4, v4

    aput-short v4, v5, v14

    .line 816
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto :goto_4

    :cond_3
    const/16 v16, 0x1

    const/16 v17, 0x0

    .line 820
    .end local v14    # "i":I
    not-int v4, v12

    and-int/2addr v4, v2

    add-int/lit8 v10, v1, 0x1

    sub-int/2addr v10, v2

    and-int/2addr v10, v12

    or-int/2addr v4, v10

    int-to-short v2, v4

    .line 822
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v4, v4, -0x1

    .local v4, "i":I
    :goto_5
    if-ltz v4, :cond_4

    .line 824
    add-int/lit8 v10, v4, 0x1

    aget-short v14, v6, v4

    not-int v15, v12

    and-int/2addr v14, v15

    aget-short v15, v3, v4

    and-int/2addr v15, v12

    or-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v6, v10

    .line 822
    add-int/lit8 v4, v4, -0x1

    goto :goto_5

    .line 826
    .end local v4    # "i":I
    :cond_4
    aput-short v17, v6, v17

    .line 828
    not-int v4, v12

    and-int/2addr v4, v7

    and-int v10, v9, v12

    or-int/2addr v4, v10

    int-to-short v7, v4

    .line 787
    .end local v8    # "d_ext":I
    add-int/lit8 v4, v1, 0x1

    int-to-short v1, v4

    const/4 v4, 0x1

    const/4 v10, 0x0

    goto/16 :goto_1

    .line 831
    .end local v9    # "d":S
    .end local v11    # "mne":S
    .end local v12    # "mle":S
    .end local v13    # "f":S
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_6
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v4, v8, :cond_6

    .line 833
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    sub-int/2addr v8, v4

    aget-short v8, v5, v8

    aput-short v8, p1, v4

    .line 831
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 835
    .end local v4    # "i":I
    :cond_6
    return-void
.end method

.method static cbrecursion([BJJ[SIJJ[I)V
    .locals 35
    .param p0, "out"    # [B
    .param p1, "pos"    # J
    .param p3, "step"    # J
    .param p5, "pi"    # [S
    .param p6, "qIndex"    # I
    .param p7, "w"    # J
    .param p9, "n"    # J
    .param p11, "temp"    # [I
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
            "out",
            "pos",
            "step",
            "pi",
            "qIndex",
            "w",
            "n",
            "temp"
        }
    .end annotation

    .line 1162
    move/from16 v0, p6

    move-wide/from16 v1, p9

    move-object/from16 v14, p11

    const-wide/16 v3, 0x7

    const/4 v5, 0x3

    const-wide/16 v15, 0x1

    cmp-long v6, p7, v15

    if-nez v6, :cond_0

    .line 1164
    shr-long v5, p1, v5

    long-to-int v6, v5

    aget-byte v5, p0, v6

    invoke-static {v14, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v7

    and-long v3, p1, v3

    long-to-int v4, v3

    shl-int v3, v7, v4

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, p0, v6

    .line 1165
    return-void

    .line 1168
    :cond_0
    if-eqz p5, :cond_1

    .line 1170
    const-wide/16 v6, 0x0

    .local v6, "x":J
    :goto_0
    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    .line 1172
    long-to-int v8, v6

    long-to-int v9, v6

    aget-short v9, p5, v9

    xor-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x10

    xor-long v10, v6, v15

    long-to-int v11, v10

    aget-short v10, p5, v11

    or-int/2addr v9, v10

    aput v9, v14, v8

    .line 1170
    add-long/2addr v6, v15

    goto :goto_0

    .line 1177
    .end local v6    # "x":J
    :cond_1
    const-wide/16 v6, 0x0

    .restart local v6    # "x":J
    :goto_1
    cmp-long v8, v6, v1

    if-gez v8, :cond_2

    .line 1179
    long-to-int v8, v6

    int-to-long v9, v0

    add-long/2addr v9, v6

    long-to-int v10, v9

    invoke-static {v14, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    shl-int/lit8 v9, v9, 0x10

    int-to-long v10, v0

    xor-long v12, v6, v15

    add-long/2addr v10, v12

    long-to-int v11, v10

    invoke-static {v14, v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v10

    or-int/2addr v9, v10

    aput v9, v14, v8

    .line 1177
    add-long/2addr v6, v15

    goto :goto_1

    .line 1182
    :cond_2
    long-to-int v8, v1

    const/4 v9, 0x0

    invoke-static {v14, v9, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1184
    const-wide/16 v6, 0x0

    :goto_2
    const v8, 0xffff

    cmp-long v10, v6, v1

    if-gez v10, :cond_4

    .line 1186
    long-to-int v10, v6

    aget v10, v14, v10

    .line 1187
    .local v10, "Ax":I
    and-int/2addr v8, v10

    .line 1188
    .local v8, "px":I
    move v11, v8

    .line 1189
    .local v11, "cx":I
    int-to-long v12, v11

    cmp-long v17, v6, v12

    if-gez v17, :cond_3

    .line 1191
    long-to-int v11, v6

    .line 1193
    :cond_3
    add-long v12, v1, v6

    long-to-int v13, v12

    shl-int/lit8 v12, v8, 0x10

    or-int/2addr v12, v11

    aput v12, v14, v13

    .line 1184
    .end local v8    # "px":I
    .end local v10    # "Ax":I
    .end local v11    # "cx":I
    add-long/2addr v6, v15

    goto :goto_2

    .line 1196
    :cond_4
    const-wide/16 v6, 0x0

    :goto_3
    cmp-long v10, v6, v1

    if-gez v10, :cond_5

    .line 1198
    long-to-int v10, v6

    long-to-int v11, v6

    aget v11, v14, v11

    shl-int/lit8 v11, v11, 0x10

    int-to-long v11, v11

    or-long/2addr v11, v6

    long-to-int v12, v11

    aput v12, v14, v10

    .line 1196
    add-long/2addr v6, v15

    goto :goto_3

    .line 1200
    :cond_5
    long-to-int v10, v1

    invoke-static {v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1202
    const-wide/16 v6, 0x0

    :goto_4
    cmp-long v10, v6, v1

    if-gez v10, :cond_6

    .line 1204
    long-to-int v10, v6

    long-to-int v11, v6

    aget v11, v14, v11

    shl-int/lit8 v11, v11, 0x10

    add-long v12, v1, v6

    long-to-int v13, v12

    aget v12, v14, v13

    shr-int/lit8 v12, v12, 0x10

    add-int/2addr v11, v12

    aput v11, v14, v10

    .line 1202
    add-long/2addr v6, v15

    goto :goto_4

    .line 1206
    :cond_6
    long-to-int v10, v1

    invoke-static {v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1208
    const-wide/16 v10, 0xa

    const-wide/16 v17, 0x2

    cmp-long v13, p7, v10

    if-gtz v13, :cond_e

    .line 1210
    const-wide/16 v6, 0x0

    :goto_5
    cmp-long v10, v6, v1

    if-gez v10, :cond_7

    .line 1212
    add-long v10, v1, v6

    long-to-int v11, v10

    long-to-int v10, v6

    aget v10, v14, v10

    and-int/2addr v10, v8

    shl-int/lit8 v10, v10, 0xa

    move-wide/from16 v19, v3

    add-long v3, v1, v6

    long-to-int v4, v3

    aget v3, v14, v4

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v3, v10

    aput v3, v14, v11

    .line 1210
    add-long/2addr v6, v15

    move-wide/from16 v3, v19

    goto :goto_5

    .line 1215
    :cond_7
    move-wide/from16 v19, v3

    const-wide/16 v3, 0x1

    .local v3, "i":J
    :goto_6
    sub-long v10, p7, v15

    cmp-long v13, v3, v10

    if-gez v13, :cond_c

    .line 1219
    const-wide/16 v6, 0x0

    :goto_7
    cmp-long v10, v6, v1

    if-gez v10, :cond_8

    .line 1221
    long-to-int v10, v6

    const/high16 v11, -0x10000

    add-long v12, v1, v6

    long-to-int v13, v12

    aget v12, v14, v13

    and-int/lit16 v12, v12, -0x400

    shl-int/lit8 v12, v12, 0x6

    int-to-long v12, v12

    or-long/2addr v12, v6

    long-to-int v13, v12

    aput v13, v14, v10

    .line 1219
    add-long/2addr v6, v15

    goto :goto_7

    .line 1223
    :cond_8
    const/high16 v11, -0x10000

    long-to-int v10, v1

    invoke-static {v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1225
    const-wide/16 v6, 0x0

    :goto_8
    cmp-long v10, v6, v1

    if-gez v10, :cond_9

    .line 1227
    long-to-int v10, v6

    long-to-int v12, v6

    aget v12, v14, v12

    shl-int/lit8 v12, v12, 0x14

    move/from16 v21, v12

    const/high16 v13, -0x10000

    add-long v11, v1, v6

    long-to-int v12, v11

    aget v11, v14, v12

    or-int v11, v21, v11

    aput v11, v14, v10

    .line 1225
    add-long/2addr v6, v15

    const/high16 v11, -0x10000

    goto :goto_8

    .line 1229
    :cond_9
    const/high16 v13, -0x10000

    long-to-int v10, v1

    invoke-static {v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1231
    const-wide/16 v6, 0x0

    :goto_9
    cmp-long v10, v6, v1

    if-gez v10, :cond_b

    .line 1233
    long-to-int v10, v6

    aget v10, v14, v10

    const v11, 0xfffff

    and-int/2addr v10, v11

    .line 1234
    .local v10, "ppcpx":I
    long-to-int v11, v6

    aget v11, v14, v11

    const v12, 0xffc00

    and-int/2addr v11, v12

    const v21, 0xffff

    add-long v8, v1, v6

    long-to-int v9, v8

    aget v8, v14, v9

    and-int/lit16 v8, v8, 0x3ff

    or-int/2addr v8, v11

    .line 1235
    .local v8, "ppcx":I
    if-ge v10, v8, :cond_a

    .line 1237
    move v8, v10

    .line 1239
    :cond_a
    const/high16 v11, -0x10000

    add-long v12, v1, v6

    long-to-int v13, v12

    aput v8, v14, v13

    .line 1231
    .end local v8    # "ppcx":I
    .end local v10    # "ppcpx":I
    add-long/2addr v6, v15

    const v8, 0xffff

    const/4 v9, 0x0

    const/high16 v13, -0x10000

    goto :goto_9

    .line 1215
    :cond_b
    const/high16 v11, -0x10000

    const v21, 0xffff

    add-long/2addr v3, v15

    const v8, 0xffff

    const/4 v9, 0x0

    goto/16 :goto_6

    .line 1242
    :cond_c
    const/high16 v11, -0x10000

    const v21, 0xffff

    const-wide/16 v6, 0x0

    :goto_a
    cmp-long v8, v6, v1

    if-gez v8, :cond_d

    .line 1244
    add-long v12, v1, v6

    long-to-int v8, v12

    aget v10, v14, v8

    and-int/lit16 v10, v10, 0x3ff

    aput v10, v14, v8

    .line 1242
    add-long/2addr v6, v15

    goto :goto_a

    :cond_d
    const/high16 v13, -0x10000

    goto/16 :goto_13

    .line 1249
    .end local v3    # "i":J
    :cond_e
    move-wide/from16 v19, v3

    const/high16 v11, -0x10000

    const v21, 0xffff

    const-wide/16 v3, 0x0

    .end local v6    # "x":J
    .local v3, "x":J
    :goto_b
    cmp-long v6, v3, v1

    if-gez v6, :cond_f

    .line 1251
    add-long v6, v1, v3

    long-to-int v7, v6

    long-to-int v6, v3

    aget v6, v14, v6

    shl-int/lit8 v6, v6, 0x10

    add-long v12, v1, v3

    long-to-int v8, v12

    aget v8, v14, v8

    and-int v8, v8, v21

    or-int/2addr v6, v8

    aput v6, v14, v7

    .line 1249
    add-long/2addr v3, v15

    goto :goto_b

    .line 1253
    :cond_f
    const-wide/16 v6, 0x1

    move-wide/from16 v33, v6

    move-wide v6, v3

    move-wide/from16 v3, v33

    .local v3, "i":J
    .restart local v6    # "x":J
    :goto_c
    sub-long v12, p7, v15

    cmp-long v8, v3, v12

    if-gez v8, :cond_16

    .line 1256
    const-wide/16 v6, 0x0

    :goto_d
    cmp-long v8, v6, v1

    if-gez v8, :cond_10

    .line 1258
    long-to-int v8, v6

    add-long v12, v1, v6

    long-to-int v10, v12

    aget v10, v14, v10

    and-int/2addr v10, v11

    int-to-long v12, v10

    or-long/2addr v12, v6

    long-to-int v10, v12

    aput v10, v14, v8

    .line 1256
    add-long/2addr v6, v15

    goto :goto_d

    .line 1260
    :cond_10
    long-to-int v8, v1

    const/4 v12, 0x0

    invoke-static {v14, v12, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1261
    const-wide/16 v6, 0x0

    :goto_e
    cmp-long v8, v6, v1

    if-gez v8, :cond_11

    .line 1263
    long-to-int v8, v6

    long-to-int v9, v6

    aget v9, v14, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v13, -0x10000

    add-long v11, v1, v6

    long-to-int v12, v11

    aget v11, v14, v12

    and-int v11, v11, v21

    or-int/2addr v9, v11

    aput v9, v14, v8

    .line 1261
    add-long/2addr v6, v15

    const/high16 v11, -0x10000

    goto :goto_e

    .line 1267
    :cond_11
    const/high16 v13, -0x10000

    sub-long v8, p7, v17

    cmp-long v11, v3, v8

    if-gez v11, :cond_13

    .line 1270
    const-wide/16 v6, 0x0

    :goto_f
    cmp-long v8, v6, v1

    if-gez v8, :cond_12

    .line 1272
    add-long v8, v1, v6

    long-to-int v9, v8

    long-to-int v8, v6

    aget v8, v14, v8

    and-int/2addr v8, v13

    add-long v11, v1, v6

    long-to-int v12, v11

    aget v11, v14, v12

    shr-int/lit8 v11, v11, 0x10

    or-int/2addr v8, v11

    aput v8, v14, v9

    .line 1270
    add-long/2addr v6, v15

    goto :goto_f

    .line 1276
    :cond_12
    long-to-int v8, v1

    mul-long v11, v1, v17

    long-to-int v9, v11

    invoke-static {v14, v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1277
    const-wide/16 v6, 0x0

    :goto_10
    cmp-long v8, v6, v1

    if-gez v8, :cond_13

    .line 1279
    add-long v8, v1, v6

    long-to-int v9, v8

    add-long v11, v1, v6

    long-to-int v8, v11

    aget v8, v14, v8

    shl-int/lit8 v8, v8, 0x10

    long-to-int v11, v6

    aget v11, v14, v11

    and-int v11, v11, v21

    or-int/2addr v8, v11

    aput v8, v14, v9

    .line 1277
    add-long/2addr v6, v15

    goto :goto_10

    .line 1285
    :cond_13
    long-to-int v8, v1

    const/4 v12, 0x0

    invoke-static {v14, v12, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1287
    const-wide/16 v6, 0x0

    :goto_11
    cmp-long v8, v6, v1

    if-gez v8, :cond_15

    .line 1289
    add-long v8, v1, v6

    long-to-int v9, v8

    aget v8, v14, v9

    and-int/2addr v8, v13

    long-to-int v9, v6

    aget v9, v14, v9

    and-int v9, v9, v21

    or-int/2addr v8, v9

    .line 1290
    .local v8, "cpx":I
    add-long v9, v1, v6

    long-to-int v10, v9

    aget v9, v14, v10

    if-ge v8, v9, :cond_14

    .line 1292
    add-long v9, v1, v6

    long-to-int v10, v9

    aput v8, v14, v10

    .line 1287
    .end local v8    # "cpx":I
    :cond_14
    add-long/2addr v6, v15

    goto :goto_11

    .line 1253
    :cond_15
    add-long/2addr v3, v15

    const/high16 v11, -0x10000

    goto/16 :goto_c

    .line 1296
    :cond_16
    const/high16 v13, -0x10000

    const-wide/16 v6, 0x0

    :goto_12
    cmp-long v8, v6, v1

    if-gez v8, :cond_17

    .line 1298
    add-long v8, v1, v6

    long-to-int v9, v8

    aget v8, v14, v9

    and-int v8, v8, v21

    aput v8, v14, v9

    .line 1296
    add-long/2addr v6, v15

    goto :goto_12

    .line 1301
    :cond_17
    :goto_13
    if-eqz p5, :cond_19

    .line 1303
    const-wide/16 v6, 0x0

    :goto_14
    cmp-long v8, v6, v1

    if-gez v8, :cond_18

    .line 1305
    long-to-int v8, v6

    long-to-int v9, v6

    aget-short v9, p5, v9

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-long/2addr v9, v6

    long-to-int v10, v9

    aput v10, v14, v8

    .line 1303
    add-long/2addr v6, v15

    goto :goto_14

    :cond_18
    move-wide/from16 v22, v6

    goto :goto_16

    .line 1310
    :cond_19
    const-wide/16 v6, 0x0

    :goto_15
    cmp-long v8, v6, v1

    if-gez v8, :cond_1a

    .line 1312
    long-to-int v8, v6

    int-to-long v9, v0

    add-long/2addr v9, v6

    long-to-int v10, v9

    invoke-static {v14, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v9

    shl-int/lit8 v9, v9, 0x10

    int-to-long v9, v9

    add-long/2addr v9, v6

    long-to-int v10, v9

    aput v10, v14, v8

    .line 1310
    add-long/2addr v6, v15

    goto :goto_15

    :cond_1a
    move-wide/from16 v22, v6

    .line 1316
    .end local v6    # "x":J
    .local v22, "x":J
    :goto_16
    long-to-int v6, v1

    const/4 v12, 0x0

    invoke-static {v14, v12, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1318
    const-wide/16 v6, 0x0

    move-wide v8, v6

    move-wide/from16 v6, p1

    .end local p1    # "pos":J
    .local v6, "pos":J
    .local v8, "j":J
    :goto_17
    div-long v10, v1, v17

    cmp-long v24, v8, v10

    if-gez v24, :cond_1b

    .line 1320
    mul-long v10, v8, v17

    .line 1321
    .local v10, "_x":J
    move-wide/from16 p1, v6

    const/16 v24, 0x3

    .end local v6    # "pos":J
    .restart local p1    # "pos":J
    add-long v5, v1, v10

    long-to-int v6, v5

    aget v5, v14, v6

    and-int/lit8 v5, v5, 0x1

    .line 1322
    .local v5, "fj":I
    int-to-long v6, v5

    add-long/2addr v6, v10

    long-to-int v7, v6

    .line 1323
    .local v7, "Fx":I
    xor-int/lit8 v6, v7, 0x1

    .line 1325
    .local v6, "Fx1":I
    const/high16 v25, -0x10000

    shr-long v12, p1, v24

    long-to-int v13, v12

    aget-byte v12, p0, v13

    move-wide/from16 v27, v3

    .end local v3    # "i":J
    .local v27, "i":J
    and-long v3, p1, v19

    long-to-int v4, v3

    shl-int v3, v5, v4

    xor-int/2addr v3, v12

    int-to-byte v3, v3

    aput-byte v3, p0, v13

    .line 1326
    add-long v3, p1, p3

    .line 1328
    .end local p1    # "pos":J
    .local v3, "pos":J
    add-long v12, v1, v10

    long-to-int v13, v12

    long-to-int v12, v10

    aget v12, v14, v12

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v12, v7

    aput v12, v14, v13

    .line 1329
    add-long v12, v1, v10

    add-long/2addr v12, v15

    long-to-int v13, v12

    move-wide/from16 p1, v3

    .end local v3    # "pos":J
    .restart local p1    # "pos":J
    add-long v3, v10, v15

    long-to-int v4, v3

    aget v3, v14, v4

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v6

    aput v3, v14, v13

    .line 1318
    .end local v5    # "fj":I
    .end local v6    # "Fx1":I
    .end local v7    # "Fx":I
    .end local v10    # "_x":J
    add-long/2addr v8, v15

    move-wide/from16 v3, v27

    const/4 v5, 0x3

    const/high16 v13, -0x10000

    move-wide/from16 v6, p1

    goto :goto_17

    .line 1333
    .end local v27    # "i":J
    .end local p1    # "pos":J
    .local v3, "i":J
    .local v6, "pos":J
    :cond_1b
    move-wide/from16 v27, v3

    move-wide/from16 p1, v6

    const/16 v24, 0x3

    const/high16 v25, -0x10000

    .end local v3    # "i":J
    .end local v6    # "pos":J
    .restart local v27    # "i":J
    .restart local p1    # "pos":J
    long-to-int v3, v1

    mul-long v4, v1, v17

    long-to-int v5, v4

    invoke-static {v14, v3, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1335
    mul-long v3, p7, v17

    const-wide/16 v5, 0x3

    sub-long/2addr v3, v5

    mul-long v3, v3, p3

    div-long v5, v1, v17

    mul-long v3, v3, v5

    add-long v6, p1, v3

    .line 1337
    .end local p1    # "pos":J
    .restart local v6    # "pos":J
    const-wide/16 v3, 0x0

    move-wide/from16 v29, v3

    .local v29, "k":J
    :goto_18
    div-long v3, v1, v17

    cmp-long v5, v29, v3

    if-gez v5, :cond_1c

    .line 1339
    mul-long v3, v29, v17

    .line 1340
    .local v3, "y":J
    add-long v10, v1, v3

    long-to-int v5, v10

    aget v5, v14, v5

    and-int/lit8 v5, v5, 0x1

    .line 1341
    .local v5, "lk":I
    int-to-long v10, v5

    add-long/2addr v10, v3

    long-to-int v11, v10

    .line 1342
    .local v11, "Ly":I
    xor-int/lit8 v10, v11, 0x1

    .line 1344
    .local v10, "Ly1":I
    shr-long v12, v6, v24

    long-to-int v13, v12

    aget-byte v12, p0, v13

    move-wide/from16 p1, v6

    .end local v6    # "pos":J
    .restart local p1    # "pos":J
    and-long v6, p1, v19

    long-to-int v7, v6

    shl-int v6, v5, v7

    xor-int/2addr v6, v12

    int-to-byte v6, v6

    aput-byte v6, p0, v13

    .line 1345
    add-long v6, p1, p3

    .line 1347
    .end local p1    # "pos":J
    .restart local v6    # "pos":J
    long-to-int v12, v3

    shl-int/lit8 v13, v11, 0x10

    move-wide/from16 v31, v3

    .end local v3    # "y":J
    .local v31, "y":J
    add-long v3, v1, v31

    long-to-int v4, v3

    aget v3, v14, v4

    and-int v3, v3, v21

    or-int/2addr v3, v13

    aput v3, v14, v12

    .line 1348
    add-long v3, v31, v15

    long-to-int v4, v3

    shl-int/lit8 v3, v10, 0x10

    add-long v12, v1, v31

    add-long/2addr v12, v15

    long-to-int v13, v12

    aget v12, v14, v13

    and-int v12, v12, v21

    or-int/2addr v3, v12

    aput v3, v14, v4

    .line 1337
    .end local v5    # "lk":I
    .end local v10    # "Ly1":I
    .end local v11    # "Ly":I
    .end local v31    # "y":J
    add-long v29, v29, v15

    goto :goto_18

    .line 1352
    :cond_1c
    move-wide/from16 p1, v6

    .end local v6    # "pos":J
    .restart local p1    # "pos":J
    long-to-int v3, v1

    const/4 v12, 0x0

    invoke-static {v14, v12, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    .line 1354
    mul-long v3, p7, v17

    sub-long v3, v3, v17

    mul-long v3, v3, p3

    div-long v5, v1, v17

    mul-long v3, v3, v5

    sub-long v6, p1, v3

    .line 1356
    .end local p1    # "pos":J
    .restart local v6    # "pos":J
    long-to-int v3, v1

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [S

    .line 1357
    .local v3, "q":[S
    const-wide/16 v4, 0x0

    .end local v27    # "i":J
    .local v4, "i":J
    :goto_19
    mul-long v10, v1, v17

    cmp-long v12, v4, v10

    if-gez v12, :cond_1d

    .line 1359
    mul-long v10, v4, v17

    const-wide/16 v12, 0x0

    add-long/2addr v10, v12

    long-to-int v11, v10

    long-to-int v10, v4

    aget v10, v14, v10

    int-to-short v10, v10

    aput-short v10, v3, v11

    .line 1360
    mul-long v10, v4, v17

    add-long/2addr v10, v15

    long-to-int v11, v10

    long-to-int v10, v4

    aget v10, v14, v10

    and-int v10, v10, v25

    shr-int/lit8 v10, v10, 0x10

    int-to-short v10, v10

    aput-short v10, v3, v11

    .line 1357
    add-long/2addr v4, v15

    goto :goto_19

    .line 1362
    :cond_1d
    const-wide/16 v8, 0x0

    :goto_1a
    div-long v10, v1, v17

    cmp-long v12, v8, v10

    if-gez v12, :cond_1e

    .line 1364
    long-to-int v10, v8

    mul-long v11, v8, v17

    long-to-int v12, v11

    aget v11, v14, v12

    and-int v11, v11, v21

    ushr-int/lit8 v11, v11, 0x1

    int-to-short v11, v11

    aput-short v11, v3, v10

    .line 1365
    div-long v10, v1, v17

    add-long/2addr v10, v8

    long-to-int v11, v10

    mul-long v12, v8, v17

    add-long/2addr v12, v15

    long-to-int v10, v12

    aget v10, v14, v10

    and-int v10, v10, v21

    ushr-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    aput-short v10, v3, v11

    .line 1362
    add-long/2addr v8, v15

    goto :goto_1a

    .line 1367
    :cond_1e
    const-wide/16 v4, 0x0

    move-wide/from16 v19, v4

    .end local v4    # "i":J
    .local v19, "i":J
    :goto_1b
    div-long v4, v1, v17

    const-wide/16 v24, 0x4

    cmp-long v10, v19, v4

    if-gez v10, :cond_1f

    .line 1369
    div-long v4, v1, v24

    add-long/2addr v4, v1

    add-long v4, v4, v19

    long-to-int v5, v4

    mul-long v10, v19, v17

    add-long/2addr v10, v15

    long-to-int v4, v10

    aget-short v4, v3, v4

    shl-int/lit8 v4, v4, 0x10

    mul-long v10, v19, v17

    long-to-int v11, v10

    aget-short v10, v3, v11

    or-int/2addr v4, v10

    aput v4, v14, v5

    .line 1367
    add-long v19, v19, v15

    goto :goto_1b

    .line 1371
    :cond_1f
    move-wide v4, v6

    .end local v6    # "pos":J
    .local v4, "pos":J
    mul-long v6, p3, v17

    div-long v10, v1, v24

    add-long/2addr v10, v1

    long-to-int v11, v10

    mul-int/lit8 v11, v11, 0x2

    sub-long v12, p7, v15

    move-wide/from16 v26, v8

    move v9, v11

    move-wide v10, v12

    .end local v8    # "j":J
    .local v26, "j":J
    div-long v12, v1, v17

    const/4 v8, 0x0

    move-object/from16 v21, v3

    move-object/from16 v3, p0

    .end local v3    # "q":[S
    .local v21, "q":[S
    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    .line 1372
    move-wide/from16 v31, v4

    .end local v4    # "pos":J
    .local v31, "pos":J
    add-long v4, v31, p3

    mul-long v6, p3, v17

    div-long v8, v1, v24

    add-long/2addr v8, v1

    mul-long v8, v8, v17

    div-long v10, v1, v17

    add-long/2addr v8, v10

    long-to-int v9, v8

    sub-long v10, p7, v15

    div-long v12, v1, v17

    const/4 v8, 0x0

    move-object/from16 v14, p11

    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    .line 1373
    return-void
.end method

.method private static controlbitsfrompermutation([B[SJJ)V
    .locals 16
    .param p0, "out"    # [B
    .param p1, "pi"    # [S
    .param p2, "w"    # J
    .param p4, "n"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "pi",
            "w",
            "n"
        }
    .end annotation

    .line 1100
    move-wide/from16 v9, p4

    const-wide/16 v12, 0x2

    mul-long v0, v9, v12

    long-to-int v1, v0

    new-array v11, v1, [I

    .line 1101
    .local v11, "temp":[I
    long-to-int v0, v9

    new-array v14, v0, [S

    .line 1107
    .local v14, "pi_test":[S
    :cond_0
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_0
    int-to-long v0, v15

    mul-long v2, p2, v12

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    mul-long v2, v2, v9

    div-long/2addr v2, v12

    const-wide/16 v4, 0x7

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    div-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 1109
    const/4 v0, 0x0

    aput-byte v0, p0, v15

    .line 1107
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1111
    :cond_1
    const-wide/16 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v7, p2

    invoke-static/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    .line 1114
    const/4 v1, 0x0

    .end local v15    # "i":I
    .local v1, "i":I
    :goto_1
    int-to-long v2, v1

    cmp-long v4, v2, v9

    if-gez v4, :cond_2

    .line 1116
    int-to-short v2, v1

    aput-short v2, v14, v1

    .line 1114
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1119
    :cond_2
    const/4 v2, 0x0

    .line 1120
    .local v2, "ptrIndex":I
    const/4 v1, 0x0

    :goto_2
    int-to-long v3, v1

    const/4 v5, 0x4

    cmp-long v6, v3, p2

    if-gez v6, :cond_3

    .line 1122
    long-to-int v3, v9

    invoke-static {v14, v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    .line 1123
    int-to-long v3, v2

    shr-long v5, v9, v5

    add-long/2addr v3, v5

    long-to-int v2, v3

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1126
    :cond_3
    sub-long v3, p2, v12

    long-to-int v1, v3

    :goto_3
    if-ltz v1, :cond_4

    .line 1128
    long-to-int v3, v9

    invoke-static {v14, v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    .line 1129
    int-to-long v3, v2

    shr-long v6, v9, v5

    add-long/2addr v3, v6

    long-to-int v2, v3

    .line 1126
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 1132
    :cond_4
    const/4 v3, 0x0

    .line 1133
    .local v3, "diff":S
    const/4 v1, 0x0

    :goto_4
    int-to-long v4, v1

    cmp-long v6, v4, v9

    if-gez v6, :cond_5

    .line 1135
    aget-short v4, p1, v1

    aget-short v5, v14, v1

    xor-int/2addr v4, v5

    or-int/2addr v4, v3

    int-to-short v3, v4

    .line 1133
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1138
    :cond_5
    if-nez v3, :cond_0

    .line 1140
    nop

    .line 1143
    return-void
.end method

.method private static ctz(J)I
    .locals 14
    .param p0, "in"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 1028
    const-wide v0, 0x101010101010101L

    .local v0, "m1":J
    const-wide/16 v2, 0x0

    .local v2, "r8":J
    not-long v4, p0

    .line 1029
    .local v4, "x":J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/16 v7, 0x8

    if-ge v6, v7, :cond_0

    .line 1031
    ushr-long v7, v4, v6

    and-long/2addr v0, v7

    .line 1032
    add-long/2addr v2, v0

    .line 1029
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1035
    .end local v6    # "i":I
    :cond_0
    const-wide v8, 0x808080808080808L

    and-long/2addr v8, v2

    .line 1036
    .local v8, "m8":J
    const/4 v6, 0x1

    ushr-long v10, v8, v6

    or-long/2addr v8, v10

    .line 1037
    const/4 v6, 0x2

    ushr-long v10, v8, v6

    or-long/2addr v8, v10

    .line 1039
    move-wide v10, v2

    .line 1040
    .local v10, "r":J
    ushr-long/2addr v2, v7

    .line 1041
    and-long v12, v2, v8

    add-long/2addr v10, v12

    .line 1042
    const/4 v6, 0x2

    .restart local v6    # "i":I
    :goto_1
    if-ge v6, v7, :cond_1

    .line 1044
    ushr-long v12, v8, v7

    and-long/2addr v8, v12

    .line 1045
    ushr-long/2addr v2, v7

    .line 1046
    and-long v12, v2, v8

    add-long/2addr v10, v12

    .line 1042
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1048
    .end local v6    # "i":I
    :cond_1
    long-to-int v6, v10

    and-int/lit16 v6, v6, 0xff

    return v6
.end method

.method private decrypt([B[B[B)I
    .locals 17
    .param p1, "error_vector"    # [B
    .param p2, "sk"    # [B
    .param p3, "cipher_text"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "error_vector",
            "sk",
            "cipher_text"
        }
    .end annotation

    .line 657
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [S

    .line 658
    .local v3, "g":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v5, v5, [S

    .line 660
    .local v5, "L":[S
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    new-array v6, v6, [S

    .line 661
    .local v6, "s":[S
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v7, v7, 0x2

    new-array v7, v7, [S

    .line 662
    .local v7, "s_cmp":[S
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v8, v4

    new-array v8, v8, [S

    .line 663
    .local v8, "locator":[S
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v9, v9, [S

    .line 667
    .local v9, "images":[S
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v10, v10, 0x8

    new-array v10, v10, [B

    .line 673
    .local v10, "r":[B
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v11, v12, :cond_0

    .line 675
    aget-byte v12, p3, v11

    aput-byte v12, v10, v11

    .line 673
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 678
    .end local v11    # "i":I
    :cond_0
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    .restart local v11    # "i":I
    :goto_1
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v12, v12, 0x8

    const/4 v13, 0x0

    if-ge v11, v12, :cond_1

    .line 680
    aput-byte v13, v10, v11

    .line 678
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 683
    .end local v11    # "i":I
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_2
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v11, v12, :cond_2

    .line 685
    mul-int/lit8 v12, v11, 0x2

    add-int/lit8 v12, v12, 0x28

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v2, v12, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v12

    aput-short v12, v3, v11

    .line 683
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 687
    .end local v11    # "i":I
    :cond_2
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aput-short v4, v3, v11

    .line 696
    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    invoke-virtual {v11, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->support_gen([S[B)V

    .line 699
    invoke-direct {v0, v6, v3, v5, v10}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    .line 702
    invoke-direct {v0, v8, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->bm([S[S)V

    .line 705
    invoke-direct {v0, v9, v8, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    .line 712
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v12, v12, 0x8

    if-ge v11, v12, :cond_3

    .line 714
    aput-byte v13, v1, v11

    .line 712
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 717
    .end local v11    # "i":I
    :cond_3
    const/4 v11, 0x0

    .line 718
    .local v11, "w":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v12, v13, :cond_4

    .line 720
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v14, v9, v12

    invoke-virtual {v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v13

    and-int/2addr v13, v4

    int-to-short v13, v13

    .line 722
    .local v13, "t":S
    div-int/lit8 v14, v12, 0x8

    aget-byte v15, v1, v14

    rem-int/lit8 v16, v12, 0x8

    shl-int v16, v13, v16

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v1, v14

    .line 723
    add-int/2addr v11, v13

    .line 718
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 727
    .end local v12    # "i":I
    .end local v13    # "t":S
    :cond_4
    invoke-direct {v0, v7, v3, v5, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    .line 734
    move v12, v11

    .line 735
    .local v12, "check":I
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    xor-int/2addr v12, v13

    .line 737
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v14, v14, 0x2

    if-ge v13, v14, :cond_5

    .line 739
    aget-short v14, v6, v13

    aget-short v15, v7, v13

    xor-int/2addr v14, v15

    or-int/2addr v12, v14

    .line 737
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 741
    .end local v13    # "i":I
    :cond_5
    add-int/lit8 v12, v12, -0x1

    .line 742
    shr-int/lit8 v12, v12, 0xf

    .line 743
    and-int/2addr v4, v12

    .line 744
    .end local v12    # "check":I
    .local v4, "check":I
    nop

    .line 749
    xor-int/lit8 v12, v4, 0x1

    return v12
.end method

.method private encrypt([B[B[BLjava/security/SecureRandom;)V
    .locals 0
    .param p1, "cipher_text"    # [B
    .param p2, "pk"    # [B
    .param p3, "error_vector"    # [B
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher_text",
            "pk",
            "error_vector",
            "random"
        }
    .end annotation

    .line 518
    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_error_vector([BLjava/security/SecureRandom;)V

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->syndrome([B[B[B)V

    .line 525
    return-void
.end method

.method private eval([SS)S
    .locals 4
    .param p1, "f"    # [S
    .param p2, "a"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "f",
            "a"
        }
    .end annotation

    .line 1576
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-short v0, p1, v0

    .line 1578
    .local v0, "r":S
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1580
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v2, v0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v2

    aget-short v3, p1, v1

    xor-int/2addr v2, v3

    int-to-short v0, v2

    .line 1578
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1583
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method private generate_error_vector([BLjava/security/SecureRandom;)V
    .locals 9
    .param p1, "error_vector"    # [B
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_vector",
            "random"
        }
    .end annotation

    .line 396
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 397
    .local v0, "buf_nums":[S
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v1, v1, [S

    .line 398
    .local v1, "ind":[S
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v2, v2, [B

    .line 412
    .local v2, "val":[B
    :goto_0
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    if-eqz v3, :cond_4

    .line 414
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [B

    .line 416
    .local v3, "buf_bytes":[B
    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 417
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_0

    .line 419
    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v5

    aput-short v5, v0, v4

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 429
    .end local v4    # "i":I
    :cond_0
    const/4 v4, 0x0

    .line 430
    .local v4, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    if-ge v5, v6, :cond_2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v6, :cond_2

    .line 432
    aget-short v6, v0, v5

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v6, v7, :cond_1

    .line 434
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "count":I
    .local v6, "count":I
    aget-short v7, v0, v5

    aput-short v7, v1, v4

    move v4, v6

    .line 430
    .end local v6    # "count":I
    .restart local v4    # "count":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 438
    .end local v5    # "i":I
    :cond_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v5, :cond_3

    .line 441
    goto :goto_0

    .line 443
    .end local v4    # "count":I
    :cond_3
    goto :goto_4

    .line 446
    .end local v3    # "buf_bytes":[B
    :cond_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 447
    .restart local v3    # "buf_bytes":[B
    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 449
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v5, :cond_5

    .line 451
    mul-int/lit8 v5, v4, 0x2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v5

    aput-short v5, v1, v4

    .line 449
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 460
    .end local v4    # "i":I
    :cond_5
    :goto_4
    const/4 v4, 0x0

    .line 462
    .local v4, "eq":I
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v7, 0x1

    if-ge v5, v6, :cond_8

    if-eq v4, v7, :cond_8

    .line 464
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_6
    if-ge v6, v5, :cond_7

    .line 466
    aget-short v7, v1, v5

    aget-short v8, v1, v6

    if-ne v7, v8, :cond_6

    .line 468
    const/4 v4, 0x1

    .line 469
    goto :goto_7

    .line 464
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 462
    .end local v6    # "j":I
    :cond_7
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 474
    .end local v5    # "i":I
    :cond_8
    if-nez v4, :cond_c

    .line 476
    nop

    .line 491
    .end local v4    # "eq":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v5, :cond_9

    .line 493
    aget-short v5, v1, v4

    and-int/lit8 v5, v5, 0x7

    shl-int v5, v7, v5

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    .line 491
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 496
    .end local v4    # "i":I
    :cond_9
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_9
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v5, v5, 0x8

    if-ge v4, v5, :cond_b

    .line 498
    const/4 v5, 0x0

    aput-byte v5, p1, v4

    .line 500
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_a
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_a

    .line 502
    aget-short v6, v1, v5

    shr-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask32(SS)B

    move-result v6

    int-to-short v6, v6

    .line 503
    .local v6, "mask":S
    and-int/lit16 v7, v6, 0xff

    int-to-short v6, v7

    .line 504
    aget-byte v7, p1, v4

    aget-byte v8, v2, v5

    and-int/2addr v8, v6

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 500
    .end local v6    # "mask":S
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 496
    .end local v5    # "j":I
    :cond_a
    add-int/lit8 v5, v4, 0x1

    int-to-short v4, v5

    goto :goto_9

    .line 508
    .end local v4    # "i":S
    :cond_b
    return-void

    .line 482
    :cond_c
    goto/16 :goto_0
.end method

.method private generate_irr_poly([S)I
    .locals 12
    .param p1, "field"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "field"
        }
    .end annotation

    .line 1598
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v3, 0x2

    new-array v4, v3, [I

    aput v2, v4, v1

    const/4 v2, 0x0

    aput v0, v4, v2

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    .line 1602
    .local v0, "m":[[S
    aget-object v4, v0, v2

    aput-short v1, v4, v2

    .line 1608
    aget-object v4, v0, v1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1610
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    new-array v10, v4, [I

    .line 1611
    .local v10, "temp":[I
    const/4 v3, 0x2

    .line 1612
    .local v3, "j":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v4, :cond_0

    .line 1614
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v0, v3

    ushr-int/lit8 v4, v3, 0x1

    aget-object v9, v0, v4

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    .line 1615
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    add-int/lit8 v4, v3, 0x1

    aget-object v8, v0, v4

    aget-object v9, v0, v3

    move-object v11, v10

    move-object v10, p1

    .end local p1    # "field":[S
    .local v10, "field":[S
    .local v11, "temp":[I
    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_poly(I[I[S[S[S[I)V

    .line 1616
    move-object v10, v11

    .end local v11    # "temp":[I
    .local v10, "temp":[I
    .restart local p1    # "field":[S
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 1618
    :cond_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ne v3, v4, :cond_1

    .line 1620
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v8, v0, v3

    ushr-int/lit8 v4, v3, 0x1

    aget-object v9, v0, v4

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    .line 1628
    .end local v3    # "j":I
    .end local v10    # "temp":[I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v4, :cond_8

    .line 1630
    add-int/lit8 v4, v3, 0x1

    .local v4, "k":I
    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v4, v5, :cond_3

    .line 1632
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v6, v0, v3

    aget-short v6, v6, v3

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v5

    .line 1633
    .local v5, "mask":S
    move v6, v3

    .local v6, "c":I
    :goto_3
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v7, v1

    if-ge v6, v7, :cond_2

    .line 1635
    aget-object v7, v0, v6

    aget-short v8, v7, v3

    aget-object v9, v0, v6

    aget-short v9, v9, v4

    and-int/2addr v9, v5

    int-to-short v9, v9

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v3

    .line 1633
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1630
    .end local v5    # "mask":S
    .end local v6    # "c":I
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1640
    .end local v4    # "k":I
    :cond_3
    aget-object v4, v0, v3

    aget-short v4, v4, v3

    if-nez v4, :cond_4

    .line 1643
    const/4 v1, -0x1

    return v1

    .line 1647
    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v5, v0, v3

    aget-short v5, v5, v3

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v4

    .line 1649
    .local v4, "inv":S
    move v5, v3

    .local v5, "c":I
    :goto_4
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/2addr v6, v1

    if-ge v5, v6, :cond_5

    .line 1651
    aget-object v6, v0, v5

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v8, v0, v5

    aget-short v8, v8, v3

    invoke-virtual {v7, v8, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v7

    aput-short v7, v6, v3

    .line 1649
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1654
    .end local v5    # "c":I
    :cond_5
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_5
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_7

    .line 1656
    if-eq v5, v3, :cond_6

    .line 1658
    aget-object v6, v0, v3

    aget-short v6, v6, v5

    .line 1660
    .local v6, "t":S
    move v7, v3

    .local v7, "c":I
    :goto_6
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v7, v8, :cond_6

    .line 1662
    aget-object v8, v0, v7

    aget-short v9, v8, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v11, v0, v7

    aget-short v11, v11, v3

    invoke-virtual {v10, v11, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v10

    xor-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v5

    .line 1660
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1654
    .end local v6    # "t":S
    .end local v7    # "c":I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1628
    .end local v4    # "inv":S
    .end local v5    # "k":I
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 1667
    .end local v3    # "j":I
    :cond_8
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-object v1, v0, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v1, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1668
    return v2
.end method

.method static get_q_short([II)S
    .locals 3
    .param p0, "temp"    # [I
    .param p1, "q_index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "temp",
            "q_index"
        }
    .end annotation

    .line 1147
    div-int/lit8 v0, p1, 0x2

    .line 1148
    .local v0, "temp_index":I
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    .line 1150
    aget v1, p0, v0

    int-to-short v1, v1

    return v1

    .line 1154
    :cond_0
    aget v1, p0, v0

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x10

    int-to-short v1, v1

    return v1
.end method

.method private static layer([S[BIII)V
    .locals 9
    .param p0, "p"    # [S
    .param p1, "out"    # [B
    .param p2, "ptrIndex"    # I
    .param p3, "s"    # I
    .param p4, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "out",
            "ptrIndex",
            "s",
            "n"
        }
    .end annotation

    .line 1079
    const/4 v0, 0x1

    shl-int v1, v0, p3

    .line 1080
    .local v1, "stride":I
    const/4 v2, 0x0

    .line 1083
    .local v2, "index":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, p4, :cond_1

    .line 1085
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 1087
    add-int v5, v3, v4

    aget-short v5, p0, v5

    add-int v6, v3, v4

    add-int/2addr v6, v1

    aget-short v6, p0, v6

    xor-int/2addr v5, v6

    .line 1088
    .local v5, "d":I
    shr-int/lit8 v6, v2, 0x3

    add-int/2addr v6, p2

    aget-byte v6, p1, v6

    and-int/lit8 v7, v2, 0x7

    shr-int/2addr v6, v7

    and-int/2addr v6, v0

    .line 1089
    .local v6, "m":I
    neg-int v6, v6

    .line 1090
    and-int/2addr v5, v6

    .line 1091
    add-int v7, v3, v4

    aget-short v8, p0, v7

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 1092
    add-int v7, v3, v4

    add-int/2addr v7, v1

    aget-short v8, p0, v7

    xor-int/2addr v8, v5

    int-to-short v8, v8

    aput-short v8, p0, v7

    .line 1093
    add-int/lit8 v2, v2, 0x1

    .line 1085
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1083
    .end local v5    # "d":I
    .end local v6    # "m":I
    :cond_0
    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v3, v5

    goto :goto_0

    .line 1096
    .end local v4    # "j":I
    :cond_1
    return-void
.end method

.method private static min(SI)I
    .locals 0
    .param p0, "a"    # S
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    .line 754
    if-ge p0, p1, :cond_0

    .line 756
    return p0

    .line 758
    :cond_0
    return p1
.end method

.method private mov_columns([[B[S[J)I
    .locals 32
    .param p1, "mat"    # [[B
    .param p2, "pi"    # [S
    .param p3, "pivots"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mat",
            "pi",
            "pivots"
        }
    .end annotation

    .line 879
    move-object/from16 v0, p0

    const/16 v1, 0x40

    new-array v2, v1, [J

    .line 880
    .local v2, "buf":[J
    const/16 v3, 0x20

    new-array v4, v3, [J

    .line 881
    .local v4, "ctz_list":[J
    const-wide/16 v5, 0x1

    .line 883
    .local v5, "one":J
    const/16 v7, 0x9

    new-array v8, v7, [B

    .line 885
    .local v8, "tmp":[B
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v9, v3

    .line 886
    .local v9, "row":I
    div-int/lit8 v10, v9, 0x8

    .line 887
    .local v10, "block_idx":I
    rem-int/lit8 v11, v9, 0x8

    .line 890
    .local v11, "tail":I
    iget-boolean v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v13, 0x0

    const/16 v14, 0x8

    if-eqz v12, :cond_2

    .line 892
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v3, :cond_3

    .line 894
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_1
    if-ge v15, v7, :cond_0

    .line 896
    add-int v16, v9, v12

    aget-object v16, p1, v16

    add-int v17, v10, v15

    aget-byte v16, v16, v17

    aput-byte v16, v8, v15

    .line 894
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 898
    :cond_0
    const/4 v15, 0x0

    :goto_2
    if-ge v15, v14, :cond_1

    .line 900
    aget-byte v14, v8, v15

    and-int/lit16 v14, v14, 0xff

    shr-int/2addr v14, v11

    add-int/lit8 v17, v15, 0x1

    aget-byte v17, v8, v17

    rsub-int/lit8 v18, v11, 0x8

    shl-int v17, v17, v18

    or-int v14, v14, v17

    int-to-byte v14, v14

    aput-byte v14, v8, v15

    .line 898
    add-int/lit8 v15, v15, 0x1

    const/16 v14, 0x8

    goto :goto_2

    .line 903
    :cond_1
    invoke-static {v8, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v17

    aput-wide v17, v2, v12

    .line 892
    add-int/lit8 v12, v12, 0x1

    const/16 v14, 0x8

    goto :goto_0

    .line 908
    .end local v12    # "i":I
    .end local v15    # "j":I
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v3, :cond_3

    .line 910
    add-int v14, v9, v12

    aget-object v14, p1, v14

    invoke-static {v14, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v14

    aput-wide v14, v2, v12

    .line 908
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 918
    :cond_3
    const-wide/16 v14, 0x0

    aput-wide v14, p3, v13

    .line 920
    const/4 v12, 0x0

    :goto_4
    const-wide/16 v17, 0x1

    if-ge v12, v3, :cond_8

    .line 922
    aget-wide v19, v2, v12

    .line 923
    .local v19, "t":J
    add-int/lit8 v21, v12, 0x1

    move-wide/from16 v30, v14

    move/from16 v14, v21

    move-wide/from16 v21, v30

    .local v14, "j":I
    :goto_5
    if-ge v14, v3, :cond_4

    .line 925
    aget-wide v23, v2, v14

    or-long v19, v19, v23

    .line 923
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 928
    :cond_4
    cmp-long v15, v19, v21

    if-nez v15, :cond_5

    .line 930
    const/4 v1, -0x1

    return v1

    .line 933
    :cond_5
    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->ctz(J)I

    move-result v15

    move/from16 v23, v15

    move/from16 v24, v14

    const/16 v25, 0x0

    .end local v14    # "j":I
    .local v23, "s":I
    .local v24, "j":I
    int-to-long v13, v15

    aput-wide v13, v4, v12

    .line 934
    aget-wide v13, p3, v25

    move-object v15, v8

    .end local v8    # "tmp":[B
    .local v15, "tmp":[B
    aget-wide v7, v4, v12

    long-to-int v8, v7

    shl-long v7, v5, v8

    or-long/2addr v7, v13

    aput-wide v7, p3, v25

    .line 936
    add-int/lit8 v7, v12, 0x1

    .end local v24    # "j":I
    .local v7, "j":I
    :goto_6
    if-ge v7, v3, :cond_6

    .line 938
    aget-wide v13, v2, v12

    shr-long v13, v13, v23

    and-long v13, v13, v17

    .line 939
    .local v13, "mask":J
    sub-long v13, v13, v17

    .line 940
    aget-wide v26, v2, v12

    aget-wide v28, v2, v7

    and-long v28, v28, v13

    xor-long v26, v26, v28

    aput-wide v26, v2, v12

    .line 936
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 942
    .end local v13    # "mask":J
    :cond_6
    add-int/lit8 v7, v12, 0x1

    :goto_7
    if-ge v7, v3, :cond_7

    .line 944
    aget-wide v13, v2, v7

    shr-long v13, v13, v23

    and-long v13, v13, v17

    .line 945
    .restart local v13    # "mask":J
    neg-long v13, v13

    .line 946
    aget-wide v26, v2, v7

    aget-wide v28, v2, v12

    and-long v28, v28, v13

    xor-long v26, v26, v28

    aput-wide v26, v2, v7

    .line 942
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 920
    .end local v13    # "mask":J
    :cond_7
    add-int/lit8 v12, v12, 0x1

    move-object v8, v15

    move-wide/from16 v14, v21

    const/16 v7, 0x9

    const/4 v13, 0x0

    goto :goto_4

    .line 952
    .end local v7    # "j":I
    .end local v15    # "tmp":[B
    .end local v19    # "t":J
    .end local v23    # "s":I
    .restart local v8    # "tmp":[B
    :cond_8
    move-object v15, v8

    const/16 v25, 0x0

    .end local v8    # "tmp":[B
    .restart local v15    # "tmp":[B
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_8
    if-ge v7, v3, :cond_a

    .line 954
    add-int/lit8 v8, v7, 0x1

    .local v8, "k":I
    :goto_9
    if-ge v8, v1, :cond_9

    .line 956
    add-int v13, v9, v7

    aget-short v13, p2, v13

    add-int v14, v9, v8

    aget-short v14, p2, v14

    xor-int/2addr v13, v14

    int-to-long v13, v13

    .line 957
    .local v13, "d":J
    int-to-short v1, v8

    move-object/from16 v20, v4

    .end local v4    # "ctz_list":[J
    .local v20, "ctz_list":[J
    aget-wide v3, v20, v7

    long-to-int v4, v3

    int-to-short v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask64(SS)J

    move-result-wide v3

    and-long/2addr v3, v13

    .line 958
    .end local v13    # "d":J
    .local v3, "d":J
    add-int v1, v9, v7

    aget-short v13, p2, v1

    int-to-long v13, v13

    xor-long/2addr v13, v3

    long-to-int v14, v13

    int-to-short v13, v14

    aput-short v13, p2, v1

    .line 959
    add-int v1, v9, v8

    aget-short v13, p2, v1

    int-to-long v13, v13

    xor-long/2addr v13, v3

    long-to-int v14, v13

    int-to-short v13, v14

    aput-short v13, p2, v1

    .line 954
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v20

    const/16 v1, 0x40

    const/16 v3, 0x20

    goto :goto_9

    .line 952
    .end local v3    # "d":J
    .end local v20    # "ctz_list":[J
    .restart local v4    # "ctz_list":[J
    :cond_9
    move-object/from16 v20, v4

    .end local v4    # "ctz_list":[J
    .restart local v20    # "ctz_list":[J
    add-int/lit8 v7, v7, 0x1

    const/16 v1, 0x40

    const/16 v3, 0x20

    goto :goto_8

    .line 965
    .end local v8    # "k":I
    .end local v20    # "ctz_list":[J
    .restart local v4    # "ctz_list":[J
    :cond_a
    move-object/from16 v20, v4

    .end local v4    # "ctz_list":[J
    .restart local v20    # "ctz_list":[J
    const/4 v1, 0x0

    .end local v12    # "i":I
    .local v1, "i":I
    :goto_a
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v3, :cond_11

    .line 967
    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_d

    .line 969
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_b
    const/16 v4, 0x9

    if-ge v3, v4, :cond_b

    .line 971
    aget-object v8, p1, v1

    add-int v12, v10, v3

    aget-byte v8, v8, v12

    aput-byte v8, v15, v3

    .line 969
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 973
    :cond_b
    const/4 v3, 0x0

    :goto_c
    const/16 v8, 0x8

    if-ge v3, v8, :cond_c

    .line 975
    aget-byte v12, v15, v3

    and-int/lit16 v12, v12, 0xff

    shr-int/2addr v12, v11

    add-int/lit8 v13, v3, 0x1

    aget-byte v13, v15, v13

    rsub-int/lit8 v14, v11, 0x8

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v15, v3

    .line 973
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 977
    :cond_c
    const/4 v12, 0x0

    invoke-static {v15, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    .local v13, "t":J
    goto :goto_d

    .line 981
    .end local v3    # "k":I
    .end local v13    # "t":J
    :cond_d
    const/16 v4, 0x9

    const/16 v8, 0x8

    aget-object v3, p1, v1

    invoke-static {v3, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v13

    .line 984
    .restart local v13    # "t":J
    :goto_d
    const/4 v3, 0x0

    move v7, v3

    :goto_e
    const/16 v3, 0x20

    if-ge v7, v3, :cond_e

    .line 986
    shr-long v21, v13, v7

    .line 987
    .local v21, "d":J
    aget-wide v3, v20, v7

    long-to-int v4, v3

    shr-long v3, v13, v4

    xor-long v3, v21, v3

    .line 988
    .end local v21    # "d":J
    .local v3, "d":J
    and-long v3, v3, v17

    .line 990
    move/from16 v16, v9

    .end local v9    # "row":I
    .local v16, "row":I
    aget-wide v8, v20, v7

    long-to-int v9, v8

    shl-long v8, v3, v9

    xor-long/2addr v8, v13

    .line 991
    .end local v13    # "t":J
    .local v8, "t":J
    shl-long v13, v3, v7

    xor-long/2addr v13, v8

    .line 984
    .end local v8    # "t":J
    .restart local v13    # "t":J
    add-int/lit8 v7, v7, 0x1

    move/from16 v9, v16

    const/16 v4, 0x9

    const/16 v8, 0x8

    goto :goto_e

    .line 993
    .end local v3    # "d":J
    .end local v16    # "row":I
    .restart local v9    # "row":I
    :cond_e
    move/from16 v16, v9

    .end local v9    # "row":I
    .restart local v16    # "row":I
    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_f

    .line 995
    const/4 v3, 0x0

    invoke-static {v15, v3, v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 997
    aget-object v3, p1, v1

    add-int/lit8 v4, v10, 0x8

    aget-object v8, p1, v1

    add-int/lit8 v9, v10, 0x8

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    ushr-int/2addr v8, v11

    shl-int/2addr v8, v11

    const/4 v9, 0x7

    aget-byte v9, v15, v9

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v21, v11, 0x8

    ushr-int v9, v9, v21

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v4

    .line 998
    aget-object v3, p1, v1

    add-int/lit8 v4, v10, 0x0

    const/16 v25, 0x0

    aget-byte v8, v15, v25

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v11

    aget-object v9, p1, v1

    aget-byte v9, v9, v10

    and-int/lit16 v9, v9, 0xff

    rsub-int/lit8 v21, v11, 0x8

    shl-int v9, v9, v21

    rsub-int/lit8 v21, v11, 0x8

    ushr-int v9, v9, v21

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v3, v4

    .line 1000
    const/4 v3, 0x7

    .local v3, "k":I
    :goto_f
    const/4 v4, 0x1

    if-lt v3, v4, :cond_10

    .line 1002
    aget-object v4, p1, v1

    add-int v8, v10, v3

    aget-byte v9, v15, v3

    and-int/lit16 v9, v9, 0xff

    shl-int/2addr v9, v11

    add-int/lit8 v21, v3, -0x1

    aget-byte v12, v15, v21

    and-int/lit16 v12, v12, 0xff

    rsub-int/lit8 v21, v11, 0x8

    ushr-int v12, v12, v21

    or-int/2addr v9, v12

    int-to-byte v9, v9

    aput-byte v9, v4, v8

    .line 1000
    add-int/lit8 v3, v3, -0x1

    goto :goto_f

    .line 1007
    .end local v3    # "k":I
    :cond_f
    aget-object v3, p1, v1

    invoke-static {v3, v10, v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 965
    :cond_10
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v16

    const/16 v25, 0x0

    goto/16 :goto_a

    .line 1011
    .end local v13    # "t":J
    .end local v16    # "row":I
    .restart local v9    # "row":I
    :cond_11
    const/16 v25, 0x0

    return v25
.end method

.method private pk_gen([B[B[I[S[J)I
    .locals 22
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "perm"    # [I
    .param p4, "pi"    # [S
    .param p5, "pivots"    # [J
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
            "sk",
            "perm",
            "pi",
            "pivots"
        }
    .end annotation

    .line 1377
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [S

    .line 1379
    .local v3, "g":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aput-short v4, v3, v5

    .line 1381
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v6, :cond_0

    .line 1383
    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x28

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    move-object/from16 v8, p2

    invoke-static {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v6

    aput-short v6, v3, v5

    .line 1381
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1387
    :cond_0
    move-object/from16 v8, p2

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v4, v6

    new-array v6, v6, [J

    .line 1388
    .local v6, "buf":[J
    const/4 v5, 0x0

    :goto_1
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v4, v7

    const/16 v9, 0x1f

    if-ge v5, v7, :cond_1

    .line 1390
    aget v7, p3, v5

    int-to-long v10, v7

    aput-wide v10, v6, v5

    .line 1391
    aget-wide v10, v6, v5

    shl-long v9, v10, v9

    aput-wide v9, v6, v5

    .line 1392
    aget-wide v9, v6, v5

    int-to-long v11, v5

    or-long/2addr v9, v11

    aput-wide v9, v6, v5

    .line 1393
    aget-wide v9, v6, v5

    const-wide v11, 0x7fffffffffffffffL

    and-long/2addr v9, v11

    aput-wide v9, v6, v5

    .line 1388
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1399
    :cond_1
    array-length v7, v6

    const/4 v10, 0x0

    invoke-static {v6, v10, v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    .line 1402
    const/4 v5, 0x1

    :goto_2
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v4, v7

    const/4 v11, -0x1

    if-ge v5, v7, :cond_3

    .line 1404
    add-int/lit8 v7, v5, -0x1

    aget-wide v12, v6, v7

    shr-long/2addr v12, v9

    aget-wide v14, v6, v5

    shr-long/2addr v14, v9

    cmp-long v7, v12, v14

    if-nez v7, :cond_2

    .line 1407
    return v11

    .line 1402
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1412
    :cond_3
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v7, v7, [S

    .line 1413
    .local v7, "L":[S
    const/4 v5, 0x0

    :goto_3
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v4, v9

    if-ge v5, v9, :cond_4

    .line 1415
    aget-wide v12, v6, v5

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v14, v9

    and-long/2addr v12, v14

    long-to-int v9, v12

    int-to-short v9, v9

    aput-short v9, v2, v5

    .line 1413
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1417
    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v5, v9, :cond_5

    .line 1419
    aget-short v9, v2, v5

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-static {v9, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v9

    aput-short v9, v7, v5

    .line 1417
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1423
    :cond_5
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v9, v9, [S

    .line 1425
    .local v9, "inv":[S
    invoke-direct {v0, v9, v3, v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    .line 1427
    const/4 v5, 0x0

    :goto_5
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v5, v12, :cond_6

    .line 1429
    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v13, v9, v5

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v12

    aput-short v12, v9, v5

    .line 1427
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1431
    :cond_6
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v13, v13, 0x8

    const/4 v14, 0x2

    new-array v14, v14, [I

    aput v13, v14, v4

    aput v12, v14, v10

    sget-object v12, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[B

    .line 1433
    .local v12, "mat":[[B
    const/4 v5, 0x0

    :goto_6
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v13, :cond_8

    .line 1435
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_7
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v14, v14, 0x8

    if-ge v13, v14, :cond_7

    .line 1437
    aget-object v14, v12, v5

    aput-byte v10, v14, v13

    .line 1435
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1433
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1441
    .end local v13    # "j":I
    :cond_8
    const/4 v5, 0x0

    :goto_8
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v5, v13, :cond_c

    .line 1443
    const/4 v13, 0x0

    .restart local v13    # "j":I
    :goto_9
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v13, v14, :cond_a

    .line 1445
    const/4 v14, 0x0

    .local v14, "k":I
    :goto_a
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    if-ge v14, v15, :cond_9

    .line 1447
    add-int/lit8 v15, v13, 0x7

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/2addr v15, v4

    int-to-byte v15, v15

    .line 1448
    .local v15, "b":B
    const/16 v16, 0x1

    shl-int/lit8 v4, v15, 0x1

    int-to-byte v4, v4

    .line 1449
    .end local v15    # "b":B
    .local v4, "b":B
    add-int/lit8 v15, v13, 0x6

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1450
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1451
    add-int/lit8 v15, v13, 0x5

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1452
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1453
    add-int/lit8 v15, v13, 0x4

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1454
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1455
    add-int/lit8 v15, v13, 0x3

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1456
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1457
    add-int/lit8 v15, v13, 0x2

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1458
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1459
    add-int/lit8 v15, v13, 0x1

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1460
    shl-int/lit8 v15, v4, 0x1

    int-to-byte v4, v15

    .line 1461
    add-int/lit8 v15, v13, 0x0

    aget-short v15, v9, v15

    ushr-int/2addr v15, v14

    and-int/lit8 v15, v15, 0x1

    or-int/2addr v15, v4

    int-to-byte v4, v15

    .line 1463
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int v15, v15, v5

    add-int/2addr v15, v14

    aget-object v15, v12, v15

    div-int/lit8 v17, v13, 0x8

    aput-byte v4, v15, v17

    .line 1445
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_a

    .line 1443
    .end local v4    # "b":B
    :cond_9
    const/16 v16, 0x1

    add-int/lit8 v13, v13, 0x8

    const/4 v4, 0x1

    goto :goto_9

    .line 1467
    .end local v14    # "k":I
    :cond_a
    const/16 v16, 0x1

    const/4 v4, 0x0

    .end local v13    # "j":I
    .local v4, "j":I
    :goto_b
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v4, v13, :cond_b

    .line 1469
    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v14, v9, v4

    aget-short v15, v7, v4

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v13

    aput-short v13, v9, v4

    .line 1467
    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    .line 1441
    :cond_b
    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x1

    goto/16 :goto_8

    .line 1476
    .end local v4    # "j":I
    :cond_c
    const/16 v16, 0x1

    const/4 v4, 0x0

    .local v4, "row":I
    :goto_c
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v4, v13, :cond_16

    .line 1478
    ushr-int/lit8 v5, v4, 0x3

    .line 1479
    and-int/lit8 v13, v4, 0x7

    .line 1481
    .restart local v13    # "j":I
    iget-boolean v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v14, :cond_e

    .line 1483
    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v14, v14, -0x20

    if-ne v4, v14, :cond_d

    .line 1485
    move-object/from16 v14, p5

    invoke-direct {v0, v12, v2, v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->mov_columns([[B[S[J)I

    move-result v15

    if-eqz v15, :cond_f

    .line 1488
    return v11

    .line 1483
    :cond_d
    move-object/from16 v14, p5

    goto :goto_d

    .line 1481
    :cond_e
    move-object/from16 v14, p5

    .line 1493
    :cond_f
    :goto_d
    add-int/lit8 v15, v4, 0x1

    .local v15, "k":I
    :goto_e
    const/16 v17, 0x0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v15, v10, :cond_11

    .line 1495
    aget-object v10, v12, v4

    aget-byte v10, v10, v5

    aget-object v18, v12, v15

    aget-byte v18, v18, v5

    xor-int v10, v10, v18

    int-to-byte v10, v10

    .line 1496
    .local v10, "mask":B
    const/16 v18, -0x1

    shr-int v11, v10, v13

    int-to-byte v10, v11

    .line 1497
    and-int/lit8 v11, v10, 0x1

    int-to-byte v10, v11

    .line 1498
    neg-int v11, v10

    int-to-byte v10, v11

    .line 1500
    const/4 v11, 0x0

    .local v11, "c":I
    :goto_f
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    if-ge v11, v2, :cond_10

    .line 1502
    aget-object v2, v12, v4

    aget-byte v19, v2, v11

    aget-object v20, v12, v15

    aget-byte v20, v20, v11

    and-int v20, v20, v10

    move-object/from16 v21, v2

    xor-int v2, v19, v20

    int-to-byte v2, v2

    aput-byte v2, v21, v11

    .line 1500
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p4

    goto :goto_f

    .line 1493
    :cond_10
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p4

    const/4 v10, 0x0

    const/4 v11, -0x1

    goto :goto_e

    .line 1507
    .end local v10    # "mask":B
    .end local v11    # "c":I
    :cond_11
    const/16 v18, -0x1

    aget-object v2, v12, v4

    aget-byte v2, v2, v5

    shr-int/2addr v2, v13

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_12

    .line 1510
    return v18

    .line 1513
    :cond_12
    const/4 v2, 0x0

    .end local v15    # "k":I
    .local v2, "k":I
    :goto_10
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v2, v10, :cond_15

    .line 1515
    if-eq v2, v4, :cond_14

    .line 1517
    aget-object v10, v12, v2

    aget-byte v10, v10, v5

    shr-int/2addr v10, v13

    int-to-byte v10, v10

    .line 1518
    .restart local v10    # "mask":B
    and-int/lit8 v11, v10, 0x1

    int-to-byte v10, v11

    .line 1519
    neg-int v11, v10

    int-to-byte v10, v11

    .line 1521
    const/4 v11, 0x0

    .restart local v11    # "c":I
    :goto_11
    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v15, v15, 0x8

    if-ge v11, v15, :cond_13

    .line 1523
    aget-object v15, v12, v2

    aget-byte v19, v15, v11

    aget-object v20, v12, v4

    aget-byte v20, v20, v11

    and-int v20, v20, v10

    move/from16 v21, v2

    .end local v2    # "k":I
    .local v21, "k":I
    xor-int v2, v19, v20

    int-to-byte v2, v2

    aput-byte v2, v15, v11

    .line 1521
    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v21

    goto :goto_11

    .end local v21    # "k":I
    .restart local v2    # "k":I
    :cond_13
    move/from16 v21, v2

    .end local v2    # "k":I
    .restart local v21    # "k":I
    goto :goto_12

    .line 1515
    .end local v10    # "mask":B
    .end local v11    # "c":I
    .end local v21    # "k":I
    .restart local v2    # "k":I
    :cond_14
    move/from16 v21, v2

    .line 1513
    .end local v2    # "k":I
    .restart local v21    # "k":I
    :goto_12
    add-int/lit8 v2, v21, 0x1

    .end local v21    # "k":I
    .restart local v2    # "k":I
    goto :goto_10

    .line 1476
    :cond_15
    move/from16 v21, v2

    .end local v2    # "k":I
    .restart local v21    # "k":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, p4

    const/4 v10, 0x0

    const/4 v11, -0x1

    goto/16 :goto_c

    .line 1530
    .end local v13    # "j":I
    .end local v21    # "k":I
    :cond_16
    move-object/from16 v14, p5

    const/16 v17, 0x0

    if-eqz v1, :cond_1b

    .line 1532
    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_1a

    .line 1534
    const/4 v2, 0x0

    .local v2, "pk_index":I
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v10, v10, 0x8

    .line 1535
    .local v10, "tail":I
    if-nez v10, :cond_17

    .line 1537
    aget-object v11, v12, v5

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v13, v13, -0x1

    div-int/lit8 v13, v13, 0x8

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v15, v15, 0x8

    invoke-static {v11, v13, v1, v2, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1538
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v11, v11, 0x8

    add-int/2addr v2, v11

    goto :goto_15

    .line 1542
    :cond_17
    const/4 v5, 0x0

    :goto_13
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v11, :cond_19

    .line 1544
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v11, v11, -0x1

    div-int/lit8 v11, v11, 0x8

    .local v11, "j":I
    :goto_14
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v13, v13, 0x8

    add-int/lit8 v13, v13, -0x1

    if-ge v11, v13, :cond_18

    .line 1546
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "pk_index":I
    .local v13, "pk_index":I
    aget-object v15, v12, v5

    aget-byte v15, v15, v11

    and-int/lit16 v15, v15, 0xff

    ushr-int/2addr v15, v10

    aget-object v18, v12, v5

    add-int/lit8 v19, v11, 0x1

    aget-byte v18, v18, v19

    rsub-int/lit8 v19, v10, 0x8

    shl-int v18, v18, v19

    or-int v15, v15, v18

    int-to-byte v15, v15

    aput-byte v15, v1, v2

    .line 1544
    add-int/lit8 v11, v11, 0x1

    move v2, v13

    goto :goto_14

    .line 1548
    .end local v13    # "pk_index":I
    .restart local v2    # "pk_index":I
    :cond_18
    add-int/lit8 v13, v2, 0x1

    .end local v2    # "pk_index":I
    .restart local v13    # "pk_index":I
    aget-object v15, v12, v5

    aget-byte v15, v15, v11

    and-int/lit16 v15, v15, 0xff

    ushr-int/2addr v15, v10

    int-to-byte v15, v15

    aput-byte v15, v1, v2

    .line 1542
    add-int/lit8 v5, v5, 0x1

    move v2, v13

    goto :goto_13

    .line 1551
    .end local v10    # "tail":I
    .end local v11    # "j":I
    .end local v13    # "pk_index":I
    :cond_19
    :goto_15
    goto :goto_17

    .line 1563
    :cond_1a
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 1564
    .local v2, "count":I
    const/4 v5, 0x0

    :goto_16
    iget v10, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v5, v10, :cond_1b

    .line 1566
    aget-object v10, v12, v5

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    div-int/lit8 v11, v11, 0x8

    mul-int v13, v2, v5

    invoke-static {v10, v11, v1, v13, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1564
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 1570
    .end local v2    # "count":I
    :cond_1b
    :goto_17
    return v17
.end method

.method private root([S[S[S)V
    .locals 2
    .param p1, "out"    # [S
    .param p2, "f"    # [S
    .param p3, "L"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "f",
            "L"
        }
    .end annotation

    .line 1588
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_0

    .line 1590
    aget-short v1, p3, v0

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v1

    aput-short v1, p1, v0

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1592
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static same_mask32(SS)B
    .locals 2
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1069
    xor-int v0, p0, p1

    .line 1070
    .local v0, "mask":I
    add-int/lit8 v0, v0, -0x1

    .line 1071
    ushr-int/lit8 v0, v0, 0x1f

    .line 1072
    neg-int v0, v0

    .line 1073
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    return v1
.end method

.method private static same_mask64(SS)J
    .locals 4
    .param p0, "x"    # S
    .param p1, "y"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 1056
    xor-int v0, p0, p1

    int-to-long v0, v0

    .line 1057
    .local v0, "mask":J
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 1058
    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    .line 1059
    neg-long v0, v0

    .line 1061
    return-wide v0
.end method

.method private static sort32([III)V
    .locals 11
    .param p0, "temp"    # [I
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "temp",
            "from",
            "to"
        }
    .end annotation

    .line 1713
    sub-int v0, p2, p1

    .line 1715
    .local v0, "n":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 1716
    :cond_0
    const/4 v1, 0x1

    .line 1717
    .local v1, "top":I
    :goto_0
    sub-int v2, v0, v1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v1

    goto :goto_0

    .line 1719
    :cond_1
    move v2, v1

    .local v2, "p":I
    :goto_1
    if-lez v2, :cond_8

    .line 1721
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sub-int v4, v0, v2

    if-ge v3, v4, :cond_3

    .line 1723
    and-int v4, v3, v2

    if-nez v4, :cond_2

    .line 1725
    add-int v4, p1, v3

    add-int/2addr v4, v2

    aget v4, p0, v4

    add-int v5, p1, v3

    aget v5, p0, v5

    xor-int/2addr v4, v5

    .line 1726
    .local v4, "ab":I
    add-int v5, p1, v3

    add-int/2addr v5, v2

    aget v5, p0, v5

    add-int v6, p1, v3

    aget v6, p0, v6

    sub-int/2addr v5, v6

    .line 1727
    .local v5, "c":I
    add-int v6, p1, v3

    add-int/2addr v6, v2

    aget v6, p0, v6

    xor-int/2addr v6, v5

    and-int/2addr v6, v4

    xor-int/2addr v5, v6

    .line 1728
    shr-int/lit8 v5, v5, 0x1f

    .line 1729
    and-int/2addr v5, v4

    .line 1730
    add-int v6, p1, v3

    aget v7, p0, v6

    xor-int/2addr v7, v5

    aput v7, p0, v6

    .line 1731
    add-int v6, p1, v3

    add-int/2addr v6, v2

    aget v7, p0, v6

    xor-int/2addr v7, v5

    aput v7, p0, v6

    .line 1721
    .end local v4    # "ab":I
    .end local v5    # "c":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1734
    :cond_3
    const/4 v3, 0x0

    .line 1735
    move v4, v1

    .local v4, "q":I
    :goto_3
    if-le v4, v2, :cond_7

    .line 1737
    :goto_4
    sub-int v5, v0, v4

    if-ge v3, v5, :cond_6

    .line 1739
    and-int v5, v3, v2

    if-nez v5, :cond_5

    .line 1741
    add-int v5, p1, v3

    add-int/2addr v5, v2

    aget v5, p0, v5

    .line 1742
    .local v5, "a":I
    move v6, v4

    .local v6, "r":I
    :goto_5
    if-le v6, v2, :cond_4

    .line 1744
    add-int v7, p1, v3

    add-int/2addr v7, v6

    aget v7, p0, v7

    xor-int/2addr v7, v5

    .line 1745
    .local v7, "ab":I
    add-int v8, p1, v3

    add-int/2addr v8, v6

    aget v8, p0, v8

    sub-int/2addr v8, v5

    .line 1746
    .local v8, "c":I
    add-int v9, p1, v3

    add-int/2addr v9, v6

    aget v9, p0, v9

    xor-int/2addr v9, v8

    and-int/2addr v9, v7

    xor-int/2addr v8, v9

    .line 1747
    shr-int/lit8 v8, v8, 0x1f

    .line 1748
    and-int/2addr v8, v7

    .line 1749
    xor-int/2addr v5, v8

    .line 1750
    add-int v9, p1, v3

    add-int/2addr v9, v6

    aget v10, p0, v9

    xor-int/2addr v10, v8

    aput v10, p0, v9

    .line 1742
    .end local v7    # "ab":I
    .end local v8    # "c":I
    ushr-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1752
    :cond_4
    add-int v7, p1, v3

    add-int/2addr v7, v2

    aput v5, p0, v7

    .line 1737
    .end local v5    # "a":I
    .end local v6    # "r":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1735
    :cond_6
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1719
    :cond_7
    ushr-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1757
    .end local v3    # "i":I
    .end local v4    # "q":I
    :cond_8
    return-void
.end method

.method private static sort64([JII)V
    .locals 14
    .param p0, "temp"    # [J
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "temp",
            "from",
            "to"
        }
    .end annotation

    .line 1762
    sub-int v0, p2, p1

    .line 1764
    .local v0, "n":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    .line 1765
    :cond_0
    const/4 v1, 0x1

    .line 1766
    .local v1, "top":I
    :goto_0
    sub-int v2, v0, v1

    if-ge v1, v2, :cond_1

    add-int/2addr v1, v1

    goto :goto_0

    .line 1768
    :cond_1
    move v2, v1

    .local v2, "p":I
    :goto_1
    if-lez v2, :cond_8

    .line 1770
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    sub-int v4, v0, v2

    const/16 v5, 0x3f

    if-ge v3, v4, :cond_3

    .line 1772
    and-int v4, v3, v2

    if-nez v4, :cond_2

    .line 1774
    add-int v4, p1, v3

    add-int/2addr v4, v2

    aget-wide v6, p0, v4

    add-int v4, p1, v3

    aget-wide v8, p0, v4

    sub-long/2addr v6, v8

    .line 1775
    .local v6, "c":J
    ushr-long v4, v6, v5

    .line 1776
    .end local v6    # "c":J
    .local v4, "c":J
    neg-long v4, v4

    .line 1777
    add-int v6, p1, v3

    aget-wide v6, p0, v6

    add-int v8, p1, v3

    add-int/2addr v8, v2

    aget-wide v8, p0, v8

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    .line 1778
    add-int v6, p1, v3

    aget-wide v7, p0, v6

    xor-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 1779
    add-int v6, p1, v3

    add-int/2addr v6, v2

    aget-wide v7, p0, v6

    xor-long/2addr v7, v4

    aput-wide v7, p0, v6

    .line 1770
    .end local v4    # "c":J
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1782
    :cond_3
    const/4 v3, 0x0

    .line 1783
    move v4, v1

    .local v4, "q":I
    :goto_3
    if-le v4, v2, :cond_7

    .line 1785
    :goto_4
    sub-int v6, v0, v4

    if-ge v3, v6, :cond_6

    .line 1787
    and-int v6, v3, v2

    if-nez v6, :cond_5

    .line 1789
    add-int v6, p1, v3

    add-int/2addr v6, v2

    aget-wide v6, p0, v6

    .line 1790
    .local v6, "a":J
    move v8, v4

    .local v8, "r":I
    :goto_5
    if-le v8, v2, :cond_4

    .line 1792
    add-int v9, p1, v3

    add-int/2addr v9, v8

    aget-wide v9, p0, v9

    sub-long/2addr v9, v6

    .line 1793
    .local v9, "c":J
    ushr-long/2addr v9, v5

    .line 1794
    neg-long v9, v9

    .line 1795
    add-int v11, p1, v3

    add-int/2addr v11, v8

    aget-wide v11, p0, v11

    xor-long/2addr v11, v6

    and-long/2addr v9, v11

    .line 1796
    xor-long/2addr v6, v9

    .line 1797
    add-int v11, p1, v3

    add-int/2addr v11, v8

    aget-wide v12, p0, v11

    xor-long/2addr v12, v9

    aput-wide v12, p0, v11

    .line 1790
    .end local v9    # "c":J
    ushr-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 1799
    :cond_4
    add-int v9, p1, v3

    add-int/2addr v9, v2

    aput-wide v6, p0, v9

    .line 1785
    .end local v6    # "a":J
    .end local v8    # "r":I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1783
    :cond_6
    ushr-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1768
    :cond_7
    ushr-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1805
    .end local v3    # "i":I
    .end local v4    # "q":I
    :cond_8
    return-void
.end method

.method private synd([S[S[S[B)V
    .locals 9
    .param p1, "out"    # [S
    .param p2, "f"    # [S
    .param p3, "L"    # [S
    .param p4, "r"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "f",
            "L",
            "r"
        }
    .end annotation

    .line 842
    const/4 v0, 0x0

    aget-byte v1, p4, v0

    and-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    .line 844
    .local v1, "c":S
    aget-short v2, p3, v0

    .line 845
    .local v2, "L_i":S
    invoke-direct {p0, p2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v3

    .line 846
    .local v3, "e":S
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v4

    .line 847
    .local v4, "e_inv":S
    neg-int v5, v1

    and-int/2addr v5, v4

    int-to-short v5, v5

    .line 849
    .local v5, "c_div_e":S
    aput-short v5, p1, v0

    .line 851
    const/4 v6, 0x1

    .local v6, "j":I
    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_0

    .line 853
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v7, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v5

    .line 854
    aput-short v5, p1, v6

    .line 851
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 857
    .end local v1    # "c":S
    .end local v2    # "L_i":S
    .end local v3    # "e":S
    .end local v4    # "e_inv":S
    .end local v5    # "c_div_e":S
    .end local v6    # "j":I
    :cond_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v1, v2, :cond_2

    .line 859
    div-int/lit8 v2, v1, 0x8

    aget-byte v2, p4, v2

    rem-int/lit8 v3, v1, 0x8

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    .line 861
    .local v2, "c":S
    aget-short v3, p3, v1

    .line 862
    .local v3, "L_i":S
    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v4

    .line 863
    .local v4, "e":S
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v5

    .line 864
    .local v5, "e_inv":S
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v6

    .line 866
    .local v6, "c_div_e":S
    aget-short v7, p1, v0

    xor-int/2addr v7, v6

    int-to-short v7, v7

    aput-short v7, p1, v0

    .line 868
    const/4 v7, 0x1

    .local v7, "j":I
    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_1

    .line 870
    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v8, v6, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v6

    .line 871
    aget-short v8, p1, v7

    xor-int/2addr v8, v6

    int-to-short v8, v8

    aput-short v8, p1, v7

    .line 868
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 857
    .end local v2    # "c":S
    .end local v3    # "L_i":S
    .end local v4    # "e":S
    .end local v5    # "e_inv":S
    .end local v6    # "c_div_e":S
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 874
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private syndrome([B[B[B)V
    .locals 10
    .param p1, "cipher_text"    # [B
    .param p2, "pk"    # [B
    .param p3, "error_vector"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher_text",
            "pk",
            "error_vector"
        }
    .end annotation

    .line 342
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [S

    .line 343
    .local v0, "row":[S
    const/4 v1, 0x0

    .line 345
    .local v1, "pk_ptr":I
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v2, v2, 0x8

    .line 347
    .local v2, "tail":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 349
    aput-byte v5, p1, v3

    .line 347
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v3, v4, :cond_5

    .line 354
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    if-ge v4, v6, :cond_1

    .line 356
    aput-short v5, v0, v4

    .line 354
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 359
    :cond_1
    const/4 v4, 0x0

    :goto_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    if-ge v4, v6, :cond_2

    .line 361
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v4

    add-int v7, v1, v4

    aget-byte v7, p2, v7

    int-to-short v7, v7

    aput-short v7, v0, v6

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 363
    :cond_2
    iget-boolean v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 365
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    sub-int/2addr v6, v7

    move v4, v6

    :goto_4
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v6, v8

    if-lt v4, v6, :cond_3

    .line 367
    aget-short v6, v0, v4

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v2

    add-int/lit8 v8, v4, -0x1

    aget-short v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v2, 0x8

    ushr-int/2addr v8, v9

    or-int/2addr v6, v8

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v0, v4

    .line 365
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 373
    :cond_3
    div-int/lit8 v6, v3, 0x8

    aget-short v8, v0, v6

    rem-int/lit8 v9, v3, 0x8

    shl-int/2addr v7, v9

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v0, v6

    .line 375
    const/4 v6, 0x0

    .line 376
    .local v6, "b":B
    const/4 v4, 0x0

    :goto_5
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v4, v7, :cond_4

    .line 378
    aget-short v7, v0, v4

    aget-byte v8, p3, v4

    and-int/2addr v7, v8

    xor-int/2addr v7, v6

    int-to-byte v6, v7

    .line 376
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 381
    :cond_4
    ushr-int/lit8 v7, v6, 0x4

    xor-int/2addr v7, v6

    int-to-byte v6, v7

    .line 382
    ushr-int/lit8 v7, v6, 0x2

    xor-int/2addr v7, v6

    int-to-byte v6, v7

    .line 383
    ushr-int/lit8 v7, v6, 0x1

    xor-int/2addr v7, v6

    int-to-byte v6, v7

    .line 384
    and-int/lit8 v7, v6, 0x1

    int-to-byte v6, v7

    .line 386
    div-int/lit8 v7, v3, 0x8

    aget-byte v8, p1, v7

    rem-int/lit8 v9, v3, 0x8

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, p1, v7

    .line 388
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v1, v7

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 390
    .end local v4    # "j":I
    .end local v6    # "b":B
    :cond_5
    return-void
.end method


# virtual methods
.method check_c_padding([B)I
    .locals 3
    .param p1, "c"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    .line 1697
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    .line 1698
    .local v0, "b":B
    add-int/lit8 v1, v0, -0x1

    int-to-byte v0, v1

    .line 1699
    and-int/lit16 v1, v0, 0xff

    ushr-int/lit8 v1, v1, 0x7

    int-to-byte v0, v1

    .line 1700
    move v1, v0

    .line 1702
    .local v1, "ret":I
    add-int/lit8 v2, v1, -0x1

    return v2
.end method

.method check_pk_padding([B)I
    .locals 4
    .param p1, "pk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pk"
        }
    .end annotation

    .line 1677
    const/4 v0, 0x0

    .line 1678
    .local v0, "b":B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v2, :cond_0

    .line 1680
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    mul-int v2, v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    or-int/2addr v2, v0

    int-to-byte v0, v2

    .line 1678
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1683
    :cond_0
    and-int/lit16 v2, v0, 0xff

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    rem-int/lit8 v3, v3, 0x8

    ushr-int/2addr v2, v3

    int-to-byte v0, v2

    .line 1684
    add-int/lit8 v2, v0, -0x1

    int-to-byte v0, v2

    .line 1685
    and-int/lit16 v2, v0, 0xff

    ushr-int/lit8 v2, v2, 0x7

    int-to-byte v0, v2

    .line 1686
    move v2, v0

    .line 1688
    .local v2, "ret":I
    add-int/lit8 v3, v2, -0x1

    return v3
.end method

.method public decompress_private_key([B)[B
    .locals 19
    .param p1, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sk"
        }
    .end annotation

    .line 128
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v1

    new-array v2, v1, [B

    .line 129
    .local v2, "reg_sk":[B
    array-length v1, v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v8, 0x1

    shl-int v3, v8, v3

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v1, v3

    const/16 v3, 0x20

    add-int/2addr v1, v3

    new-array v9, v1, [B

    .line 138
    .local v9, "hash":[B
    const/4 v1, 0x0

    .line 140
    .local v1, "hash_idx":I
    new-instance v4, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v5, 0x100

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v10, v4

    .line 141
    .local v10, "digest":Lorg/bouncycastle/crypto/Xof;
    const/16 v4, 0x40

    invoke-interface {v10, v4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 142
    invoke-interface {v10, v6, v7, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 143
    array-length v4, v9

    invoke-interface {v10, v9, v7, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 147
    array-length v4, v6

    const/16 v11, 0x28

    if-gt v4, v11, :cond_2

    .line 149
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v4, v4, [S

    .line 151
    .local v4, "field":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    new-array v5, v5, [B

    .line 152
    .local v5, "reg_g":[B
    array-length v12, v9

    sub-int/2addr v12, v3

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int v1, v12, v13

    .line 153
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v12, v13, :cond_0

    .line 155
    mul-int/lit8 v13, v12, 0x2

    add-int/2addr v13, v1

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v9, v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v13

    aput-short v13, v4, v12

    .line 153
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 157
    .end local v12    # "i":I
    :cond_0
    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    .line 159
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v12, v13, :cond_1

    .line 161
    mul-int/lit8 v13, v12, 0x2

    aget-short v14, v4, v12

    invoke-static {v5, v13, v14}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    .line 159
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 163
    .end local v12    # "i":I
    :cond_1
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    invoke-static {v5, v7, v2, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 167
    .end local v4    # "field":[S
    .end local v5    # "reg_g":[B
    :cond_2
    array-length v4, v6

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v5, v11

    if-gt v4, v5, :cond_7

    .line 169
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v8, v4

    new-array v4, v4, [I

    .line 170
    .local v4, "perm":[I
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v5, v8, v5

    new-array v13, v5, [S

    .line 172
    .local v13, "pi":[S
    array-length v5, v9

    sub-int/2addr v5, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v5, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v8, v3

    mul-int/lit8 v3, v3, 0x4

    sub-int v18, v5, v3

    .line 173
    .end local v1    # "hash_idx":I
    .local v18, "hash_idx":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v8, v3

    if-ge v1, v3, :cond_3

    .line 175
    mul-int/lit8 v3, v1, 0x4

    add-int v3, v18, v3

    invoke-static {v9, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v3

    aput v3, v4, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 178
    .end local v1    # "i":I
    :cond_3
    iget-boolean v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v1, :cond_4

    .line 180
    new-array v5, v8, [J

    const-wide/16 v14, 0x0

    aput-wide v14, v5, v7

    .line 181
    .local v5, "pivots":[J
    const/4 v1, 0x0

    move-object v3, v4

    move-object v4, v13

    .end local v13    # "pi":[S
    .local v3, "perm":[I
    .local v4, "pi":[S
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    .line 182
    .end local v5    # "pivots":[J
    goto :goto_5

    .line 185
    .end local v3    # "perm":[I
    .local v4, "perm":[I
    .restart local v13    # "pi":[S
    :cond_4
    move-object v3, v4

    move-object v4, v13

    .end local v13    # "pi":[S
    .restart local v3    # "perm":[I
    .local v4, "pi":[S
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v8, v1

    new-array v1, v1, [J

    .line 186
    .local v1, "buf":[J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v12, v8, v12

    if-ge v5, v12, :cond_5

    .line 188
    aget v12, v3, v5

    int-to-long v12, v12

    aput-wide v12, v1, v5

    .line 189
    aget-wide v12, v1, v5

    const/16 v14, 0x1f

    shl-long/2addr v12, v14

    aput-wide v12, v1, v5

    .line 190
    aget-wide v12, v1, v5

    int-to-long v14, v5

    or-long/2addr v12, v14

    aput-wide v12, v1, v5

    .line 191
    aget-wide v12, v1, v5

    const-wide v14, 0x7fffffffffffffffL

    and-long/2addr v12, v14

    aput-wide v12, v1, v5

    .line 186
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    .end local v5    # "i":I
    :cond_5
    array-length v5, v1

    invoke-static {v1, v7, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    .line 194
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v12, v8, v12

    if-ge v5, v12, :cond_6

    .line 196
    aget-wide v12, v1, v5

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v14, v14

    and-long/2addr v12, v14

    long-to-int v13, v12

    int-to-short v12, v13

    aput-short v12, v4, v5

    .line 194
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 201
    .end local v1    # "buf":[J
    .end local v5    # "i":I
    :cond_6
    :goto_5
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v12, v1, [B

    .line 202
    .local v12, "out":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v14, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v8, v1

    move-object v8, v12

    const/16 v5, 0x28

    .end local v12    # "out":[B
    .local v8, "out":[B
    int-to-long v11, v1

    move-object v13, v4

    move-wide/from16 v16, v11

    move-object v12, v8

    .end local v4    # "pi":[S
    .end local v8    # "out":[B
    .restart local v12    # "out":[B
    .restart local v13    # "pi":[S
    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    .line 204
    .end local v12    # "out":[B
    .end local v13    # "pi":[S
    .restart local v4    # "pi":[S
    .restart local v8    # "out":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v1, v5

    array-length v5, v8

    invoke-static {v8, v7, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v1, v18

    .line 208
    .end local v3    # "perm":[I
    .end local v4    # "pi":[S
    .end local v8    # "out":[B
    .end local v18    # "hash_idx":I
    .local v1, "hash_idx":I
    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v3

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    invoke-static {v9, v7, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 209
    return-object v2
.end method

.method public generate_public_key_from_private_key([B)[B
    .locals 11
    .param p1, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sk"
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v0

    new-array v2, v0, [B

    .line 103
    .local v2, "pk":[B
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    new-array v5, v0, [S

    .line 104
    .local v5, "pi":[S
    new-array v6, v1, [J

    const/4 v0, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v6, v0

    .line 107
    .local v6, "pivots":[J
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v1, v3

    new-array v4, v3, [I

    .line 108
    .local v4, "perm":[I
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v1, v7

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v3, v7

    new-array v7, v3, [B

    .line 109
    .local v7, "hash":[B
    array-length v3, v7

    const/16 v8, 0x20

    sub-int/2addr v3, v8

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v3, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v1, v9

    mul-int/lit8 v9, v9, 0x4

    sub-int v9, v3, v9

    .line 112
    .local v9, "hash_idx":I
    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v10, 0x100

    invoke-direct {v3, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v10, v3

    .line 113
    .local v10, "digest":Lorg/bouncycastle/crypto/Xof;
    const/16 v3, 0x40

    invoke-interface {v10, v3}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 114
    invoke-interface {v10, p1, v0, v8}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 115
    array-length v3, v7

    invoke-interface {v10, v7, v0, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v1, v3

    if-ge v0, v3, :cond_0

    .line 119
    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v9

    invoke-static {v7, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v3

    aput v3, v4, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_0
    move-object v1, p0

    move-object v3, p1

    .end local p1    # "sk":[B
    .local v3, "sk":[B
    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    .line 122
    return-object v2
.end method

.method public getCipherTextSize()I
    .locals 1

    .line 64
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    return v0
.end method

.method public getCondBytes()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    return v0
.end method

.method public getDefaultSessionKeySize()I
    .locals 1

    .line 1707
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    return v0
.end method

.method public getIrrBytes()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 2

    .line 49
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getPublicKeySize()I
    .locals 3

    .line 54
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_0

    .line 56
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    mul-int v0, v0, v1

    return v0

    .line 58
    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int v0, v0, v1

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public kem_dec([B[B[B)I
    .locals 11
    .param p1, "key"    # [B
    .param p2, "cipher_text"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "cipher_text",
            "sk"
        }
    .end annotation

    .line 583
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 584
    .local v0, "error_vector":[B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 586
    .local v1, "preimage":[B
    const/4 v2, 0x0

    .line 588
    .local v2, "padding_ok":I
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_0

    .line 590
    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_c_padding([B)I

    move-result v2

    .line 599
    :cond_0
    invoke-direct {p0, v0, p3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decrypt([B[B[B)I

    move-result v3

    int-to-byte v3, v3

    .line 607
    .local v3, "ret_decrypt":B
    int-to-short v4, v3

    .line 608
    .local v4, "m":S
    add-int/lit8 v5, v4, -0x1

    int-to-short v4, v5

    .line 609
    shr-int/lit8 v5, v4, 0x8

    int-to-short v4, v5

    .line 610
    and-int/lit16 v5, v4, 0xff

    int-to-short v4, v5

    .line 616
    and-int/lit8 v5, v4, 0x1

    int-to-byte v5, v5

    const/4 v6, 0x0

    aput-byte v5, v1, v6

    .line 617
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v5, v7, :cond_1

    .line 619
    add-int/lit8 v7, v5, 0x1

    not-int v8, v4

    add-int/lit8 v9, v5, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v9, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    add-int/2addr v9, v10

    aget-byte v9, p3, v9

    and-int/2addr v8, v9

    aget-byte v9, v0, v5

    and-int/2addr v9, v4

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    .line 617
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 621
    :cond_1
    const/4 v5, 0x0

    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v5, v7, :cond_2

    .line 623
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v5

    aget-byte v8, p2, v5

    aput-byte v8, v1, v7

    .line 621
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 632
    :cond_2
    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 633
    .local v7, "digest":Lorg/bouncycastle/crypto/Xof;
    array-length v8, v1

    invoke-interface {v7, v1, v6, v8}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 634
    array-length v8, p1

    invoke-interface {v7, p1, v6, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 638
    iget-boolean v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v8, :cond_4

    .line 640
    int-to-byte v6, v2

    .line 642
    .local v6, "mask":B
    const/4 v5, 0x0

    :goto_2
    array-length v8, p1

    if-ge v5, v8, :cond_3

    .line 644
    aget-byte v8, p1, v5

    or-int/2addr v8, v6

    int-to-byte v8, v8

    aput-byte v8, p1, v5

    .line 642
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 647
    :cond_3
    return v2

    .line 649
    .end local v6    # "mask":B
    :cond_4
    return v6
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 6
    .param p1, "cipher_text"    # [B
    .param p2, "key"    # [B
    .param p3, "pk"    # [B
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cipher_text",
            "key",
            "pk",
            "random"
        }
    .end annotation

    .line 530
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    .line 532
    .local v0, "error_vector":[B
    const/4 v1, 0x0

    .line 533
    .local v1, "padding_ok":I
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_0

    .line 535
    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_pk_padding([B)I

    move-result v1

    .line 544
    :cond_0
    invoke-direct {p0, p1, p3, v0, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->encrypt([B[B[BLjava/security/SecureRandom;)V

    .line 552
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 553
    .local v2, "digest":Lorg/bouncycastle/crypto/Xof;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 554
    array-length v3, v0

    const/4 v4, 0x0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 555
    array-length v3, p1

    invoke-interface {v2, p1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 556
    array-length v3, p2

    invoke-interface {v2, p2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 558
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_3

    .line 562
    int-to-byte v3, v1

    .line 563
    .local v3, "mask":B
    xor-int/lit16 v4, v3, 0xff

    int-to-byte v3, v4

    .line 565
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v4, v5, :cond_1

    .line 567
    aget-byte v5, p1, v4

    and-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    .line 565
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 570
    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/16 v5, 0x20

    if-ge v4, v5, :cond_2

    .line 572
    aget-byte v5, p2, v4

    and-int/2addr v5, v3

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    .line 570
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 575
    :cond_2
    return v1

    .line 577
    .end local v3    # "mask":B
    .end local v4    # "i":I
    :cond_3
    return v4
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 26
    .param p1, "pk"    # [B
    .param p2, "sk"    # [B
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "pk",
            "sk",
            "random"
        }
    .end annotation

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v6, 0x1

    new-array v7, v6, [B

    .line 217
    .local v7, "seed_a":[B
    const/16 v8, 0x20

    new-array v1, v8, [B

    .line 218
    .local v1, "seed_b":[B
    const/16 v3, 0x40

    const/4 v9, 0x0

    aput-byte v3, v7, v9

    .line 219
    move-object/from16 v10, p3

    invoke-virtual {v10, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 223
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v6, v4

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    add-int/2addr v3, v8

    new-array v11, v3, [B

    .line 224
    .local v11, "E":[B
    const/4 v3, 0x0

    .line 225
    .local v3, "skIndex":I
    move-object v4, v1

    .line 226
    .local v4, "prev_sk":[B
    new-array v5, v6, [J

    const-wide/16 v12, 0x0

    aput-wide v12, v5, v9

    .line 228
    .local v5, "pivots":[J
    new-instance v12, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v13, 0x100

    invoke-direct {v12, v13}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 232
    .local v12, "digest":Lorg/bouncycastle/crypto/Xof;
    :goto_0
    array-length v13, v7

    invoke-interface {v12, v7, v9, v13}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 233
    array-length v13, v1

    invoke-interface {v12, v1, v9, v13}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 234
    array-length v13, v11

    invoke-interface {v12, v11, v9, v13}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 240
    array-length v13, v11

    sub-int/2addr v13, v8

    .line 241
    .local v13, "seedIndex":I
    add-int/lit8 v14, v13, 0x20

    invoke-static {v11, v13, v14}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 244
    .end local v1    # "seed_b":[B
    .local v14, "seed_b":[B
    invoke-static {v4, v9, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    invoke-static {v14, v9, v8}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 254
    .end local v4    # "prev_sk":[B
    .local v15, "prev_sk":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v1, v1, [S

    .line 255
    .local v1, "field":[S
    array-length v4, v11

    sub-int/2addr v4, v8

    const/16 v16, 0x1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v6, v6, 0x2

    sub-int v6, v4, v6

    .line 256
    .local v6, "sigma1_t":I
    move v4, v6

    .line 262
    .end local v13    # "seedIndex":I
    .local v4, "seedIndex":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v13, v8, :cond_0

    .line 264
    mul-int/lit8 v8, v13, 0x2

    add-int/2addr v8, v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v8

    aput-short v8, v1, v13

    .line 262
    add-int/lit8 v13, v13, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    goto :goto_1

    .line 267
    .end local v13    # "i":I
    :cond_0
    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    .line 269
    move-object v1, v14

    move-object v4, v15

    const/4 v6, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    goto :goto_0

    .line 273
    :cond_1
    const/16 v8, 0x28

    .line 274
    .end local v3    # "skIndex":I
    .local v8, "skIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v3, v13, :cond_2

    .line 276
    mul-int/lit8 v13, v3, 0x2

    add-int/2addr v13, v8

    aget-short v9, v1, v3

    invoke-static {v2, v13, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    .line 274
    add-int/lit8 v3, v3, 0x1

    const/4 v9, -0x1

    goto :goto_2

    .line 283
    .end local v3    # "i":I
    :cond_2
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v16, v3

    new-array v3, v3, [I

    .line 284
    .local v3, "perm":[I
    iget v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v9, v16, v9

    mul-int/lit8 v9, v9, 0x4

    sub-int v9, v4, v9

    .line 290
    .end local v4    # "seedIndex":I
    .local v9, "seedIndex":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    iget v13, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v13, v16, v13

    if-ge v4, v13, :cond_3

    .line 292
    mul-int/lit8 v13, v4, 0x4

    add-int/2addr v13, v9

    invoke-static {v11, v13}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v13

    aput v13, v3, v4

    .line 290
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 295
    .end local v4    # "i":I
    :cond_3
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v4, v16, v4

    new-array v4, v4, [S

    .line 299
    .local v4, "pi":[S
    move-object v13, v1

    move/from16 v25, v6

    move-object/from16 v1, p1

    .end local v1    # "field":[S
    .end local v6    # "sigma1_t":I
    .local v13, "field":[S
    .local v25, "sigma1_t":I
    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    move-result v6

    const/4 v1, -0x1

    if-ne v6, v1, :cond_4

    .line 302
    move v3, v8

    move-object v1, v14

    move-object v4, v15

    const/4 v6, 0x1

    const/16 v8, 0x20

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 308
    :cond_4
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v1, v1, [B

    .line 309
    .local v1, "out":[B
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    move-object/from16 v18, v3

    move-object/from16 v20, v4

    .end local v3    # "perm":[I
    .end local v4    # "pi":[S
    .local v18, "perm":[I
    .local v20, "pi":[S
    int-to-long v3, v6

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v16, v6

    move-wide/from16 v21, v3

    int-to-long v3, v6

    move-object/from16 v19, v1

    move-wide/from16 v23, v3

    .end local v1    # "out":[B
    .local v19, "out":[B
    invoke-static/range {v19 .. v24}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    .line 312
    move-object/from16 v4, v20

    .end local v19    # "out":[B
    .end local v20    # "pi":[S
    .restart local v1    # "out":[B
    .restart local v4    # "pi":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v3, v3, 0x28

    array-length v6, v1

    const/4 v4, 0x0

    .end local v4    # "pi":[S
    .restart local v20    # "pi":[S
    invoke-static {v1, v4, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    sub-int/2addr v9, v3

    .line 316
    array-length v3, v2

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    invoke-static {v11, v9, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 319
    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-nez v3, :cond_5

    .line 321
    const-wide v3, 0xffffffffL

    const/16 v6, 0x20

    invoke-static {v2, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    goto :goto_4

    .line 325
    :cond_5
    const/16 v6, 0x20

    const/16 v17, 0x0

    aget-wide v3, v5, v17

    invoke-static {v2, v6, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    .line 330
    nop

    .line 332
    .end local v1    # "out":[B
    .end local v13    # "field":[S
    .end local v18    # "perm":[I
    .end local v20    # "pi":[S
    .end local v25    # "sigma1_t":I
    :goto_4
    return-void
.end method

.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
.super Ljava/lang/Object;
.source "FrodoEngine.java"


# static fields
.field private static final len_chi:I = 0x10

.field private static final len_chi_bytes:I = 0x2

.field private static final len_seedA:I = 0x80

.field private static final len_seedA_bytes:I = 0x10

.field private static final len_z:I = 0x80

.field private static final len_z_bytes:I = 0x10

.field private static final mbar:I = 0x8

.field static final nbar:I = 0x8


# instance fields
.field private final B:I

.field private final D:I

.field private final T_chi:[S

.field private final digest:Lorg/bouncycastle/crypto/Xof;

.field private final gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

.field private final len_ct_bytes:I

.field private final len_k:I

.field private final len_k_bytes:I

.field private final len_mu:I

.field private final len_mu_bytes:I

.field private final len_pk_bytes:I

.field private final len_pkh:I

.field private final len_pkh_bytes:I

.field private final len_s:I

.field private final len_s_bytes:I

.field private final len_seedSE:I

.field private final len_seedSE_bytes:I

.field private final len_sk_bytes:I

.field private final len_ss:I

.field private final len_ss_bytes:I

.field private final n:I

.field private final q:I


# direct methods
.method public constructor <init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .locals 3
    .param p1, "n"    # I
    .param p2, "D"    # I
    .param p3, "B"    # I
    .param p4, "cdf_table"    # [S
    .param p5, "digest"    # Lorg/bouncycastle/crypto/Xof;
    .param p6, "mGen"    # Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
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
            "n",
            "D",
            "B",
            "cdf_table",
            "digest",
            "mGen"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    .line 76
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    .line 77
    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    .line 78
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    .line 80
    mul-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    .line 81
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    .line 82
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    .line 83
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    .line 84
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    .line 85
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    .line 87
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    .line 88
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    .line 89
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    .line 90
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    .line 91
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    .line 92
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    .line 94
    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, p2, 0x8

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    .line 95
    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    .line 96
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    .line 98
    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    .line 99
    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    .line 100
    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    .line 101
    return-void
.end method

.method private ctselect([B[BS)[B
    .locals 4
    .param p1, "a"    # [B
    .param p2, "b"    # [B
    .param p3, "selector"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "selector"
        }
    .end annotation

    .line 489
    array-length v0, p1

    new-array v0, v0, [B

    .line 490
    .local v0, "r":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 491
    not-int v2, p3

    aget-byte v3, p1, v1

    and-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v1

    and-int/2addr v3, p3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 493
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private ctverify([S[S[S[S)S
    .locals 4
    .param p1, "a1"    # [S
    .param p2, "a2"    # [S
    .param p3, "b1"    # [S
    .param p4, "b2"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a1",
            "a2",
            "b1",
            "b2"
        }
    .end annotation

    .line 471
    const/4 v0, 0x0

    .line 473
    .local v0, "r":S
    const/4 v1, 0x0

    .local v1, "i":S
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 474
    aget-short v2, p1, v1

    aget-short v3, p3, v1

    xor-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-short v0, v2

    .line 473
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_0

    .line 476
    .end local v1    # "i":S
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":S
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    .line 477
    aget-short v2, p2, v1

    aget-short v3, p4, v1

    xor-int/2addr v2, v3

    or-int/2addr v2, v0

    int-to-short v0, v2

    .line 476
    add-int/lit8 v2, v1, 0x1

    int-to-short v1, v2

    goto :goto_1

    .line 480
    .end local v1    # "i":S
    :cond_1
    if-nez v0, :cond_2

    .line 481
    const/4 v1, 0x0

    return v1

    .line 482
    :cond_2
    const/4 v1, -0x1

    return v1
.end method

.method private decode([S)[B
    .locals 17
    .param p1, "in"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 443
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "index":I
    const/16 v2, 0x8

    .line 444
    .local v2, "npieces_word":I
    const/16 v3, 0x8

    .line 446
    .local v3, "nwords":I
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v4, v5

    int-to-short v4, v4

    .line 447
    .local v4, "maskex":S
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    shl-int v6, v5, v6

    sub-int/2addr v6, v5

    int-to-short v6, v6

    .line 448
    .local v6, "maskq":S
    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int v7, v7, v2

    new-array v7, v7, [B

    .line 451
    .local v7, "out":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v3, :cond_2

    .line 453
    const-wide/16 v9, 0x0

    .line 454
    .local v9, "templong":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1
    if-ge v11, v2, :cond_0

    .line 456
    aget-short v12, p1, v1

    and-int/2addr v12, v6

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int/2addr v13, v14

    sub-int/2addr v13, v5

    shl-int v13, v5, v13

    add-int/2addr v12, v13

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int/2addr v13, v14

    shr-int/2addr v12, v13

    int-to-short v12, v12

    .line 457
    .local v12, "temp":S
    and-int v13, v12, v4

    int-to-long v13, v13

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int v15, v15, v11

    shl-long/2addr v13, v15

    or-long/2addr v9, v13

    .line 458
    add-int/lit8 v1, v1, 0x1

    .line 454
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 460
    .end local v12    # "temp":S
    :cond_0
    const/4 v11, 0x0

    :goto_2
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v11, v12, :cond_1

    .line 461
    iget v12, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int v12, v12, v8

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    shr-long v13, v9, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v14, v13

    int-to-byte v13, v14

    aput-byte v13, v7, v12

    .line 460
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 451
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 463
    .end local v9    # "templong":J
    .end local v11    # "j":I
    :cond_2
    return-object v7
.end method

.method private encode([B)[S
    .locals 12
    .param p1, "k"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, "byte_index":I
    const/4 v1, 0x1

    .line 326
    .local v1, "mask":B
    const/16 v2, 0x40

    new-array v2, v2, [S

    .line 329
    .local v2, "K":[S
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x8

    if-ge v3, v4, :cond_4

    .line 332
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_3

    .line 335
    const/4 v6, 0x0

    .line 336
    .local v6, "temp":I
    const/4 v7, 0x0

    .local v7, "l":I
    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    const/4 v9, 0x1

    if-ge v7, v8, :cond_2

    .line 339
    aget-byte v8, p1, v0

    and-int/2addr v8, v1

    if-ne v8, v1, :cond_0

    const/4 v8, 0x1

    goto :goto_3

    :cond_0
    const/4 v8, 0x0

    .line 340
    .local v8, "mult":I
    :goto_3
    shl-int/2addr v9, v7

    mul-int v9, v9, v8

    add-int/2addr v6, v9

    .line 341
    shl-int/lit8 v9, v1, 0x1

    int-to-byte v1, v9

    .line 342
    if-nez v1, :cond_1

    .line 344
    const/4 v1, 0x1

    .line 345
    add-int/lit8 v0, v0, 0x1

    .line 336
    .end local v8    # "mult":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 349
    :cond_2
    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v5

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    iget v11, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    shl-int/2addr v9, v11

    div-int/2addr v10, v9

    mul-int v10, v10, v6

    int-to-short v9, v10

    aput-short v9, v2, v8

    .line 332
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 329
    .end local v5    # "j":I
    .end local v6    # "temp":I
    .end local v7    # "l":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 352
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method private matrix_add([S[SII)[S
    .locals 7
    .param p1, "X"    # [S
    .param p2, "Y"    # [S
    .param p3, "n1"    # I
    .param p4, "m1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "Y",
            "n1",
            "m1"
        }
    .end annotation

    .line 162
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v0, v0, -0x1

    .line 163
    .local v0, "qMask":I
    mul-int v1, p3, p4

    new-array v1, v1, [S

    .line 164
    .local v1, "res":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 165
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p4, :cond_0

    .line 166
    mul-int v4, v2, p4

    add-int/2addr v4, v3

    mul-int v5, v2, p4

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    mul-int v6, v2, p4

    add-int/2addr v6, v3

    aget-short v6, p2, v6

    add-int/2addr v5, v6

    and-int/2addr v5, v0

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 165
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 164
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private matrix_mul([SII[SII)[S
    .locals 8
    .param p1, "X"    # [S
    .param p2, "Xrow"    # I
    .param p3, "Xcol"    # I
    .param p4, "Y"    # [S
    .param p5, "Yrow"    # I
    .param p6, "Ycol"    # I
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
            "Xrow",
            "Xcol",
            "Y",
            "Yrow",
            "Ycol"
        }
    .end annotation

    .line 143
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v0, v0, -0x1

    .line 144
    .local v0, "qMask":I
    mul-int v1, p2, p6

    new-array v1, v1, [S

    .line 145
    .local v1, "res":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_2

    .line 147
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p6, :cond_1

    .line 149
    const/4 v4, 0x0

    .line 150
    .local v4, "accum":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    if-ge v5, p3, :cond_0

    .line 152
    mul-int v6, v2, p3

    add-int/2addr v6, v5

    aget-short v6, p1, v6

    mul-int v7, v5, p6

    add-int/2addr v7, v3

    aget-short v7, p4, v7

    mul-int v6, v6, v7

    add-int/2addr v4, v6

    .line 150
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 154
    .end local v5    # "k":I
    :cond_0
    mul-int v5, v2, p6

    add-int/2addr v5, v3

    and-int v6, v4, v0

    int-to-short v6, v6

    aput-short v6, v1, v5

    .line 147
    .end local v4    # "accum":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 145
    .end local v3    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 157
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method private matrix_sub([S[SII)[S
    .locals 7
    .param p1, "X"    # [S
    .param p2, "Y"    # [S
    .param p3, "n1"    # I
    .param p4, "n2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "Y",
            "n1",
            "n2"
        }
    .end annotation

    .line 432
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v0, v0, -0x1

    .line 433
    .local v0, "qMask":I
    mul-int v1, p3, p4

    new-array v1, v1, [S

    .line 434
    .local v1, "res":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 435
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, p4, :cond_0

    .line 436
    mul-int v4, v2, p4

    add-int/2addr v4, v3

    mul-int v5, v2, p4

    add-int/2addr v5, v3

    aget-short v5, p1, v5

    mul-int v6, v2, p4

    add-int/2addr v6, v3

    aget-short v6, p2, v6

    sub-int/2addr v5, v6

    and-int/2addr v5, v0

    int-to-short v5, v5

    aput-short v5, v1, v4

    .line 435
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 434
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 438
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private matrix_transpose([SII)[S
    .locals 5
    .param p1, "X"    # [S
    .param p2, "n1"    # I
    .param p3, "n2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "X",
            "n1",
            "n2"
        }
    .end annotation

    .line 133
    mul-int v0, p2, p3

    new-array v0, v0, [S

    .line 135
    .local v0, "res":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 136
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 137
    mul-int v3, v1, p2

    add-int/2addr v3, v2

    mul-int v4, v2, p3

    add-int/2addr v4, v1

    aget-short v4, p1, v4

    aput-short v4, v0, v3

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 135
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private pack([S)[B
    .locals 13
    .param p1, "C"    # [S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "C"
        }
    .end annotation

    .line 174
    array-length v0, p1

    .line 175
    .local v0, "n":I
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int v1, v1, v0

    const/16 v2, 0x8

    div-int/2addr v1, v2

    new-array v1, v1, [B

    .line 176
    .local v1, "out":[B
    const/4 v3, 0x0

    .line 177
    .local v3, "i":S
    const/4 v4, 0x0

    .line 178
    .local v4, "j":S
    const/4 v5, 0x0

    .line 179
    .local v5, "w":S
    const/4 v6, 0x0

    .line 181
    .local v6, "bits":B
    :goto_0
    array-length v7, v1

    if-ge v3, v7, :cond_4

    if-lt v4, v0, :cond_0

    if-ne v4, v0, :cond_4

    if-lez v6, :cond_4

    .line 184
    :cond_0
    const/4 v7, 0x0

    .line 185
    .local v7, "b":B
    :goto_1
    if-ge v7, v2, :cond_2

    .line 187
    rsub-int/lit8 v8, v7, 0x8

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 188
    .local v8, "nbits":I
    const/4 v9, 0x1

    shl-int v10, v9, v8

    sub-int/2addr v10, v9

    int-to-short v9, v10

    .line 189
    .local v9, "mask":S
    sub-int v10, v6, v8

    shr-int v10, v5, v10

    and-int/2addr v10, v9

    int-to-byte v10, v10

    .line 190
    .local v10, "t":B
    aget-byte v11, v1, v3

    rsub-int/lit8 v12, v7, 0x8

    sub-int/2addr v12, v8

    shl-int v12, v10, v12

    add-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 191
    add-int v11, v7, v8

    int-to-byte v7, v11

    .line 192
    sub-int v11, v6, v8

    int-to-byte v6, v11

    .line 194
    if-nez v6, :cond_1

    .line 196
    if-ge v4, v0, :cond_2

    .line 198
    aget-short v5, p1, v4

    .line 199
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    int-to-byte v6, v11

    .line 200
    add-int/lit8 v11, v4, 0x1

    int-to-short v4, v11

    .line 207
    .end local v8    # "nbits":I
    .end local v9    # "mask":S
    .end local v10    # "t":B
    :cond_1
    goto :goto_1

    .line 208
    :cond_2
    if-ne v7, v2, :cond_3

    .line 210
    add-int/lit8 v8, v3, 0x1

    int-to-short v3, v8

    .line 212
    .end local v7    # "b":B
    :cond_3
    goto :goto_0

    .line 213
    :cond_4
    return-object v1
.end method

.method private sample(S)S
    .locals 6
    .param p1, "r"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 107
    const v0, 0xffff

    and-int v1, p1, v0

    const/4 v2, 0x1

    ushr-int/2addr v1, v2

    int-to-short v1, v1

    .line 108
    .local v1, "t":S
    const/4 v3, 0x0

    .line 109
    .local v3, "e":S
    const/4 v4, 0x0

    .local v4, "z":I
    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 111
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    aget-short v5, v5, v4

    if-le v1, v5, :cond_0

    .line 112
    add-int/lit8 v5, v3, 0x1

    int-to-short v3, v5

    .line 109
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 116
    .end local v4    # "z":I
    :cond_1
    and-int v4, p1, v0

    rem-int/lit8 v4, v4, 0x2

    if-ne v4, v2, :cond_2

    .line 117
    mul-int/lit8 v2, v3, -0x1

    and-int/2addr v0, v2

    int-to-short v3, v0

    .line 119
    :cond_2
    return v3
.end method

.method private sample_matrix([SIII)[S
    .locals 5
    .param p1, "r"    # [S
    .param p2, "offset"    # I
    .param p3, "n1"    # I
    .param p4, "n2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "offset",
            "n1",
            "n2"
        }
    .end annotation

    .line 124
    mul-int v0, p3, p4

    new-array v0, v0, [S

    .line 125
    .local v0, "E":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 126
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p4, :cond_0

    .line 127
    mul-int v3, v1, p4

    add-int/2addr v3, v2

    mul-int v4, v1, p4

    add-int/2addr v4, v2

    add-int/2addr v4, p2

    aget-short v4, p1, v4

    invoke-direct {p0, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample(S)S

    move-result v4

    aput-short v4, v0, v3

    .line 126
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 125
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method private unpack([BII)[S
    .locals 16
    .param p1, "in"    # [B
    .param p2, "n1"    # I
    .param p3, "n2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "n1",
            "n2"
        }
    .end annotation

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    mul-int v2, p2, p3

    new-array v2, v2, [S

    .line 282
    .local v2, "out":[S
    const/4 v3, 0x0

    .line 283
    .local v3, "i":S
    const/4 v4, 0x0

    .line 284
    .local v4, "j":S
    const/4 v5, 0x0

    .line 285
    .local v5, "w":B
    const/4 v6, 0x0

    .line 287
    .local v6, "bits":B
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_4

    array-length v7, v1

    if-lt v4, v7, :cond_0

    array-length v7, v1

    if-ne v4, v7, :cond_4

    if-lez v6, :cond_4

    .line 289
    :cond_0
    const/4 v7, 0x0

    .line 290
    .local v7, "b":B
    :goto_1
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ge v7, v8, :cond_2

    .line 292
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    sub-int/2addr v8, v7

    invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 293
    .local v8, "nbits":I
    const/4 v9, 0x1

    shl-int v10, v9, v8

    sub-int/2addr v10, v9

    const v9, 0xffff

    and-int/2addr v10, v9

    int-to-short v10, v10

    .line 294
    .local v10, "mask":S
    and-int/lit16 v11, v5, 0xff

    and-int/lit16 v12, v6, 0xff

    sub-int/2addr v12, v8

    ushr-int/2addr v11, v12

    and-int v12, v10, v9

    and-int/2addr v11, v12

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    .line 295
    .local v11, "t":B
    aget-short v12, v2, v3

    and-int/2addr v12, v9

    and-int/lit16 v13, v11, 0xff

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    and-int/lit16 v15, v7, 0xff

    sub-int/2addr v14, v15

    sub-int/2addr v14, v8

    shl-int/2addr v13, v14

    add-int/2addr v12, v13

    and-int/2addr v9, v12

    int-to-short v9, v9

    aput-short v9, v2, v3

    .line 296
    add-int v9, v7, v8

    int-to-byte v7, v9

    .line 297
    sub-int v9, v6, v8

    int-to-byte v6, v9

    .line 298
    shl-int v9, v10, v6

    not-int v9, v9

    and-int/2addr v9, v5

    int-to-byte v5, v9

    .line 300
    if-nez v6, :cond_1

    .line 302
    array-length v9, v1

    if-ge v4, v9, :cond_2

    .line 304
    aget-byte v5, v1, v4

    .line 305
    const/16 v6, 0x8

    .line 306
    add-int/lit8 v9, v4, 0x1

    int-to-short v4, v9

    .line 313
    .end local v8    # "nbits":I
    .end local v10    # "mask":S
    .end local v11    # "t":B
    :cond_1
    goto :goto_1

    .line 314
    :cond_2
    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ne v7, v8, :cond_3

    .line 316
    add-int/lit8 v8, v3, 0x1

    int-to-short v3, v8

    .line 318
    .end local v7    # "b":B
    :cond_3
    goto :goto_0

    .line 319
    :cond_4
    return-object v2
.end method


# virtual methods
.method public getCipherTextSize()I
    .locals 1

    .line 55
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    .line 70
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    return v0
.end method

.method public kem_dec([B[B[B)V
    .locals 34
    .param p1, "ss"    # [B
    .param p2, "ct"    # [B
    .param p3, "sk"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ss",
            "ct",
            "sk"
        }
    .end annotation

    .line 499
    move-object/from16 v0, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    const/4 v1, 0x0

    .line 500
    .local v1, "offset":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v9, 0x8

    mul-int/lit8 v2, v2, 0x8

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int v2, v2, v3

    div-int/2addr v2, v9

    .line 501
    .local v2, "length":I
    add-int v3, v1, v2

    invoke-static {v7, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 503
    .local v10, "c1":[B
    add-int/2addr v1, v2

    .line 504
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/lit8 v3, v3, 0x40

    div-int/2addr v3, v9

    .line 505
    .end local v2    # "length":I
    .local v3, "length":I
    add-int v2, v1, v3

    invoke-static {v7, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 508
    .local v11, "c2":[B
    const/4 v1, 0x0

    .line 509
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    .line 510
    .end local v3    # "length":I
    .restart local v2    # "length":I
    add-int v3, v1, v2

    invoke-static {v8, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 512
    .local v12, "s":[B
    add-int/2addr v1, v2

    .line 513
    const/16 v2, 0x10

    .line 514
    add-int v3, v1, v2

    invoke-static {v8, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 516
    .local v13, "seedA":[B
    add-int/2addr v1, v2

    .line 517
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x8

    div-int/2addr v3, v9

    .line 518
    .end local v2    # "length":I
    .restart local v3    # "length":I
    add-int v2, v1, v3

    invoke-static {v8, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 520
    .local v14, "b":[B
    add-int/2addr v1, v3

    .line 521
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x10

    div-int/2addr v2, v9

    .line 522
    .end local v3    # "length":I
    .restart local v2    # "length":I
    add-int v3, v1, v2

    invoke-static {v8, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v15

    .line 524
    .local v15, "Sbytes":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v3, v3, 0x8

    new-array v3, v3, [S

    .line 526
    .local v3, "Stransposed":[S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v9, :cond_1

    .line 527
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v5, v6, :cond_0

    .line 528
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v6, v6, v4

    add-int/2addr v6, v5

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v9, v9, v4

    mul-int/lit8 v9, v9, 0x2

    mul-int/lit8 v17, v5, 0x2

    add-int v9, v9, v17

    invoke-static {v15, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    aput-short v9, v3, v6

    .line 527
    add-int/lit8 v5, v5, 0x1

    const/16 v9, 0x8

    goto :goto_1

    .line 526
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    const/16 v9, 0x8

    goto :goto_0

    .line 530
    .end local v4    # "i":I
    :cond_1
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v9, 0x8

    invoke-direct {v0, v3, v9, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v4

    .line 532
    .local v4, "S":[S
    add-int/2addr v1, v2

    .line 533
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    .line 534
    add-int v5, v1, v2

    invoke-static {v8, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    .line 537
    .local v5, "pkh":[B
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v10, v9, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v6

    .line 540
    .local v6, "Bprime":[S
    move/from16 v16, v2

    .end local v2    # "length":I
    .local v16, "length":I
    invoke-direct {v0, v11, v9, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v2

    .line 543
    .local v2, "C":[S
    move-object/from16 v17, v3

    .end local v3    # "Stransposed":[S
    .local v17, "Stransposed":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v18, v5

    .end local v5    # "pkh":[B
    .local v18, "pkh":[B
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move/from16 v19, v1

    move-object v1, v6

    .end local v6    # "Bprime":[S
    .local v1, "Bprime":[S
    .local v19, "offset":I
    const/16 v6, 0x8

    move-object/from16 v20, v2

    .end local v2    # "C":[S
    .local v20, "C":[S
    const/16 v2, 0x8

    move-object/from16 v21, v18

    move-object/from16 v7, v20

    move/from16 v18, v16

    .end local v16    # "length":I
    .end local v20    # "C":[S
    .local v7, "C":[S
    .local v18, "length":I
    .local v21, "pkh":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    .line 544
    move-object/from16 v20, v4

    .end local v4    # "S":[S
    .local v2, "BprimeS":[S
    .local v20, "S":[S
    invoke-direct {v0, v7, v2, v9, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_sub([S[SII)[S

    move-result-object v3

    .line 547
    .local v3, "M":[S
    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->decode([S)[B

    move-result-object v9

    .line 552
    .local v9, "muprime":[B
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 553
    .local v4, "seedSEprime_kprime":[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    move-object/from16 v22, v2

    .end local v2    # "BprimeS":[S
    .local v22, "BprimeS":[S
    const/4 v2, 0x0

    move-object/from16 v8, v21

    .end local v21    # "pkh":[B
    .local v8, "pkh":[B
    invoke-interface {v5, v8, v2, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 554
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v5, v9, v2, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 555
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v21, v1

    .end local v1    # "Bprime":[S
    .local v21, "Bprime":[S
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v6, v1

    invoke-interface {v5, v4, v2, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 557
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v5, v6

    invoke-static {v4, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 560
    .local v1, "kprime":[B
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x40

    mul-int/lit8 v5, v5, 0x2

    new-array v5, v5, [B

    .line 561
    .local v5, "rbytes":[B
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v2, -0x6a

    invoke-interface {v6, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 562
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v24, v1

    const/4 v1, 0x0

    .end local v1    # "kprime":[B
    .local v24, "kprime":[B
    invoke-interface {v2, v4, v1, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 563
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, v5

    invoke-interface {v2, v5, v1, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 565
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x40

    new-array v1, v1, [S

    .line 566
    .local v1, "r":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 568
    mul-int/lit8 v6, v2, 0x2

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v6

    aput-short v6, v1, v2

    .line 566
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 572
    .end local v2    # "i":I
    :cond_2
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v16, v8

    const/4 v6, 0x0

    const/16 v8, 0x8

    .end local v8    # "pkh":[B
    .local v16, "pkh":[B
    invoke-direct {v0, v1, v6, v8, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v2

    .line 575
    .local v2, "Sprime":[S
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v6, v6, 0x8

    move-object/from16 v25, v2

    .end local v2    # "Sprime":[S
    .local v25, "Sprime":[S
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v1, v6, v8, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v2

    .line 578
    .local v2, "Eprime":[S
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v6, v13}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v6

    .line 581
    .local v6, "A":[S
    move-object/from16 v26, v3

    .end local v3    # "M":[S
    .local v26, "M":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v27, v5

    .end local v5    # "rbytes":[B
    .local v27, "rbytes":[B
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v28, v4

    move-object v4, v6

    .end local v6    # "A":[S
    .local v4, "A":[S
    .local v28, "seedSEprime_kprime":[B
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v29, v2

    .end local v2    # "Eprime":[S
    .local v29, "Eprime":[S
    const/16 v2, 0x8

    move-object/from16 v32, v1

    move-object/from16 v30, v21

    move-object/from16 v31, v24

    move-object/from16 v1, v25

    move-object/from16 v21, v13

    move-object/from16 v13, v29

    .end local v24    # "kprime":[B
    .end local v25    # "Sprime":[S
    .end local v29    # "Eprime":[S
    .local v1, "Sprime":[S
    .local v13, "Eprime":[S
    .local v21, "seedA":[B
    .local v30, "Bprime":[S
    .local v31, "kprime":[B
    .local v32, "r":[S
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    move-object/from16 v23, v4

    .end local v4    # "A":[S
    .local v23, "A":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v2, v13, v8, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    .line 584
    .local v2, "Bprimeprime":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v3, v3, 0x10

    move-object/from16 v4, v32

    .end local v32    # "r":[S
    .local v4, "r":[S
    invoke-direct {v0, v4, v3, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v3

    .line 587
    .local v3, "Eprimeprime":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v14, v5, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v5

    .line 590
    .local v5, "B":[S
    move-object v6, v3

    .end local v3    # "Eprimeprime":[S
    .local v6, "Eprimeprime":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object v4, v5

    .end local v5    # "B":[S
    .local v4, "B":[S
    .restart local v32    # "r":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v24, v6

    .end local v6    # "Eprimeprime":[S
    .local v24, "Eprimeprime":[S
    const/16 v6, 0x8

    move-object/from16 v25, v2

    .end local v2    # "Bprimeprime":[S
    .local v25, "Bprimeprime":[S
    const/16 v2, 0x8

    move-object/from16 v29, v24

    move-object/from16 v24, v14

    move-object/from16 v14, v29

    move-object/from16 v29, v13

    move-object/from16 v13, v25

    .end local v25    # "Bprimeprime":[S
    .local v13, "Bprimeprime":[S
    .local v14, "Eprimeprime":[S
    .local v24, "b":[B
    .restart local v29    # "Eprime":[S
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    invoke-direct {v0, v2, v14, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    .line 593
    .local v2, "V":[S
    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v3

    invoke-direct {v0, v2, v3, v8, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v3

    .line 600
    .local v3, "Cprime":[S
    move-object/from16 v5, v30

    .end local v30    # "Bprime":[S
    .local v5, "Bprime":[S
    invoke-direct {v0, v5, v7, v13, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctverify([S[S[S[S)S

    move-result v6

    .line 601
    .local v6, "use_kprime":S
    move-object/from16 v25, v1

    move-object/from16 v8, v31

    .end local v1    # "Sprime":[S
    .end local v31    # "kprime":[B
    .local v8, "kprime":[B
    .local v25, "Sprime":[S
    invoke-direct {v0, v8, v12, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctselect([B[BS)[B

    move-result-object v1

    .line 604
    .local v1, "kbar":[B
    move-object/from16 v30, v2

    .end local v2    # "V":[S
    .local v30, "V":[S
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    move-object/from16 v31, v3

    .end local v3    # "Cprime":[S
    .local v31, "Cprime":[S
    array-length v3, v10

    move-object/from16 v33, v4

    const/4 v4, 0x0

    .end local v4    # "B":[S
    .local v33, "B":[S
    invoke-interface {v2, v10, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 605
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v11

    invoke-interface {v2, v11, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 606
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 607
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 608
    return-void
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)V
    .locals 27
    .param p1, "ct"    # [B
    .param p2, "ss"    # [B
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
            "ct",
            "ss",
            "pk",
            "random"
        }
    .end annotation

    .line 358
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v7, v8, v9}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    .line 359
    .local v10, "seedA":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v7, v9, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 362
    .local v11, "b":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    new-array v12, v1, [B

    .line 363
    .local v12, "mu":[B
    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 366
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v14, v1, [B

    .line 367
    .local v14, "pkh":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-interface {v1, v7, v8, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 368
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v1, v14, v8, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 371
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    add-int/2addr v1, v2

    new-array v15, v1, [B

    .line 372
    .local v15, "seedSE_k":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v1, v14, v8, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 373
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v1, v12, v8, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 374
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v2, v3

    invoke-interface {v1, v15, v8, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 376
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    invoke-static {v15, v8, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 377
    .local v1, "seedSE":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v3, v4

    invoke-static {v15, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 380
    .local v2, "k":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x40

    mul-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    .line 381
    .local v3, "rbytes":[B
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, -0x6a

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 382
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v1

    invoke-interface {v4, v1, v8, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 383
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v5, v3

    invoke-interface {v4, v3, v8, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 385
    array-length v4, v3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [S

    .line 386
    .local v4, "r":[S
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 387
    mul-int/lit8 v6, v5, 0x2

    invoke-static {v3, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v6

    aput-short v6, v4, v5

    .line 386
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 390
    .end local v5    # "i":I
    :cond_0
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v6, 0x8

    invoke-direct {v0, v4, v8, v6, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v5

    .line 393
    .local v5, "Sprime":[S
    const/16 v16, 0x10

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v9, v9, 0x8

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v4, v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v8

    .line 396
    .local v8, "Eprime":[S
    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v9

    .line 399
    .local v9, "A":[S
    move-object/from16 v18, v3

    .end local v3    # "rbytes":[B
    .local v18, "rbytes":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v19, v1

    move-object v1, v5

    .end local v5    # "Sprime":[S
    .local v1, "Sprime":[S
    .local v19, "seedSE":[B
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v20, 0x8

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v21, v2

    .end local v2    # "k":[B
    .local v21, "k":[B
    const/16 v2, 0x8

    move-object v7, v4

    move-object v4, v9

    move-object/from16 v20, v10

    move-object/from16 v9, v21

    const/16 v10, 0x8

    .end local v10    # "seedA":[B
    .end local v21    # "k":[B
    .local v4, "A":[S
    .local v7, "r":[S
    .local v9, "k":[B
    .local v20, "seedA":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    move-object/from16 v21, v4

    .end local v4    # "A":[S
    .local v21, "A":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v2, v8, v10, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    .line 402
    .local v2, "Bprime":[S
    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v3

    .line 405
    .local v3, "c1":[B
    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v4, v4, 0x10

    invoke-direct {v0, v7, v4, v10, v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v4

    .line 408
    .local v4, "Eprimeprime":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v11, v5, v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v5

    .line 412
    .local v5, "B":[S
    move-object v6, v3

    .end local v3    # "c1":[B
    .local v6, "c1":[B
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v16, v4

    move-object v4, v5

    .end local v5    # "B":[S
    .local v4, "B":[S
    .local v16, "Eprimeprime":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v22, v6

    .end local v6    # "c1":[B
    .local v22, "c1":[B
    const/16 v6, 0x8

    move-object/from16 v23, v2

    .end local v2    # "Bprime":[S
    .local v23, "Bprime":[S
    const/16 v2, 0x8

    move-object/from16 v26, v16

    move-object/from16 v16, v7

    move-object/from16 v7, v22

    move-object/from16 v22, v8

    move-object/from16 v8, v26

    .local v7, "c1":[B
    .local v8, "Eprimeprime":[S
    .local v16, "r":[S
    .local v22, "Eprime":[S
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    invoke-direct {v0, v2, v8, v10, v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    .line 415
    .local v2, "V":[S
    invoke-direct {v0, v12}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v3

    .line 416
    .local v3, "EncodedMU":[S
    invoke-direct {v0, v2, v3, v10, v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v5

    .line 419
    .local v5, "C":[S
    invoke-direct {v0, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v6

    .line 423
    .local v6, "c2":[B
    invoke-static {v7, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v10

    move-object/from16 v24, v1

    .end local v1    # "Sprime":[S
    .local v24, "Sprime":[S
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    move-object/from16 v25, v2

    move-object/from16 v17, v3

    const/4 v3, 0x0

    move-object/from16 v2, p1

    .end local v2    # "V":[S
    .end local v3    # "EncodedMU":[S
    .local v17, "EncodedMU":[S
    .local v25, "V":[S
    invoke-static {v10, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 424
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v10, v7

    invoke-interface {v1, v7, v3, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 425
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v10, v6

    invoke-interface {v1, v6, v3, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 426
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    invoke-interface {v1, v9, v3, v10}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 427
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    move-object/from16 v0, p2

    invoke-interface {v1, v0, v3, v10}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 428
    return-void
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 24
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

    .line 219
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v1, v2

    const/16 v2, 0x10

    add-int/2addr v1, v2

    new-array v9, v1, [B

    .line 220
    .local v9, "s_seedSE_z":[B
    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 222
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    const/4 v11, 0x0

    invoke-static {v9, v11, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 223
    .local v12, "s":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v3, v4

    invoke-static {v9, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    .line 224
    .local v13, "seedSE":[B
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v1, v3

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-static {v9, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    .line 227
    .local v14, "z":[B
    new-array v15, v2, [B

    .line 228
    .local v15, "seedA":[B
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v14

    invoke-interface {v1, v14, v11, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 229
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v15

    invoke-interface {v1, v15, v11, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 232
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v1, v15}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v1

    .line 235
    .local v1, "A":[S
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/4 v3, 0x2

    mul-int/lit8 v2, v2, 0x2

    const/16 v4, 0x8

    mul-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 237
    .local v2, "rbytes":[B
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v6, 0x5f

    invoke-interface {v5, v6}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    .line 238
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, v13

    invoke-interface {v5, v13, v11, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 239
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, v2

    invoke-interface {v5, v2, v11, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 241
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v5, v5, 0x2

    mul-int/lit8 v5, v5, 0x8

    new-array v5, v5, [S

    .line 242
    .local v5, "r":[S
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v3, v5

    if-ge v6, v3, :cond_0

    .line 243
    mul-int/lit8 v3, v6, 0x2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v3

    aput-short v3, v5, v6

    .line 242
    add-int/lit8 v6, v6, 0x1

    const/4 v3, 0x2

    goto :goto_0

    .line 246
    .end local v6    # "i":I
    :cond_0
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v5, v11, v4, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v3

    .line 247
    .local v3, "S_T":[S
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v3, v4, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v6

    .line 250
    .local v6, "S":[S
    iget v11, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v11, v11, 0x8

    move-object/from16 v17, v1

    .end local v1    # "A":[S
    .local v17, "A":[S
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v5, v11, v1, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v11

    .line 253
    .local v11, "E":[S
    move-object v1, v2

    .end local v2    # "rbytes":[B
    .local v1, "rbytes":[B
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v18, v3

    .end local v3    # "S_T":[S
    .local v18, "S_T":[S
    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v19, v5

    .end local v5    # "r":[S
    .local v19, "r":[S
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object v4, v6

    const/16 v20, 0x8

    .end local v6    # "S":[S
    .local v4, "S":[S
    const/16 v6, 0x8

    move-object/from16 v16, v1

    move-object/from16 v1, v17

    const/16 v20, 0x2

    move-object/from16 v17, v9

    const/16 v9, 0x8

    .end local v9    # "s_seedSE_z":[B
    .local v1, "A":[S
    .local v16, "rbytes":[B
    .local v17, "s_seedSE_z":[B
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {v0, v2, v11, v3, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    .line 256
    .local v2, "B":[S
    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v3

    .line 260
    .local v3, "b":[B
    invoke-static {v15, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v5

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    const/4 v9, 0x0

    invoke-static {v5, v9, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v5, v5, [B

    .line 263
    .local v5, "pkh":[B
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    move-object/from16 v21, v1

    .end local v1    # "A":[S
    .local v21, "A":[S
    array-length v1, v7

    invoke-interface {v6, v7, v9, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 264
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v6, v5

    invoke-interface {v1, v5, v9, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 267
    invoke-static {v12, v7}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    move-object/from16 v22, v2

    .end local v2    # "B":[S
    .local v22, "B":[S
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v6, v2

    invoke-static {v1, v9, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v9, 0x8

    if-ge v1, v9, :cond_2

    .line 271
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v2, v6, :cond_1

    .line 272
    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v6, v6, v1

    add-int/2addr v6, v2

    aget-short v6, v18, v6

    invoke-static {v6}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v6

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    move/from16 v23, v1

    .end local v1    # "i":I
    .local v23, "i":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v9, v1

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int v1, v1, v23

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v9, v1

    mul-int/lit8 v1, v2, 0x2

    add-int/2addr v9, v1

    move/from16 v20, v2

    const/4 v1, 0x0

    const/4 v2, 0x2

    .end local v2    # "j":I
    .local v20, "j":I
    invoke-static {v6, v1, v8, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 271
    add-int/lit8 v1, v20, 0x1

    move v2, v1

    move/from16 v1, v23

    const/16 v9, 0x8

    const/16 v20, 0x2

    .end local v20    # "j":I
    .local v1, "j":I
    goto :goto_2

    .end local v23    # "i":I
    .local v1, "i":I
    .restart local v2    # "j":I
    :cond_1
    move/from16 v23, v1

    move/from16 v20, v2

    const/4 v2, 0x2

    .line 270
    .end local v1    # "i":I
    .end local v2    # "j":I
    .restart local v23    # "i":I
    add-int/lit8 v1, v23, 0x1

    const/16 v20, 0x2

    .end local v23    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v23, v1

    .line 275
    .end local v1    # "i":I
    iget v1, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    sub-int/2addr v1, v2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    const/4 v9, 0x0

    invoke-static {v5, v9, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    return-void
.end method

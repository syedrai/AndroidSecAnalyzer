.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;
.super Ljava/lang/Object;
.source "QTesla3p.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;,
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x0

.field static final CRYPTO_BYTES:I = 0x1620

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x9620

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x3068

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x0

.field private static final PARAM_B:I = 0x1fffff

.field private static final PARAM_BARR_DIV:I = 0x20

.field private static final PARAM_BARR_MULT:J = 0x5L

.field private static final PARAM_B_BITS:I = 0x15

.field private static final PARAM_D:I = 0x18

.field private static final PARAM_E:I = 0x385

.field private static final PARAM_GEN_A:I = 0xb4

.field private static final PARAM_H:I = 0x28

.field private static final PARAM_K:I = 0x5

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x385

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x385

.field private static final PARAM_N:I = 0x800

.field private static final PARAM_Q:I = 0x3307c001

.field private static final PARAM_QINV:J = 0x2307bfffL

.field private static final PARAM_Q_LOG:I = 0x1e

.field private static final PARAM_R2_INVN:I = 0x1e9637c5

.field private static final PARAM_S:I = 0x385

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0x3fffff


# direct methods
.method static bridge synthetic -$$Nest$smat([BII)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 543
    const/16 v0, 0x38

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->NBLOCKS_SHAKE:I

    .line 544
    const/4 v0, 0x3

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absolute(I)I
    .locals 2
    .param p0, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 645
    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr v0, p0

    shr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    return v0
.end method

.method private static absolute(J)J
    .locals 5
    .param p0, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 652
    const/16 v0, 0x3f

    shr-long v1, p0, v0

    xor-long/2addr v1, p0

    shr-long v3, p0, v0

    sub-long/2addr v1, v3

    return-wide v1
.end method

.method private static at([BII)I
    .locals 3
    .param p0, "bs"    # [B
    .param p1, "base"    # I
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "base",
            "index"
        }
    .end annotation

    .line 587
    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    .line 589
    .local v0, "off":I
    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    .line 590
    .local v1, "n":I
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    .line 591
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    .line 592
    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    .line 593
    return v1
.end method

.method private static at([BIII)V
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "base"    # I
    .param p2, "index"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "base",
            "index",
            "value"
        }
    .end annotation

    .line 582
    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-static {p3, p0, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 583
    return-void
.end method

.method private static checkPolynomial([JII)Z
    .locals 16
    .param p0, "polynomial"    # [J
    .param p1, "polyOffset"    # I
    .param p2, "bound"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polynomial",
            "polyOffset",
            "bound"
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    .local v0, "sum":I
    const/16 v1, 0x800

    .line 662
    .local v1, "limit":I
    const/16 v2, 0x800

    new-array v3, v2, [J

    .line 664
    .local v3, "list":[J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 666
    add-int v5, p1, v4

    aget-wide v5, p0, v5

    long-to-int v6, v5

    invoke-static {v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v5

    int-to-long v5, v5

    aput-wide v5, v3, v4

    .line 664
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 669
    :cond_0
    const/4 v2, 0x0

    .end local v4    # "j":I
    .local v2, "j":I
    :goto_1
    const/16 v4, 0x28

    if-ge v2, v4, :cond_2

    .line 671
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_1

    .line 674
    add-int/lit8 v5, v4, 0x1

    aget-wide v5, v3, v5

    aget-wide v7, v3, v4

    sub-long/2addr v5, v7

    const/16 v7, 0x1f

    shr-long/2addr v5, v7

    .line 675
    .local v5, "mask":J
    add-int/lit8 v7, v4, 0x1

    aget-wide v7, v3, v7

    and-long/2addr v7, v5

    aget-wide v9, v3, v4

    not-long v11, v5

    and-long/2addr v9, v11

    or-long/2addr v7, v9

    .line 676
    .local v7, "temp":J
    add-int/lit8 v9, v4, 0x1

    aget-wide v10, v3, v4

    and-long/2addr v10, v5

    add-int/lit8 v12, v4, 0x1

    aget-wide v12, v3, v12

    not-long v14, v5

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    aput-wide v10, v3, v9

    .line 677
    aput-wide v7, v3, v4

    .line 671
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 679
    .end local v5    # "mask":J
    .end local v7    # "temp":J
    :cond_1
    add-int/lit8 v5, v1, -0x1

    aget-wide v5, v3, v5

    long-to-int v6, v5

    add-int/2addr v0, v6

    .line 680
    add-int/lit8 v1, v1, -0x1

    .line 669
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 683
    .end local v4    # "i":I
    :cond_2
    move/from16 v4, p2

    if-le v0, v4, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    :goto_3
    return v5
.end method

.method static decodePublicKey([I[BI[B)V
    .locals 15
    .param p0, "publicKey"    # [I
    .param p1, "seedA"    # [B
    .param p2, "seedAOffset"    # I
    .param p3, "publicKeyInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "publicKey",
            "seedA",
            "seedAOffset",
            "publicKeyInput"
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    .line 330
    .local v0, "j":I
    move-object/from16 v1, p3

    .line 331
    .local v1, "pt":[B
    const v2, 0x3fffffff    # 1.9999999f

    .line 334
    .local v2, "maskq":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x2800

    if-ge v3, v4, :cond_0

    .line 336
    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    and-int/2addr v5, v2

    aput v5, p0, v3

    .line 337
    add-int/lit8 v5, v3, 0x1

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x1e

    const/4 v6, 0x1

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v7

    const/4 v8, 0x2

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    and-int/2addr v4, v2

    aput v4, p0, v5

    .line 338
    add-int/lit8 v4, v3, 0x2

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    const/4 v7, 0x4

    shl-int/2addr v6, v7

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 339
    add-int/lit8 v4, v3, 0x3

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1a

    const/4 v6, 0x3

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v9

    const/4 v10, 0x6

    shl-int/2addr v9, v10

    or-int/2addr v5, v9

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 340
    add-int/lit8 v4, v3, 0x4

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    const/16 v9, 0x8

    shl-int/2addr v6, v9

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 341
    add-int/lit8 v4, v3, 0x5

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/4 v6, 0x5

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v11

    const/16 v12, 0xa

    shl-int/2addr v11, v12

    or-int/2addr v5, v11

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 342
    add-int/lit8 v4, v3, 0x6

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x14

    invoke-static {v1, v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    const/16 v11, 0xc

    shl-int/2addr v6, v11

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 343
    add-int/lit8 v4, v3, 0x7

    invoke-static {v1, v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x12

    const/4 v6, 0x7

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v13

    const/16 v14, 0xe

    shl-int/2addr v13, v14

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 344
    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 345
    add-int/lit8 v4, v3, 0x9

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v14

    const/16 v6, 0x9

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x12

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 346
    add-int/lit8 v4, v3, 0xa

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v11

    invoke-static {v1, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 347
    add-int/lit8 v4, v3, 0xb

    invoke-static {v1, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v12

    const/16 v6, 0xb

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v12

    shl-int/lit8 v12, v12, 0x16

    or-int/2addr v5, v12

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 348
    add-int/lit8 v4, v3, 0xc

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v9

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 349
    add-int/lit8 v4, v3, 0xd

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v10

    const/16 v6, 0xd

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v9

    shl-int/lit8 v9, v9, 0x1a

    or-int/2addr v5, v9

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 350
    add-int/lit8 v4, v3, 0xe

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v7

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1c

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 351
    add-int/lit8 v4, v3, 0xf

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v8

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 352
    add-int/lit8 v0, v0, 0xf

    .line 334
    add-int/lit8 v3, v3, 0x10

    goto/16 :goto_0

    .line 356
    .end local v3    # "i":I
    :cond_0
    const v3, 0x9600

    const/16 v4, 0x20

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static {v7, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    return-void
.end method

.method static decodeSignature([B[J[BI)V
    .locals 18
    .param p0, "C"    # [B
    .param p1, "Z"    # [J
    .param p2, "signature"    # [B
    .param p3, "signatureOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "C",
            "Z",
            "signature",
            "signatureOffset"
        }
    .end annotation

    .line 407
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 408
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x800

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 410
    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v3

    .line 411
    .local v3, "s0":I
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v4

    .line 412
    .local v4, "s1":I
    const/4 v5, 0x2

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    .line 413
    .local v5, "s2":I
    const/4 v6, 0x3

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    .line 414
    .local v6, "s3":I
    const/4 v7, 0x4

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v7

    .line 415
    .local v7, "s4":I
    const/4 v8, 0x5

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v8

    .line 416
    .local v8, "s5":I
    const/4 v9, 0x6

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v9

    .line 417
    .local v9, "s6":I
    const/4 v10, 0x7

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v10

    .line 418
    .local v10, "s7":I
    const/16 v11, 0x8

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v11

    .line 419
    .local v11, "s8":I
    const/16 v12, 0x9

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v12

    .line 420
    .local v12, "s9":I
    const/16 v13, 0xa

    invoke-static {v0, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v14

    .line 422
    .local v14, "s10":I
    shl-int/lit8 v15, v3, 0xa

    shr-int/2addr v15, v13

    move/from16 v17, v14

    const/16 v16, 0xa

    .end local v14    # "s10":I
    .local v17, "s10":I
    int-to-long v13, v15

    aput-wide v13, p1, v2

    .line 423
    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v3, 0x16

    shl-int/lit8 v15, v4, 0x14

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 424
    add-int/lit8 v13, v2, 0x2

    ushr-int/lit8 v14, v4, 0xc

    shl-int/lit8 v15, v5, 0x1e

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 425
    add-int/lit8 v13, v2, 0x3

    shl-int/lit8 v14, v5, 0x8

    shr-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 426
    add-int/lit8 v13, v2, 0x4

    ushr-int/lit8 v14, v5, 0x18

    shl-int/lit8 v15, v6, 0x12

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 427
    add-int/lit8 v13, v2, 0x5

    ushr-int/lit8 v14, v6, 0xe

    shl-int/lit8 v15, v7, 0x1c

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 428
    add-int/lit8 v13, v2, 0x6

    shl-int/lit8 v14, v7, 0x6

    shr-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 429
    add-int/lit8 v13, v2, 0x7

    ushr-int/lit8 v14, v7, 0x1a

    shl-int/lit8 v15, v8, 0x10

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 430
    add-int/lit8 v13, v2, 0x8

    ushr-int/lit8 v14, v8, 0x10

    shl-int/lit8 v15, v9, 0x1a

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 431
    add-int/lit8 v13, v2, 0x9

    shl-int/lit8 v14, v9, 0x4

    shr-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 432
    add-int/lit8 v13, v2, 0xa

    ushr-int/lit8 v14, v9, 0x1c

    shl-int/lit8 v15, v10, 0xe

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 433
    add-int/lit8 v13, v2, 0xb

    ushr-int/lit8 v14, v10, 0x12

    shl-int/lit8 v15, v11, 0x18

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 434
    add-int/lit8 v13, v2, 0xc

    shl-int/lit8 v14, v11, 0x2

    shr-int/lit8 v14, v14, 0xa

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 435
    add-int/lit8 v13, v2, 0xd

    ushr-int/lit8 v14, v11, 0x1e

    shl-int/lit8 v15, v12, 0xc

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 436
    add-int/lit8 v13, v2, 0xe

    ushr-int/lit8 v14, v12, 0x14

    shl-int/lit8 v15, v17, 0x16

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v14, v15

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 437
    add-int/lit8 v13, v2, 0xf

    shr-int/lit8 v14, v17, 0xa

    int-to-long v14, v14

    aput-wide v14, p1, v13

    .line 438
    nop

    .end local v3    # "s0":I
    .end local v4    # "s1":I
    .end local v5    # "s2":I
    .end local v6    # "s3":I
    .end local v7    # "s4":I
    .end local v8    # "s5":I
    .end local v9    # "s6":I
    .end local v10    # "s7":I
    .end local v11    # "s8":I
    .end local v12    # "s9":I
    .end local v17    # "s10":I
    add-int/lit8 v1, v1, 0xb

    .line 408
    add-int/lit8 v2, v2, 0x10

    goto/16 :goto_0

    .line 440
    .end local v2    # "i":I
    :cond_0
    move/from16 v2, p3

    add-int/lit16 v3, v2, 0x1600

    const/16 v5, 0x20

    move-object/from16 v6, p0

    invoke-static {v0, v3, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    return-void
.end method

.method static encodeC([I[S[BI)V
    .locals 16
    .param p0, "positionList"    # [I
    .param p1, "signList"    # [S
    .param p2, "output"    # [B
    .param p3, "outputOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "positionList",
            "signList",
            "output",
            "outputOffset"
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    .line 447
    .local v0, "count":I
    const/4 v4, 0x0

    .line 448
    .local v4, "domainSeparator":S
    const/16 v1, 0x800

    new-array v8, v1, [S

    .line 449
    .local v8, "C":[S
    const/16 v1, 0xa8

    new-array v1, v1, [B

    .line 452
    .local v1, "randomness":[B
    add-int/lit8 v2, v4, 0x1

    int-to-short v9, v2

    .end local v4    # "domainSeparator":S
    .local v9, "domainSeparator":S
    const/16 v7, 0x20

    const/4 v2, 0x0

    const/16 v3, 0xa8

    move-object/from16 v5, p2

    move/from16 v6, p3

    .restart local v4    # "domainSeparator":S
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    .line 459
    .end local v4    # "domainSeparator":S
    invoke-static {v8, v2}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    .line 464
    const/4 v2, 0x0

    move v12, v9

    .end local v9    # "domainSeparator":S
    .local v2, "i":I
    .local v12, "domainSeparator":S
    :goto_0
    const/16 v3, 0x28

    if-ge v2, v3, :cond_3

    .line 466
    const/16 v3, 0xa5

    if-le v0, v3, :cond_0

    .line 469
    add-int/lit8 v3, v12, 0x1

    int-to-short v3, v3

    .end local v12    # "domainSeparator":S
    .local v3, "domainSeparator":S
    const/16 v15, 0x20

    const/4 v10, 0x0

    const/16 v11, 0xa8

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object v9, v1

    .end local v1    # "randomness":[B
    .local v9, "randomness":[B
    .restart local v12    # "domainSeparator":S
    invoke-static/range {v9 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    .line 475
    .end local v9    # "randomness":[B
    .end local v12    # "domainSeparator":S
    .restart local v1    # "randomness":[B
    const/4 v0, 0x0

    move v12, v3

    .line 478
    .end local v3    # "domainSeparator":S
    .restart local v12    # "domainSeparator":S
    :cond_0
    aget-byte v3, v1, v0

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 479
    .local v3, "position":I
    and-int/lit16 v3, v3, 0x7ff

    .line 484
    aget-short v4, v8, v3

    if-nez v4, :cond_2

    .line 486
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 488
    const/4 v4, -0x1

    aput-short v4, v8, v3

    goto :goto_1

    .line 492
    :cond_1
    aput-short v5, v8, v3

    .line 495
    :goto_1
    aput v3, p0, v2

    .line 496
    aget-short v4, v8, v3

    aput-short v4, p1, v2

    .line 497
    add-int/lit8 v2, v2, 0x1

    .line 500
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 502
    .end local v2    # "i":I
    .end local v3    # "position":I
    :cond_3
    return-void
.end method

.method static encodePrivateKey([B[J[J[BI[B)V
    .locals 10
    .param p0, "privateKey"    # [B
    .param p1, "secretPolynomial"    # [J
    .param p2, "errorPolynomial"    # [J
    .param p3, "seed"    # [B
    .param p4, "seedOffset"    # I
    .param p5, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0
        }
        names = {
            "privateKey",
            "secretPolynomial",
            "errorPolynomial",
            "seed",
            "seedOffset",
            "publicKey"
        }
    .end annotation

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "k":I
    const/4 v1, 0x0

    .line 270
    .local v1, "skPtr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    .line 272
    add-int v3, v1, v2

    aget-wide v4, p1, v2

    long-to-int v5, v4

    int-to-byte v4, v5

    aput-byte v4, p0, v3

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    add-int/2addr v1, v3

    .line 276
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x5

    if-ge v0, v4, :cond_2

    .line 278
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    .line 280
    mul-int/lit16 v4, v0, 0x800

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit16 v5, v0, 0x800

    add-int/2addr v5, v2

    aget-wide v5, p2, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p0, v4

    .line 278
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 276
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 283
    :cond_2
    add-int/lit16 v1, v1, 0x2800

    .line 285
    const/16 v3, 0x40

    invoke-static {p3, p4, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    add-int/lit8 v5, v1, 0x40

    .line 289
    .end local v1    # "skPtr":I
    .local v5, "skPtr":I
    const/4 v8, 0x0

    const v9, 0x9600

    const/16 v6, 0x28

    move-object v4, p0

    move-object v7, p5

    .end local p0    # "privateKey":[B
    .end local p5    # "publicKey":[B
    .local v4, "privateKey":[B
    .local v7, "publicKey":[B
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 292
    add-int/lit8 v5, v5, 0x28

    .line 295
    return-void
.end method

.method static encodePublicKey([B[J[BI)V
    .locals 21
    .param p0, "publicKey"    # [B
    .param p1, "T"    # [J
    .param p2, "seedA"    # [B
    .param p3, "seedAOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x0
        }
        names = {
            "publicKey",
            "T",
            "seedA",
            "seedAOffset"
        }
    .end annotation

    .line 299
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 301
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x2580

    if-ge v2, v3, :cond_0

    .line 303
    aget-wide v3, p1, v1

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, p1, v5

    const/16 v7, 0x1e

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 304
    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p1, v3

    const/4 v5, 0x2

    shr-long/2addr v3, v5

    add-int/lit8 v6, v1, 0x2

    aget-wide v6, p1, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    or-long/2addr v3, v6

    long-to-int v4, v3

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 305
    add-int/lit8 v3, v1, 0x2

    aget-wide v3, p1, v3

    const/4 v6, 0x4

    shr-long/2addr v3, v6

    add-int/lit8 v7, v1, 0x3

    aget-wide v9, p1, v7

    const/16 v7, 0x1a

    shl-long/2addr v9, v7

    or-long/2addr v3, v9

    long-to-int v4, v3

    invoke-static {v0, v2, v5, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 306
    add-int/lit8 v3, v1, 0x3

    aget-wide v3, p1, v3

    const/4 v9, 0x6

    shr-long/2addr v3, v9

    add-int/lit8 v10, v1, 0x4

    aget-wide v10, p1, v10

    const/16 v12, 0x18

    shl-long/2addr v10, v12

    or-long/2addr v3, v10

    long-to-int v4, v3

    const/4 v3, 0x3

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 307
    add-int/lit8 v3, v1, 0x4

    aget-wide v3, p1, v3

    const/16 v10, 0x8

    shr-long/2addr v3, v10

    add-int/lit8 v11, v1, 0x5

    aget-wide v13, p1, v11

    const/16 v11, 0x16

    shl-long/2addr v13, v11

    or-long/2addr v3, v13

    long-to-int v4, v3

    invoke-static {v0, v2, v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 308
    add-int/lit8 v3, v1, 0x5

    aget-wide v3, p1, v3

    const/16 v13, 0xa

    shr-long/2addr v3, v13

    add-int/lit8 v14, v1, 0x6

    aget-wide v14, p1, v14

    const/16 v16, 0x14

    shl-long v14, v14, v16

    or-long/2addr v3, v14

    long-to-int v4, v3

    const/4 v3, 0x5

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 309
    add-int/lit8 v3, v1, 0x6

    aget-wide v3, p1, v3

    const/16 v14, 0xc

    shr-long/2addr v3, v14

    add-int/lit8 v15, v1, 0x7

    aget-wide v17, p1, v15

    const/16 v15, 0x12

    shl-long v17, v17, v15

    or-long v3, v3, v17

    long-to-int v4, v3

    invoke-static {v0, v2, v9, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 310
    add-int/lit8 v3, v1, 0x7

    aget-wide v3, p1, v3

    const/16 v17, 0x2

    const/16 v5, 0xe

    shr-long/2addr v3, v5

    add-int/lit8 v18, v1, 0x8

    aget-wide v18, p1, v18

    const/16 v20, 0x10

    shl-long v18, v18, v20

    or-long v3, v3, v18

    long-to-int v4, v3

    const/4 v3, 0x7

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 311
    add-int/lit8 v3, v1, 0x8

    aget-wide v3, p1, v3

    shr-long v3, v3, v20

    add-int/lit8 v18, v1, 0x9

    aget-wide v18, p1, v18

    shl-long v18, v18, v5

    or-long v3, v3, v18

    long-to-int v4, v3

    invoke-static {v0, v2, v10, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 312
    add-int/lit8 v3, v1, 0x9

    aget-wide v3, p1, v3

    shr-long/2addr v3, v15

    add-int/lit8 v15, v1, 0xa

    aget-wide v18, p1, v15

    shl-long v18, v18, v14

    or-long v3, v3, v18

    long-to-int v4, v3

    const/16 v3, 0x9

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 313
    add-int/lit8 v3, v1, 0xa

    aget-wide v3, p1, v3

    shr-long v3, v3, v16

    add-int/lit8 v15, v1, 0xb

    aget-wide v15, p1, v15

    shl-long/2addr v15, v13

    or-long/2addr v3, v15

    long-to-int v4, v3

    invoke-static {v0, v2, v13, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 314
    add-int/lit8 v3, v1, 0xb

    aget-wide v3, p1, v3

    shr-long/2addr v3, v11

    add-int/lit8 v11, v1, 0xc

    aget-wide v15, p1, v11

    shl-long v10, v15, v10

    or-long/2addr v3, v10

    long-to-int v4, v3

    const/16 v3, 0xb

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 315
    add-int/lit8 v3, v1, 0xc

    aget-wide v3, p1, v3

    shr-long/2addr v3, v12

    add-int/lit8 v10, v1, 0xd

    aget-wide v10, p1, v10

    shl-long v9, v10, v9

    or-long/2addr v3, v9

    long-to-int v4, v3

    invoke-static {v0, v2, v14, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 316
    add-int/lit8 v3, v1, 0xd

    aget-wide v3, p1, v3

    shr-long/2addr v3, v7

    add-int/lit8 v7, v1, 0xe

    aget-wide v9, p1, v7

    shl-long v6, v9, v6

    or-long/2addr v3, v6

    long-to-int v4, v3

    const/16 v3, 0xd

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 317
    add-int/lit8 v3, v1, 0xe

    aget-wide v3, p1, v3

    shr-long/2addr v3, v8

    add-int/lit8 v6, v1, 0xf

    aget-wide v6, p1, v6

    shl-long v6, v6, v17

    or-long/2addr v3, v6

    long-to-int v4, v3

    invoke-static {v0, v2, v5, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 318
    add-int/lit8 v1, v1, 0x10

    .line 301
    add-int/lit8 v2, v2, 0xf

    goto/16 :goto_0

    .line 321
    .end local v2    # "i":I
    :cond_0
    const v2, 0x9600

    const/16 v3, 0x20

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static {v4, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 323
    return-void
.end method

.method static encodeSignature([BI[BI[J)V
    .locals 19
    .param p0, "signature"    # [B
    .param p1, "signatureOffset"    # I
    .param p2, "C"    # [B
    .param p3, "cOffset"    # I
    .param p4, "Z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "signature",
            "signatureOffset",
            "C",
            "cOffset",
            "Z"
        }
    .end annotation

    .line 384
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 386
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x580

    if-ge v2, v3, :cond_0

    .line 388
    add-int/lit8 v3, v1, 0x0

    aget-wide v3, p4, v3

    const-wide/32 v5, 0x3fffff

    and-long/2addr v3, v5

    add-int/lit8 v7, v1, 0x1

    aget-wide v7, p4, v7

    const/16 v9, 0x16

    shl-long/2addr v7, v9

    or-long/2addr v3, v7

    long-to-int v4, v3

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 389
    add-int/lit8 v3, v1, 0x1

    aget-wide v3, p4, v3

    const/16 v7, 0xa

    ushr-long/2addr v3, v7

    const-wide/16 v8, 0xfff

    and-long/2addr v3, v8

    add-int/lit8 v8, v1, 0x2

    aget-wide v8, p4, v8

    const/16 v10, 0xc

    shl-long/2addr v8, v10

    or-long/2addr v3, v8

    long-to-int v4, v3

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 390
    add-int/lit8 v3, v1, 0x2

    aget-wide v3, p4, v3

    const/16 v8, 0x14

    ushr-long/2addr v3, v8

    const-wide/16 v11, 0x3

    and-long/2addr v3, v11

    add-int/lit8 v9, v1, 0x3

    aget-wide v11, p4, v9

    and-long/2addr v11, v5

    const/4 v9, 0x2

    shl-long/2addr v11, v9

    or-long/2addr v3, v11

    add-int/lit8 v11, v1, 0x4

    aget-wide v11, p4, v11

    const/16 v13, 0x18

    shl-long/2addr v11, v13

    or-long/2addr v3, v11

    long-to-int v4, v3

    invoke-static {v0, v2, v9, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 391
    add-int/lit8 v3, v1, 0x4

    aget-wide v3, p4, v3

    const/16 v11, 0x8

    ushr-long/2addr v3, v11

    const-wide/16 v12, 0x3fff

    and-long/2addr v3, v12

    add-int/lit8 v12, v1, 0x5

    aget-wide v12, p4, v12

    const/16 v14, 0xe

    shl-long/2addr v12, v14

    or-long/2addr v3, v12

    long-to-int v4, v3

    const/4 v3, 0x3

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 392
    add-int/lit8 v3, v1, 0x5

    aget-wide v3, p4, v3

    const/16 v12, 0x12

    ushr-long/2addr v3, v12

    const-wide/16 v15, 0xf

    and-long/2addr v3, v15

    add-int/lit8 v13, v1, 0x6

    aget-wide v15, p4, v13

    and-long/2addr v15, v5

    const/4 v13, 0x4

    shl-long/2addr v15, v13

    or-long/2addr v3, v15

    add-int/lit8 v15, v1, 0x7

    aget-wide v15, p4, v15

    const/16 v17, 0x1a

    shl-long v15, v15, v17

    or-long/2addr v3, v15

    long-to-int v4, v3

    invoke-static {v0, v2, v13, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 393
    add-int/lit8 v3, v1, 0x7

    aget-wide v3, p4, v3

    const/4 v15, 0x6

    ushr-long/2addr v3, v15

    const-wide/32 v16, 0xffff

    and-long v3, v3, v16

    add-int/lit8 v16, v1, 0x8

    aget-wide v16, p4, v16

    const/16 v18, 0x10

    shl-long v16, v16, v18

    or-long v3, v3, v16

    long-to-int v4, v3

    const/4 v3, 0x5

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 394
    add-int/lit8 v3, v1, 0x8

    aget-wide v3, p4, v3

    ushr-long v3, v3, v18

    const-wide/16 v16, 0x3f

    and-long v3, v3, v16

    add-int/lit8 v16, v1, 0x9

    aget-wide v16, p4, v16

    and-long v16, v16, v5

    shl-long v16, v16, v15

    or-long v3, v3, v16

    add-int/lit8 v16, v1, 0xa

    aget-wide v16, p4, v16

    const/16 v18, 0x1c

    shl-long v16, v16, v18

    or-long v3, v3, v16

    long-to-int v4, v3

    invoke-static {v0, v2, v15, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 395
    add-int/lit8 v3, v1, 0xa

    aget-wide v3, p4, v3

    ushr-long/2addr v3, v13

    const-wide/32 v15, 0x3ffff

    and-long/2addr v3, v15

    add-int/lit8 v13, v1, 0xb

    aget-wide v15, p4, v13

    shl-long v12, v15, v12

    or-long/2addr v3, v12

    long-to-int v4, v3

    const/4 v3, 0x7

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 396
    add-int/lit8 v3, v1, 0xb

    aget-wide v3, p4, v3

    ushr-long/2addr v3, v14

    const-wide/16 v12, 0xff

    and-long/2addr v3, v12

    add-int/lit8 v12, v1, 0xc

    aget-wide v12, p4, v12

    and-long/2addr v5, v12

    shl-long/2addr v5, v11

    or-long/2addr v3, v5

    add-int/lit8 v5, v1, 0xd

    aget-wide v5, p4, v5

    const/16 v12, 0x1e

    shl-long/2addr v5, v12

    or-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v0, v2, v11, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 397
    add-int/lit8 v3, v1, 0xd

    aget-wide v3, p4, v3

    ushr-long/2addr v3, v9

    const-wide/32 v5, 0xfffff

    and-long/2addr v3, v5

    add-int/lit8 v5, v1, 0xe

    aget-wide v5, p4, v5

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    long-to-int v4, v3

    const/16 v3, 0x9

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 398
    add-int/lit8 v3, v1, 0xe

    aget-wide v3, p4, v3

    ushr-long/2addr v3, v10

    const-wide/16 v5, 0x3ff

    and-long/2addr v3, v5

    add-int/lit8 v5, v1, 0xf

    aget-wide v5, p4, v5

    shl-long/2addr v5, v7

    or-long/2addr v3, v5

    long-to-int v4, v3

    invoke-static {v0, v2, v7, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    .line 399
    add-int/lit8 v1, v1, 0x10

    .line 386
    add-int/lit8 v2, v2, 0xb

    goto/16 :goto_0

    .line 402
    .end local v2    # "i":I
    :cond_0
    move/from16 v2, p1

    add-int/lit16 v3, v2, 0x1600

    const/16 v4, 0x20

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 403
    return-void
.end method

.method static generateKeyPair([B[BLjava/security/SecureRandom;)I
    .locals 16
    .param p0, "publicKey"    # [B
    .param p1, "privateKey"    # [B
    .param p2, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "privateKey",
            "secureRandom"
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    .line 53
    .local v0, "nonce":I
    const/16 v1, 0x20

    new-array v5, v1, [B

    .line 56
    .local v5, "randomness":[B
    const/16 v1, 0x100

    new-array v2, v1, [B

    .line 58
    .local v2, "randomnessExtended":[B
    const/16 v1, 0x800

    new-array v8, v1, [J

    .line 59
    .local v8, "secretPolynomial":[J
    const/16 v3, 0x2800

    new-array v13, v3, [J

    .line 60
    .local v13, "errorPolynomial":[J
    new-array v15, v3, [J

    .line 61
    .local v15, "A":[J
    new-array v9, v3, [J

    .line 63
    .local v9, "T":[J
    new-array v1, v1, [J

    .line 66
    .local v1, "s_ntt":[J
    move-object/from16 v10, p2

    invoke-virtual {v10, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 68
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v3, 0x0

    const/16 v4, 0x100

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 78
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/16 v4, 0x385

    const/4 v6, 0x5

    if-ge v3, v6, :cond_1

    .line 82
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v6, v3, 0x20

    mul-int/lit16 v7, v3, 0x800

    invoke-static {v0, v2, v6, v13, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;->sample_gauss_poly(I[BI[JI)V

    .line 84
    mul-int/lit16 v6, v3, 0x800

    invoke-static {v13, v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->checkPolynomial([JII)Z

    move-result v6

    if-nez v6, :cond_0

    .line 78
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v3    # "k":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0xa0

    const/4 v7, 0x0

    invoke-static {v0, v2, v3, v8, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;->sample_gauss_poly(I[BI[JI)V

    .line 96
    invoke-static {v8, v7, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->checkPolynomial([JII)Z

    move-result v3

    if-nez v3, :cond_3

    .line 98
    const/16 v3, 0xc0

    invoke-static {v15, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    .line 99
    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    .line 101
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v6, :cond_2

    .line 103
    mul-int/lit16 v11, v4, 0x800

    mul-int/lit16 v12, v4, 0x800

    invoke-static {v9, v11, v15, v12, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    .line 104
    mul-int/lit16 v10, v4, 0x800

    mul-int/lit16 v12, v4, 0x800

    mul-int/lit16 v14, v4, 0x800

    move-object v11, v9

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_add_correct([JI[JI[JI)V

    .line 101
    move-object v12, v9

    .end local v9    # "T":[J
    .local v12, "T":[J
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    goto :goto_2

    .end local v12    # "T":[J
    .restart local v9    # "T":[J
    :cond_2
    move-object v12, v9

    .line 108
    .end local v4    # "k":I
    .end local v9    # "T":[J
    .restart local v12    # "T":[J
    move-object/from16 v11, p0

    invoke-static {v11, v12, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodePublicKey([B[J[BI)V

    .line 109
    const/16 v10, 0xc0

    move-object/from16 v6, p1

    move-object v9, v2

    move-object v7, v8

    move-object v8, v13

    const/4 v2, 0x0

    .end local v2    # "randomnessExtended":[B
    .end local v13    # "errorPolynomial":[J
    .local v7, "secretPolynomial":[J
    .local v8, "errorPolynomial":[J
    .local v9, "randomnessExtended":[B
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodePrivateKey([B[J[J[BI[B)V

    .line 111
    .end local v8    # "errorPolynomial":[J
    .restart local v13    # "errorPolynomial":[J
    return v2

    .line 96
    .end local v7    # "secretPolynomial":[J
    .end local v12    # "T":[J
    .restart local v2    # "randomnessExtended":[B
    .local v8, "secretPolynomial":[J
    .local v9, "T":[J
    :cond_3
    move-object v7, v8

    move-object v12, v9

    move-object v9, v2

    .end local v2    # "randomnessExtended":[B
    .end local v8    # "secretPolynomial":[J
    .restart local v7    # "secretPolynomial":[J
    .local v9, "randomnessExtended":[B
    .restart local v12    # "T":[J
    move-object/from16 v10, p2

    move-object v9, v12

    goto :goto_1
.end method

.method static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .locals 26
    .param p0, "signature"    # [B
    .param p1, "message"    # [B
    .param p2, "messageOffset"    # I
    .param p3, "messageLength"    # I
    .param p4, "privateKey"    # [B
    .param p5, "secureRandom"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x10,
            0x0
        }
        names = {
            "signature",
            "message",
            "messageOffset",
            "messageLength",
            "privateKey",
            "secureRandom"
        }
    .end annotation

    .line 119
    move-object/from16 v2, p4

    const/16 v0, 0x20

    new-array v6, v0, [B

    .line 120
    .local v6, "c":[B
    new-array v7, v0, [B

    .line 121
    .local v7, "randomness":[B
    const/16 v1, 0x90

    new-array v10, v1, [B

    .line 122
    .local v10, "randomness_input":[B
    const/16 v1, 0x28

    new-array v4, v1, [I

    .line 123
    .local v4, "pos_list":[I
    new-array v5, v1, [S

    .line 124
    .local v5, "sign_list":[S
    const/16 v14, 0x800

    new-array v15, v14, [J

    .line 126
    .local v15, "y":[J
    new-array v3, v14, [J

    .line 127
    .local v3, "y_ntt":[J
    new-array v8, v14, [J

    .line 128
    .local v8, "Sc":[J
    new-array v9, v14, [J

    .line 130
    .local v9, "z":[J
    const/16 v11, 0x2800

    new-array v12, v11, [J

    .line 131
    .local v12, "v":[J
    new-array v13, v11, [J

    .line 132
    .local v13, "Ec":[J
    new-array v11, v11, [J

    .line 135
    .local v11, "a":[J
    const/16 v16, 0x0

    .line 136
    .local v16, "nonce":I
    const/16 v17, 0x0

    .line 138
    .local v17, "rsp":Z
    const/16 v14, 0x3020

    const/16 v18, 0x28

    const/4 v1, 0x0

    invoke-static {v2, v14, v10, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-array v14, v0, [B

    .line 142
    .local v14, "tmp":[B
    move-object/from16 v19, v9

    move-object/from16 v9, p5

    .end local v9    # "z":[J
    .local v19, "z":[J
    invoke-virtual {v9, v14}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 143
    invoke-static {v14, v1, v10, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .end local v14    # "tmp":[B
    move-object v0, v8

    move-object v8, v10

    .end local v10    # "randomness_input":[B
    .local v0, "Sc":[J
    .local v8, "randomness_input":[B
    const/16 v10, 0x28

    move-object v14, v12

    .end local v12    # "v":[J
    .local v14, "v":[J
    const/4 v12, 0x0

    const/16 v9, 0x40

    move-object v1, v11

    move-object/from16 v20, v13

    move-object/from16 v22, v14

    move-object/from16 v11, p1

    move/from16 v13, p3

    move-object v14, v0

    move-object/from16 v0, v19

    .end local v11    # "a":[J
    .end local v13    # "Ec":[J
    .end local v19    # "z":[J
    .local v0, "z":[J
    .local v1, "a":[J
    .local v14, "Sc":[J
    .local v20, "Ec":[J
    .local v22, "v":[J
    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 150
    array-length v9, v8

    add-int/lit8 v12, v9, -0x28

    move-object v10, v8

    .end local v8    # "randomness_input":[B
    .restart local v10    # "randomness_input":[B
    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 154
    move-object v8, v10

    .end local v10    # "randomness_input":[B
    .restart local v8    # "randomness_input":[B
    array-length v9, v8

    add-int/lit8 v9, v9, -0x28

    const/16 v10, 0x3040

    const/16 v11, 0x28

    invoke-static {v2, v10, v8, v9, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    const/16 v9, 0x3000

    invoke-static {v1, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    .line 160
    :goto_0
    add-int/lit8 v9, v16, 0x1

    const/4 v10, 0x0

    .end local v16    # "nonce":I
    .local v9, "nonce":I
    invoke-static {v15, v7, v10, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->sample_y([J[BII)V

    .line 162
    invoke-static {v3, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    .line 163
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    const/4 v11, 0x5

    if-ge v10, v11, :cond_0

    .line 165
    mul-int/lit16 v11, v10, 0x800

    mul-int/lit16 v12, v10, 0x800

    move-object/from16 v13, v22

    .end local v22    # "v":[J
    .local v13, "v":[J
    invoke-static {v13, v11, v1, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    .line 163
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 168
    .end local v13    # "v":[J
    .restart local v22    # "v":[J
    :cond_0
    move-object/from16 v13, v22

    .end local v22    # "v":[J
    .restart local v13    # "v":[J
    const/16 v12, 0x40

    const/4 v11, 0x0

    invoke-static {v6, v11, v13, v8, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->hashFunction([BI[J[BI)V

    .line 169
    invoke-static {v4, v5, v6, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeC([I[S[BI)V

    .line 171
    invoke-static {v14, v2, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul8([J[B[I[S)V

    .line 173
    invoke-static {v0, v15, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_add([J[J[J)V

    .line 175
    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->testRejection([J)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 177
    move/from16 v16, v9

    move-object/from16 v22, v13

    goto :goto_0

    .line 180
    :cond_1
    const/4 v10, 0x0

    move/from16 v12, v17

    .end local v17    # "rsp":Z
    .local v12, "rsp":Z
    :goto_2
    const/4 v11, 0x5

    if-ge v10, v11, :cond_3

    .line 182
    move-object/from16 v16, v1

    .end local v1    # "a":[J
    .local v16, "a":[J
    mul-int/lit16 v1, v10, 0x800

    add-int/lit8 v11, v10, 0x1

    move-object/from16 v23, v7

    const/16 v7, 0x800

    .end local v7    # "randomness":[B
    .local v23, "randomness":[B
    mul-int/lit16 v11, v11, 0x800

    move v7, v11

    move-object v11, v3

    move v3, v7

    move-object v7, v0

    move-object/from16 v25, v8

    move-object/from16 v24, v16

    move-object/from16 v0, v20

    const/4 v8, 0x0

    .end local v3    # "y_ntt":[J
    .end local v8    # "randomness_input":[B
    .end local v16    # "a":[J
    .end local v20    # "Ec":[J
    .local v0, "Ec":[J
    .local v7, "z":[J
    .local v11, "y_ntt":[J
    .local v24, "a":[J
    .local v25, "randomness_input":[B
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul8([JI[BI[I[S)V

    .line 183
    .end local v0    # "Ec":[J
    .restart local v20    # "Ec":[J
    mul-int/lit16 v0, v10, 0x800

    mul-int/lit16 v1, v10, 0x800

    mul-int/lit16 v2, v10, 0x800

    move-object/from16 v18, v13

    move/from16 v17, v0

    move/from16 v19, v1

    move/from16 v21, v2

    move-object/from16 v16, v13

    .end local v13    # "v":[J
    .local v16, "v":[J
    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_sub([JI[JI[JI)V

    .line 184
    .end local v16    # "v":[J
    .restart local v13    # "v":[J
    mul-int/lit16 v0, v10, 0x800

    invoke-static {v13, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->test_correctness([JI)Z

    move-result v12

    .line 185
    if-eqz v12, :cond_2

    .line 187
    move/from16 v17, v12

    goto :goto_3

    .line 180
    :cond_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p4

    move-object v0, v7

    move-object v3, v11

    move-object/from16 v7, v23

    move-object/from16 v1, v24

    move-object/from16 v8, v25

    const/4 v11, 0x0

    goto :goto_2

    .end local v11    # "y_ntt":[J
    .end local v23    # "randomness":[B
    .end local v24    # "a":[J
    .end local v25    # "randomness_input":[B
    .local v0, "z":[J
    .restart local v1    # "a":[J
    .restart local v3    # "y_ntt":[J
    .local v7, "randomness":[B
    .restart local v8    # "randomness_input":[B
    :cond_3
    move-object/from16 v24, v1

    move-object v11, v3

    move-object/from16 v23, v7

    move-object/from16 v25, v8

    const/4 v8, 0x0

    move-object v7, v0

    .end local v0    # "z":[J
    .end local v1    # "a":[J
    .end local v3    # "y_ntt":[J
    .end local v8    # "randomness_input":[B
    .local v7, "z":[J
    .restart local v11    # "y_ntt":[J
    .restart local v23    # "randomness":[B
    .restart local v24    # "a":[J
    .restart local v25    # "randomness_input":[B
    move/from16 v17, v12

    .line 190
    .end local v12    # "rsp":Z
    .restart local v17    # "rsp":Z
    :goto_3
    if-eqz v17, :cond_4

    .line 192
    move-object/from16 v2, p4

    move-object v0, v7

    move/from16 v16, v9

    move-object v3, v11

    move-object/from16 v22, v13

    move-object/from16 v7, v23

    move-object/from16 v1, v24

    move-object/from16 v8, v25

    goto/16 :goto_0

    .line 195
    :cond_4
    move-object/from16 v0, p0

    invoke-static {v0, v8, v6, v8, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeSignature([BI[BI[J)V

    .line 196
    return v8
.end method

.method private static hashFunction([BI[J[BI)V
    .locals 9
    .param p0, "output"    # [B
    .param p1, "outputOff"    # I
    .param p2, "v"    # [J
    .param p3, "hm"    # [B
    .param p4, "hmOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "outputOff",
            "v",
            "hm",
            "hmOff"
        }
    .end annotation

    .line 508
    const/16 v0, 0x2850

    new-array v4, v0, [B

    .line 510
    .local v4, "T":[B
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 512
    mul-int/lit16 v1, v0, 0x800

    .line 513
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    .line 515
    aget-wide v5, p2, v1

    long-to-int v3, v5

    .line 517
    .local v3, "temp":I
    const v5, 0x1983e000

    sub-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x1f

    .line 518
    .local v5, "mask":I
    const v6, 0x3307c001

    sub-int v6, v3, v6

    and-int/2addr v6, v5

    not-int v7, v5

    and-int/2addr v7, v3

    or-int v3, v6, v7

    .line 520
    const v6, 0xffffff

    and-int/2addr v6, v3

    .line 522
    .local v6, "cL":I
    const/high16 v7, 0x800000

    sub-int/2addr v7, v6

    shr-int/lit8 v5, v7, 0x1f

    .line 523
    const/high16 v7, 0x1000000

    sub-int v7, v6, v7

    and-int/2addr v7, v5

    not-int v8, v5

    and-int/2addr v8, v6

    or-int v6, v7, v8

    .line 524
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    sub-int v8, v3, v6

    shr-int/lit8 v8, v8, 0x18

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    .line 513
    .end local v3    # "temp":I
    add-int/lit8 v2, v2, 0x1

    move v1, v7

    goto :goto_1

    .line 510
    .end local v2    # "i":I
    .end local v5    # "mask":I
    .end local v6    # "cL":I
    .end local v7    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 527
    .end local v0    # "k":I
    :cond_1
    const/16 v0, 0x2800

    const/16 v1, 0x50

    invoke-static {p3, p4, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    const/4 v5, 0x0

    array-length v6, v4

    const/16 v3, 0x20

    move-object v1, p0

    move v2, p1

    .end local p0    # "output":[B
    .end local p1    # "outputOff":I
    .local v1, "output":[B
    .local v2, "outputOff":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 532
    return-void
.end method

.method static lE24BitToInt([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 536
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 537
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 538
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 539
    return v0
.end method

.method static memoryEqual([BI[BII)Z
    .locals 4
    .param p0, "left"    # [B
    .param p1, "leftOffset"    # I
    .param p2, "right"    # [B
    .param p3, "rightOffset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "left",
            "leftOffset",
            "right",
            "rightOffset",
            "length"
        }
    .end annotation

    .line 851
    add-int v0, p1, p4

    array-length v1, p0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 854
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 857
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_0

    .line 860
    return v2

    .line 854
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 866
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 872
    :cond_2
    return v2
.end method

.method static sample_y([J[BII)V
    .locals 13
    .param p0, "y"    # [J
    .param p1, "seed"    # [B
    .param p2, "seedOffset"    # I
    .param p3, "nonce"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "y",
            "seed",
            "seedOffset",
            "nonce"
        }
    .end annotation

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "pos":I
    const/16 v2, 0x800

    .line 550
    .local v2, "nblocks":I
    sget v3, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    const/16 v4, 0x800

    mul-int/lit16 v3, v3, 0x800

    add-int/lit8 v3, v3, 0x1

    new-array v5, v3, [B

    .line 551
    .local v5, "buf":[B
    sget v3, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    .line 552
    .local v3, "nbytes":I
    shl-int/lit8 v6, p3, 0x8

    int-to-short v8, v6

    .line 554
    .local v8, "dmsp":S
    mul-int/lit16 v7, v3, 0x800

    add-int/lit8 v6, v8, 0x1

    int-to-short v12, v6

    .end local v8    # "dmsp":S
    .local v12, "dmsp":S
    const/16 v11, 0x20

    const/4 v6, 0x0

    move-object v9, p1

    move v10, p2

    .restart local v8    # "dmsp":S
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK256Simple([BIIS[BII)V

    move v8, v12

    .line 559
    .end local v12    # "dmsp":S
    :goto_0
    if-ge v0, v4, :cond_2

    .line 561
    mul-int v6, v2, v3

    if-lt v1, v6, :cond_0

    .line 563
    sget v2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->NBLOCKS_SHAKE:I

    .line 564
    mul-int/lit16 v7, v3, 0x800

    add-int/lit8 v6, v8, 0x1

    int-to-short v12, v6

    .end local v8    # "dmsp":S
    .restart local v12    # "dmsp":S
    const/16 v11, 0x20

    const/4 v6, 0x0

    move-object v9, p1

    move v10, p2

    .restart local v8    # "dmsp":S
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK256Simple([BIIS[BII)V

    .line 567
    .end local v8    # "dmsp":S
    const/4 v1, 0x0

    move v8, v12

    .line 569
    .end local v12    # "dmsp":S
    .restart local v8    # "dmsp":S
    :cond_0
    invoke-static {v5, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->lE24BitToInt([BI)I

    move-result v6

    const v7, 0x3fffff

    and-int/2addr v6, v7

    int-to-long v6, v6

    aput-wide v6, p0, v0

    .line 570
    aget-wide v6, p0, v0

    const-wide/32 v9, 0x1fffff

    sub-long/2addr v6, v9

    aput-wide v6, p0, v0

    .line 571
    aget-wide v6, p0, v0

    const-wide/32 v9, 0x200000

    cmp-long v11, v6, v9

    if-eqz v11, :cond_1

    .line 573
    add-int/lit8 v0, v0, 0x1

    .line 575
    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 577
    :cond_2
    return-void
.end method

.method private static testRejection([J)Z
    .locals 8
    .param p0, "Z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Z"
        }
    .end annotation

    .line 630
    const/4 v0, 0x0

    .line 632
    .local v0, "valid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x800

    if-ge v1, v2, :cond_0

    .line 634
    int-to-long v2, v0

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(J)J

    move-result-wide v4

    const-wide/32 v6, 0x1ffc7a

    sub-long/2addr v6, v4

    or-long/2addr v2, v6

    long-to-int v0, v2

    .line 632
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1f

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static testZ([J)Z
    .locals 6
    .param p0, "Z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Z"
        }
    .end annotation

    .line 364
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_2

    .line 367
    aget-wide v1, p0, v0

    const-wide/32 v3, -0x1ffc7a

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    aget-wide v1, p0, v0

    const-wide/32 v3, 0x1ffc7a

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_1

    .line 364
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 370
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 376
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static test_correctness([JI)Z
    .locals 8
    .param p0, "v"    # [J
    .param p1, "vpos"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "vpos"
        }
    .end annotation

    .line 604
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    .line 607
    add-int v1, p1, v0

    aget-wide v1, p0, v1

    const-wide/32 v3, 0x1983e000

    sub-long/2addr v3, v1

    long-to-int v1, v3

    shr-int/lit8 v1, v1, 0x1f

    .line 608
    .local v1, "mask":I
    add-int v2, p1, v0

    aget-wide v2, p0, v2

    const-wide/32 v4, 0x3307c001

    sub-long/2addr v2, v4

    int-to-long v4, v1

    and-long/2addr v2, v4

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    not-int v6, v1

    int-to-long v6, v6

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    long-to-int v3, v2

    .line 610
    .local v3, "val":I
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v2

    const v4, 0x1983dc7b

    sub-int/2addr v2, v4

    not-int v2, v2

    ushr-int/lit8 v2, v2, 0x1f

    .line 612
    .local v2, "t0":I
    move v4, v3

    .line 613
    .local v4, "left":I
    const/high16 v5, 0x800000

    add-int/2addr v5, v3

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x18

    .line 614
    shl-int/lit8 v5, v3, 0x18

    sub-int v3, v4, v5

    .line 616
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v5

    const v7, 0x7ffc7b

    sub-int/2addr v5, v7

    not-int v5, v5

    ushr-int/lit8 v5, v5, 0x1f

    .line 618
    .local v5, "t1":I
    or-int v7, v2, v5

    if-ne v7, v6, :cond_0

    .line 620
    return v6

    .line 604
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    .end local v0    # "i":I
    .end local v1    # "mask":I
    .end local v2    # "t0":I
    .end local v3    # "val":I
    .end local v4    # "left":I
    .end local v5    # "t1":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static verifying([B[BII[B)I
    .locals 22
    .param p0, "message"    # [B
    .param p1, "signature"    # [B
    .param p2, "signatureOffset"    # I
    .param p3, "signatureLength"    # I
    .param p4, "publicKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "message",
            "signature",
            "signatureOffset",
            "signatureLength",
            "publicKey"
        }
    .end annotation

    .line 207
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 208
    .local v1, "c":[B
    new-array v2, v0, [B

    .line 209
    .local v2, "c_sig":[B
    new-array v3, v0, [B

    .line 210
    .local v3, "seed":[B
    const/16 v4, 0x50

    new-array v5, v4, [B

    .line 211
    .local v5, "hm":[B
    const/16 v4, 0x28

    new-array v11, v4, [I

    .line 212
    .local v11, "pos_list":[I
    new-array v4, v4, [S

    .line 213
    .local v4, "sign_list":[S
    const/16 v6, 0x2800

    new-array v12, v6, [I

    .line 214
    .local v12, "pk_t":[I
    new-array v13, v6, [J

    .line 215
    .local v13, "w":[J
    new-array v14, v6, [J

    .line 216
    .local v14, "a":[J
    new-array v15, v6, [J

    .line 218
    .local v15, "Tc":[J
    const/16 v6, 0x800

    new-array v7, v6, [J

    .line 219
    .local v7, "z":[J
    new-array v6, v6, [J

    .line 221
    .local v6, "z_ntt":[J
    const/16 v16, 0x0

    .line 223
    .local v16, "k":I
    const/16 v8, 0x1620

    move/from16 v9, p3

    if-eq v9, v8, :cond_0

    .line 225
    const/4 v0, -0x1

    return v0

    .line 228
    :cond_0
    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-static {v1, v7, v8, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->decodeSignature([B[J[BI)V

    .line 229
    invoke-static {v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->testZ([J)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 231
    const/4 v0, -0x2

    return v0

    .line 233
    :cond_1
    const/4 v0, 0x0

    move-object/from16 v17, v6

    move-object/from16 v6, p4

    .end local v6    # "z_ntt":[J
    .local v17, "z_ntt":[J
    invoke-static {v12, v3, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->decodePublicKey([I[BI[B)V

    .line 236
    move-object/from16 v9, p0

    array-length v10, v9

    const/4 v6, 0x0

    move-object/from16 v19, v7

    .end local v7    # "z":[J
    .local v19, "z":[J
    const/16 v7, 0x28

    move-object v8, v9

    move-object/from16 v21, v17

    move-object/from16 v20, v19

    const/4 v9, 0x0

    .end local v17    # "z_ntt":[J
    .end local v19    # "z":[J
    .local v20, "z":[J
    .local v21, "z_ntt":[J
    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 239
    const/4 v9, 0x0

    const v10, 0x9600

    const/16 v6, 0x28

    move-object/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    .line 243
    invoke-static {v14, v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    .line 244
    invoke-static {v11, v4, v1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeC([I[S[BI)V

    .line 245
    move-object/from16 v6, v20

    move-object/from16 v7, v21

    .end local v20    # "z":[J
    .end local v21    # "z_ntt":[J
    .local v6, "z":[J
    .local v7, "z_ntt":[J
    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    .line 247
    const/4 v8, 0x0

    .end local v16    # "k":I
    .local v8, "k":I
    :goto_0
    const/4 v9, 0x5

    if-ge v8, v9, :cond_2

    .line 249
    move-object/from16 v17, v7

    .end local v7    # "z_ntt":[J
    .restart local v17    # "z_ntt":[J
    mul-int/lit16 v7, v8, 0x800

    mul-int/lit16 v9, v8, 0x800

    move-object v10, v12

    move v12, v8

    move-object v8, v10

    move-object/from16 v19, v6

    move-object v10, v11

    move-object v6, v15

    move-object v11, v4

    move-object/from16 v4, v17

    .end local v15    # "Tc":[J
    .end local v17    # "z_ntt":[J
    .local v4, "z_ntt":[J
    .local v6, "Tc":[J
    .local v8, "pk_t":[I
    .local v10, "pos_list":[I
    .local v11, "sign_list":[S
    .local v12, "k":I
    .restart local v19    # "z":[J
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul32([JI[II[I[S)V

    .line 250
    move-object/from16 v17, v6

    .end local v6    # "Tc":[J
    .local v17, "Tc":[J
    mul-int/lit16 v6, v12, 0x800

    mul-int/lit16 v7, v12, 0x800

    invoke-static {v13, v6, v14, v7, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    .line 251
    move-object v6, v14

    .end local v14    # "a":[J
    .local v6, "a":[J
    mul-int/lit16 v14, v12, 0x800

    mul-int/lit16 v7, v12, 0x800

    mul-int/lit16 v9, v12, 0x800

    move-object v15, v13

    move/from16 v16, v7

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_sub([JI[JI[JI)V

    .line 247
    add-int/lit8 v7, v12, 0x1

    move-object v14, v6

    move-object v12, v8

    move-object/from16 v15, v17

    move-object/from16 v6, v19

    move v8, v7

    move-object v7, v4

    move-object v4, v11

    move-object v11, v10

    .end local v12    # "k":I
    .local v7, "k":I
    goto :goto_0

    .line 254
    .end local v10    # "pos_list":[I
    .end local v17    # "Tc":[J
    .end local v19    # "z":[J
    .local v4, "sign_list":[S
    .local v6, "z":[J
    .local v7, "z_ntt":[J
    .local v8, "k":I
    .local v11, "pos_list":[I
    .local v12, "pk_t":[I
    .restart local v14    # "a":[J
    .restart local v15    # "Tc":[J
    :cond_2
    move-object v10, v12

    move v12, v8

    move-object v8, v10

    move-object/from16 v19, v6

    move-object v10, v11

    move-object v6, v14

    move-object/from16 v17, v15

    move-object v11, v4

    move-object v4, v7

    .end local v7    # "z_ntt":[J
    .end local v14    # "a":[J
    .end local v15    # "Tc":[J
    .local v4, "z_ntt":[J
    .local v6, "a":[J
    .local v8, "pk_t":[I
    .restart local v10    # "pos_list":[I
    .local v11, "sign_list":[S
    .local v12, "k":I
    .restart local v17    # "Tc":[J
    .restart local v19    # "z":[J
    invoke-static {v2, v0, v13, v5, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->hashFunction([BI[J[BI)V

    .line 256
    const/16 v7, 0x20

    invoke-static {v1, v0, v2, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->memoryEqual([BI[BII)Z

    move-result v7

    if-nez v7, :cond_3

    .line 258
    const/4 v0, -0x3

    return v0

    .line 261
    :cond_3
    return v0
.end method

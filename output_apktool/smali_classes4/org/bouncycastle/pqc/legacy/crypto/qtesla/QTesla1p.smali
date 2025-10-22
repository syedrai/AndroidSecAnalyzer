.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;
.super Ljava/lang/Object;
.source "QTesla1p.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;,
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x0

.field static final CRYPTO_BYTES:I = 0xa20

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x3a20

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x1468

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x0

.field private static final PARAM_B:I = 0x7ffff

.field private static final PARAM_BARR_DIV:I = 0x1e

.field private static final PARAM_BARR_MULT:I = 0x3

.field private static final PARAM_B_BITS:I = 0x13

.field private static final PARAM_D:I = 0x16

.field private static final PARAM_E:I = 0x22a

.field private static final PARAM_GEN_A:I = 0x6c

.field private static final PARAM_H:I = 0x19

.field private static final PARAM_K:I = 0x4

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x22a

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x22a

.field private static final PARAM_N:I = 0x400

.field private static final PARAM_Q:I = 0x147a9001

.field private static final PARAM_QINV:J = 0x837a8fffL

.field private static final PARAM_Q_LOG:I = 0x1d

.field private static final PARAM_R2_INVN:I = 0xd00399

.field private static final PARAM_S:I = 0x22a

.field private static final PARAM_S_BITS:I = 0x8

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0xfffff


# direct methods
.method static bridge synthetic -$$Nest$smat([BII)I
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 564
    const/16 v0, 0x38

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    .line 565
    const/4 v0, 0x3

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

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

    .line 652
    shr-int/lit8 v0, p0, 0x1f

    .line 653
    .local v0, "sign":I
    xor-int v1, v0, p0

    sub-int/2addr v1, v0

    return v1
.end method

.method private static at([BII)I
    .locals 1
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

    .line 605
    add-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method private static at([BIII)V
    .locals 1
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

    .line 600
    add-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p3, p0, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 601
    return-void
.end method

.method private static checkPolynomial([III)Z
    .locals 12
    .param p0, "polynomial"    # [I
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

    .line 658
    const/4 v0, 0x0

    .local v0, "sum":I
    const/16 v1, 0x400

    .line 660
    .local v1, "limit":I
    const/16 v2, 0x400

    new-array v3, v2, [I

    .line 662
    .local v3, "list":[I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 664
    add-int v5, p1, v4

    aget v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v5

    aput v5, v3, v4

    .line 662
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 667
    :cond_0
    const/4 v2, 0x0

    .end local v4    # "j":I
    .local v2, "j":I
    :goto_1
    const/16 v4, 0x19

    if-ge v2, v4, :cond_2

    .line 669
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_1

    .line 671
    aget v5, v3, v4

    .local v5, "a":I
    add-int/lit8 v6, v4, 0x1

    aget v6, v3, v6

    .line 673
    .local v6, "b":I
    sub-int v7, v6, v5

    shr-int/lit8 v7, v7, 0x1f

    .line 674
    .local v7, "mask":I
    and-int v8, v6, v7

    not-int v9, v7

    and-int/2addr v9, v5

    or-int/2addr v8, v9

    .line 675
    .local v8, "temp":I
    add-int/lit8 v9, v4, 0x1

    and-int v10, v5, v7

    not-int v11, v7

    and-int/2addr v11, v6

    or-int/2addr v10, v11

    aput v10, v3, v9

    .line 676
    aput v8, v3, v4

    .line 669
    .end local v5    # "a":I
    .end local v6    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 678
    .end local v7    # "mask":I
    .end local v8    # "temp":I
    :cond_1
    add-int/lit8 v5, v1, -0x1

    aget v5, v3, v5

    add-int/2addr v0, v5

    .line 679
    add-int/lit8 v1, v1, -0x1

    .line 667
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 682
    .end local v4    # "i":I
    :cond_2
    if-le v0, p2, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    return v4
.end method

.method static decodePublicKey([I[BI[B)V
    .locals 29
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

    .line 336
    const/4 v0, 0x0

    .line 337
    .local v0, "j":I
    move-object/from16 v1, p3

    .line 338
    .local v1, "pt":[B
    const v2, 0x1fffffff

    .line 341
    .local v2, "mask29":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x1000

    if-ge v3, v4, :cond_0

    .line 343
    const/4 v4, 0x0

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    and-int/2addr v4, v2

    aput v4, p0, v3

    .line 344
    add-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1d

    const/4 v6, 0x1

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x3

    shl-int/2addr v7, v8

    or-int/2addr v5, v7

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 345
    add-int/lit8 v4, v3, 0x2

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v7, 0x1a

    ushr-int/2addr v5, v7

    const/4 v9, 0x2

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/4 v11, 0x6

    shl-int/2addr v10, v11

    or-int/2addr v5, v10

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 346
    add-int/lit8 v4, v3, 0x3

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v10, 0x17

    ushr-int/2addr v5, v10

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    shl-int/2addr v12, v13

    or-int/2addr v5, v12

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 347
    add-int/lit8 v4, v3, 0x4

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v12, 0x14

    ushr-int/2addr v5, v12

    const/4 v14, 0x4

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v15

    const/16 v16, 0x1

    const/16 v6, 0xc

    shl-int/2addr v15, v6

    or-int/2addr v5, v15

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 348
    add-int/lit8 v4, v3, 0x5

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v15, 0x11

    ushr-int/2addr v5, v15

    const/16 v17, 0x3

    const/4 v8, 0x5

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v18

    const/16 v19, 0x2

    const/16 v9, 0xf

    shl-int/lit8 v18, v18, 0xf

    or-int v5, v5, v18

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 349
    add-int/lit8 v4, v3, 0x6

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v18, 0x5

    const/16 v8, 0xe

    ushr-int/2addr v5, v8

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v20

    const/16 v21, 0x4

    const/16 v14, 0x12

    shl-int/lit8 v20, v20, 0x12

    or-int v5, v5, v20

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 350
    add-int/lit8 v4, v3, 0x7

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v20, 0x6

    const/16 v11, 0xb

    ushr-int/2addr v5, v11

    const/4 v7, 0x7

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v23

    const/16 v10, 0x15

    shl-int/lit8 v23, v23, 0x15

    or-int v5, v5, v23

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 351
    add-int/lit8 v4, v3, 0x8

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v23, 0x7

    const/16 v7, 0x8

    ushr-int/2addr v5, v7

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v25

    const/16 v10, 0x18

    shl-int/lit8 v25, v25, 0x18

    or-int v5, v5, v25

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 352
    add-int/lit8 v4, v3, 0x9

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x5

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v25

    const/16 v27, 0x8

    const/16 v7, 0x1b

    shl-int/lit8 v25, v25, 0x1b

    or-int v5, v5, v25

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 353
    add-int/lit8 v4, v3, 0xa

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 354
    add-int/lit8 v4, v3, 0xb

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v25, 0x9

    const/16 v13, 0xa

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x1

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 355
    add-int/lit8 v4, v3, 0xc

    const/16 v5, 0xa

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x4

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 356
    add-int/lit8 v4, v3, 0xd

    invoke-static {v1, v0, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x19

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x7

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 357
    add-int/lit8 v4, v3, 0xe

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/16 v13, 0xd

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0xa

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 358
    add-int/lit8 v4, v3, 0xf

    const/16 v5, 0xd

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v13, 0x13

    ushr-int/2addr v5, v13

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v28

    shl-int/lit8 v28, v28, 0xd

    or-int v5, v5, v28

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 359
    add-int/lit8 v4, v3, 0x10

    invoke-static {v1, v0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v28

    shl-int/lit8 v28, v28, 0x10

    or-int v5, v5, v28

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 360
    add-int/lit8 v4, v3, 0x11

    invoke-static {v1, v0, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xd

    const/16 v28, 0xc

    const/16 v6, 0x10

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v13

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 361
    add-int/lit8 v4, v3, 0x12

    const/16 v5, 0x10

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xa

    invoke-static {v1, v0, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x16

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 362
    add-int/lit8 v4, v3, 0x13

    invoke-static {v1, v0, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x7

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x19

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 363
    add-int/lit8 v4, v3, 0x14

    invoke-static {v1, v0, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x4

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1c

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 364
    add-int/lit8 v4, v3, 0x15

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 365
    add-int/lit8 v4, v3, 0x16

    invoke-static {v1, v0, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1e

    invoke-static {v1, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 366
    add-int/lit8 v4, v3, 0x17

    invoke-static {v1, v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v7

    const/16 v6, 0x15

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v13, v13, 0x5

    or-int/2addr v5, v13

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 367
    add-int/lit8 v4, v3, 0x18

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v10

    const/16 v6, 0x16

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 368
    add-int/lit8 v4, v3, 0x19

    const/16 v5, 0x16

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/16 v26, 0x15

    ushr-int/lit8 v5, v5, 0x15

    const/16 v6, 0x17

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v13

    shl-int/lit8 v11, v13, 0xb

    or-int/2addr v5, v11

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 369
    add-int/lit8 v4, v3, 0x1a

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v14

    invoke-static {v1, v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v8

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 370
    add-int/lit8 v4, v3, 0x1b

    invoke-static {v1, v0, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/2addr v5, v9

    const/16 v6, 0x19

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/2addr v6, v15

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 371
    add-int/lit8 v4, v3, 0x1c

    const/16 v5, 0x19

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xc

    const/16 v6, 0x1a

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    shl-int/2addr v8, v12

    or-int/2addr v5, v8

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 372
    add-int/lit8 v4, v3, 0x1d

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x9

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v24, 0x17

    shl-int/lit8 v6, v6, 0x17

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 373
    add-int/lit8 v4, v3, 0x1e

    invoke-static {v1, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x6

    const/16 v6, 0x1c

    invoke-static {v1, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/16 v22, 0x1a

    shl-int/lit8 v6, v6, 0x1a

    or-int/2addr v5, v6

    and-int/2addr v5, v2

    aput v5, p0, v4

    .line 374
    add-int/lit8 v4, v3, 0x1f

    const/16 v5, 0x1c

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x3

    aput v5, p0, v4

    .line 375
    add-int/lit8 v0, v0, 0x1d

    .line 341
    add-int/lit8 v3, v3, 0x20

    goto/16 :goto_0

    .line 379
    .end local v3    # "i":I
    :cond_0
    const/16 v3, 0x3a00

    const/16 v4, 0x20

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    invoke-static {v7, v3, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 381
    return-void
.end method

.method static decodeSignature([B[I[BI)V
    .locals 16
    .param p0, "C"    # [B
    .param p1, "Z"    # [I
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

    .line 423
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .line 424
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x400

    const/4 v4, 0x0

    if-ge v2, v3, :cond_0

    .line 426
    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v3

    .line 427
    .local v3, "s0":I
    const/4 v4, 0x1

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    .line 428
    .local v4, "s1":I
    const/4 v5, 0x2

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    .line 429
    .local v5, "s2":I
    const/4 v6, 0x3

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    .line 430
    .local v6, "s3":I
    const/4 v7, 0x4

    invoke-static {v0, v1, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    .line 431
    .local v7, "s4":I
    const/4 v8, 0x5

    invoke-static {v0, v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    .line 432
    .local v8, "s5":I
    const/4 v9, 0x6

    invoke-static {v0, v1, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v9

    .line 433
    .local v9, "s6":I
    const/4 v10, 0x7

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    .line 434
    .local v10, "s7":I
    const/16 v11, 0x8

    invoke-static {v0, v1, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    .line 435
    .local v11, "s8":I
    const/16 v12, 0x9

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    .line 437
    .local v12, "s9":I
    shl-int/lit8 v13, v3, 0xc

    shr-int/lit8 v13, v13, 0xc

    aput v13, p1, v2

    .line 438
    add-int/lit8 v13, v2, 0x1

    ushr-int/lit8 v14, v3, 0x14

    shl-int/lit8 v15, v4, 0x18

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 439
    add-int/lit8 v13, v2, 0x2

    shl-int/lit8 v14, v4, 0x4

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v13

    .line 440
    add-int/lit8 v13, v2, 0x3

    ushr-int/lit8 v14, v4, 0x1c

    shl-int/lit8 v15, v5, 0x10

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 441
    add-int/lit8 v13, v2, 0x4

    ushr-int/lit8 v14, v5, 0x10

    shl-int/lit8 v15, v6, 0x1c

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 442
    add-int/lit8 v13, v2, 0x5

    shl-int/lit8 v14, v6, 0x8

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v13

    .line 443
    add-int/lit8 v13, v2, 0x6

    ushr-int/lit8 v14, v6, 0x18

    shl-int/lit8 v15, v7, 0x14

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 444
    add-int/lit8 v13, v2, 0x7

    shr-int/lit8 v14, v7, 0xc

    aput v14, p1, v13

    .line 445
    add-int/lit8 v13, v2, 0x8

    shl-int/lit8 v14, v8, 0xc

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v13

    .line 446
    add-int/lit8 v13, v2, 0x9

    ushr-int/lit8 v14, v8, 0x14

    shl-int/lit8 v15, v9, 0x18

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 447
    add-int/lit8 v13, v2, 0xa

    shl-int/lit8 v14, v9, 0x4

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v13

    .line 448
    add-int/lit8 v13, v2, 0xb

    ushr-int/lit8 v14, v9, 0x1c

    shl-int/lit8 v15, v10, 0x10

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 449
    add-int/lit8 v13, v2, 0xc

    ushr-int/lit8 v14, v10, 0x10

    shl-int/lit8 v15, v11, 0x1c

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 450
    add-int/lit8 v13, v2, 0xd

    shl-int/lit8 v14, v11, 0x8

    shr-int/lit8 v14, v14, 0xc

    aput v14, p1, v13

    .line 451
    add-int/lit8 v13, v2, 0xe

    ushr-int/lit8 v14, v11, 0x18

    shl-int/lit8 v15, v12, 0x14

    shr-int/lit8 v15, v15, 0xc

    or-int/2addr v14, v15

    aput v14, p1, v13

    .line 452
    add-int/lit8 v13, v2, 0xf

    shr-int/lit8 v14, v12, 0xc

    aput v14, p1, v13

    .line 453
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
    add-int/lit8 v1, v1, 0xa

    .line 424
    add-int/lit8 v2, v2, 0x10

    goto/16 :goto_0

    .line 455
    .end local v2    # "i":I
    :cond_0
    move/from16 v2, p3

    add-int/lit16 v3, v2, 0xa00

    const/16 v5, 0x20

    move-object/from16 v6, p0

    invoke-static {v0, v3, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 456
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

    .line 460
    const/4 v0, 0x0

    .line 462
    .local v0, "count":I
    const/4 v4, 0x0

    .line 463
    .local v4, "domainSeparator":S
    const/16 v1, 0x400

    new-array v8, v1, [S

    .line 464
    .local v8, "C":[S
    const/16 v1, 0xa8

    new-array v1, v1, [B

    .line 467
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

    .line 474
    .end local v4    # "domainSeparator":S
    invoke-static {v8, v2}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    .line 479
    const/4 v2, 0x0

    move v12, v9

    .end local v9    # "domainSeparator":S
    .local v2, "i":I
    .local v12, "domainSeparator":S
    :goto_0
    const/16 v3, 0x19

    if-ge v2, v3, :cond_3

    .line 481
    const/16 v3, 0xa5

    if-le v0, v3, :cond_0

    .line 484
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

    .line 490
    .end local v9    # "randomness":[B
    .end local v12    # "domainSeparator":S
    .restart local v1    # "randomness":[B
    const/4 v0, 0x0

    move v12, v3

    .line 493
    .end local v3    # "domainSeparator":S
    .restart local v12    # "domainSeparator":S
    :cond_0
    aget-byte v3, v1, v0

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    .line 494
    .local v3, "position":I
    and-int/lit16 v3, v3, 0x3ff

    .line 499
    aget-short v4, v8, v3

    if-nez v4, :cond_2

    .line 502
    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1

    .line 505
    const/4 v4, -0x1

    aput-short v4, v8, v3

    goto :goto_1

    .line 511
    :cond_1
    aput-short v5, v8, v3

    .line 515
    :goto_1
    aput v3, p0, v2

    .line 516
    aget-short v4, v8, v3

    aput-short v4, p1, v2

    .line 517
    add-int/lit8 v2, v2, 0x1

    .line 521
    :cond_2
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 523
    .end local v2    # "i":I
    .end local v3    # "position":I
    :cond_3
    return-void
.end method

.method static encodePrivateKey([B[I[I[BI[B)V
    .locals 10
    .param p0, "privateKey"    # [B
    .param p1, "secretPolynomial"    # [I
    .param p2, "errorPolynomial"    # [I
    .param p3, "seed"    # [B
    .param p4, "seedOffset"    # I
    .param p5, "publicKey"    # [B
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
            "privateKey",
            "secretPolynomial",
            "errorPolynomial",
            "seed",
            "seedOffset",
            "publicKey"
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, "k":I
    const/4 v1, 0x0

    .line 265
    .local v1, "skPtr":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    .line 267
    add-int v3, v1, v2

    aget v4, p1, v2

    int-to-byte v4, v4

    aput-byte v4, p0, v3

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_0
    add-int/2addr v1, v3

    .line 271
    const/4 v0, 0x0

    :goto_1
    const/4 v4, 0x4

    if-ge v0, v4, :cond_2

    .line 273
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_1

    .line 275
    mul-int/lit16 v4, v0, 0x400

    add-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit16 v5, v0, 0x400

    add-int/2addr v5, v2

    aget v5, p2, v5

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    .line 273
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_2
    add-int/lit16 v1, v1, 0x1000

    .line 280
    const/16 v3, 0x40

    invoke-static {p3, p4, p0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 281
    add-int/lit8 v5, v1, 0x40

    .line 284
    .end local v1    # "skPtr":I
    .local v5, "skPtr":I
    const/4 v8, 0x0

    const/16 v9, 0x3a00

    const/16 v6, 0x28

    move-object v4, p0

    move-object v7, p5

    .end local p0    # "privateKey":[B
    .end local p5    # "publicKey":[B
    .local v4, "privateKey":[B
    .local v7, "publicKey":[B
    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 287
    add-int/lit8 v5, v5, 0x28

    .line 290
    return-void
.end method

.method static encodePublicKey([B[I[BI)V
    .locals 27
    .param p0, "publicKey"    # [B
    .param p1, "T"    # [I
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

    .line 294
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 296
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0xe80

    if-ge v2, v3, :cond_0

    .line 298
    aget v3, p1, v1

    add-int/lit8 v4, v1, 0x1

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x1d

    or-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 299
    add-int/lit8 v3, v1, 0x1

    aget v3, p1, v3

    const/4 v4, 0x3

    shr-int/2addr v3, v4

    add-int/lit8 v5, v1, 0x2

    aget v5, p1, v5

    const/16 v6, 0x1a

    shl-int/2addr v5, v6

    or-int/2addr v3, v5

    const/4 v5, 0x1

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 300
    add-int/lit8 v3, v1, 0x2

    aget v3, p1, v3

    const/4 v7, 0x6

    shr-int/2addr v3, v7

    add-int/lit8 v8, v1, 0x3

    aget v8, p1, v8

    const/16 v9, 0x17

    shl-int/2addr v8, v9

    or-int/2addr v3, v8

    const/4 v8, 0x2

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 301
    add-int/lit8 v3, v1, 0x3

    aget v3, p1, v3

    const/16 v10, 0x9

    shr-int/2addr v3, v10

    add-int/lit8 v11, v1, 0x4

    aget v11, p1, v11

    const/16 v12, 0x14

    shl-int/2addr v11, v12

    or-int/2addr v3, v11

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 302
    add-int/lit8 v3, v1, 0x4

    aget v3, p1, v3

    const/16 v11, 0xc

    shr-int/2addr v3, v11

    add-int/lit8 v13, v1, 0x5

    aget v13, p1, v13

    const/16 v14, 0x11

    shl-int/2addr v13, v14

    or-int/2addr v3, v13

    const/4 v13, 0x4

    invoke-static {v0, v2, v13, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 303
    add-int/lit8 v3, v1, 0x5

    aget v3, p1, v3

    const/16 v15, 0xf

    shr-int/2addr v3, v15

    add-int/lit8 v16, v1, 0x6

    aget v16, p1, v16

    const/16 v17, 0x3

    const/16 v4, 0xe

    shl-int/lit8 v16, v16, 0xe

    or-int v3, v3, v16

    const/16 v16, 0x1

    const/4 v5, 0x5

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 304
    add-int/lit8 v3, v1, 0x6

    aget v3, p1, v3

    const/16 v18, 0x5

    const/16 v5, 0x12

    shr-int/2addr v3, v5

    add-int/lit8 v19, v1, 0x7

    aget v19, p1, v19

    const/16 v20, 0x2

    const/16 v8, 0xb

    shl-int/lit8 v19, v19, 0xb

    or-int v3, v3, v19

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 305
    add-int/lit8 v3, v1, 0x7

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x15

    add-int/lit8 v19, v1, 0x8

    aget v19, p1, v19

    const/16 v21, 0x6

    const/16 v7, 0x8

    shl-int/lit8 v19, v19, 0x8

    or-int v3, v3, v19

    const/16 v19, 0x4

    const/4 v13, 0x7

    invoke-static {v0, v2, v13, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 306
    add-int/lit8 v3, v1, 0x8

    aget v3, p1, v3

    const/16 v22, 0x7

    const/16 v13, 0x18

    shr-int/2addr v3, v13

    add-int/lit8 v23, v1, 0x9

    aget v23, p1, v23

    shl-int/lit8 v23, v23, 0x5

    or-int v3, v3, v23

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 307
    add-int/lit8 v3, v1, 0x9

    aget v3, p1, v3

    const/16 v23, 0x8

    const/16 v7, 0x1b

    shr-int/2addr v3, v7

    add-int/lit8 v24, v1, 0xa

    aget v24, p1, v24

    shl-int/lit8 v24, v24, 0x2

    or-int v3, v3, v24

    add-int/lit8 v24, v1, 0xb

    aget v24, p1, v24

    shl-int/lit8 v24, v24, 0x1f

    or-int v3, v3, v24

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 308
    add-int/lit8 v3, v1, 0xb

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v24, v1, 0xc

    aget v24, p1, v24

    const/16 v25, 0x9

    const/16 v10, 0x1c

    shl-int/lit8 v24, v24, 0x1c

    or-int v3, v3, v24

    const/16 v24, 0x1c

    const/16 v10, 0xa

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 309
    add-int/lit8 v3, v1, 0xc

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v10, v1, 0xd

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x19

    or-int/2addr v3, v10

    invoke-static {v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 310
    add-int/lit8 v3, v1, 0xd

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x7

    add-int/lit8 v10, v1, 0xe

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x16

    or-int/2addr v3, v10

    invoke-static {v0, v2, v11, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 311
    add-int/lit8 v3, v1, 0xe

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0xa

    add-int/lit8 v10, v1, 0xf

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x13

    or-int/2addr v3, v10

    const/16 v10, 0xd

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 312
    add-int/lit8 v3, v1, 0xf

    aget v3, p1, v3

    shr-int/2addr v3, v10

    add-int/lit8 v26, v1, 0x10

    aget v26, p1, v26

    shl-int/lit8 v26, v26, 0x10

    or-int v3, v3, v26

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 313
    add-int/lit8 v3, v1, 0x10

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v26, v1, 0x11

    aget v26, p1, v26

    shl-int/lit8 v10, v26, 0xd

    or-int/2addr v3, v10

    invoke-static {v0, v2, v15, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 314
    add-int/lit8 v3, v1, 0x11

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x13

    add-int/lit8 v10, v1, 0x12

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0xa

    or-int/2addr v3, v10

    const/16 v10, 0x10

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 315
    add-int/lit8 v3, v1, 0x12

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x16

    add-int/lit8 v10, v1, 0x13

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x7

    or-int/2addr v3, v10

    invoke-static {v0, v2, v14, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 316
    add-int/lit8 v3, v1, 0x13

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x19

    add-int/lit8 v10, v1, 0x14

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v3, v10

    invoke-static {v0, v2, v5, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 317
    add-int/lit8 v3, v1, 0x14

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x1c

    add-int/lit8 v10, v1, 0x15

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x1

    or-int/2addr v3, v10

    add-int/lit8 v10, v1, 0x16

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x1e

    or-int/2addr v3, v10

    const/16 v10, 0x13

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 318
    add-int/lit8 v3, v1, 0x16

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v10, v1, 0x17

    aget v10, p1, v10

    shl-int/2addr v10, v7

    or-int/2addr v3, v10

    invoke-static {v0, v2, v12, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 319
    add-int/lit8 v3, v1, 0x17

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v10, v1, 0x18

    aget v10, p1, v10

    shl-int/2addr v10, v13

    or-int/2addr v3, v10

    const/16 v10, 0x15

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 320
    add-int/lit8 v3, v1, 0x18

    aget v3, p1, v3

    shr-int/lit8 v3, v3, 0x8

    add-int/lit8 v10, v1, 0x19

    aget v10, p1, v10

    shl-int/lit8 v10, v10, 0x15

    or-int/2addr v3, v10

    const/16 v10, 0x16

    invoke-static {v0, v2, v10, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 321
    add-int/lit8 v3, v1, 0x19

    aget v3, p1, v3

    shr-int/2addr v3, v8

    add-int/lit8 v8, v1, 0x1a

    aget v8, p1, v8

    shl-int/lit8 v5, v8, 0x12

    or-int/2addr v3, v5

    invoke-static {v0, v2, v9, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 322
    add-int/lit8 v3, v1, 0x1a

    aget v3, p1, v3

    shr-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1b

    aget v4, p1, v4

    shl-int/2addr v4, v15

    or-int/2addr v3, v4

    invoke-static {v0, v2, v13, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 323
    add-int/lit8 v3, v1, 0x1b

    aget v3, p1, v3

    shr-int/2addr v3, v14

    add-int/lit8 v4, v1, 0x1c

    aget v4, p1, v4

    shl-int/2addr v4, v11

    or-int/2addr v3, v4

    const/16 v4, 0x19

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 324
    add-int/lit8 v3, v1, 0x1c

    aget v3, p1, v3

    shr-int/2addr v3, v12

    add-int/lit8 v4, v1, 0x1d

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v3, v4

    invoke-static {v0, v2, v6, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 325
    add-int/lit8 v3, v1, 0x1d

    aget v3, p1, v3

    shr-int/2addr v3, v9

    add-int/lit8 v4, v1, 0x1e

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    invoke-static {v0, v2, v7, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 326
    add-int/lit8 v3, v1, 0x1e

    aget v3, p1, v3

    shr-int/2addr v3, v6

    add-int/lit8 v4, v1, 0x1f

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    const/16 v4, 0x1c

    invoke-static {v0, v2, v4, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 327
    add-int/lit8 v1, v1, 0x20

    .line 296
    add-int/lit8 v2, v2, 0x1d

    goto/16 :goto_0

    .line 330
    .end local v2    # "i":I
    :cond_0
    const/16 v2, 0x3a00

    const/16 v3, 0x20

    move-object/from16 v4, p2

    move/from16 v5, p3

    invoke-static {v4, v5, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    return-void
.end method

.method static encodeSignature([BI[BI[I)V
    .locals 8
    .param p0, "signature"    # [B
    .param p1, "signatureOffset"    # I
    .param p2, "C"    # [B
    .param p3, "cOffset"    # I
    .param p4, "Z"    # [I
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

    .line 401
    const/4 v0, 0x0

    .line 403
    .local v0, "j":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x280

    if-ge v1, v2, :cond_0

    .line 405
    aget v2, p4, v0

    const v3, 0xfffff

    and-int/2addr v2, v3

    add-int/lit8 v4, v0, 0x1

    aget v4, p4, v4

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {p0, v1, v4, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 406
    add-int/lit8 v2, v0, 0x1

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v0, 0x2

    aget v4, p4, v4

    and-int/2addr v4, v3

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    or-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget v4, p4, v4

    shl-int/lit8 v4, v4, 0x1c

    or-int/2addr v2, v4

    const/4 v4, 0x1

    invoke-static {p0, v1, v4, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 407
    add-int/lit8 v2, v0, 0x3

    aget v2, p4, v2

    const/4 v4, 0x4

    ushr-int/2addr v2, v4

    const v6, 0xffff

    and-int/2addr v2, v6

    add-int/lit8 v7, v0, 0x4

    aget v7, p4, v7

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    const/4 v7, 0x2

    invoke-static {p0, v1, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 408
    add-int/lit8 v2, v0, 0x4

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v7, v0, 0x5

    aget v7, p4, v7

    and-int/2addr v7, v3

    shl-int/2addr v7, v4

    or-int/2addr v2, v7

    add-int/lit8 v7, v0, 0x6

    aget v7, p4, v7

    shl-int/lit8 v7, v7, 0x18

    or-int/2addr v2, v7

    const/4 v7, 0x3

    invoke-static {p0, v1, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 409
    add-int/lit8 v2, v0, 0x6

    aget v2, p4, v2

    ushr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xfff

    add-int/lit8 v7, v0, 0x7

    aget v7, p4, v7

    shl-int/lit8 v7, v7, 0xc

    or-int/2addr v2, v7

    invoke-static {p0, v1, v4, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 410
    add-int/lit8 v2, v0, 0x8

    aget v2, p4, v2

    and-int/2addr v2, v3

    add-int/lit8 v7, v0, 0x9

    aget v7, p4, v7

    shl-int/lit8 v7, v7, 0x14

    or-int/2addr v2, v7

    const/4 v7, 0x5

    invoke-static {p0, v1, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 411
    add-int/lit8 v2, v0, 0x9

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0xc

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v7, v0, 0xa

    aget v7, p4, v7

    and-int/2addr v7, v3

    shl-int/2addr v7, v5

    or-int/2addr v2, v7

    add-int/lit8 v7, v0, 0xb

    aget v7, p4, v7

    shl-int/lit8 v7, v7, 0x1c

    or-int/2addr v2, v7

    const/4 v7, 0x6

    invoke-static {p0, v1, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 412
    add-int/lit8 v2, v0, 0xb

    aget v2, p4, v2

    ushr-int/2addr v2, v4

    and-int/2addr v2, v6

    add-int/lit8 v6, v0, 0xc

    aget v6, p4, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v2, v6

    const/4 v6, 0x7

    invoke-static {p0, v1, v6, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 413
    add-int/lit8 v2, v0, 0xc

    aget v2, p4, v2

    ushr-int/lit8 v2, v2, 0x10

    and-int/lit8 v2, v2, 0xf

    add-int/lit8 v6, v0, 0xd

    aget v6, p4, v6

    and-int/2addr v3, v6

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0xe

    aget v3, p4, v3

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    invoke-static {p0, v1, v5, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 414
    add-int/lit8 v2, v0, 0xe

    aget v2, p4, v2

    ushr-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xfff

    add-int/lit8 v3, v0, 0xf

    aget v3, p4, v3

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    const/16 v3, 0x9

    invoke-static {p0, v1, v3, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    .line 415
    add-int/lit8 v0, v0, 0x10

    .line 403
    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_0

    .line 418
    .end local v1    # "i":I
    :cond_0
    add-int/lit16 v1, p1, 0xa00

    const/16 v2, 0x20

    invoke-static {p2, p3, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 419
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

    .line 53
    const/4 v0, 0x0

    .line 55
    .local v0, "nonce":I
    const/16 v1, 0x20

    new-array v5, v1, [B

    .line 58
    .local v5, "randomness":[B
    const/16 v1, 0xe0

    new-array v2, v1, [B

    .line 60
    .local v2, "randomnessExtended":[B
    const/16 v1, 0x400

    new-array v8, v1, [I

    .line 61
    .local v8, "secretPolynomial":[I
    const/16 v3, 0x1000

    new-array v13, v3, [I

    .line 62
    .local v13, "errorPolynomial":[I
    new-array v15, v3, [I

    .line 63
    .local v15, "A":[I
    new-array v9, v3, [I

    .line 65
    .local v9, "T":[I
    new-array v1, v1, [I

    .line 69
    .local v1, "s_ntt":[I
    move-object/from16 v10, p2

    invoke-virtual {v10, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 71
    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v3, 0x0

    const/16 v4, 0xe0

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 80
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    const/16 v4, 0x22a

    const/4 v6, 0x4

    if-ge v3, v6, :cond_1

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v6, v3, 0x20

    mul-int/lit16 v7, v3, 0x400

    invoke-static {v0, v2, v6, v13, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    .line 86
    mul-int/lit16 v6, v3, 0x400

    invoke-static {v13, v6, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v6

    if-nez v6, :cond_0

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 96
    .end local v3    # "k":I
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x80

    const/4 v7, 0x0

    invoke-static {v0, v2, v3, v8, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    .line 98
    invoke-static {v8, v7, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v3

    if-nez v3, :cond_3

    .line 100
    const/16 v3, 0xa0

    invoke-static {v15, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    .line 101
    invoke-static {v1, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    .line 103
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v6, :cond_2

    .line 105
    mul-int/lit16 v11, v4, 0x400

    mul-int/lit16 v12, v4, 0x400

    invoke-static {v9, v11, v15, v12, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    .line 106
    mul-int/lit16 v10, v4, 0x400

    mul-int/lit16 v12, v4, 0x400

    mul-int/lit16 v14, v4, 0x400

    move-object v11, v9

    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add_correct([II[II[II)V

    .line 103
    move-object v12, v9

    .end local v9    # "T":[I
    .local v12, "T":[I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, p2

    goto :goto_2

    .end local v12    # "T":[I
    .restart local v9    # "T":[I
    :cond_2
    move-object v12, v9

    .line 110
    .end local v4    # "k":I
    .end local v9    # "T":[I
    .restart local v12    # "T":[I
    move-object/from16 v11, p0

    invoke-static {v11, v12, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePublicKey([B[I[BI)V

    .line 111
    const/16 v10, 0xa0

    move-object/from16 v6, p1

    move-object v9, v2

    move-object v7, v8

    move-object v8, v13

    const/4 v2, 0x0

    .end local v2    # "randomnessExtended":[B
    .end local v13    # "errorPolynomial":[I
    .local v7, "secretPolynomial":[I
    .local v8, "errorPolynomial":[I
    .local v9, "randomnessExtended":[B
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePrivateKey([B[I[I[BI[B)V

    .line 113
    .end local v8    # "errorPolynomial":[I
    .restart local v13    # "errorPolynomial":[I
    return v2

    .line 98
    .end local v7    # "secretPolynomial":[I
    .end local v12    # "T":[I
    .restart local v2    # "randomnessExtended":[B
    .local v8, "secretPolynomial":[I
    .local v9, "T":[I
    :cond_3
    move-object v7, v8

    move-object v12, v9

    move-object v9, v2

    .end local v2    # "randomnessExtended":[B
    .end local v8    # "secretPolynomial":[I
    .restart local v7    # "secretPolynomial":[I
    .local v9, "randomnessExtended":[B
    .restart local v12    # "T":[I
    move-object/from16 v10, p2

    move-object v9, v12

    goto :goto_1
.end method

.method static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .locals 25
    .param p0, "signature"    # [B
    .param p1, "message"    # [B
    .param p2, "messageOffset"    # I
    .param p3, "messageLength"    # I
    .param p4, "privateKey"    # [B
    .param p5, "secureRandom"    # Ljava/security/SecureRandom;
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
    const/16 v1, 0x19

    new-array v4, v1, [I

    .line 123
    .local v4, "pos_list":[I
    new-array v5, v1, [S

    .line 124
    .local v5, "sign_list":[S
    const/16 v14, 0x400

    new-array v15, v14, [I

    .line 126
    .local v15, "y":[I
    new-array v1, v14, [I

    .line 127
    .local v1, "y_ntt":[I
    new-array v3, v14, [I

    .line 128
    .local v3, "Sc":[I
    new-array v8, v14, [I

    .line 130
    .local v8, "z":[I
    const/16 v9, 0x1000

    new-array v11, v9, [I

    .line 131
    .local v11, "v":[I
    new-array v12, v9, [I

    .line 132
    .local v12, "Ec":[I
    new-array v9, v9, [I

    .line 135
    .local v9, "a":[I
    const/16 v16, 0x0

    .line 136
    .local v16, "nonce":I
    const/16 v17, 0x0

    .line 138
    .local v17, "rsp":Z
    const/16 v13, 0x1420

    const/4 v14, 0x0

    invoke-static {v2, v13, v10, v14, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    new-array v13, v0, [B

    .line 142
    .local v13, "tmp":[B
    move-object/from16 v18, v3

    move-object/from16 v3, p5

    .end local v3    # "Sc":[I
    .local v18, "Sc":[I
    invoke-virtual {v3, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 143
    invoke-static {v13, v14, v10, v0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    .end local v13    # "tmp":[B
    move-object v0, v8

    move-object v8, v10

    .end local v10    # "randomness_input":[B
    .local v0, "z":[I
    .local v8, "randomness_input":[B
    const/16 v10, 0x28

    move-object/from16 v20, v12

    .end local v12    # "Ec":[I
    .local v20, "Ec":[I
    const/4 v12, 0x0

    move-object v13, v9

    .end local v9    # "a":[I
    .local v13, "a":[I
    const/16 v9, 0x40

    move-object v3, v11

    move-object v14, v13

    move-object/from16 v11, p1

    move/from16 v13, p3

    .end local v11    # "v":[I
    .end local v13    # "a":[I
    .local v3, "v":[I
    .local v14, "a":[I
    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 150
    array-length v9, v8

    const/16 v13, 0x28

    add-int/lit8 v12, v9, -0x28

    move-object v10, v8

    .end local v8    # "randomness_input":[B
    .restart local v10    # "randomness_input":[B
    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v11, 0x0

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 154
    move-object v8, v10

    .end local v10    # "randomness_input":[B
    .restart local v8    # "randomness_input":[B
    array-length v9, v8

    sub-int/2addr v9, v13

    const/16 v10, 0x1440

    invoke-static {v2, v10, v8, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    const/16 v9, 0x1400

    invoke-static {v14, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    .line 160
    :goto_0
    add-int/lit8 v9, v16, 0x1

    const/4 v10, 0x0

    .end local v16    # "nonce":I
    .local v9, "nonce":I
    invoke-static {v15, v7, v10, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->sample_y([I[BII)V

    .line 162
    invoke-static {v1, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    .line 163
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_1
    const/4 v11, 0x4

    if-ge v10, v11, :cond_0

    .line 165
    mul-int/lit16 v11, v10, 0x400

    mul-int/lit16 v12, v10, 0x400

    invoke-static {v3, v11, v14, v12, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    .line 163
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 168
    :cond_0
    const/16 v12, 0x40

    const/4 v13, 0x0

    invoke-static {v6, v13, v3, v8, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    .line 169
    invoke-static {v4, v5, v6, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    .line 171
    move-object v12, v1

    .end local v1    # "y_ntt":[I
    .local v12, "y_ntt":[I
    const/4 v1, 0x0

    move-object/from16 v16, v3

    .end local v3    # "v":[I
    .local v16, "v":[I
    const/4 v3, 0x0

    move-object v13, v0

    move-object/from16 v0, v18

    .end local v18    # "Sc":[I
    .local v0, "Sc":[I
    .local v13, "z":[I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    .line 173
    invoke-static {v13, v15, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add([I[I[I)V

    .line 175
    invoke-static {v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testRejection([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    move-object/from16 v2, p4

    move-object/from16 v18, v0

    move-object v1, v12

    move-object v0, v13

    move-object/from16 v3, v16

    move/from16 v16, v9

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x0

    move v10, v1

    move/from16 v23, v17

    .end local v17    # "rsp":Z
    .local v23, "rsp":Z
    :goto_2
    if-ge v10, v11, :cond_3

    .line 182
    mul-int/lit16 v1, v10, 0x400

    add-int/lit8 v2, v10, 0x1

    const/16 v3, 0x400

    mul-int/lit16 v2, v2, 0x400

    move-object/from16 v22, v0

    move v3, v2

    move-object/from16 v0, v20

    const/16 v24, 0x400

    move-object/from16 v2, p4

    .end local v20    # "Ec":[I
    .local v0, "Ec":[I
    .local v22, "Sc":[I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    .line 183
    .end local v0    # "Ec":[I
    .restart local v20    # "Ec":[I
    mul-int/lit16 v0, v10, 0x400

    mul-int/lit16 v1, v10, 0x400

    mul-int/lit16 v2, v10, 0x400

    move-object/from16 v18, v16

    move/from16 v17, v0

    move/from16 v19, v1

    move/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub([II[II[II)V

    .line 184
    move-object/from16 v3, v16

    .end local v16    # "v":[I
    .restart local v3    # "v":[I
    mul-int/lit16 v0, v10, 0x400

    invoke-static {v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->test_correctness([II)Z

    move-result v23

    .line 185
    if-eqz v23, :cond_2

    .line 187
    move/from16 v17, v23

    goto :goto_3

    .line 180
    :cond_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v16, v3

    move-object/from16 v0, v22

    goto :goto_2

    .end local v3    # "v":[I
    .end local v22    # "Sc":[I
    .local v0, "Sc":[I
    .restart local v16    # "v":[I
    :cond_3
    move-object/from16 v22, v0

    move-object/from16 v3, v16

    const/16 v24, 0x400

    .end local v0    # "Sc":[I
    .end local v16    # "v":[I
    .restart local v3    # "v":[I
    .restart local v22    # "Sc":[I
    move/from16 v17, v23

    .line 190
    .end local v23    # "rsp":Z
    .restart local v17    # "rsp":Z
    :goto_3
    if-eqz v17, :cond_4

    .line 192
    move-object/from16 v2, p4

    move/from16 v16, v9

    move-object v1, v12

    move-object v0, v13

    move-object/from16 v18, v22

    goto/16 :goto_0

    .line 195
    :cond_4
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v6, v1, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeSignature([BI[BI[I)V

    .line 196
    return v1
.end method

.method private static hashFunction([BI[I[BI)V
    .locals 9
    .param p0, "output"    # [B
    .param p1, "outputOffset"    # I
    .param p2, "v"    # [I
    .param p3, "message"    # [B
    .param p4, "messageOffset"    # I
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
            "outputOffset",
            "v",
            "message",
            "messageOffset"
        }
    .end annotation

    .line 530
    const/16 v0, 0x1050

    new-array v4, v0, [B

    .line 532
    .local v4, "T":[B
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 534
    mul-int/lit16 v1, v0, 0x400

    .line 535
    .local v1, "index":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v3, 0x400

    if-ge v2, v3, :cond_0

    .line 537
    aget v3, p2, v1

    .line 539
    .local v3, "temp":I
    const v5, 0xa3d4800

    sub-int/2addr v5, v3

    shr-int/lit8 v5, v5, 0x1f

    .line 540
    .local v5, "mask":I
    const v6, 0x147a9001

    sub-int v6, v3, v6

    and-int/2addr v6, v5

    not-int v7, v5

    and-int/2addr v7, v3

    or-int v3, v6, v7

    .line 542
    const v6, 0x3fffff

    and-int/2addr v6, v3

    .line 544
    .local v6, "cL":I
    const/high16 v7, 0x200000

    sub-int/2addr v7, v6

    shr-int/lit8 v5, v7, 0x1f

    .line 545
    const/high16 v7, 0x400000

    sub-int v7, v6, v7

    and-int/2addr v7, v5

    not-int v8, v5

    and-int/2addr v8, v6

    or-int v6, v7, v8

    .line 546
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "index":I
    .local v7, "index":I
    sub-int v8, v3, v6

    shr-int/lit8 v8, v8, 0x16

    int-to-byte v8, v8

    aput-byte v8, v4, v1

    .line 535
    .end local v3    # "temp":I
    add-int/lit8 v2, v2, 0x1

    move v1, v7

    goto :goto_1

    .line 532
    .end local v2    # "i":I
    .end local v5    # "mask":I
    .end local v6    # "cL":I
    .end local v7    # "index":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 549
    .end local v0    # "k":I
    :cond_1
    const/16 v0, 0x1000

    const/16 v1, 0x50

    invoke-static {p3, p4, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    const/4 v5, 0x0

    array-length v6, v4

    const/16 v3, 0x20

    move-object v1, p0

    move v2, p1

    .end local p0    # "output":[B
    .end local p1    # "outputOffset":I
    .local v1, "output":[B
    .local v2, "outputOffset":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 554
    return-void
.end method

.method static littleEndianToInt24([BI)I
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

    .line 558
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 559
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 560
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 561
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

    .line 688
    add-int v0, p1, p4

    array-length v1, p0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    add-int v0, p3, p4

    array-length v1, p2

    if-gt v0, v1, :cond_2

    .line 691
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 694
    add-int v1, p1, v0

    aget-byte v1, p0, v1

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    if-eq v1, v3, :cond_0

    .line 697
    return v2

    .line 691
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 703
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 709
    :cond_2
    return v2
.end method

.method static sample_y([I[BII)V
    .locals 13
    .param p0, "y"    # [I
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

    .line 569
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "pos":I
    const/16 v2, 0x400

    .line 570
    .local v2, "nblocks":I
    sget v3, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    const/16 v4, 0x400

    mul-int/lit16 v3, v3, 0x400

    add-int/lit8 v3, v3, 0x1

    new-array v5, v3, [B

    .line 571
    .local v5, "buf":[B
    sget v3, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    .line 572
    .local v3, "nbytes":I
    shl-int/lit8 v6, p3, 0x8

    int-to-short v8, v6

    .line 574
    .local v8, "dmsp":S
    mul-int/lit16 v7, v3, 0x400

    add-int/lit8 v6, v8, 0x1

    int-to-short v12, v6

    .end local v8    # "dmsp":S
    .local v12, "dmsp":S
    const/16 v11, 0x20

    const/4 v6, 0x0

    move-object v9, p1

    move v10, p2

    .restart local v8    # "dmsp":S
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v8, v12

    .line 578
    .end local v12    # "dmsp":S
    :goto_0
    if-ge v0, v4, :cond_2

    .line 580
    mul-int v6, v2, v3

    if-lt v1, v6, :cond_0

    .line 582
    sget v2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    .line 583
    mul-int/lit16 v7, v3, 0x400

    add-int/lit8 v6, v8, 0x1

    int-to-short v12, v6

    .end local v8    # "dmsp":S
    .restart local v12    # "dmsp":S
    const/16 v11, 0x20

    const/4 v6, 0x0

    move-object v9, p1

    move v10, p2

    .restart local v8    # "dmsp":S
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    .line 586
    .end local v8    # "dmsp":S
    const/4 v1, 0x0

    move v8, v12

    .line 588
    .end local v12    # "dmsp":S
    .restart local v8    # "dmsp":S
    :cond_0
    invoke-static {v5, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->littleEndianToInt24([BI)I

    move-result v6

    const v7, 0xfffff

    and-int/2addr v6, v7

    aput v6, p0, v0

    .line 589
    aget v6, p0, v0

    const v7, 0x7ffff

    sub-int/2addr v6, v7

    aput v6, p0, v0

    .line 590
    aget v6, p0, v0

    const/high16 v7, 0x80000

    if-eq v6, v7, :cond_1

    .line 592
    add-int/lit8 v0, v0, 0x1

    .line 594
    :cond_1
    add-int/2addr v1, v3

    goto :goto_0

    .line 596
    :cond_2
    return-void
.end method

.method private static testRejection([I)Z
    .locals 4
    .param p0, "Z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Z"
        }
    .end annotation

    .line 640
    const/4 v0, 0x0

    .line 642
    .local v0, "valid":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_0

    .line 644
    aget v2, p0, v1

    invoke-static {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v2

    const v3, 0x7fdd5

    sub-int/2addr v3, v2

    or-int/2addr v0, v3

    .line 642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1f

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static testZ([I)Z
    .locals 3
    .param p0, "Z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Z"
        }
    .end annotation

    .line 387
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_2

    .line 389
    aget v1, p0, v0

    const v2, -0x7fdd5

    if-lt v1, v2, :cond_1

    aget v1, p0, v0

    const v2, 0x7fdd5

    if-le v1, v2, :cond_0

    goto :goto_1

    .line 387
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 394
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method static test_correctness([II)Z
    .locals 9
    .param p0, "v"    # [I
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

    .line 615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    .line 618
    add-int v1, p1, v0

    aget v1, p0, v1

    .line 619
    .local v1, "a":I
    const v2, 0xa3d4800

    sub-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    .line 620
    .local v2, "mask":I
    const v3, 0x147a9001

    sub-int v3, v1, v3

    and-int/2addr v3, v2

    not-int v4, v2

    and-int/2addr v4, v1

    or-int/2addr v3, v4

    .line 622
    .local v3, "val":I
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    const v5, 0xa3d45d6

    sub-int/2addr v4, v5

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    .line 624
    .local v4, "t0":I
    move v5, v3

    .line 625
    .local v5, "left":I
    const/high16 v6, 0x200000

    add-int/2addr v6, v3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x16

    .line 626
    shl-int/lit8 v6, v3, 0x16

    sub-int v3, v5, v6

    .line 628
    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v6

    const v8, 0x1ffdd6

    sub-int/2addr v6, v8

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    .line 630
    .local v6, "t1":I
    or-int v8, v4, v6

    if-ne v8, v7, :cond_0

    .line 632
    return v7

    .line 615
    .end local v1    # "a":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    .end local v0    # "i":I
    .end local v2    # "mask":I
    .end local v3    # "val":I
    .end local v4    # "t0":I
    .end local v5    # "left":I
    .end local v6    # "t1":I
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

    .line 203
    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 204
    .local v1, "c":[B
    new-array v2, v0, [B

    .line 205
    .local v2, "c_sig":[B
    new-array v3, v0, [B

    .line 206
    .local v3, "seed":[B
    const/16 v4, 0x50

    new-array v5, v4, [B

    .line 207
    .local v5, "hm":[B
    const/16 v4, 0x19

    new-array v11, v4, [I

    .line 208
    .local v11, "pos_list":[I
    new-array v4, v4, [S

    .line 209
    .local v4, "sign_list":[S
    const/16 v6, 0x1000

    new-array v12, v6, [I

    .line 210
    .local v12, "pk_t":[I
    new-array v13, v6, [I

    .line 211
    .local v13, "w":[I
    new-array v14, v6, [I

    .line 212
    .local v14, "a":[I
    new-array v15, v6, [I

    .line 214
    .local v15, "Tc":[I
    const/16 v6, 0x400

    new-array v7, v6, [I

    .line 215
    .local v7, "z":[I
    new-array v6, v6, [I

    .line 217
    .local v6, "z_ntt":[I
    const/16 v16, 0x0

    .line 219
    .local v16, "k":I
    const/16 v8, 0xa20

    move/from16 v9, p3

    if-eq v9, v8, :cond_0

    .line 221
    const/4 v0, -0x1

    return v0

    .line 224
    :cond_0
    move-object/from16 v8, p1

    move/from16 v10, p2

    invoke-static {v1, v7, v8, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodeSignature([B[I[BI)V

    .line 225
    invoke-static {v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testZ([I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 227
    const/4 v0, -0x2

    return v0

    .line 229
    :cond_1
    const/4 v0, 0x0

    move-object/from16 v17, v6

    move-object/from16 v6, p4

    .end local v6    # "z_ntt":[I
    .local v17, "z_ntt":[I
    invoke-static {v12, v3, v0, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodePublicKey([I[BI[B)V

    .line 232
    move-object/from16 v9, p0

    array-length v10, v9

    const/4 v6, 0x0

    move-object/from16 v19, v7

    .end local v7    # "z":[I
    .local v19, "z":[I
    const/16 v7, 0x28

    move-object v8, v9

    move-object/from16 v21, v17

    move-object/from16 v20, v19

    const/4 v9, 0x0

    .end local v17    # "z_ntt":[I
    .end local v19    # "z":[I
    .local v20, "z":[I
    .local v21, "z_ntt":[I
    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 235
    const/4 v9, 0x0

    const/16 v10, 0x3a00

    const/16 v6, 0x28

    move-object/from16 v8, p4

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    .line 239
    invoke-static {v14, v3, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    .line 240
    invoke-static {v11, v4, v1, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    .line 241
    move-object/from16 v6, v20

    move-object/from16 v7, v21

    .end local v20    # "z":[I
    .end local v21    # "z_ntt":[I
    .local v6, "z":[I
    .local v7, "z_ntt":[I
    invoke-static {v7, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    .line 243
    const/4 v8, 0x0

    .end local v16    # "k":I
    .local v8, "k":I
    :goto_0
    const/4 v9, 0x4

    if-ge v8, v9, :cond_2

    .line 245
    move-object/from16 v17, v7

    .end local v7    # "z_ntt":[I
    .restart local v17    # "z_ntt":[I
    mul-int/lit16 v7, v8, 0x400

    mul-int/lit16 v9, v8, 0x400

    move-object v10, v12

    move v12, v8

    move-object v8, v10

    move-object/from16 v19, v6

    move-object v10, v11

    move-object v6, v15

    move-object v11, v4

    move-object/from16 v4, v17

    .end local v15    # "Tc":[I
    .end local v17    # "z_ntt":[I
    .local v4, "z_ntt":[I
    .local v6, "Tc":[I
    .local v8, "pk_t":[I
    .local v10, "pos_list":[I
    .local v11, "sign_list":[S
    .local v12, "k":I
    .restart local v19    # "z":[I
    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul32([II[II[I[S)V

    .line 246
    move-object/from16 v17, v6

    .end local v6    # "Tc":[I
    .local v17, "Tc":[I
    mul-int/lit16 v6, v12, 0x400

    mul-int/lit16 v7, v12, 0x400

    invoke-static {v13, v6, v14, v7, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    .line 247
    move-object v6, v14

    .end local v14    # "a":[I
    .local v6, "a":[I
    mul-int/lit16 v14, v12, 0x400

    mul-int/lit16 v7, v12, 0x400

    mul-int/lit16 v9, v12, 0x400

    move-object v15, v13

    move/from16 v16, v7

    move/from16 v18, v9

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub_reduce([II[II[II)V

    .line 243
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

    .line 249
    .end local v10    # "pos_list":[I
    .end local v17    # "Tc":[I
    .end local v19    # "z":[I
    .local v4, "sign_list":[S
    .local v6, "z":[I
    .local v7, "z_ntt":[I
    .local v8, "k":I
    .local v11, "pos_list":[I
    .local v12, "pk_t":[I
    .restart local v14    # "a":[I
    .restart local v15    # "Tc":[I
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

    .end local v7    # "z_ntt":[I
    .end local v14    # "a":[I
    .end local v15    # "Tc":[I
    .local v4, "z_ntt":[I
    .local v6, "a":[I
    .local v8, "pk_t":[I
    .restart local v10    # "pos_list":[I
    .local v11, "sign_list":[S
    .local v12, "k":I
    .restart local v17    # "Tc":[I
    .restart local v19    # "z":[I
    invoke-static {v2, v0, v13, v5, v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    .line 251
    const/16 v7, 0x20

    invoke-static {v1, v0, v2, v0, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->memoryEqual([BI[BII)Z

    move-result v7

    if-nez v7, :cond_3

    .line 253
    const/4 v0, -0x3

    return v0

    .line 256
    :cond_3
    return v0
.end method

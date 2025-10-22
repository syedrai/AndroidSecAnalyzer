.class public Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;
.super Ljava/lang/Object;
.source "PhotonBeetleEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;
    }
.end annotation


# instance fields
.field private A:[B

.field private final CRYPTO_KEYBYTES:I

.field private final CRYPTO_NPUBBYTES:I

.field private final D:I

.field private final DSquare:I

.field private final Dq:I

.field private final Dr:I

.field private K:[B

.field private final LAST_THREE_BITS_OFFSET:I

.field private final MixColMatrix:[[B

.field private N:[B

.field private final RATE_INBYTES:I

.field private final RATE_INBYTES_HALF:I

.field private final RC:[[B

.field private final ROUND:I

.field private final S:I

.field private final STATE_INBYTES:I

.field private final S_1:I

.field private T:[B

.field private final TAG_INBYTES:I

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private encrypted:Z

.field private forEncryption:Z

.field private initialised:Z

.field private input_empty:Z

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private final sbox:[B

.field private state:[B

.field private state_2d:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;)V
    .locals 19
    .param p1, "pbp"    # Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pbp"
        }
    .end annotation

    .line 82
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    .line 43
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    .line 44
    const/16 v1, 0x10

    iput v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->CRYPTO_KEYBYTES:I

    .line 45
    iput v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->CRYPTO_NPUBBYTES:I

    .line 49
    iput v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->TAG_INBYTES:I

    .line 51
    const/16 v2, 0xc

    iput v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->ROUND:I

    .line 52
    const/16 v3, 0x8

    iput v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->D:I

    .line 53
    const/4 v4, 0x3

    iput v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->Dq:I

    .line 54
    const/4 v5, 0x7

    iput v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->Dr:I

    .line 55
    const/16 v6, 0x40

    iput v6, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->DSquare:I

    .line 56
    const/4 v6, 0x4

    iput v6, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->S:I

    .line 57
    iput v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->S_1:I

    .line 58
    new-array v7, v2, [B

    fill-array-data v7, :array_0

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    new-array v9, v2, [B

    fill-array-data v9, :array_2

    new-array v10, v2, [B

    fill-array-data v10, :array_3

    new-array v11, v2, [B

    fill-array-data v11, :array_4

    new-array v12, v2, [B

    fill-array-data v12, :array_5

    new-array v13, v2, [B

    fill-array-data v13, :array_6

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    new-array v14, v3, [[B

    const/4 v15, 0x0

    aput-object v7, v14, v15

    const/4 v7, 0x1

    aput-object v8, v14, v7

    const/4 v8, 0x2

    aput-object v9, v14, v8

    aput-object v10, v14, v4

    aput-object v11, v14, v6

    const/4 v9, 0x5

    aput-object v12, v14, v9

    const/4 v10, 0x6

    aput-object v13, v14, v10

    aput-object v2, v14, v5

    iput-object v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    .line 68
    new-array v2, v3, [B

    fill-array-data v2, :array_8

    new-array v11, v3, [B

    fill-array-data v11, :array_9

    new-array v12, v3, [B

    fill-array-data v12, :array_a

    new-array v13, v3, [B

    fill-array-data v13, :array_b

    new-array v14, v3, [B

    fill-array-data v14, :array_c

    const/16 v16, 0x3

    new-array v4, v3, [B

    fill-array-data v4, :array_d

    const/16 v17, 0x7

    new-array v5, v3, [B

    fill-array-data v5, :array_e

    const/16 v18, 0x4

    new-array v6, v3, [B

    fill-array-data v6, :array_f

    new-array v3, v3, [[B

    aput-object v2, v3, v15

    aput-object v11, v3, v7

    aput-object v12, v3, v8

    aput-object v13, v3, v16

    aput-object v14, v3, v18

    aput-object v4, v3, v9

    aput-object v5, v3, v10

    aput-object v6, v3, v17

    iput-object v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    .line 79
    new-array v1, v1, [B

    fill-array-data v1, :array_10

    iput-object v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    .line 83
    const/4 v1, 0x0

    .local v1, "CAPACITY_INBITS":I
    const/4 v2, 0x0

    .line 84
    .local v2, "RATE_INBITS":I
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 91
    :pswitch_0
    const/16 v2, 0x80

    .line 92
    const/16 v1, 0x80

    goto :goto_0

    .line 87
    :pswitch_1
    const/16 v2, 0x20

    .line 88
    const/16 v1, 0xe0

    .line 89
    nop

    .line 95
    :goto_0
    add-int/lit8 v3, v2, 0x7

    ushr-int/lit8 v3, v3, 0x3

    iput v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    .line 96
    iget v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    ushr-int/2addr v3, v7

    iput v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    .line 97
    add-int v3, v2, v1

    .line 98
    .local v3, "STATE_INBITS":I
    add-int/lit8 v4, v3, 0x7

    ushr-int/lit8 v4, v4, 0x3

    iput v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    .line 99
    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    sub-int/2addr v4, v7

    shl-int/lit8 v4, v4, 0x3

    sub-int v4, v3, v4

    add-int/lit8 v4, v4, -0x3

    iput v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    .line 100
    iput-boolean v15, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    .line 101
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_c
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_d
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method

.method private PHOTON_Permutation()V
    .locals 13

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x40

    const/4 v2, 0x4

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v3, v0, 0x3

    aget-object v1, v1, v3

    and-int/lit8 v3, v0, 0x7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    shr-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x4

    ushr-int v2, v4, v5

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_0
    const/4 v3, 0x0

    .local v3, "round":I
    :goto_1
    const/16 v4, 0xc

    if-ge v3, v4, :cond_c

    .line 317
    const/4 v0, 0x0

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x8

    if-ge v0, v5, :cond_1

    .line 319
    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v5, v5, v0

    aget-byte v6, v5, v4

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    aget-object v7, v7, v0

    aget-byte v7, v7, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 317
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 322
    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v5, :cond_3

    .line 324
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_4
    if-ge v6, v5, :cond_2

    .line 326
    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v7, v7, v0

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v9, v9, v0

    aget-byte v9, v9, v6

    aget-byte v8, v8, v9

    aput-byte v8, v7, v6

    .line 324
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 322
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 330
    .end local v6    # "j":I
    :cond_3
    const/4 v0, 0x1

    :goto_5
    if-ge v0, v5, :cond_4

    .line 332
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v6, v4, v7, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 333
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v7, v7, v0

    rsub-int/lit8 v8, v0, 0x8

    invoke-static {v6, v0, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v7, v7, v0

    rsub-int/lit8 v8, v0, 0x8

    invoke-static {v6, v4, v7, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 337
    :cond_4
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    if-ge v4, v5, :cond_b

    .line 339
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v5, :cond_9

    .line 341
    const/4 v6, 0x0

    .line 342
    .local v6, "sum":B
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_8
    if-ge v7, v5, :cond_8

    .line 344
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    aget-object v8, v8, v0

    aget-byte v8, v8, v7

    .local v8, "x":I
    const/4 v9, 0x0

    .local v9, "ret":I
    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v4

    .line 345
    .local v10, "b":I
    const/4 v11, 0x0

    .local v11, "l":I
    :goto_9
    if-ge v11, v2, :cond_7

    .line 347
    ushr-int v12, v10, v11

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_5

    .line 349
    xor-int/2addr v9, v8

    .line 351
    :cond_5
    ushr-int/lit8 v12, v8, 0x3

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_6

    .line 353
    shl-int/lit8 v8, v8, 0x1

    .line 354
    xor-int/lit8 v8, v8, 0x3

    goto :goto_a

    .line 358
    :cond_6
    shl-int/lit8 v8, v8, 0x1

    .line 345
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 361
    :cond_7
    and-int/lit8 v12, v9, 0xf

    xor-int/2addr v12, v6

    int-to-byte v6, v12

    .line 342
    .end local v8    # "x":I
    .end local v9    # "ret":I
    .end local v10    # "b":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 363
    .end local v11    # "l":I
    :cond_8
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aput-byte v6, v8, v0

    .line 339
    .end local v6    # "sum":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 365
    .end local v7    # "k":I
    :cond_9
    const/4 v0, 0x0

    :goto_b
    if-ge v0, v5, :cond_a

    .line 367
    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v6, v6, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v7, v7, v0

    aput-byte v7, v6, v4

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 337
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 314
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 371
    .end local v3    # "round":I
    .end local v4    # "j":I
    :cond_c
    const/4 v0, 0x0

    :goto_c
    if-ge v0, v1, :cond_d

    .line 373
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    ushr-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v6, v0, 0x3

    aget-object v5, v5, v6

    and-int/lit8 v6, v0, 0x7

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0xf

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v7, v0, 0x3

    aget-object v6, v6, v7

    add-int/lit8 v7, v0, 0x1

    and-int/lit8 v7, v7, 0x7

    aget-byte v6, v6, v7

    and-int/lit8 v6, v6, 0xf

    shl-int/2addr v6, v2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 371
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 375
    :cond_d
    return-void
.end method

.method private XOR([BII)V
    .locals 4
    .param p1, "in_right"    # [B
    .param p2, "rOff"    # I
    .param p3, "iolen_inbytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in_right",
            "rOff",
            "iolen_inbytes"
        }
    .end annotation

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 426
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "rOff":I
    .local v3, "rOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 424
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 428
    .end local v0    # "i":I
    .end local v3    # "rOff":I
    .restart local p2    # "rOff":I
    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 5
    .param p1, "clearMac"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "clearMac"
        }
    .end annotation

    .line 295
    if-eqz p1, :cond_0

    .line 297
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    .line 300
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 302
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v2, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    array-length v4, v4

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    iput-boolean v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->encrypted:Z

    .line 305
    return-void
.end method

.method private rhoohr([BI[BII)V
    .locals 7
    .param p1, "ciphertext"    # [B
    .param p2, "outOff"    # I
    .param p3, "plaintext"    # [B
    .param p4, "inOff"    # I
    .param p5, "DBlen_inbytes"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "ciphertext",
            "outOff",
            "plaintext",
            "inOff",
            "DBlen_inbytes"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 397
    .local v0, "OuterState_part1_ROTR1":[B
    iget v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 398
    .local v2, "loop_end":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    .line 400
    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v4, v4, v3

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 402
    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v1, v6, v1

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    .line 403
    const/4 v1, 0x0

    .line 404
    .end local v3    # "i":I
    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 406
    add-int v3, v1, p2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .local v5, "i":I
    add-int/2addr v1, p4

    aget-byte v1, p3, v1

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    move v1, v5

    goto :goto_1

    .line 408
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_1
    :goto_2
    if-ge v1, p5, :cond_2

    .line 410
    add-int v3, v1, p2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    sub-int v4, v1, v4

    aget-byte v4, v0, v4

    add-int/lit8 v5, v1, 0x1

    .end local v1    # "i":I
    .restart local v5    # "i":I
    add-int/2addr v1, p4

    aget-byte v1, p3, v1

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    move v1, v5

    goto :goto_2

    .line 412
    .end local v5    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v3, :cond_3

    .line 414
    invoke-direct {p0, p3, p4, p5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    goto :goto_3

    .line 418
    :cond_3
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    .line 420
    :goto_3
    return-void
.end method

.method private select(ZZBB)B
    .locals 1
    .param p1, "condition1"    # Z
    .param p2, "condition2"    # Z
    .param p3, "option3"    # B
    .param p4, "option4"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "condition1",
            "condition2",
            "option3",
            "option4"
        }
    .end annotation

    .line 379
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 381
    const/4 v0, 0x1

    return v0

    .line 383
    :cond_0
    if-eqz p1, :cond_1

    .line 385
    const/4 v0, 0x2

    return v0

    .line 387
    :cond_1
    if-eqz p2, :cond_2

    .line 389
    return p3

    .line 391
    :cond_2
    return p4
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 18
    .param p1, "output"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 182
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    if-eqz v2, :cond_14

    .line 186
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iget-boolean v3, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    const/16 v6, 0x10

    const/4 v7, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x10

    :goto_0
    sub-int v8, v2, v3

    .line 187
    .local v8, "len":I
    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v2, :cond_1

    add-int/lit8 v2, v8, 0x10

    add-int v2, v2, p2

    array-length v3, v1

    if-gt v2, v3, :cond_2

    :cond_1
    iget-boolean v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-nez v2, :cond_3

    add-int v2, v8, p2

    array-length v3, v1

    if-gt v2, v3, :cond_2

    goto :goto_1

    .line 190
    :cond_2
    new-instance v2, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v3, "output buffer too short"

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 192
    :cond_3
    :goto_1
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 193
    .local v3, "input":[B
    const/4 v9, 0x0

    .line 194
    .local v9, "inOff":I
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    .line 195
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    array-length v10, v2

    .line 196
    .local v10, "adlen":I
    if-nez v10, :cond_4

    if-eqz v8, :cond_5

    .line 198
    :cond_4
    iput-boolean v7, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    .line 200
    :cond_5
    const/4 v11, 0x1

    if-eqz v8, :cond_6

    const/4 v2, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    rem-int v4, v10, v4

    if-nez v4, :cond_7

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    const/4 v5, 0x3

    const/4 v12, 0x4

    invoke-direct {v0, v2, v4, v5, v12}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v12

    .line 201
    .local v12, "c0":B
    if-eqz v10, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :goto_4
    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    rem-int v4, v8, v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    goto :goto_5

    :cond_9
    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x5

    const/4 v13, 0x6

    invoke-direct {v0, v2, v4, v5, v13}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v13

    .line 203
    .local v13, "c1":B
    if-eqz v10, :cond_c

    .line 205
    iget v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    add-int/2addr v2, v10

    sub-int/2addr v2, v11

    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    div-int/2addr v2, v4

    .line 206
    .local v2, "Dlen_inblocks":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_a

    .line 208
    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    .line 209
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    iget v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v14, v14, v4

    iget v15, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    invoke-direct {v0, v5, v14, v15}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    .line 206
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 211
    :cond_a
    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    .line 212
    iget v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v5, v5, v4

    sub-int v5, v10, v5

    .line 213
    .local v5, "LastDBlocklen":I
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v15, v15, v4

    invoke-direct {v0, v14, v15, v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    .line 214
    iget v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    if-ge v5, v14, :cond_b

    .line 216
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v15, v14, v5

    xor-int/2addr v15, v11

    int-to-byte v15, v15

    aput-byte v15, v14, v5

    .line 218
    :cond_b
    iget-object v14, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v15, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    sub-int/2addr v15, v11

    aget-byte v16, v14, v15

    const/16 v17, 0x1

    iget v11, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v11, v12, v11

    xor-int v11, v16, v11

    int-to-byte v11, v11

    aput-byte v11, v14, v15

    goto :goto_7

    .line 203
    .end local v2    # "Dlen_inblocks":I
    .end local v4    # "i":I
    .end local v5    # "LastDBlocklen":I
    :cond_c
    const/16 v17, 0x1

    .line 220
    :goto_7
    if-eqz v8, :cond_f

    .line 222
    iget v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, -0x1

    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    div-int v11, v2, v4

    .line 223
    .local v11, "Dlen_inblocks":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "i":I
    :goto_8
    add-int/lit8 v2, v11, -0x1

    if-ge v14, v2, :cond_d

    .line 225
    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    .line 226
    iget v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v2, v2, v14

    add-int v2, p2, v2

    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v4, v4, v14

    add-int/2addr v4, v9

    iget v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    .line 223
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    goto :goto_8

    .line 228
    :cond_d
    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    .line 229
    iget v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v1, v1, v14

    sub-int v5, v8, v1

    .line 230
    .restart local v5    # "LastDBlocklen":I
    iget v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v1, v1, v14

    add-int v2, p2, v1

    iget v1, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int v1, v1, v14

    add-int v4, v9, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    .line 231
    iget v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    if-ge v5, v2, :cond_e

    .line 233
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v4, v2, v5

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v5

    .line 235
    :cond_e
    iget-object v2, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v15, v2, v4

    iget v7, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v7, v13, v7

    xor-int/2addr v7, v15

    int-to-byte v7, v7

    aput-byte v7, v2, v4

    .line 237
    .end local v5    # "LastDBlocklen":I
    .end local v11    # "Dlen_inblocks":I
    .end local v14    # "i":I
    :cond_f
    add-int v2, p2, v8

    .line 238
    .end local p2    # "outOff":I
    .local v2, "outOff":I
    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    if-eqz v4, :cond_10

    .line 240
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v7, v4, v5

    iget v11, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v11, v17, v11

    xor-int/2addr v7, v11

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    .line 242
    :cond_10
    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    .line 243
    new-array v4, v6, [B

    iput-object v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    .line 244
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    const/4 v7, 0x0

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 245
    iget-boolean v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v4, :cond_11

    .line 247
    iget-object v4, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    invoke-static {v4, v7, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 248
    add-int/lit8 v8, v8, 0x10

    goto :goto_a

    .line 252
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9
    if-ge v4, v6, :cond_13

    .line 254
    iget-object v5, v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    aget-byte v5, v5, v4

    add-int v7, v8, v4

    aget-byte v7, v3, v7

    if-ne v5, v7, :cond_12

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 256
    :cond_12
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Mac does not match"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 260
    .end local v4    # "i":I
    :cond_13
    :goto_a
    const/4 v7, 0x0

    invoke-direct {v0, v7}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    .line 261
    return v8

    .line 184
    .end local v2    # "outOff":I
    .end local v3    # "input":[B
    .end local v8    # "len":I
    .end local v9    # "inOff":I
    .end local v10    # "adlen":I
    .end local v12    # "c0":B
    .end local v13    # "c1":B
    .restart local p2    # "outOff":I
    :cond_14
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Need call init function before encryption/decryption"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 140
    const-string v0, "Photon-Beetle AEAD"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 432
    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    .line 442
    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    .line 437
    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    .line 267
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 279
    add-int/lit8 v0, p1, 0x10

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 273
    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    .line 108
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_3

    .line 112
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 113
    .local v0, "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    .line 118
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 123
    .local v1, "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    .line 124
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v3, v3

    if-ne v3, v2, :cond_0

    .line 128
    new-instance v3, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 129
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v3, v4, v5, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 128
    invoke-static {v3}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 130
    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    .line 131
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    const/16 v5, 0x8

    aput v5, v3, v4

    const/4 v6, 0x0

    aput v5, v3, v6

    sget-object v5, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    .line 132
    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    .line 133
    iput-boolean v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    .line 134
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    .line 135
    return-void

    .line 126
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Photon-Beetle AEAD key must be 128 bits long"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    .end local v1    # "key":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Photon-Beetle AEAD init parameters must include a key"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Photon-Beetle AEAD requires exactly 16 bytes of IV"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    .end local v0    # "ivParams":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Photon-Beetle AEAD init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processAADByte(B)V
    .locals 1
    .param p1, "input"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 147
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len"
        }
    .end annotation

    .line 152
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 157
    return-void

    .line 154
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processByte(B[BI)I
    .locals 7
    .param p1, "input"    # B
    .param p2, "output"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    .end local p2    # "output":[B
    .end local p3    # "outOff":I
    .local v5, "output":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->processBytes([BII[BI)I

    move-result p2

    return p2
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .param p4, "output"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inOff",
            "len",
            "output",
            "outOff"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 170
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 174
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 175
    const/4 v0, 0x0

    return v0

    .line 172
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 2

    .line 285
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    if-eqz v0, :cond_0

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    .line 291
    return-void

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

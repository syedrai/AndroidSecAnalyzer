.class public Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;
.super Ljava/lang/Object;
.source "PhotonBeetleDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private D:I

.field private DSquare:I

.field private Dq:I

.field private Dr:I

.field private final INITIAL_RATE_INBYTES:I

.field private LAST_THREE_BITS_OFFSET:I

.field private MixColMatrix:[[B

.field private RATE_INBYTES:I

.field private RC:[[B

.field private ROUND:I

.field private S:I

.field private SQUEEZE_RATE_INBYTES:I

.field private STATE_INBYTES:I

.field private S_1:I

.field private TAG_INBYTES:I

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private sbox:[B

.field private state:[B

.field private state_2d:[[B


# direct methods
.method public constructor <init>()V
    .locals 19

    .line 61
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 24
    const/16 v1, 0x10

    iput v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->INITIAL_RATE_INBYTES:I

    .line 25
    const/4 v2, 0x4

    iput v2, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    .line 26
    iput v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    .line 27
    const/16 v3, 0x20

    iput v3, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    .line 28
    iput v3, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    .line 29
    const/4 v3, 0x5

    iput v3, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    .line 30
    const/16 v4, 0xc

    iput v4, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    .line 31
    const/16 v5, 0x8

    iput v5, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    .line 32
    const/4 v6, 0x3

    iput v6, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    .line 33
    const/4 v7, 0x7

    iput v7, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    .line 34
    const/16 v8, 0x40

    iput v8, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    .line 35
    iput v2, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    .line 36
    iput v6, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    .line 37
    new-array v8, v4, [B

    fill-array-data v8, :array_0

    new-array v9, v4, [B

    fill-array-data v9, :array_1

    new-array v10, v4, [B

    fill-array-data v10, :array_2

    new-array v11, v4, [B

    fill-array-data v11, :array_3

    new-array v12, v4, [B

    fill-array-data v12, :array_4

    new-array v13, v4, [B

    fill-array-data v13, :array_5

    new-array v14, v4, [B

    fill-array-data v14, :array_6

    new-array v4, v4, [B

    fill-array-data v4, :array_7

    new-array v15, v5, [[B

    const/16 v16, 0x0

    aput-object v8, v15, v16

    const/4 v8, 0x1

    aput-object v9, v15, v8

    const/4 v9, 0x2

    aput-object v10, v15, v9

    aput-object v11, v15, v6

    aput-object v12, v15, v2

    aput-object v13, v15, v3

    const/4 v10, 0x6

    aput-object v14, v15, v10

    aput-object v4, v15, v7

    iput-object v15, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    .line 47
    new-array v4, v5, [B

    fill-array-data v4, :array_8

    new-array v11, v5, [B

    fill-array-data v11, :array_9

    new-array v12, v5, [B

    fill-array-data v12, :array_a

    new-array v13, v5, [B

    fill-array-data v13, :array_b

    new-array v14, v5, [B

    fill-array-data v14, :array_c

    new-array v15, v5, [B

    fill-array-data v15, :array_d

    const/16 v17, 0x4

    new-array v2, v5, [B

    fill-array-data v2, :array_e

    const/16 v18, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_f

    new-array v5, v5, [[B

    aput-object v4, v5, v16

    aput-object v11, v5, v8

    aput-object v12, v5, v9

    aput-object v13, v5, v6

    aput-object v14, v5, v17

    aput-object v15, v5, v18

    aput-object v2, v5, v10

    aput-object v3, v5, v7

    iput-object v5, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    .line 58
    new-array v1, v1, [B

    fill-array-data v1, :array_10

    iput-object v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    .line 62
    iget v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    new-array v1, v1, [B

    iput-object v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    .line 63
    iget v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    new-array v3, v9, [I

    aput v2, v3, v8

    aput v1, v3, v16

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, v0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    .line 64
    return-void

    nop

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


# virtual methods
.method PHOTON_Permutation()V
    .locals 10

    .line 153
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v1, :cond_0

    .line 155
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v2, v0, v2

    aget-object v1, v1, v2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    shr-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v4, v0, 0x1

    mul-int/lit8 v4, v4, 0x4

    ushr-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v1, 0x0

    .local v1, "round":I
    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    if-ge v1, v2, :cond_c

    .line 160
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_1

    .line 162
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v2, v2, v0

    aget-byte v4, v2, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 165
    :cond_1
    const/4 v0, 0x0

    :goto_3
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v2, :cond_3

    .line 167
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v4, :cond_2

    .line 169
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v6, v6, v0

    aget-byte v6, v6, v2

    aget-byte v5, v5, v6

    aput-byte v5, v4, v2

    .line 167
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 165
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 173
    .end local v2    # "j":I
    :cond_3
    const/4 v0, 0x1

    :goto_5
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v2, :cond_4

    .line 175
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v2, v2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    invoke-static {v2, v3, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v0

    invoke-static {v2, v0, v4, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v0

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v0

    invoke-static {v2, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 180
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_6
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_b

    .line 182
    const/4 v0, 0x0

    :goto_7
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v3, :cond_9

    .line 184
    const/4 v3, 0x0

    .line 185
    .local v3, "sum":B
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_8
    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v4, v5, :cond_8

    .line 187
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    aget-object v5, v5, v0

    aget-byte v5, v5, v4

    .local v5, "x":I
    const/4 v6, 0x0

    .local v6, "ret":I
    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v7, v7, v4

    aget-byte v7, v7, v2

    .line 188
    .local v7, "b":I
    const/4 v8, 0x0

    .local v8, "l":I
    :goto_9
    iget v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    if-ge v8, v9, :cond_7

    .line 190
    ushr-int v9, v7, v8

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_5

    .line 192
    xor-int/2addr v6, v5

    .line 194
    :cond_5
    iget v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    ushr-int v9, v5, v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_6

    .line 196
    shl-int/lit8 v5, v5, 0x1

    .line 197
    xor-int/lit8 v5, v5, 0x3

    goto :goto_a

    .line 201
    :cond_6
    shl-int/lit8 v5, v5, 0x1

    .line 188
    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    .line 204
    :cond_7
    and-int/lit8 v9, v6, 0xf

    xor-int/2addr v9, v3

    int-to-byte v3, v9

    .line 185
    .end local v5    # "x":I
    .end local v6    # "ret":I
    .end local v7    # "b":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 206
    .end local v8    # "l":I
    :cond_8
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aput-byte v3, v5, v0

    .line 182
    .end local v3    # "sum":B
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 208
    .end local v4    # "k":I
    :cond_9
    const/4 v0, 0x0

    :goto_b
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v0, v3, :cond_a

    .line 210
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v3, v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v4, v4, v0

    aput-byte v4, v3, v2

    .line 208
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 180
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 157
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 214
    .end local v1    # "round":I
    .end local v2    # "j":I
    :cond_c
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v1, :cond_d

    .line 216
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    ushr-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v4, v0, v4

    aget-object v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v4, v0

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v5, v0, v5

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v5, v6

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 214
    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    .line 218
    :cond_d
    return-void
.end method

.method public doFinal([BI)I
    .locals 12
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

    .line 97
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 102
    .local v0, "input":[B
    array-length v1, v0

    .line 103
    .local v1, "inlen":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 105
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v5, v3

    aget-byte v6, v4, v5

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v7

    xor-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    goto/16 :goto_3

    .line 107
    :cond_0
    const/4 v4, 0x2

    const/16 v5, 0x10

    if-gt v1, v5, :cond_3

    .line 109
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 110
    if-ge v1, v5, :cond_1

    .line 112
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v7, v6, v1

    xor-int/2addr v7, v3

    int-to-byte v7, v7

    aput-byte v7, v6, v1

    .line 114
    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v7, v3

    aget-byte v8, v6, v7

    if-ge v1, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v4

    xor-int/2addr v3, v8

    int-to-byte v3, v3

    aput-byte v3, v6, v7

    goto :goto_3

    .line 118
    :cond_3
    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    add-int/lit8 v1, v1, -0x10

    .line 120
    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    add-int/2addr v6, v1

    sub-int/2addr v6, v3

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    div-int/2addr v6, v7

    .line 122
    .local v6, "Dlen_inblocks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    add-int/lit8 v8, v6, -0x1

    if-ge v7, v8, :cond_4

    .line 124
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 125
    iget v8, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    iget v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int v9, v9, v7

    add-int/2addr v9, v5

    iget-object v10, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v9, v10, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 122
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 127
    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 128
    iget v8, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int v8, v8, v7

    sub-int v8, v1, v8

    .line 129
    .local v8, "LastDBlocklen":I
    iget v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int v9, v9, v7

    add-int/2addr v9, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v9, v5, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 130
    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    if-ge v8, v5, :cond_5

    .line 132
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v9, v5, v8

    xor-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v5, v8

    .line 134
    :cond_5
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v9, v3

    aget-byte v10, v5, v9

    iget v11, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    rem-int v11, v1, v11

    if-nez v11, :cond_6

    goto :goto_2

    :cond_6
    const/4 v3, 0x2

    :goto_2
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v4

    xor-int/2addr v3, v10

    int-to-byte v3, v3

    aput-byte v3, v5, v9

    .line 136
    .end local v6    # "Dlen_inblocks":I
    .end local v7    # "i":I
    .end local v8    # "LastDBlocklen":I
    :goto_3
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 137
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 139
    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    add-int/2addr v4, p2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    sub-int/2addr v5, v6

    invoke-static {v3, v2, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v2

    .line 99
    .end local v0    # "input":[B
    .end local v1    # "inlen":I
    :cond_7
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 69
    const-string v0, "Photon-Beetle Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v0
.end method

.method public reset()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 147
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 148
    return-void
.end method

.method public update(B)V
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

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 82
    return-void
.end method

.method public update([BII)V
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

    .line 87
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 91
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

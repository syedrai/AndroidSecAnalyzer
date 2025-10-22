.class public Lorg/bouncycastle/crypto/digests/XoodyakDigest;
.super Ljava/lang/Object;
.source "XoodyakDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    }
.end annotation


# instance fields
.field private final MAXROUNDS:I

.field private final NCOLUMS:I

.field private final NLANES:I

.field private final NROWS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field private final Rhash:I

.field private final TAGLEN:I

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final f_bPrime:I

.field private mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field private phase:I

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->f_bPrime:I

    .line 26
    const/16 v1, 0x10

    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rhash:I

    .line 27
    const/4 v2, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseDown:I

    .line 28
    const/4 v2, 0x2

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseUp:I

    .line 29
    const/16 v2, 0xc

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NLANES:I

    .line 30
    const/4 v3, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NROWS:I

    .line 31
    const/4 v3, 0x4

    iput v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NCOLUMS:I

    .line 32
    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->MAXROUNDS:I

    .line 33
    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->TAGLEN:I

    .line 34
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    .line 36
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 46
    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    .line 48
    return-void

    nop

    :array_0
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method

.method private ROTL32(II)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "offset"
        }
    .end annotation

    .line 203
    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 v1, p2, 0x20

    and-int/lit8 v1, v1, 0x1f

    ushr-int v1, p1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private Up([BIII)V
    .locals 18
    .param p1, "Yi"    # [B
    .param p2, "YiOff"    # I
    .param p3, "YiLen"    # I
    .param p4, "Cu"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Yi",
            "YiOff",
            "YiLen",
            "Cu"
        }
    .end annotation

    .line 122
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v3, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-eq v2, v3, :cond_0

    .line 124
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 126
    :cond_0
    const/16 v2, 0xc

    new-array v3, v2, [I

    .line 127
    .local v3, "a":[I
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 129
    new-array v4, v2, [I

    .line 130
    .local v4, "b":[I
    const/4 v5, 0x4

    new-array v7, v5, [I

    .line 131
    .local v7, "p":[I
    new-array v8, v5, [I

    .line 132
    .local v8, "e":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    const/4 v10, 0x2

    if-ge v9, v2, :cond_9

    .line 135
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_1
    const/4 v12, 0x1

    if-ge v11, v5, :cond_1

    .line 137
    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    xor-int/2addr v12, v13

    aput v12, v7, v11

    .line 135
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 139
    :cond_1
    const/4 v11, 0x0

    :goto_2
    const/4 v13, 0x3

    if-ge v11, v5, :cond_2

    .line 141
    add-int/lit8 v14, v11, 0x3

    and-int/2addr v13, v14

    aget v13, v7, v13

    .line 142
    .local v13, "y":I
    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v15

    xor-int/2addr v14, v15

    aput v14, v8, v11

    .line 139
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 144
    .end local v13    # "y":I
    :cond_2
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v5, :cond_4

    .line 146
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_4
    if-ge v14, v13, :cond_3

    .line 148
    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v16, v3, v15

    aget v17, v8, v11

    xor-int v16, v16, v17

    aput v16, v3, v15

    .line 146
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 144
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 152
    .end local v14    # "y":I
    :cond_4
    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_5

    .line 154
    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v6}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 155
    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-direct {v0, v15, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 156
    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-direct {v0, v15, v2}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v2

    aput v2, v4, v14

    .line 152
    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_5

    .line 159
    :cond_5
    aget v2, v4, v6

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    aget v14, v14, v9

    xor-int/2addr v2, v14

    aput v2, v4, v6

    .line 161
    const/4 v2, 0x0

    .end local v11    # "x":I
    .local v2, "x":I
    :goto_6
    if-ge v2, v5, :cond_7

    .line 163
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_7
    if-ge v11, v13, :cond_6

    .line 165
    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v2, v11}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v4, v13

    not-int v13, v13

    add-int/lit8 v10, v11, 0x2

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    aget v10, v4, v10

    and-int/2addr v10, v13

    xor-int/2addr v10, v15

    aput v10, v3, v14

    .line 163
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_7

    .line 161
    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_6

    .line 169
    .end local v11    # "y":I
    :cond_7
    const/4 v2, 0x0

    :goto_8
    if-ge v2, v5, :cond_8

    .line 171
    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    .line 172
    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v11

    aput v11, v4, v10

    .line 173
    const/4 v10, 0x2

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-direct {v0, v13, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v10

    aput v10, v4, v11

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 175
    :cond_8
    const/16 v10, 0xc

    invoke-static {v4, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    add-int/lit8 v9, v9, 0x1

    const/16 v2, 0xc

    goto/16 :goto_0

    .line 177
    .end local v2    # "x":I
    .end local v9    # "i":I
    :cond_9
    array-length v2, v3

    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v3, v6, v2, v5, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 178
    const/4 v10, 0x2

    iput v10, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 179
    if-eqz v1, :cond_a

    .line 181
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move/from16 v5, p2

    move/from16 v9, p3

    invoke-static {v2, v6, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_9

    .line 179
    :cond_a
    move/from16 v5, p2

    move/from16 v9, p3

    .line 183
    :goto_9
    return-void
.end method

.method private index(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
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

    .line 198
    rem-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method Down([BIII)V
    .locals 6
    .param p1, "Xi"    # [B
    .param p2, "XiOff"    # I
    .param p3, "XiLen"    # I
    .param p4, "Cd"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "Xi",
            "XiOff",
            "XiLen",
            "Cd"
        }
    .end annotation

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 189
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "XiOff":I
    .local v3, "XiOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    .line 191
    .end local v0    # "i":I
    .end local v3    # "XiOff":I
    .restart local p2    # "XiOff":I
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v1, v0, p3

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 192
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v1, 0x2f

    aget-byte v3, v0, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v5, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-ne v4, v5, :cond_1

    and-int/lit8 v4, p4, 0x1

    goto :goto_1

    :cond_1
    move v4, p4

    :goto_1
    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 193
    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 194
    return-void
.end method

.method public doFinal([BI)I
    .locals 9
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

    .line 82
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 87
    .local v0, "input":[B
    const/4 v1, 0x0

    .line 88
    .local v1, "inOff":I
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 89
    .local v2, "len":I
    const/4 v3, 0x3

    .line 93
    .local v3, "Cd":I
    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    .line 95
    invoke-direct {p0, v6, v7, v7, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 97
    :cond_1
    iget v4, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 98
    .local v4, "splitLen":I
    invoke-virtual {p0, v0, v1, v4, v3}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    .line 99
    const/4 v3, 0x0

    .line 100
    add-int/2addr v1, v4

    .line 101
    sub-int/2addr v2, v4

    .line 103
    if-nez v2, :cond_0

    .line 104
    const/16 v5, 0x40

    const/16 v8, 0x10

    invoke-direct {p0, p1, p2, v8, v5}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 105
    invoke-virtual {p0, v6, v7, v7, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    .line 106
    add-int/lit8 v5, p2, 0x10

    invoke-direct {p0, p1, v5, v8, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 107
    const/16 v5, 0x20

    return v5

    .line 84
    .end local v0    # "input":[B
    .end local v1    # "inOff":I
    .end local v2    # "len":I
    .end local v3    # "Cd":I
    .end local v4    # "splitLen":I
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "Xoodyak Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 59
    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    .line 113
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 114
    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 115
    sget-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 116
    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    .line 117
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 118
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

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 66
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

    .line 71
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 77
    return-void

    .line 73
    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

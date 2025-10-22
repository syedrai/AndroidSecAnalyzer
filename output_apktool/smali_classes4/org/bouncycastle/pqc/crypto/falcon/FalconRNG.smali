.class Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;
.super Ljava/lang/Object;
.source "FalconRNG.java"


# instance fields
.field bd:[B

.field bdummy_u64:J

.field convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

.field ptr:I

.field sd:[B

.field sdummy_u64:J

.field type:I


# direct methods
.method constructor <init>()V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    .line 18
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bdummy_u64:J

    .line 19
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    .line 20
    const/16 v3, 0x100

    new-array v3, v3, [B

    iput-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    .line 21
    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sdummy_u64:J

    .line 22
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->type:I

    .line 23
    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    .line 24
    return-void
.end method

.method private QROUND(IIII[I)V
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "state"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c",
            "d",
            "state"
        }
    .end annotation

    .line 190
    aget v0, p5, p1

    aget v1, p5, p2

    add-int/2addr v0, v1

    aput v0, p5, p1

    .line 191
    aget v0, p5, p4

    aget v1, p5, p1

    xor-int/2addr v0, v1

    aput v0, p5, p4

    .line 192
    aget v0, p5, p4

    shl-int/lit8 v0, v0, 0x10

    aget v1, p5, p4

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aput v0, p5, p4

    .line 193
    aget v0, p5, p3

    aget v1, p5, p4

    add-int/2addr v0, v1

    aput v0, p5, p3

    .line 194
    aget v0, p5, p2

    aget v1, p5, p3

    xor-int/2addr v0, v1

    aput v0, p5, p2

    .line 195
    aget v0, p5, p2

    shl-int/lit8 v0, v0, 0xc

    aget v1, p5, p2

    ushr-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    aput v0, p5, p2

    .line 196
    aget v0, p5, p1

    aget v1, p5, p2

    add-int/2addr v0, v1

    aput v0, p5, p1

    .line 197
    aget v0, p5, p4

    aget v1, p5, p1

    xor-int/2addr v0, v1

    aput v0, p5, p4

    .line 198
    aget v0, p5, p4

    shl-int/lit8 v0, v0, 0x8

    aget v1, p5, p4

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p5, p4

    .line 199
    aget v0, p5, p3

    aget v1, p5, p4

    add-int/2addr v0, v1

    aput v0, p5, p3

    .line 200
    aget v0, p5, p2

    aget v1, p5, p3

    xor-int/2addr v0, v1

    aput v0, p5, p2

    .line 201
    aget v0, p5, p2

    shl-int/lit8 v0, v0, 0x7

    aget v1, p5, p2

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    aput v0, p5, p2

    .line 202
    return-void
.end method


# virtual methods
.method prng_get_bytes([BII)V
    .locals 4
    .param p1, "srcdst"    # [B
    .param p2, "dst"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "srcdst",
            "dst",
            "len"
        }
    .end annotation

    .line 166
    move v0, p2

    .line 167
    .local v0, "buf":I
    :goto_0
    if-lez p3, :cond_2

    .line 171
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    sub-int/2addr v1, v2

    .line 172
    .local v1, "clen":I
    if-le v1, p3, :cond_0

    .line 174
    move v1, p3

    .line 177
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    add-int/2addr v0, v1

    .line 179
    sub-int/2addr p3, v1

    .line 180
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    .line 181
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v3, v3

    if-ne v2, v3, :cond_1

    .line 183
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    .line 185
    .end local v1    # "clen":I
    :cond_1
    goto :goto_0

    .line 186
    :cond_2
    return-void
.end method

.method prng_get_u64()J
    .locals 8

    .line 214
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    .line 215
    .local v0, "u":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x9

    if-lt v0, v1, :cond_0

    .line 217
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    .line 218
    const/4 v0, 0x0

    .line 220
    :cond_0
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    .line 226
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v2, v0, 0x0

    aget-byte v1, v1, v2

    int-to-long v1, v1

    const-wide/16 v3, 0xff

    and-long/2addr v1, v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x8

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x2

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x10

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x3

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x18

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x4

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x20

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x5

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x28

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x6

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v5, v3

    const/16 v7, 0x30

    shl-long/2addr v5, v7

    or-long/2addr v1, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v6, v0, 0x7

    aget-byte v5, v5, v6

    int-to-long v5, v5

    and-long/2addr v3, v5

    const/16 v5, 0x38

    shl-long/2addr v3, v5

    or-long/2addr v1, v3

    return-wide v1
.end method

.method prng_get_u8()B
    .locals 3

    .line 240
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    aget-byte v0, v0, v1

    .line 241
    .local v0, "v":B
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 243
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    .line 245
    :cond_0
    return v0
.end method

.method prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V
    .locals 13
    .param p1, "src"    # Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    .line 33
    const/16 v0, 0x38

    new-array v1, v0, [B

    .line 37
    .local v1, "tmp":[B
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    .line 38
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xe

    const/16 v4, 0x8

    if-ge v0, v3, :cond_0

    .line 42
    shl-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v4, v5, 0x8

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    .line 47
    .local v3, "w":I
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->int_to_bytes(I)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    shl-int/lit8 v6, v0, 0x2

    const/4 v7, 0x4

    invoke-static {v4, v2, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 38
    .end local v3    # "w":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v6, 0x30

    invoke-virtual {v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v3

    int-to-long v7, v3

    const-wide v9, 0xffffffffL

    and-long/2addr v7, v9

    .line 52
    .local v7, "tl":J
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v11, 0x34

    invoke-virtual {v3, v5, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v3

    int-to-long v11, v3

    and-long/2addr v9, v11

    .line 54
    .local v9, "th":J
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    const/16 v5, 0x20

    shl-long v11, v9, v5

    add-long/2addr v11, v7

    invoke-virtual {v3, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    invoke-static {v3, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    .line 56
    return-void
.end method

.method prng_refill()V
    .locals 19

    .line 75
    move-object/from16 v0, p0

    const v1, 0x79622d32

    const v2, 0x6b206574

    const v3, 0x61707865

    const v4, 0x3320646e

    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    move-object v6, v1

    .line 87
    .local v6, "CW":[I
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v7, 0x30

    invoke-virtual {v1, v2, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_long([BI)J

    move-result-wide v1

    .line 88
    .local v1, "cc":J
    const/4 v3, 0x0

    move-wide v8, v1

    move v10, v3

    .end local v1    # "cc":J
    .local v8, "cc":J
    .local v10, "u":I
    :goto_0
    const/16 v11, 0x8

    const/4 v12, 0x0

    if-ge v10, v11, :cond_4

    .line 90
    const/16 v13, 0x10

    new-array v5, v13, [I

    .line 95
    .local v5, "state":[I
    array-length v1, v6

    invoke-static {v6, v12, v5, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v12, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int_array([BII)[I

    move-result-object v1

    const/4 v14, 0x4

    invoke-static {v1, v12, v5, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    const/16 v15, 0xe

    aget v1, v5, v15

    long-to-int v2, v8

    xor-int/2addr v1, v2

    aput v1, v5, v15

    .line 99
    const/16 v16, 0xf

    aget v1, v5, v16

    const/16 v17, 0x20

    ushr-long v2, v8, v17

    long-to-int v3, v2

    xor-int/2addr v1, v3

    aput v1, v5, v16

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 102
    const/16 v3, 0x8

    const/16 v4, 0xc

    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    const/4 v1, 0x0

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    const/4 v2, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 103
    const/16 v3, 0x9

    const/16 v4, 0xd

    const/4 v1, 0x1

    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 104
    const/16 v3, 0xa

    const/16 v4, 0xe

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 105
    const/16 v3, 0xb

    const/16 v4, 0xf

    const/4 v1, 0x3

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 106
    const/16 v3, 0xa

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 107
    const/16 v3, 0xb

    const/16 v4, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 108
    const/16 v3, 0x8

    const/16 v4, 0xd

    const/4 v1, 0x2

    const/4 v2, 0x7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 109
    const/16 v3, 0x9

    const/16 v4, 0xe

    const/4 v1, 0x3

    const/4 v2, 0x4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    .line 100
    add-int/lit8 v1, v18, 0x1

    .end local v18    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 112
    :cond_0
    move/from16 v18, v1

    .end local v1    # "i":I
    .restart local v18    # "i":I
    const/4 v1, 0x0

    .local v1, "v":I
    :goto_2
    if-ge v1, v14, :cond_1

    .line 114
    aget v2, v5, v1

    aget v3, v6, v1

    add-int/2addr v2, v3

    aput v2, v5, v1

    .line 112
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 116
    :cond_1
    const/4 v1, 0x4

    :goto_3
    if-ge v1, v15, :cond_2

    .line 120
    aget v2, v5, v1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    mul-int/lit8 v14, v1, 0x4

    sub-int/2addr v14, v13

    invoke-virtual {v3, v4, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v5, v1

    .line 116
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 124
    :cond_2
    aget v2, v5, v15

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v14, 0x28

    invoke-virtual {v3, v4, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v3

    long-to-int v4, v8

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v5, v15

    .line 127
    aget v2, v5, v16

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v14, 0x2c

    invoke-virtual {v3, v4, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v3

    ushr-long v14, v8, v17

    long-to-int v4, v14

    xor-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v5, v16

    .line 128
    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    .line 134
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v13, :cond_3

    .line 144
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v3, v10, 0x2

    shl-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    add-int/2addr v3, v12

    aget v4, v5, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 146
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v3, v10, 0x2

    shl-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    aget v4, v5, v1

    ushr-int/2addr v4, v11

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 148
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v3, v10, 0x2

    shl-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    aget v4, v5, v1

    ushr-int/2addr v4, v13

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 150
    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v3, v10, 0x2

    shl-int/lit8 v4, v1, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    aget v4, v5, v1

    ushr-int/lit8 v4, v4, 0x18

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 88
    .end local v1    # "v":I
    .end local v5    # "state":[I
    .end local v18    # "i":I
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 155
    :cond_4
    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object v1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    invoke-static {v1, v12, v2, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 158
    iput v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    .line 159
    return-void
.end method

.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;
.super Ljava/lang/Object;
.source "Scalar25519.java"


# static fields
.field private static final L:[I

.field private static final L0:I = -0x30a2c13

.field private static final L1:I = 0x12631a6

.field private static final L2:I = 0x79cd658

.field private static final L3:I = -0x6215d1

.field private static final L4:I = 0x14df

.field private static final LSq:[I

.field private static final M08L:J = 0xffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x20

.field static final SIZE:I = 0x8

.field private static final TARGET_LENGTH:I = 0xfe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    .line 20
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_1
    .array-data 4
        -0x54ed7697
        -0x1d12097b
        0x2298a31d
        0x68039276
        -0x2de80a42
        0x3dceec73
        0x1b7c309a
        -0x5e4c66bf
        0x4b9eba7d    # 2.0804858E7f
        -0x34fdb39d    # -8539235.0f
        -0x2ba10c66
        0x29bdf3b
        0x0
        0x0
        0x0
        0x1000000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 1
    .param p0, "s"    # [B
    .param p1, "n"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "n"
        }
    .end annotation

    .line 32
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 33
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static decode([B[I)V
    .locals 2
    .param p0, "k"    # [B
    .param p1, "n"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "n"
        }
    .end annotation

    .line 38
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    .line 39
    return-void
.end method

.method static getOrderWnafVar(I[B)V
    .locals 1
    .param p0, "width"    # I
    .param p1, "ws"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "ws"
        }
    .end annotation

    .line 43
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 44
    return-void
.end method

.method static multiply128Var([I[I[I)V
    .locals 5
    .param p0, "x"    # [I
    .param p1, "y128"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y128",
            "z"
        }
    .end annotation

    .line 48
    const/16 v0, 0xc

    new-array v1, v0, [I

    .line 49
    .local v1, "tt":[I
    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->mul128([I[I[I)V

    .line 51
    const/4 v2, 0x3

    aget v2, p1, v2

    const/4 v3, 0x0

    if-gez v2, :cond_0

    .line 53
    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4, v3}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    .line 54
    invoke-static {p0, v3, v1, v4, v3}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([II[III)I

    .line 57
    :cond_0
    const/16 v2, 0x30

    new-array v2, v2, [B

    .line 58
    .local v2, "bytes":[B
    invoke-static {v1, v3, v0, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    .line 60
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce384([B)[B

    move-result-object v0

    .line 61
    .local v0, "r":[B
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 62
    return-void
.end method

.method static reduce384([B)[B
    .locals 46
    .param p0, "n"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 66
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 67
    .local v2, "x00":J
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .line 68
    .local v7, "x01":J
    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .line 69
    .local v10, "x02":J
    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    .line 70
    .local v12, "x03":J
    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    .line 71
    .local v4, "x04":J
    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move-wide/from16 v19, v7

    const/16 v18, 0x4

    .end local v7    # "x01":J
    .local v19, "x01":J
    int-to-long v6, v15

    and-long v6, v6, v16

    .line 72
    .local v6, "x05":J
    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    .line 73
    .local v14, "x06":J
    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    .end local v10    # "x02":J
    .local v21, "x02":J
    int-to-long v9, v8

    and-long v9, v9, v16

    .line 74
    .local v9, "x07":J
    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    const/16 v10, 0x1c

    .end local v9    # "x07":J
    .local v23, "x07":J
    int-to-long v8, v11

    and-long v8, v8, v16

    .line 75
    .local v8, "x08":J
    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    const/16 v25, 0x1c

    int-to-long v10, v11

    and-long v10, v10, v16

    .line 76
    .local v10, "x09":J
    const/16 v1, 0x23

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    move-wide/from16 v26, v2

    .end local v2    # "x00":J
    .local v26, "x00":J
    int-to-long v1, v1

    and-long v1, v1, v16

    .line 77
    .local v1, "x10":J
    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v28, v1

    .end local v1    # "x10":J
    .local v28, "x10":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 78
    .local v1, "x11":J
    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v30, v1

    .end local v1    # "x11":J
    .local v30, "x11":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 79
    .local v1, "x12":J
    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    .end local v1    # "x12":J
    .local v32, "x12":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 84
    .local v0, "x13":J
    shr-long v2, v32, v25

    add-long/2addr v0, v2

    const-wide/32 v2, 0xfffffff

    and-long v16, v32, v2

    .line 85
    .end local v32    # "x12":J
    .local v16, "x12":J
    const-wide/32 v32, -0x30a2c13

    mul-long v34, v0, v32

    sub-long v4, v4, v34

    .line 86
    const-wide/32 v34, 0x12631a6

    mul-long v36, v0, v34

    sub-long v6, v6, v36

    .line 87
    const-wide/32 v36, 0x79cd658

    mul-long v38, v0, v36

    sub-long v14, v14, v38

    .line 88
    const-wide/32 v38, -0x6215d1

    mul-long v40, v0, v38

    sub-long v23, v23, v40

    .line 89
    const-wide/16 v40, 0x14df

    mul-long v42, v0, v40

    sub-long v8, v8, v42

    .line 91
    shr-long v42, v30, v25

    add-long v16, v16, v42

    and-long v30, v30, v2

    .line 92
    mul-long v42, v16, v32

    sub-long v12, v12, v42

    .line 93
    mul-long v42, v16, v34

    sub-long v4, v4, v42

    .line 94
    mul-long v42, v16, v36

    sub-long v6, v6, v42

    .line 95
    mul-long v42, v16, v38

    sub-long v14, v14, v42

    .line 96
    mul-long v42, v16, v40

    sub-long v23, v23, v42

    .line 98
    shr-long v42, v28, v25

    add-long v30, v30, v42

    and-long v28, v28, v2

    .line 99
    mul-long v42, v30, v32

    sub-long v21, v21, v42

    .line 100
    mul-long v42, v30, v34

    sub-long v12, v12, v42

    .line 101
    mul-long v42, v30, v36

    sub-long v4, v4, v42

    .line 102
    mul-long v42, v30, v38

    sub-long v6, v6, v42

    .line 103
    mul-long v42, v30, v40

    sub-long v14, v14, v42

    .line 105
    shr-long v42, v10, v25

    add-long v28, v28, v42

    and-long/2addr v10, v2

    .line 106
    mul-long v42, v28, v32

    sub-long v19, v19, v42

    .line 107
    mul-long v42, v28, v34

    sub-long v21, v21, v42

    .line 108
    mul-long v42, v28, v36

    sub-long v12, v12, v42

    .line 109
    mul-long v42, v28, v38

    sub-long v4, v4, v42

    .line 110
    mul-long v42, v28, v40

    sub-long v6, v6, v42

    .line 112
    shr-long v42, v23, v25

    add-long v8, v8, v42

    and-long v23, v23, v2

    .line 113
    shr-long v42, v8, v25

    add-long v10, v10, v42

    and-long/2addr v8, v2

    .line 115
    const/16 v18, 0x1b

    ushr-long v42, v8, v18

    .line 116
    .local v42, "t":J
    add-long v10, v10, v42

    .line 118
    mul-long v44, v10, v32

    sub-long v26, v26, v44

    .line 119
    mul-long v44, v10, v34

    sub-long v19, v19, v44

    .line 120
    mul-long v44, v10, v36

    sub-long v21, v21, v44

    .line 121
    mul-long v44, v10, v38

    sub-long v12, v12, v44

    .line 122
    mul-long v44, v10, v40

    sub-long v4, v4, v44

    .line 124
    shr-long v44, v26, v25

    add-long v19, v19, v44

    and-long v26, v26, v2

    .line 125
    shr-long v44, v19, v25

    add-long v21, v21, v44

    and-long v19, v19, v2

    .line 126
    shr-long v44, v21, v25

    add-long v12, v12, v44

    and-long v21, v21, v2

    .line 127
    shr-long v44, v12, v25

    add-long v4, v4, v44

    and-long/2addr v12, v2

    .line 128
    shr-long v44, v4, v25

    add-long v6, v6, v44

    and-long/2addr v4, v2

    .line 129
    shr-long v44, v6, v25

    add-long v14, v14, v44

    and-long/2addr v6, v2

    .line 130
    shr-long v44, v14, v25

    add-long v23, v23, v44

    and-long/2addr v14, v2

    .line 131
    shr-long v44, v23, v25

    add-long v8, v8, v44

    and-long v23, v23, v2

    .line 132
    shr-long v10, v8, v25

    and-long/2addr v8, v2

    .line 134
    sub-long v10, v10, v42

    .line 138
    and-long v32, v10, v32

    add-long v26, v26, v32

    .line 139
    and-long v32, v10, v34

    add-long v19, v19, v32

    .line 140
    and-long v32, v10, v36

    add-long v21, v21, v32

    .line 141
    and-long v32, v10, v38

    add-long v12, v12, v32

    .line 142
    and-long v32, v10, v40

    add-long v4, v4, v32

    .line 144
    shr-long v32, v26, v25

    add-long v19, v19, v32

    and-long v26, v26, v2

    .line 145
    shr-long v32, v19, v25

    add-long v21, v21, v32

    and-long v19, v19, v2

    .line 146
    shr-long v32, v21, v25

    add-long v12, v12, v32

    and-long v21, v21, v2

    .line 147
    shr-long v32, v12, v25

    add-long v4, v4, v32

    and-long/2addr v12, v2

    .line 148
    shr-long v32, v4, v25

    add-long v6, v6, v32

    and-long/2addr v4, v2

    .line 149
    shr-long v32, v6, v25

    add-long v14, v14, v32

    and-long/2addr v6, v2

    .line 150
    shr-long v32, v14, v25

    add-long v23, v23, v32

    and-long/2addr v14, v2

    .line 151
    shr-long v32, v23, v25

    add-long v8, v8, v32

    and-long v2, v23, v2

    .line 153
    .end local v23    # "x07":J
    .local v2, "x07":J
    move-wide/from16 v23, v0

    .end local v0    # "x13":J
    .local v23, "x13":J
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 154
    .local v0, "r":[B
    shl-long v32, v19, v25

    move-wide/from16 v34, v2

    .end local v2    # "x07":J
    .local v34, "x07":J
    or-long v1, v26, v32

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 155
    shl-long v1, v12, v25

    or-long v1, v21, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 156
    shl-long v1, v6, v25

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 157
    shl-long v1, v34, v25

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 158
    long-to-int v1, v8

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    .line 159
    return-object v0
.end method

.method static reduce512([B)[B
    .locals 59
    .param p0, "n"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 165
    .local v2, "x00":J
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .line 166
    .local v7, "x01":J
    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .line 167
    .local v10, "x02":J
    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    .line 168
    .local v12, "x03":J
    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    .line 169
    .local v4, "x04":J
    const/16 v15, 0x12

    invoke-static {v0, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v15

    shl-int/2addr v15, v6

    move-wide/from16 v19, v7

    const/16 v18, 0x4

    .end local v7    # "x01":J
    .local v19, "x01":J
    int-to-long v6, v15

    and-long v6, v6, v16

    .line 170
    .local v6, "x05":J
    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    .line 171
    .local v14, "x06":J
    const/16 v8, 0x19

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    move-wide/from16 v21, v10

    .end local v10    # "x02":J
    .local v21, "x02":J
    int-to-long v9, v8

    and-long v9, v9, v16

    .line 172
    .local v9, "x07":J
    const/16 v8, 0x1c

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v11

    move-wide/from16 v23, v9

    const/16 v10, 0x1c

    .end local v9    # "x07":J
    .local v23, "x07":J
    int-to-long v8, v11

    and-long v8, v8, v16

    .line 173
    .local v8, "x08":J
    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v25

    const/16 v26, 0x1c

    shl-int/lit8 v10, v25, 0x4

    move-wide/from16 v27, v2

    .end local v2    # "x00":J
    .local v27, "x00":J
    int-to-long v1, v10

    and-long v1, v1, v16

    .line 174
    .local v1, "x09":J
    const/16 v3, 0x23

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v29, v12

    .end local v12    # "x03":J
    .local v29, "x03":J
    int-to-long v11, v3

    and-long v11, v11, v16

    .line 175
    .local v11, "x10":J
    const/16 v3, 0x27

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v31, v11

    .end local v11    # "x10":J
    .local v31, "x10":J
    int-to-long v10, v3

    and-long v10, v10, v16

    .line 176
    .local v10, "x11":J
    const/16 v3, 0x2a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v33, v14

    .end local v14    # "x06":J
    .local v33, "x06":J
    int-to-long v13, v3

    and-long v13, v13, v16

    .line 177
    .local v13, "x12":J
    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v35, v13

    .end local v13    # "x12":J
    .local v35, "x12":J
    int-to-long v12, v3

    and-long v12, v12, v16

    .line 178
    .local v12, "x13":J
    const/16 v3, 0x31

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v37, v1

    .end local v1    # "x09":J
    .local v37, "x09":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 179
    .local v1, "x14":J
    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v39, v1

    .end local v1    # "x14":J
    .local v39, "x14":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 180
    .local v1, "x15":J
    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v41, v1

    .end local v1    # "x15":J
    .local v41, "x15":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 181
    .local v1, "x16":J
    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v43, v1

    .end local v1    # "x16":J
    .local v43, "x16":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 182
    .local v0, "x17":J
    const/16 v2, 0x3f

    aget-byte v2, p0, v2

    int-to-long v2, v2

    const-wide/16 v16, 0xff

    and-long v2, v2, v16

    .line 186
    .local v2, "x18":J
    const-wide/32 v16, -0x30a2c13

    mul-long v45, v2, v16

    sub-long v37, v37, v45

    .line 187
    const-wide/32 v45, 0x12631a6

    mul-long v47, v2, v45

    sub-long v31, v31, v47

    .line 188
    const-wide/32 v47, 0x79cd658

    mul-long v49, v2, v47

    sub-long v10, v10, v49

    .line 189
    const-wide/32 v49, -0x6215d1

    mul-long v51, v2, v49

    sub-long v35, v35, v51

    .line 190
    const-wide/16 v51, 0x14df

    mul-long v53, v2, v51

    sub-long v12, v12, v53

    .line 192
    shr-long v53, v43, v26

    add-long v0, v0, v53

    const-wide/32 v53, 0xfffffff

    and-long v43, v43, v53

    .line 193
    mul-long v55, v0, v16

    sub-long v8, v8, v55

    .line 194
    mul-long v55, v0, v45

    sub-long v37, v37, v55

    .line 195
    mul-long v55, v0, v47

    sub-long v31, v31, v55

    .line 196
    mul-long v55, v0, v49

    sub-long v10, v10, v55

    .line 197
    mul-long v55, v0, v51

    sub-long v35, v35, v55

    .line 200
    mul-long v55, v43, v16

    sub-long v23, v23, v55

    .line 201
    mul-long v55, v43, v45

    sub-long v8, v8, v55

    .line 202
    mul-long v55, v43, v47

    sub-long v37, v37, v55

    .line 203
    mul-long v55, v43, v49

    sub-long v31, v31, v55

    .line 204
    mul-long v55, v43, v51

    sub-long v10, v10, v55

    .line 206
    shr-long v55, v39, v26

    add-long v41, v41, v55

    and-long v39, v39, v53

    .line 207
    mul-long v55, v41, v16

    sub-long v33, v33, v55

    .line 208
    mul-long v55, v41, v45

    sub-long v23, v23, v55

    .line 209
    mul-long v55, v41, v47

    sub-long v8, v8, v55

    .line 210
    mul-long v55, v41, v49

    sub-long v37, v37, v55

    .line 211
    mul-long v55, v41, v51

    sub-long v31, v31, v55

    .line 214
    mul-long v55, v39, v16

    sub-long v6, v6, v55

    .line 215
    mul-long v55, v39, v45

    sub-long v33, v33, v55

    .line 216
    mul-long v55, v39, v47

    sub-long v23, v23, v55

    .line 217
    mul-long v55, v39, v49

    sub-long v8, v8, v55

    .line 218
    mul-long v55, v39, v51

    sub-long v37, v37, v55

    .line 220
    shr-long v55, v35, v26

    add-long v12, v12, v55

    and-long v35, v35, v53

    .line 221
    mul-long v55, v12, v16

    sub-long v4, v4, v55

    .line 222
    mul-long v55, v12, v45

    sub-long v6, v6, v55

    .line 223
    mul-long v55, v12, v47

    sub-long v33, v33, v55

    .line 224
    mul-long v55, v12, v49

    sub-long v23, v23, v55

    .line 225
    mul-long v55, v12, v51

    sub-long v8, v8, v55

    .line 227
    shr-long v55, v10, v26

    add-long v35, v35, v55

    and-long v10, v10, v53

    .line 228
    mul-long v55, v35, v16

    sub-long v29, v29, v55

    .line 229
    mul-long v55, v35, v45

    sub-long v4, v4, v55

    .line 230
    mul-long v55, v35, v47

    sub-long v6, v6, v55

    .line 231
    mul-long v55, v35, v49

    sub-long v33, v33, v55

    .line 232
    mul-long v55, v35, v51

    sub-long v23, v23, v55

    .line 234
    shr-long v55, v31, v26

    add-long v10, v10, v55

    and-long v31, v31, v53

    .line 235
    mul-long v55, v10, v16

    sub-long v21, v21, v55

    .line 236
    mul-long v55, v10, v45

    sub-long v29, v29, v55

    .line 237
    mul-long v55, v10, v47

    sub-long v4, v4, v55

    .line 238
    mul-long v55, v10, v49

    sub-long v6, v6, v55

    .line 239
    mul-long v55, v10, v51

    sub-long v33, v33, v55

    .line 241
    shr-long v55, v37, v26

    add-long v31, v31, v55

    and-long v37, v37, v53

    .line 242
    mul-long v55, v31, v16

    sub-long v19, v19, v55

    .line 243
    mul-long v55, v31, v45

    sub-long v21, v21, v55

    .line 244
    mul-long v55, v31, v47

    sub-long v29, v29, v55

    .line 245
    mul-long v55, v31, v49

    sub-long v4, v4, v55

    .line 246
    mul-long v55, v31, v51

    sub-long v6, v6, v55

    .line 248
    shr-long v55, v23, v26

    add-long v8, v8, v55

    and-long v23, v23, v53

    .line 249
    shr-long v55, v8, v26

    add-long v37, v37, v55

    and-long v8, v8, v53

    .line 251
    const/16 v14, 0x1b

    ushr-long v55, v8, v14

    .line 252
    .local v55, "t":J
    add-long v37, v37, v55

    .line 254
    mul-long v57, v37, v16

    sub-long v27, v27, v57

    .line 255
    mul-long v57, v37, v45

    sub-long v19, v19, v57

    .line 256
    mul-long v57, v37, v47

    sub-long v21, v21, v57

    .line 257
    mul-long v57, v37, v49

    sub-long v29, v29, v57

    .line 258
    mul-long v57, v37, v51

    sub-long v4, v4, v57

    .line 260
    shr-long v57, v27, v26

    add-long v19, v19, v57

    and-long v27, v27, v53

    .line 261
    shr-long v57, v19, v26

    add-long v21, v21, v57

    and-long v19, v19, v53

    .line 262
    shr-long v57, v21, v26

    add-long v29, v29, v57

    and-long v21, v21, v53

    .line 263
    shr-long v57, v29, v26

    add-long v4, v4, v57

    and-long v29, v29, v53

    .line 264
    shr-long v57, v4, v26

    add-long v6, v6, v57

    and-long v4, v4, v53

    .line 265
    shr-long v57, v6, v26

    add-long v33, v33, v57

    and-long v6, v6, v53

    .line 266
    shr-long v57, v33, v26

    add-long v23, v23, v57

    and-long v33, v33, v53

    .line 267
    shr-long v57, v23, v26

    add-long v8, v8, v57

    and-long v23, v23, v53

    .line 268
    shr-long v37, v8, v26

    and-long v8, v8, v53

    .line 270
    sub-long v37, v37, v55

    .line 274
    and-long v16, v37, v16

    add-long v27, v27, v16

    .line 275
    and-long v16, v37, v45

    add-long v19, v19, v16

    .line 276
    and-long v16, v37, v47

    add-long v21, v21, v16

    .line 277
    and-long v16, v37, v49

    add-long v29, v29, v16

    .line 278
    and-long v16, v37, v51

    add-long v4, v4, v16

    .line 280
    shr-long v16, v27, v26

    add-long v19, v19, v16

    and-long v16, v27, v53

    .line 281
    .end local v27    # "x00":J
    .local v16, "x00":J
    shr-long v27, v19, v26

    add-long v21, v21, v27

    and-long v19, v19, v53

    .line 282
    shr-long v27, v21, v26

    add-long v29, v29, v27

    and-long v21, v21, v53

    .line 283
    shr-long v27, v29, v26

    add-long v4, v4, v27

    and-long v27, v29, v53

    .line 284
    .end local v29    # "x03":J
    .local v27, "x03":J
    shr-long v29, v4, v26

    add-long v6, v6, v29

    and-long v4, v4, v53

    .line 285
    shr-long v29, v6, v26

    add-long v33, v33, v29

    and-long v6, v6, v53

    .line 286
    shr-long v29, v33, v26

    add-long v23, v23, v29

    and-long v29, v33, v53

    .line 287
    .end local v33    # "x06":J
    .local v29, "x06":J
    shr-long v33, v23, v26

    add-long v8, v8, v33

    and-long v23, v23, v53

    .line 289
    const/16 v15, 0x20

    new-array v14, v15, [B

    .line 290
    .local v14, "r":[B
    shl-long v33, v19, v26

    move-wide/from16 v45, v0

    .end local v0    # "x17":J
    .local v45, "x17":J
    or-long v0, v16, v33

    const/4 v15, 0x0

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 291
    shl-long v0, v27, v26

    or-long v0, v21, v0

    const/4 v15, 0x7

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 292
    shl-long v0, v6, v26

    or-long/2addr v0, v4

    const/16 v15, 0xe

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 293
    shl-long v0, v23, v26

    or-long v0, v29, v0

    const/16 v15, 0x15

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 294
    long-to-int v0, v8

    const/16 v1, 0x1c

    invoke-static {v0, v14, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    .line 295
    return-object v14
.end method

.method static reduceBasisVar([I[I[I)Z
    .locals 20
    .param p0, "k"    # [I
    .param p1, "z0"    # [I
    .param p2, "z1"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "z0",
            "z1"
        }
    .end annotation

    .line 306
    move-object/from16 v0, p0

    const/16 v1, 0x10

    new-array v2, v1, [I

    .local v2, "Nu":[I
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 307
    new-array v3, v1, [I

    .local v3, "Nv":[I
    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    aget v5, v3, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 308
    new-array v11, v1, [I

    .local v11, "p":[I
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v5, v0, v11}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 309
    new-array v12, v1, [I

    .line 310
    .local v12, "t":[I
    const/4 v1, 0x4

    new-array v5, v1, [I

    .local v5, "u0":[I
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v7, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 311
    new-array v7, v1, [I

    .line 312
    .local v7, "u1":[I
    new-array v8, v1, [I

    .local v8, "v0":[I
    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 313
    new-array v9, v1, [I

    .local v9, "v1":[I
    aput v6, v9, v4

    .line 316
    const/16 v10, 0x3f8

    .line 317
    .local v10, "iterations":I
    const/16 v13, 0xf

    .line 318
    .local v13, "last":I
    invoke-static {v13, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v14

    move-object v15, v5

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object/from16 v18, v9

    move v7, v13

    move-object v9, v2

    move v2, v10

    move-object v10, v3

    move v3, v14

    .line 320
    .end local v5    # "u0":[I
    .end local v8    # "v0":[I
    .end local v13    # "last":I
    .local v2, "iterations":I
    .local v3, "len_Nv":I
    .local v7, "last":I
    .local v9, "Nu":[I
    .local v10, "Nv":[I
    .local v15, "u0":[I
    .local v16, "u1":[I
    .local v17, "v0":[I
    .local v18, "v1":[I
    :goto_0
    const/16 v5, 0xfe

    if-le v3, v5, :cond_3

    .line 322
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 324
    return v4

    .line 327
    :cond_0
    invoke-static {v7, v11}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v5

    .line 328
    .local v5, "len_p":I
    sub-int v8, v5, v3

    .line 329
    .local v8, "s":I
    shr-int/lit8 v13, v8, 0x1f

    not-int v13, v13

    and-int v14, v8, v13

    .line 331
    .end local v8    # "s":I
    .local v14, "s":I
    aget v8, v11, v7

    if-gez v8, :cond_1

    .line 333
    move v8, v14

    .end local v14    # "s":I
    .restart local v8    # "s":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    .line 334
    .end local v8    # "s":I
    .restart local v14    # "s":I
    const/4 v13, 0x3

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    goto :goto_1

    .line 338
    :cond_1
    move v8, v14

    .end local v14    # "s":I
    .restart local v8    # "s":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    .line 339
    .end local v8    # "s":I
    .restart local v14    # "s":I
    const/4 v13, 0x3

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    .line 342
    .end local v17    # "v0":[I
    .end local v18    # "v1":[I
    .local v8, "v0":[I
    .local v13, "v1":[I
    :goto_1
    invoke-static {v7, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 344
    move-object/from16 v17, v15

    .local v17, "t0":[I
    move-object v15, v8

    move-object/from16 v8, v17

    .line 345
    move-object/from16 v18, v16

    .local v18, "t1":[I
    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 346
    move-object/from16 v19, v9

    .local v19, "tN":[I
    move-object v9, v10

    move-object/from16 v10, v19

    .line 348
    ushr-int/lit8 v7, v3, 0x5

    .line 349
    invoke-static {v7, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v3

    goto :goto_2

    .line 342
    .end local v17    # "t0":[I
    .end local v18    # "t1":[I
    .end local v19    # "tN":[I
    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v18, v13

    .line 351
    .end local v5    # "len_p":I
    .end local v8    # "v0":[I
    .end local v13    # "v1":[I
    .end local v14    # "s":I
    .local v17, "v0":[I
    .local v18, "v1":[I
    :goto_2
    goto :goto_0

    .line 354
    :cond_3
    move-object/from16 v8, v17

    move-object/from16 v13, v18

    .end local v17    # "v0":[I
    .end local v18    # "v1":[I
    .restart local v8    # "v0":[I
    .restart local v13    # "v1":[I
    move-object/from16 v5, p1

    invoke-static {v8, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    move-object/from16 v14, p2

    invoke-static {v13, v4, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 356
    return v6
.end method

.method static toSignedDigits(I[I)V
    .locals 4
    .param p0, "bits"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bits",
            "z"
        }
    .end annotation

    .line 365
    const/4 v0, 0x0

    aget v0, p1, v0

    not-int v0, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/16 v3, 0x8

    invoke-static {v3, v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->caddTo(II[I[I)I

    .line 367
    invoke-static {v3, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 368
    return-void
.end method

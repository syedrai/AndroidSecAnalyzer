.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar448;
.super Ljava/lang/Object;
.source "Scalar448.java"


# static fields
.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final LSq:[I

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x39

.field static final SIZE:I = 0xe

.field private static final TARGET_LENGTH:I = 0x1bf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    .line 20
    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_1
    .array-data 4
        0x1ba1fea9
        -0x3e520448
        0x49e0a8b2    # 1840406.2f
        -0x46e40ac9
        -0x189b27eb
        0x4525492b
        -0x5d478e93    # -4.9993394E-18f
        0x4ae17cf6    # 7388795.0f
        -0x45c3b83c
        -0xe5633ec
        0x7e4d070a
        -0x6dfad435
        -0x607dc48e
        -0x3cbfd56d
        0x55ac2279
        -0x6e439eb7
        0x46e2c7aa
        0x10b66139
        -0x2894e4b8
        -0x1dd8925c
        -0x419aee0c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 2
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

    .line 45
    const/16 v0, 0x38

    aget-byte v0, p0, v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 50
    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 51
    const/16 v0, 0xe

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

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

    .line 58
    const/4 v0, 0x0

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    .line 59
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

    .line 63
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 64
    return-void
.end method

.method static multiply225Var([I[I[I)V
    .locals 9
    .param p0, "x"    # [I
    .param p1, "y225"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y225",
            "z"
        }
    .end annotation

    .line 70
    const/16 v0, 0x16

    new-array v7, v0, [I

    .line 71
    .local v7, "tt":[I
    const/16 v6, 0xe

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    const/4 v5, 0x0

    move-object v4, p0

    move-object v1, p1

    .end local p0    # "x":[I
    .end local p1    # "y225":[I
    .local v1, "y225":[I
    .local v4, "x":[I
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->mul([III[III[II)V

    .line 73
    const/4 p0, 0x7

    aget p0, v1, p0

    const/4 p1, 0x0

    if-gez p0, :cond_0

    .line 75
    sget-object p0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v2, 0xe

    const/16 v3, 0x8

    invoke-static {v2, p0, p1, v7, v3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    .line 76
    invoke-static {v2, v4, p1, v7, v3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    .line 79
    :cond_0
    const/16 p0, 0x58

    new-array p0, p0, [B

    .line 80
    .local p0, "bytes":[B
    invoke-static {v7, p1, v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    .line 82
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce704([B)[B

    move-result-object p1

    .line 83
    .local p1, "r":[B
    invoke-static {p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 84
    return-void
.end method

.method static reduce704([B)[B
    .locals 74
    .param p0, "n"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 88
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 89
    .local v2, "x00":J
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .line 90
    .local v7, "x01":J
    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .line 91
    .local v10, "x02":J
    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    .line 92
    .local v12, "x03":J
    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    .line 93
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

    .line 94
    .local v6, "x05":J
    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    .line 95
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

    .line 96
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

    .line 97
    .local v8, "x08":J
    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    const/16 v25, 0x1c

    int-to-long v10, v11

    and-long v10, v10, v16

    .line 98
    .local v10, "x09":J
    const/16 v1, 0x23

    move-wide/from16 v26, v2

    .end local v2    # "x00":J
    .local v26, "x00":J
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v2, v2, v16

    .line 99
    .local v2, "x10":J
    const/16 v1, 0x27

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    move-wide/from16 v28, v2

    .end local v2    # "x10":J
    .local v28, "x10":J
    int-to-long v1, v1

    and-long v1, v1, v16

    .line 100
    .local v1, "x11":J
    const/16 v3, 0x2a

    move-wide/from16 v30, v1

    .end local v1    # "x11":J
    .local v30, "x11":J
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    .line 101
    .local v1, "x12":J
    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    .end local v1    # "x12":J
    .local v32, "x12":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 102
    .local v1, "x13":J
    const/16 v3, 0x31

    move-wide/from16 v34, v1

    .end local v1    # "x13":J
    .local v34, "x13":J
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    .line 103
    .local v1, "x14":J
    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v36, v1

    .end local v1    # "x14":J
    .local v36, "x14":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 104
    .local v1, "x15":J
    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v38, v1

    .end local v1    # "x15":J
    .local v38, "x15":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 105
    .local v1, "x16":J
    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v40, v1

    .end local v1    # "x16":J
    .local v40, "x16":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 106
    .local v1, "x17":J
    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v42, v1

    .end local v1    # "x17":J
    .local v42, "x17":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 107
    .local v1, "x18":J
    const/16 v3, 0x43

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v44, v1

    .end local v1    # "x18":J
    .local v44, "x18":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 108
    .local v1, "x19":J
    const/16 v3, 0x46

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v46, v1

    .end local v1    # "x19":J
    .local v46, "x19":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 109
    .local v1, "x20":J
    const/16 v3, 0x4a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v48, v1

    .end local v1    # "x20":J
    .local v48, "x20":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 110
    .local v1, "x21":J
    const/16 v3, 0x4d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v50, v1

    .end local v1    # "x21":J
    .local v50, "x21":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 111
    .local v1, "x22":J
    const/16 v3, 0x51

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v52, v1

    .end local v1    # "x22":J
    .local v52, "x22":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 112
    .local v1, "x23":J
    const/16 v3, 0x54

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v54, v1

    .end local v1    # "x23":J
    .local v54, "x23":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 113
    .local v0, "x24":J
    const-wide/16 v2, 0x0

    .line 115
    .local v2, "x25":J
    ushr-long v16, v0, v25

    add-long v2, v2, v16

    const-wide/32 v16, 0xfffffff

    and-long v0, v0, v16

    .line 116
    const-wide/32 v56, 0x29eec34

    mul-long v58, v2, v56

    add-long v10, v10, v58

    .line 117
    const-wide/32 v58, 0x1cf5b55

    mul-long v60, v2, v58

    add-long v28, v28, v60

    .line 118
    const-wide/32 v60, 0x9c2ab72

    mul-long v62, v2, v60

    add-long v30, v30, v62

    .line 119
    const-wide/32 v62, 0xf635c8e

    mul-long v64, v2, v62

    add-long v32, v32, v64

    .line 120
    const-wide/32 v64, 0x5bf7a4c

    mul-long v66, v2, v64

    add-long v34, v34, v66

    .line 121
    const-wide/32 v66, 0xd944a72

    mul-long v68, v2, v66

    add-long v36, v36, v68

    .line 122
    const-wide/32 v68, 0x8eec492

    mul-long v70, v2, v68

    add-long v38, v38, v70

    .line 123
    const-wide/32 v70, 0x20cd7705

    mul-long v72, v2, v70

    add-long v40, v40, v72

    .line 125
    ushr-long v72, v48, v25

    add-long v50, v50, v72

    and-long v48, v48, v16

    .line 126
    ushr-long v72, v50, v25

    add-long v52, v52, v72

    and-long v50, v50, v16

    .line 127
    ushr-long v72, v52, v25

    add-long v54, v54, v72

    and-long v52, v52, v16

    .line 128
    ushr-long v72, v54, v25

    add-long v0, v0, v72

    and-long v54, v54, v16

    .line 130
    mul-long v72, v0, v56

    add-long v8, v8, v72

    .line 131
    mul-long v72, v0, v58

    add-long v10, v10, v72

    .line 132
    mul-long v72, v0, v60

    add-long v28, v28, v72

    .line 133
    mul-long v72, v0, v62

    add-long v30, v30, v72

    .line 134
    mul-long v72, v0, v64

    add-long v32, v32, v72

    .line 135
    mul-long v72, v0, v66

    add-long v34, v34, v72

    .line 136
    mul-long v72, v0, v68

    add-long v36, v36, v72

    .line 137
    mul-long v72, v0, v70

    add-long v38, v38, v72

    .line 139
    mul-long v72, v54, v56

    add-long v23, v23, v72

    .line 140
    mul-long v72, v54, v58

    add-long v8, v8, v72

    .line 141
    mul-long v72, v54, v60

    add-long v10, v10, v72

    .line 142
    mul-long v72, v54, v62

    add-long v28, v28, v72

    .line 143
    mul-long v72, v54, v64

    add-long v30, v30, v72

    .line 144
    mul-long v72, v54, v66

    add-long v32, v32, v72

    .line 145
    mul-long v72, v54, v68

    add-long v34, v34, v72

    .line 146
    mul-long v72, v54, v70

    add-long v36, v36, v72

    .line 148
    mul-long v72, v52, v56

    add-long v14, v14, v72

    .line 149
    mul-long v72, v52, v58

    add-long v23, v23, v72

    .line 150
    mul-long v72, v52, v60

    add-long v8, v8, v72

    .line 151
    mul-long v72, v52, v62

    add-long v10, v10, v72

    .line 152
    mul-long v72, v52, v64

    add-long v28, v28, v72

    .line 153
    mul-long v72, v52, v66

    add-long v30, v30, v72

    .line 154
    mul-long v72, v52, v68

    add-long v32, v32, v72

    .line 155
    mul-long v72, v52, v70

    add-long v34, v34, v72

    .line 157
    ushr-long v72, v42, v25

    add-long v44, v44, v72

    and-long v42, v42, v16

    .line 158
    ushr-long v72, v44, v25

    add-long v46, v46, v72

    and-long v44, v44, v16

    .line 159
    ushr-long v72, v46, v25

    add-long v48, v48, v72

    and-long v46, v46, v16

    .line 160
    ushr-long v72, v48, v25

    add-long v50, v50, v72

    and-long v48, v48, v16

    .line 162
    mul-long v72, v50, v56

    add-long v6, v6, v72

    .line 163
    mul-long v72, v50, v58

    add-long v14, v14, v72

    .line 164
    mul-long v72, v50, v60

    add-long v23, v23, v72

    .line 165
    mul-long v72, v50, v62

    add-long v8, v8, v72

    .line 166
    mul-long v72, v50, v64

    add-long v10, v10, v72

    .line 167
    mul-long v72, v50, v66

    add-long v28, v28, v72

    .line 168
    mul-long v72, v50, v68

    add-long v30, v30, v72

    .line 169
    mul-long v72, v50, v70

    add-long v32, v32, v72

    .line 171
    mul-long v72, v48, v56

    add-long v4, v4, v72

    .line 172
    mul-long v72, v48, v58

    add-long v6, v6, v72

    .line 173
    mul-long v72, v48, v60

    add-long v14, v14, v72

    .line 174
    mul-long v72, v48, v62

    add-long v23, v23, v72

    .line 175
    mul-long v72, v48, v64

    add-long v8, v8, v72

    .line 176
    mul-long v72, v48, v66

    add-long v10, v10, v72

    .line 177
    mul-long v72, v48, v68

    add-long v28, v28, v72

    .line 178
    mul-long v72, v48, v70

    add-long v30, v30, v72

    .line 180
    mul-long v72, v46, v56

    add-long v12, v12, v72

    .line 181
    mul-long v72, v46, v58

    add-long v4, v4, v72

    .line 182
    mul-long v72, v46, v60

    add-long v6, v6, v72

    .line 183
    mul-long v72, v46, v62

    add-long v14, v14, v72

    .line 184
    mul-long v72, v46, v64

    add-long v23, v23, v72

    .line 185
    mul-long v72, v46, v66

    add-long v8, v8, v72

    .line 186
    mul-long v72, v46, v68

    add-long v10, v10, v72

    .line 187
    mul-long v72, v46, v70

    add-long v28, v28, v72

    .line 189
    ushr-long v72, v36, v25

    add-long v38, v38, v72

    and-long v36, v36, v16

    .line 190
    ushr-long v72, v38, v25

    add-long v40, v40, v72

    and-long v38, v38, v16

    .line 191
    ushr-long v72, v40, v25

    add-long v42, v42, v72

    and-long v40, v40, v16

    .line 192
    ushr-long v72, v42, v25

    add-long v44, v44, v72

    and-long v42, v42, v16

    .line 194
    mul-long v72, v44, v56

    add-long v21, v21, v72

    .line 195
    mul-long v72, v44, v58

    add-long v12, v12, v72

    .line 196
    mul-long v72, v44, v60

    add-long v4, v4, v72

    .line 197
    mul-long v72, v44, v62

    add-long v6, v6, v72

    .line 198
    mul-long v72, v44, v64

    add-long v14, v14, v72

    .line 199
    mul-long v72, v44, v66

    add-long v23, v23, v72

    .line 200
    mul-long v72, v44, v68

    add-long v8, v8, v72

    .line 201
    mul-long v72, v44, v70

    add-long v10, v10, v72

    .line 203
    mul-long v56, v56, v42

    add-long v19, v19, v56

    .line 204
    mul-long v58, v58, v42

    add-long v21, v21, v58

    .line 205
    mul-long v60, v60, v42

    add-long v12, v12, v60

    .line 206
    mul-long v62, v62, v42

    add-long v4, v4, v62

    .line 207
    mul-long v64, v64, v42

    add-long v6, v6, v64

    .line 208
    mul-long v66, v66, v42

    add-long v14, v14, v66

    .line 209
    mul-long v68, v68, v42

    add-long v23, v23, v68

    .line 210
    mul-long v70, v70, v42

    add-long v8, v8, v70

    .line 212
    const-wide/16 v56, 0x4

    mul-long v40, v40, v56

    .line 213
    const/16 v18, 0x1a

    ushr-long v56, v38, v18

    add-long v40, v40, v56

    const-wide/32 v56, 0x3ffffff

    and-long v38, v38, v56

    .line 214
    const-wide/16 v58, 0x1

    add-long v40, v40, v58

    .line 216
    const-wide/32 v60, 0x4a7bb0d

    mul-long v60, v60, v40

    add-long v26, v26, v60

    .line 217
    const-wide/32 v60, 0x873d6d5

    mul-long v60, v60, v40

    add-long v19, v19, v60

    .line 218
    const-wide/32 v60, 0xa70aadc

    mul-long v60, v60, v40

    add-long v21, v21, v60

    .line 219
    const-wide/32 v60, 0x3d8d723

    mul-long v60, v60, v40

    add-long v12, v12, v60

    .line 220
    const-wide/32 v60, 0x96fde93

    mul-long v60, v60, v40

    add-long v4, v4, v60

    .line 221
    const-wide/32 v60, 0xb65129c

    mul-long v60, v60, v40

    add-long v6, v6, v60

    .line 222
    const-wide/32 v60, 0x63bb124

    mul-long v60, v60, v40

    add-long v14, v14, v60

    .line 223
    const-wide/32 v60, 0x8335dc1

    mul-long v60, v60, v40

    add-long v23, v23, v60

    .line 225
    ushr-long v60, v26, v25

    add-long v19, v19, v60

    and-long v26, v26, v16

    .line 226
    ushr-long v60, v19, v25

    add-long v21, v21, v60

    and-long v19, v19, v16

    .line 227
    ushr-long v60, v21, v25

    add-long v12, v12, v60

    and-long v21, v21, v16

    .line 228
    ushr-long v60, v12, v25

    add-long v4, v4, v60

    and-long v12, v12, v16

    .line 229
    ushr-long v60, v4, v25

    add-long v6, v6, v60

    and-long v4, v4, v16

    .line 230
    ushr-long v60, v6, v25

    add-long v14, v14, v60

    and-long v6, v6, v16

    .line 231
    ushr-long v60, v14, v25

    add-long v23, v23, v60

    and-long v14, v14, v16

    .line 232
    ushr-long v60, v23, v25

    add-long v8, v8, v60

    and-long v23, v23, v16

    .line 233
    ushr-long v60, v8, v25

    add-long v10, v10, v60

    and-long v8, v8, v16

    .line 234
    ushr-long v60, v10, v25

    add-long v28, v28, v60

    and-long v10, v10, v16

    .line 235
    ushr-long v60, v28, v25

    add-long v30, v30, v60

    and-long v28, v28, v16

    .line 236
    ushr-long v60, v30, v25

    add-long v32, v32, v60

    and-long v30, v30, v16

    .line 237
    ushr-long v60, v32, v25

    add-long v34, v34, v60

    and-long v32, v32, v16

    .line 238
    ushr-long v60, v34, v25

    add-long v36, v36, v60

    and-long v34, v34, v16

    .line 239
    ushr-long v60, v36, v25

    add-long v38, v38, v60

    and-long v36, v36, v16

    .line 240
    ushr-long v40, v38, v18

    and-long v38, v38, v56

    .line 242
    sub-long v40, v40, v58

    .line 246
    const-wide/32 v56, 0x4a7bb0d

    and-long v56, v40, v56

    sub-long v26, v26, v56

    .line 247
    const-wide/32 v56, 0x873d6d5

    and-long v56, v40, v56

    sub-long v19, v19, v56

    .line 248
    const-wide/32 v56, 0xa70aadc

    and-long v56, v40, v56

    sub-long v21, v21, v56

    .line 249
    const-wide/32 v56, 0x3d8d723

    and-long v56, v40, v56

    sub-long v12, v12, v56

    .line 250
    const-wide/32 v56, 0x96fde93

    and-long v56, v40, v56

    sub-long v4, v4, v56

    .line 251
    const-wide/32 v56, 0xb65129c

    and-long v56, v40, v56

    sub-long v6, v6, v56

    .line 252
    const-wide/32 v56, 0x63bb124

    and-long v56, v40, v56

    sub-long v14, v14, v56

    .line 253
    const-wide/32 v56, 0x8335dc1

    and-long v56, v40, v56

    sub-long v23, v23, v56

    .line 255
    shr-long v56, v26, v25

    add-long v19, v19, v56

    and-long v26, v26, v16

    .line 256
    shr-long v56, v19, v25

    add-long v21, v21, v56

    and-long v19, v19, v16

    .line 257
    shr-long v56, v21, v25

    add-long v12, v12, v56

    and-long v21, v21, v16

    .line 258
    shr-long v56, v12, v25

    add-long v4, v4, v56

    and-long v12, v12, v16

    .line 259
    shr-long v56, v4, v25

    add-long v6, v6, v56

    and-long v4, v4, v16

    .line 260
    shr-long v56, v6, v25

    add-long v14, v14, v56

    and-long v6, v6, v16

    .line 261
    shr-long v56, v14, v25

    add-long v23, v23, v56

    and-long v14, v14, v16

    .line 262
    shr-long v56, v23, v25

    add-long v8, v8, v56

    and-long v23, v23, v16

    .line 263
    shr-long v56, v8, v25

    add-long v10, v10, v56

    and-long v8, v8, v16

    .line 264
    shr-long v56, v10, v25

    add-long v28, v28, v56

    and-long v10, v10, v16

    .line 265
    shr-long v56, v28, v25

    add-long v30, v30, v56

    and-long v28, v28, v16

    .line 266
    shr-long v56, v30, v25

    add-long v32, v32, v56

    and-long v30, v30, v16

    .line 267
    shr-long v56, v32, v25

    add-long v34, v34, v56

    and-long v32, v32, v16

    .line 268
    shr-long v56, v34, v25

    add-long v36, v36, v56

    and-long v34, v34, v16

    .line 269
    shr-long v56, v36, v25

    add-long v38, v38, v56

    and-long v16, v36, v16

    .line 273
    .end local v36    # "x14":J
    .local v16, "x14":J
    move-wide/from16 v36, v0

    .end local v0    # "x24":J
    .local v36, "x24":J
    const/16 v0, 0x39

    new-array v0, v0, [B

    .line 274
    .local v0, "r":[B
    shl-long v56, v19, v25

    move-wide/from16 v58, v2

    .end local v2    # "x25":J
    .local v58, "x25":J
    or-long v1, v26, v56

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 275
    shl-long v1, v12, v25

    or-long v1, v21, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 276
    shl-long v1, v6, v25

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 277
    shl-long v1, v23, v25

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 278
    shl-long v1, v10, v25

    or-long/2addr v1, v8

    const/16 v3, 0x1c

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 279
    shl-long v1, v30, v3

    or-long v1, v28, v1

    const/16 v3, 0x23

    const/16 v25, 0x1c

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 280
    shl-long v1, v34, v25

    or-long v1, v32, v1

    const/16 v3, 0x2a

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 281
    shl-long v1, v38, v25

    or-long v1, v16, v1

    const/16 v3, 0x31

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 283
    return-object v0
.end method

.method static reduce912([B)[B
    .locals 88
    .param p0, "n"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 288
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 289
    .local v2, "x00":J
    const/4 v6, 0x4

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v7

    shl-int/2addr v7, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .line 290
    .local v7, "x01":J
    const/4 v9, 0x7

    invoke-static {v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .line 291
    .local v10, "x02":J
    const/16 v12, 0xb

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/2addr v12, v6

    int-to-long v12, v12

    and-long/2addr v12, v4

    .line 292
    .local v12, "x03":J
    const/16 v14, 0xe

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    move-wide/from16 v16, v4

    int-to-long v4, v15

    and-long v4, v4, v16

    .line 293
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

    .line 294
    .local v6, "x05":J
    const/16 v8, 0x15

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v15

    int-to-long v14, v15

    and-long v14, v14, v16

    .line 295
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

    .line 296
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

    .line 297
    .local v8, "x08":J
    const/16 v11, 0x20

    invoke-static {v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v11

    shl-int/lit8 v11, v11, 0x4

    const/16 v25, 0x1c

    int-to-long v10, v11

    and-long v10, v10, v16

    .line 298
    .local v10, "x09":J
    const/16 v1, 0x23

    move-wide/from16 v26, v2

    .end local v2    # "x00":J
    .local v26, "x00":J
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    and-long v2, v2, v16

    .line 299
    .local v2, "x10":J
    const/16 v1, 0x27

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    move-wide/from16 v28, v2

    .end local v2    # "x10":J
    .local v28, "x10":J
    int-to-long v1, v1

    and-long v1, v1, v16

    .line 300
    .local v1, "x11":J
    const/16 v3, 0x2a

    move-wide/from16 v30, v1

    .end local v1    # "x11":J
    .local v30, "x11":J
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    .line 301
    .local v1, "x12":J
    const/16 v3, 0x2e

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v32, v1

    .end local v1    # "x12":J
    .local v32, "x12":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 302
    .local v1, "x13":J
    const/16 v3, 0x31

    move-wide/from16 v34, v1

    .end local v1    # "x13":J
    .local v34, "x13":J
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v1

    int-to-long v1, v1

    and-long v1, v1, v16

    .line 303
    .local v1, "x14":J
    const/16 v3, 0x35

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v36, v1

    .end local v1    # "x14":J
    .local v36, "x14":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 304
    .local v1, "x15":J
    const/16 v3, 0x38

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v38, v1

    .end local v1    # "x15":J
    .local v38, "x15":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 305
    .local v1, "x16":J
    const/16 v3, 0x3c

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v40, v1

    .end local v1    # "x16":J
    .local v40, "x16":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 306
    .local v1, "x17":J
    const/16 v3, 0x3f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v42, v1

    .end local v1    # "x17":J
    .local v42, "x17":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 307
    .local v1, "x18":J
    const/16 v3, 0x43

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v44, v1

    .end local v1    # "x18":J
    .local v44, "x18":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 308
    .local v1, "x19":J
    const/16 v3, 0x46

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v46, v1

    .end local v1    # "x19":J
    .local v46, "x19":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 309
    .local v1, "x20":J
    const/16 v3, 0x4a

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v48, v1

    .end local v1    # "x20":J
    .local v48, "x20":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 310
    .local v1, "x21":J
    const/16 v3, 0x4d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v50, v1

    .end local v1    # "x21":J
    .local v50, "x21":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 311
    .local v1, "x22":J
    const/16 v3, 0x51

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v52, v1

    .end local v1    # "x22":J
    .local v52, "x22":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 312
    .local v1, "x23":J
    const/16 v3, 0x54

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v54, v1

    .end local v1    # "x23":J
    .local v54, "x23":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 313
    .local v1, "x24":J
    const/16 v3, 0x58

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v56, v1

    .end local v1    # "x24":J
    .local v56, "x24":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 314
    .local v1, "x25":J
    const/16 v3, 0x5b

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v58, v1

    .end local v1    # "x25":J
    .local v58, "x25":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 315
    .local v1, "x26":J
    const/16 v3, 0x5f

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v60, v1

    .end local v1    # "x26":J
    .local v60, "x26":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 316
    .local v1, "x27":J
    const/16 v3, 0x62

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v62, v1

    .end local v1    # "x27":J
    .local v62, "x27":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 317
    .local v1, "x28":J
    const/16 v3, 0x66

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v64, v1

    .end local v1    # "x28":J
    .local v64, "x28":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 318
    .local v1, "x29":J
    const/16 v3, 0x69

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v3

    move-wide/from16 v66, v1

    .end local v1    # "x29":J
    .local v66, "x29":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 319
    .local v1, "x30":J
    const/16 v3, 0x6d

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    move-wide/from16 v68, v1

    .end local v1    # "x30":J
    .local v68, "x30":J
    int-to-long v1, v3

    and-long v1, v1, v16

    .line 320
    .local v1, "x31":J
    const/16 v3, 0x70

    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v3

    move-wide/from16 v70, v1

    .end local v1    # "x31":J
    .local v70, "x31":J
    int-to-long v0, v3

    and-long v0, v0, v16

    .line 323
    .local v0, "x32":J
    const-wide/32 v2, 0x29eec34

    mul-long v16, v0, v2

    add-long v16, v40, v16

    .line 324
    .end local v40    # "x16":J
    .local v16, "x16":J
    const-wide/32 v40, 0x1cf5b55

    mul-long v72, v0, v40

    add-long v42, v42, v72

    .line 325
    const-wide/32 v72, 0x9c2ab72

    mul-long v74, v0, v72

    add-long v44, v44, v74

    .line 326
    const-wide/32 v74, 0xf635c8e

    mul-long v76, v0, v74

    add-long v46, v46, v76

    .line 327
    const-wide/32 v76, 0x5bf7a4c

    mul-long v78, v0, v76

    add-long v48, v48, v78

    .line 328
    const-wide/32 v78, 0xd944a72

    mul-long v80, v0, v78

    add-long v50, v50, v80

    .line 329
    const-wide/32 v80, 0x8eec492

    mul-long v82, v0, v80

    add-long v52, v52, v82

    .line 330
    const-wide/32 v82, 0x20cd7705

    mul-long v84, v0, v82

    add-long v54, v54, v84

    .line 332
    ushr-long v84, v68, v25

    add-long v70, v70, v84

    const-wide/32 v84, 0xfffffff

    and-long v68, v68, v84

    .line 333
    mul-long v86, v70, v2

    add-long v38, v38, v86

    .line 334
    mul-long v86, v70, v40

    add-long v16, v16, v86

    .line 335
    mul-long v86, v70, v72

    add-long v42, v42, v86

    .line 336
    mul-long v86, v70, v74

    add-long v44, v44, v86

    .line 337
    mul-long v86, v70, v76

    add-long v46, v46, v86

    .line 338
    mul-long v86, v70, v78

    add-long v48, v48, v86

    .line 339
    mul-long v86, v70, v80

    add-long v50, v50, v86

    .line 340
    mul-long v86, v70, v82

    add-long v52, v52, v86

    .line 343
    mul-long v86, v68, v2

    add-long v36, v36, v86

    .line 344
    mul-long v86, v68, v40

    add-long v38, v38, v86

    .line 345
    mul-long v86, v68, v72

    add-long v16, v16, v86

    .line 346
    mul-long v86, v68, v74

    add-long v42, v42, v86

    .line 347
    mul-long v86, v68, v76

    add-long v44, v44, v86

    .line 348
    mul-long v86, v68, v78

    add-long v46, v46, v86

    .line 349
    mul-long v86, v68, v80

    add-long v48, v48, v86

    .line 350
    mul-long v86, v68, v82

    add-long v50, v50, v86

    .line 352
    ushr-long v86, v64, v25

    add-long v66, v66, v86

    and-long v64, v64, v84

    .line 353
    mul-long v86, v66, v2

    add-long v34, v34, v86

    .line 354
    mul-long v86, v66, v40

    add-long v36, v36, v86

    .line 355
    mul-long v86, v66, v72

    add-long v38, v38, v86

    .line 356
    mul-long v86, v66, v74

    add-long v16, v16, v86

    .line 357
    mul-long v86, v66, v76

    add-long v42, v42, v86

    .line 358
    mul-long v86, v66, v78

    add-long v44, v44, v86

    .line 359
    mul-long v86, v66, v80

    add-long v46, v46, v86

    .line 360
    mul-long v86, v66, v82

    add-long v48, v48, v86

    .line 363
    mul-long v86, v64, v2

    add-long v32, v32, v86

    .line 364
    mul-long v86, v64, v40

    add-long v34, v34, v86

    .line 365
    mul-long v86, v64, v72

    add-long v36, v36, v86

    .line 366
    mul-long v86, v64, v74

    add-long v38, v38, v86

    .line 367
    mul-long v86, v64, v76

    add-long v16, v16, v86

    .line 368
    mul-long v86, v64, v78

    add-long v42, v42, v86

    .line 369
    mul-long v86, v64, v80

    add-long v44, v44, v86

    .line 370
    mul-long v86, v64, v82

    add-long v46, v46, v86

    .line 372
    ushr-long v86, v60, v25

    add-long v62, v62, v86

    and-long v60, v60, v84

    .line 373
    mul-long v86, v62, v2

    add-long v30, v30, v86

    .line 374
    mul-long v86, v62, v40

    add-long v32, v32, v86

    .line 375
    mul-long v86, v62, v72

    add-long v34, v34, v86

    .line 376
    mul-long v86, v62, v74

    add-long v36, v36, v86

    .line 377
    mul-long v86, v62, v76

    add-long v38, v38, v86

    .line 378
    mul-long v86, v62, v78

    add-long v16, v16, v86

    .line 379
    mul-long v86, v62, v80

    add-long v42, v42, v86

    .line 380
    mul-long v86, v62, v82

    add-long v44, v44, v86

    .line 383
    mul-long v86, v60, v2

    add-long v28, v28, v86

    .line 384
    mul-long v86, v60, v40

    add-long v30, v30, v86

    .line 385
    mul-long v86, v60, v72

    add-long v32, v32, v86

    .line 386
    mul-long v86, v60, v74

    add-long v34, v34, v86

    .line 387
    mul-long v86, v60, v76

    add-long v36, v36, v86

    .line 388
    mul-long v86, v60, v78

    add-long v38, v38, v86

    .line 389
    mul-long v86, v60, v80

    add-long v16, v16, v86

    .line 390
    mul-long v86, v60, v82

    add-long v42, v42, v86

    .line 392
    ushr-long v86, v56, v25

    add-long v58, v58, v86

    and-long v56, v56, v84

    .line 393
    mul-long v86, v58, v2

    add-long v10, v10, v86

    .line 394
    mul-long v86, v58, v40

    add-long v28, v28, v86

    .line 395
    mul-long v86, v58, v72

    add-long v30, v30, v86

    .line 396
    mul-long v86, v58, v74

    add-long v32, v32, v86

    .line 397
    mul-long v86, v58, v76

    add-long v34, v34, v86

    .line 398
    mul-long v86, v58, v78

    add-long v36, v36, v86

    .line 399
    mul-long v86, v58, v80

    add-long v38, v38, v86

    .line 400
    mul-long v86, v58, v82

    add-long v16, v16, v86

    .line 402
    ushr-long v86, v48, v25

    add-long v50, v50, v86

    and-long v48, v48, v84

    .line 403
    ushr-long v86, v50, v25

    add-long v52, v52, v86

    and-long v50, v50, v84

    .line 404
    ushr-long v86, v52, v25

    add-long v54, v54, v86

    and-long v52, v52, v84

    .line 405
    ushr-long v86, v54, v25

    add-long v56, v56, v86

    and-long v54, v54, v84

    .line 407
    mul-long v86, v56, v2

    add-long v8, v8, v86

    .line 408
    mul-long v86, v56, v40

    add-long v10, v10, v86

    .line 409
    mul-long v86, v56, v72

    add-long v28, v28, v86

    .line 410
    mul-long v86, v56, v74

    add-long v30, v30, v86

    .line 411
    mul-long v86, v56, v76

    add-long v32, v32, v86

    .line 412
    mul-long v86, v56, v78

    add-long v34, v34, v86

    .line 413
    mul-long v86, v56, v80

    add-long v36, v36, v86

    .line 414
    mul-long v86, v56, v82

    add-long v38, v38, v86

    .line 416
    mul-long v86, v54, v2

    add-long v23, v23, v86

    .line 417
    mul-long v86, v54, v40

    add-long v8, v8, v86

    .line 418
    mul-long v86, v54, v72

    add-long v10, v10, v86

    .line 419
    mul-long v86, v54, v74

    add-long v28, v28, v86

    .line 420
    mul-long v86, v54, v76

    add-long v30, v30, v86

    .line 421
    mul-long v86, v54, v78

    add-long v32, v32, v86

    .line 422
    mul-long v86, v54, v80

    add-long v34, v34, v86

    .line 423
    mul-long v86, v54, v82

    add-long v36, v36, v86

    .line 425
    mul-long v86, v52, v2

    add-long v14, v14, v86

    .line 426
    mul-long v86, v52, v40

    add-long v23, v23, v86

    .line 427
    mul-long v86, v52, v72

    add-long v8, v8, v86

    .line 428
    mul-long v86, v52, v74

    add-long v10, v10, v86

    .line 429
    mul-long v86, v52, v76

    add-long v28, v28, v86

    .line 430
    mul-long v86, v52, v78

    add-long v30, v30, v86

    .line 431
    mul-long v86, v52, v80

    add-long v32, v32, v86

    .line 432
    mul-long v86, v52, v82

    add-long v34, v34, v86

    .line 434
    ushr-long v86, v42, v25

    add-long v44, v44, v86

    and-long v42, v42, v84

    .line 435
    ushr-long v86, v44, v25

    add-long v46, v46, v86

    and-long v44, v44, v84

    .line 436
    ushr-long v86, v46, v25

    add-long v48, v48, v86

    and-long v46, v46, v84

    .line 437
    ushr-long v86, v48, v25

    add-long v50, v50, v86

    and-long v48, v48, v84

    .line 439
    mul-long v86, v50, v2

    add-long v6, v6, v86

    .line 440
    mul-long v86, v50, v40

    add-long v14, v14, v86

    .line 441
    mul-long v86, v50, v72

    add-long v23, v23, v86

    .line 442
    mul-long v86, v50, v74

    add-long v8, v8, v86

    .line 443
    mul-long v86, v50, v76

    add-long v10, v10, v86

    .line 444
    mul-long v86, v50, v78

    add-long v28, v28, v86

    .line 445
    mul-long v86, v50, v80

    add-long v30, v30, v86

    .line 446
    mul-long v86, v50, v82

    add-long v32, v32, v86

    .line 448
    mul-long v86, v48, v2

    add-long v4, v4, v86

    .line 449
    mul-long v86, v48, v40

    add-long v6, v6, v86

    .line 450
    mul-long v86, v48, v72

    add-long v14, v14, v86

    .line 451
    mul-long v86, v48, v74

    add-long v23, v23, v86

    .line 452
    mul-long v86, v48, v76

    add-long v8, v8, v86

    .line 453
    mul-long v86, v48, v78

    add-long v10, v10, v86

    .line 454
    mul-long v86, v48, v80

    add-long v28, v28, v86

    .line 455
    mul-long v86, v48, v82

    add-long v30, v30, v86

    .line 457
    mul-long v86, v46, v2

    add-long v12, v12, v86

    .line 458
    mul-long v86, v46, v40

    add-long v4, v4, v86

    .line 459
    mul-long v86, v46, v72

    add-long v6, v6, v86

    .line 460
    mul-long v86, v46, v74

    add-long v14, v14, v86

    .line 461
    mul-long v86, v46, v76

    add-long v23, v23, v86

    .line 462
    mul-long v86, v46, v78

    add-long v8, v8, v86

    .line 463
    mul-long v86, v46, v80

    add-long v10, v10, v86

    .line 464
    mul-long v86, v46, v82

    add-long v28, v28, v86

    .line 466
    ushr-long v86, v36, v25

    add-long v38, v38, v86

    and-long v36, v36, v84

    .line 467
    ushr-long v86, v38, v25

    add-long v16, v16, v86

    and-long v38, v38, v84

    .line 468
    ushr-long v86, v16, v25

    add-long v42, v42, v86

    and-long v16, v16, v84

    .line 469
    ushr-long v86, v42, v25

    add-long v44, v44, v86

    and-long v42, v42, v84

    .line 471
    mul-long v86, v44, v2

    add-long v21, v21, v86

    .line 472
    mul-long v86, v44, v40

    add-long v12, v12, v86

    .line 473
    mul-long v86, v44, v72

    add-long v4, v4, v86

    .line 474
    mul-long v86, v44, v74

    add-long v6, v6, v86

    .line 475
    mul-long v86, v44, v76

    add-long v14, v14, v86

    .line 476
    mul-long v86, v44, v78

    add-long v23, v23, v86

    .line 477
    mul-long v86, v44, v80

    add-long v8, v8, v86

    .line 478
    mul-long v86, v44, v82

    add-long v10, v10, v86

    .line 480
    mul-long v2, v2, v42

    add-long v2, v19, v2

    .line 481
    .end local v19    # "x01":J
    .local v2, "x01":J
    mul-long v40, v40, v42

    add-long v21, v21, v40

    .line 482
    mul-long v72, v72, v42

    add-long v12, v12, v72

    .line 483
    mul-long v74, v74, v42

    add-long v4, v4, v74

    .line 484
    mul-long v76, v76, v42

    add-long v6, v6, v76

    .line 485
    mul-long v78, v78, v42

    add-long v14, v14, v78

    .line 486
    mul-long v80, v80, v42

    add-long v23, v23, v80

    .line 487
    mul-long v82, v82, v42

    add-long v8, v8, v82

    .line 489
    const-wide/16 v18, 0x4

    mul-long v16, v16, v18

    .line 490
    const/16 v18, 0x1a

    ushr-long v19, v38, v18

    add-long v16, v16, v19

    const-wide/32 v19, 0x3ffffff

    and-long v38, v38, v19

    .line 491
    const-wide/16 v40, 0x1

    add-long v16, v16, v40

    .line 493
    const-wide/32 v72, 0x4a7bb0d

    mul-long v72, v72, v16

    add-long v26, v26, v72

    .line 494
    const-wide/32 v72, 0x873d6d5

    mul-long v72, v72, v16

    add-long v2, v2, v72

    .line 495
    const-wide/32 v72, 0xa70aadc

    mul-long v72, v72, v16

    add-long v21, v21, v72

    .line 496
    const-wide/32 v72, 0x3d8d723

    mul-long v72, v72, v16

    add-long v12, v12, v72

    .line 497
    const-wide/32 v72, 0x96fde93

    mul-long v72, v72, v16

    add-long v4, v4, v72

    .line 498
    const-wide/32 v72, 0xb65129c

    mul-long v72, v72, v16

    add-long v6, v6, v72

    .line 499
    const-wide/32 v72, 0x63bb124

    mul-long v72, v72, v16

    add-long v14, v14, v72

    .line 500
    const-wide/32 v72, 0x8335dc1

    mul-long v72, v72, v16

    add-long v23, v23, v72

    .line 502
    ushr-long v72, v26, v25

    add-long v2, v2, v72

    and-long v26, v26, v84

    .line 503
    ushr-long v72, v2, v25

    add-long v21, v21, v72

    and-long v2, v2, v84

    .line 504
    ushr-long v72, v21, v25

    add-long v12, v12, v72

    and-long v21, v21, v84

    .line 505
    ushr-long v72, v12, v25

    add-long v4, v4, v72

    and-long v12, v12, v84

    .line 506
    ushr-long v72, v4, v25

    add-long v6, v6, v72

    and-long v4, v4, v84

    .line 507
    ushr-long v72, v6, v25

    add-long v14, v14, v72

    and-long v6, v6, v84

    .line 508
    ushr-long v72, v14, v25

    add-long v23, v23, v72

    and-long v14, v14, v84

    .line 509
    ushr-long v72, v23, v25

    add-long v8, v8, v72

    and-long v23, v23, v84

    .line 510
    ushr-long v72, v8, v25

    add-long v10, v10, v72

    and-long v8, v8, v84

    .line 511
    ushr-long v72, v10, v25

    add-long v28, v28, v72

    and-long v10, v10, v84

    .line 512
    ushr-long v72, v28, v25

    add-long v30, v30, v72

    and-long v28, v28, v84

    .line 513
    ushr-long v72, v30, v25

    add-long v32, v32, v72

    and-long v30, v30, v84

    .line 514
    ushr-long v72, v32, v25

    add-long v34, v34, v72

    and-long v32, v32, v84

    .line 515
    ushr-long v72, v34, v25

    add-long v36, v36, v72

    and-long v34, v34, v84

    .line 516
    ushr-long v72, v36, v25

    add-long v38, v38, v72

    and-long v36, v36, v84

    .line 517
    ushr-long v16, v38, v18

    and-long v19, v38, v19

    .line 519
    .end local v38    # "x15":J
    .local v19, "x15":J
    sub-long v16, v16, v40

    .line 523
    const-wide/32 v38, 0x4a7bb0d

    and-long v38, v16, v38

    sub-long v26, v26, v38

    .line 524
    const-wide/32 v38, 0x873d6d5

    and-long v38, v16, v38

    sub-long v2, v2, v38

    .line 525
    const-wide/32 v38, 0xa70aadc

    and-long v38, v16, v38

    sub-long v21, v21, v38

    .line 526
    const-wide/32 v38, 0x3d8d723

    and-long v38, v16, v38

    sub-long v12, v12, v38

    .line 527
    const-wide/32 v38, 0x96fde93

    and-long v38, v16, v38

    sub-long v4, v4, v38

    .line 528
    const-wide/32 v38, 0xb65129c

    and-long v38, v16, v38

    sub-long v6, v6, v38

    .line 529
    const-wide/32 v38, 0x63bb124

    and-long v38, v16, v38

    sub-long v14, v14, v38

    .line 530
    const-wide/32 v38, 0x8335dc1

    and-long v38, v16, v38

    sub-long v23, v23, v38

    .line 532
    shr-long v38, v26, v25

    add-long v2, v2, v38

    and-long v26, v26, v84

    .line 533
    shr-long v38, v2, v25

    add-long v21, v21, v38

    and-long v2, v2, v84

    .line 534
    shr-long v38, v21, v25

    add-long v12, v12, v38

    and-long v21, v21, v84

    .line 535
    shr-long v38, v12, v25

    add-long v4, v4, v38

    and-long v12, v12, v84

    .line 536
    shr-long v38, v4, v25

    add-long v6, v6, v38

    and-long v4, v4, v84

    .line 537
    shr-long v38, v6, v25

    add-long v14, v14, v38

    and-long v6, v6, v84

    .line 538
    shr-long v38, v14, v25

    add-long v23, v23, v38

    and-long v14, v14, v84

    .line 539
    shr-long v38, v23, v25

    add-long v8, v8, v38

    and-long v23, v23, v84

    .line 540
    shr-long v38, v8, v25

    add-long v10, v10, v38

    and-long v8, v8, v84

    .line 541
    shr-long v38, v10, v25

    add-long v28, v28, v38

    and-long v10, v10, v84

    .line 542
    shr-long v38, v28, v25

    add-long v30, v30, v38

    and-long v28, v28, v84

    .line 543
    shr-long v38, v30, v25

    add-long v32, v32, v38

    and-long v30, v30, v84

    .line 544
    shr-long v38, v32, v25

    add-long v34, v34, v38

    and-long v32, v32, v84

    .line 545
    shr-long v38, v34, v25

    add-long v36, v36, v38

    and-long v34, v34, v84

    .line 546
    shr-long v38, v36, v25

    add-long v19, v19, v38

    and-long v36, v36, v84

    .line 550
    move-wide/from16 v38, v0

    .end local v0    # "x32":J
    .local v38, "x32":J
    const/16 v0, 0x39

    new-array v0, v0, [B

    .line 551
    .local v0, "r":[B
    shl-long v40, v2, v25

    move-wide/from16 v72, v2

    .end local v2    # "x01":J
    .local v72, "x01":J
    or-long v1, v26, v40

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 552
    shl-long v1, v12, v25

    or-long v1, v21, v1

    const/4 v3, 0x7

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 553
    shl-long v1, v6, v25

    or-long/2addr v1, v4

    const/16 v3, 0xe

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 554
    shl-long v1, v23, v25

    or-long/2addr v1, v14

    const/16 v3, 0x15

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 555
    shl-long v1, v10, v25

    or-long/2addr v1, v8

    const/16 v3, 0x1c

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 556
    shl-long v1, v30, v3

    or-long v1, v28, v1

    const/16 v3, 0x23

    const/16 v25, 0x1c

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 557
    shl-long v1, v34, v25

    or-long v1, v32, v1

    const/16 v3, 0x2a

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 558
    shl-long v1, v19, v25

    or-long v1, v36, v1

    const/16 v3, 0x31

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    .line 560
    return-object v0
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

    .line 571
    move-object/from16 v0, p0

    const/16 v1, 0x1c

    new-array v2, v1, [I

    .local v2, "Nu":[I
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    new-array v3, v1, [I

    .local v3, "Nv":[I
    invoke-static {v0, v3}, Lorg/bouncycastle/math/raw/Nat448;->square([I[I)V

    aget v5, v3, v4

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aput v5, v3, v4

    .line 573
    new-array v11, v1, [I

    .local v11, "p":[I
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v5, v0, v11}, Lorg/bouncycastle/math/raw/Nat448;->mul([I[I[I)V

    .line 574
    new-array v12, v1, [I

    .line 575
    .local v12, "t":[I
    const/16 v1, 0x8

    new-array v5, v1, [I

    .local v5, "u0":[I
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v7, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 576
    new-array v7, v1, [I

    .line 577
    .local v7, "u1":[I
    new-array v8, v1, [I

    .local v8, "v0":[I
    invoke-static {v0, v4, v8, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    new-array v9, v1, [I

    .local v9, "v1":[I
    aput v6, v9, v4

    .line 581
    const/16 v10, 0x6fc

    .line 582
    .local v10, "iterations":I
    const/16 v13, 0x1b

    .line 583
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

    .line 585
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
    const/16 v5, 0x1bf

    if-le v3, v5, :cond_3

    .line 587
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    .line 589
    return v4

    .line 592
    :cond_0
    invoke-static {v7, v11}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v5

    .line 593
    .local v5, "len_p":I
    sub-int v8, v5, v3

    .line 594
    .local v8, "s":I
    shr-int/lit8 v13, v8, 0x1f

    not-int v13, v13

    and-int v14, v8, v13

    .line 596
    .end local v8    # "s":I
    .local v14, "s":I
    aget v8, v11, v7

    if-gez v8, :cond_1

    .line 598
    move v8, v14

    .end local v14    # "s":I
    .restart local v8    # "s":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    .line 599
    .end local v8    # "s":I
    .restart local v14    # "s":I
    const/4 v13, 0x7

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    goto :goto_1

    .line 603
    :cond_1
    move v8, v14

    .end local v14    # "s":I
    .restart local v8    # "s":I
    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    .line 604
    .end local v8    # "s":I
    .restart local v14    # "s":I
    const/4 v13, 0x7

    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    move-object/from16 v8, v17

    move-object/from16 v13, v18

    .line 607
    .end local v17    # "v0":[I
    .end local v18    # "v1":[I
    .local v8, "v0":[I
    .local v13, "v1":[I
    :goto_1
    invoke-static {v7, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 609
    move-object/from16 v17, v15

    .local v17, "t0":[I
    move-object v15, v8

    move-object/from16 v8, v17

    .line 610
    move-object/from16 v18, v16

    .local v18, "t1":[I
    move-object/from16 v16, v13

    move-object/from16 v13, v18

    .line 611
    move-object/from16 v19, v9

    .local v19, "tN":[I
    move-object v9, v10

    move-object/from16 v10, v19

    .line 613
    ushr-int/lit8 v7, v3, 0x5

    .line 614
    invoke-static {v7, v10}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v3

    goto :goto_2

    .line 607
    .end local v17    # "t0":[I
    .end local v18    # "t1":[I
    .end local v19    # "tN":[I
    :cond_2
    move-object/from16 v17, v8

    move-object/from16 v18, v13

    .line 616
    .end local v5    # "len_p":I
    .end local v8    # "v0":[I
    .end local v13    # "v1":[I
    .end local v14    # "s":I
    .local v17, "v0":[I
    .local v18, "v1":[I
    :goto_2
    goto :goto_0

    .line 622
    :cond_3
    move-object/from16 v8, v17

    move-object/from16 v13, v18

    .end local v17    # "v0":[I
    .end local v18    # "v1":[I
    .restart local v8    # "v0":[I
    .restart local v13    # "v1":[I
    move-object/from16 v5, p1

    invoke-static {v8, v4, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 623
    move-object/from16 v14, p2

    invoke-static {v13, v4, v14, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 624
    return v6
.end method

.method static toSignedDigits(I[I[I)V
    .locals 5
    .param p0, "bits"    # I
    .param p1, "x"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bits",
            "x",
            "z"
        }
    .end annotation

    .line 632
    add-int/lit16 v0, p0, -0x1c0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    const/4 v2, 0x0

    aget v3, p1, v2

    not-int v3, v3

    and-int/2addr v1, v3

    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    .line 633
    const/16 v4, 0xe

    invoke-static {v4, v1, p1, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v4

    .line 635
    const/16 v0, 0xf

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 637
    return-void
.end method

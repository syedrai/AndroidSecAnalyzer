.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed25519;
.super Ljava/lang/Object;
.source "Ed25519.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed25519$Algorithm;
    }
.end annotation


# static fields
.field private static final B128_x:[I

.field private static final B128_y:[I

.field private static final B_x:[I

.field private static final B_y:[I

.field private static final COORD_INTS:I = 0x8

.field private static final C_d:[I

.field private static final C_d2:[I

.field private static final C_d4:[I

.field private static final DOM2_PREFIX:[B

.field private static final ORDER8_y1:[I

.field private static final ORDER8_y2:[I

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x20

.field private static PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp; = null

.field private static PRECOMP_BASE_COMB:[I = null

.field private static PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp; = null

.field private static final PRECOMP_BLOCKS:I = 0x8

.field private static final PRECOMP_LOCK:Ljava/lang/Object;

.field private static final PRECOMP_MASK:I = 0x7

.field private static final PRECOMP_POINTS:I = 0x8

.field private static final PRECOMP_RANGE:I = 0x100

.field private static final PRECOMP_SPACING:I = 0x8

.field private static final PRECOMP_TEETH:I = 0x4

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x20

.field private static final SCALAR_BYTES:I = 0x20

.field private static final SCALAR_INTS:I = 0x8

.field public static final SECRET_KEY_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40

.field private static final WNAF_WIDTH_128:I = 0x4

.field private static final WNAF_WIDTH_BASE:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    .line 61
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    .line 64
    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    .line 66
    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    .line 69
    const/16 v0, 0xa

    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    .line 71
    new-array v1, v0, [I

    fill-array-data v1, :array_5

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    .line 75
    new-array v1, v0, [I

    fill-array-data v1, :array_6

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_x:[I

    .line 77
    new-array v1, v0, [I

    fill-array-data v1, :array_7

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_y:[I

    .line 81
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    .line 83
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    .line 85
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_LOCK:Ljava/lang/Object;

    .line 101
    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    .line 102
    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    .line 103
    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    return-void

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x6et
        0x6ft
        0x20t
        0x45t
        0x64t
        0x32t
        0x35t
        0x35t
        0x31t
        0x39t
        0x20t
        0x63t
        0x6ft
        0x6ct
        0x6ct
        0x69t
        0x73t
        0x69t
        0x6ft
        0x6et
        0x73t
    .end array-data

    :array_1
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_2
    .array-data 4
        0x706a17c7
        0x4fd84d3d
        0x760b3cba
        0xf67100d
        -0x5acdfd6
        -0x3933c6d4
        0x77fdc74e
        0x7a03ac92
    .end array-data

    :array_3
    .array-data 4
        -0x706a17da
        -0x4fd84d3e
        -0x760b3cbb
        -0xf67100e
        0x5acdfd5
        0x3933c6d3
        -0x77fdc74f
        0x5fc536d
    .end array-data

    :array_4
    .array-data 4
        0x325d51a
        0x18b5823
        0x7b2c95
        0x304a92d
        0xd2598e
        0x1d6dc5c
        0x1388c7f
        0x13fec0a
        0x29e6b72
        0x42d26d
    .end array-data

    :array_5
    .array-data 4
        0x2666658
        0x1999999
        0x666666
        0x3333333
        0xcccccc
        0x2666666
        0x1999999
        0x666666
        0x3333333
        0xcccccc
    .end array-data

    :array_6
    .array-data 4
        0xb7e824
        0x11eb98
        0x3e5fc8
        0x24e1739
        0x131cd0b
        0x14e29a0
        0x34e6138
        0x132c952
        0x3f9e22f
        0x984f5f
    .end array-data

    :array_7
    .array-data 4
        0x3f5a66b
        0x2af4452
        0x49e5bb
        0xf28d26
        0x121a17c
        0x2c29c3a
        0x47ad89
        0x87d95f
        0x332936e
        0xbe5933
    .end array-data

    :array_8
    .array-data 4
        0x35978a3
        0x2d37284
        0x18ab75e
        0x26a0a0e
        0xe014
        0x379e898
        0x1d01e5d
        0x1e738cc
        0x3715b7f
        0xa406d9
    .end array-data

    :array_9
    .array-data 4
        0x2b2f159
        0x1a6e509
        0x1156ebd
        0xd4141d
        0x1c029
        0x2f3d130
        0x3a03cbb
        0x1ce7198
        0x2e2b6ff
        0x480db3
    .end array-data

    :array_a
    .array-data 4
        0x165e2b2
        0x34dca13
        0x2add7a
        0x1a8283b
        0x38052
        0x1e7a260
        0x3407977
        0x19ce331
        0x1c56dff
        0x901b67
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateS([B[B[B)[B
    .locals 6
    .param p0, "r"    # [B
    .param p1, "k"    # [B
    .param p2, "s"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "r",
            "k",
            "s"
        }
    .end annotation

    .line 152
    const/16 v0, 0x10

    new-array v0, v0, [I

    .local v0, "t":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 153
    const/16 v1, 0x8

    new-array v2, v1, [I

    .local v2, "u":[I
    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 154
    new-array v1, v1, [I

    .local v1, "v":[I
    invoke-static {p2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 156
    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    .line 158
    const/16 v3, 0x40

    new-array v3, v3, [B

    .line 159
    .local v3, "result":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    .line 160
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v4

    return-object v4
.end method

.method private static checkContextVar([BB)Z
    .locals 2
    .param p0, "ctx"    # [B
    .param p1, "phflag"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ctx",
            "phflag"
        }
    .end annotation

    .line 165
    if-nez p0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    if-eqz p0, :cond_2

    array-length v0, p0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)I
    .locals 6
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 190
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    .line 191
    .local v0, "t":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    .line 192
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    .line 193
    .local v2, "v":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v3

    .line 195
    .local v3, "w":[I
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 196
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 197
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 198
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 199
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    .line 200
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 201
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 202
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 203
    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 204
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 205
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 206
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 207
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 209
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v4

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    return v4
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 171
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v0

    .line 172
    .local v0, "t":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    .line 173
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    .line 175
    .local v2, "v":[I
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 176
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 177
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 178
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    .line 179
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 180
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->addOne([I)V

    .line 181
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 182
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 183
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 185
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v3

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZero([I)I

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    return v3
.end method

.method private static checkPointFullVar([B)Z
    .locals 11
    .param p0, "p"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 214
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    .line 216
    .local v0, "y7":I
    move v1, v0

    .line 217
    .local v1, "t0":I
    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    xor-int/2addr v2, v0

    .line 218
    .local v2, "t1":I
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v4, v4, v3

    xor-int/2addr v4, v0

    .line 219
    .local v4, "t2":I
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v3, v5, v3

    xor-int/2addr v3, v0

    .line 221
    .local v3, "t3":I
    const/4 v5, 0x6

    .local v5, "i":I
    :goto_0
    if-lez v5, :cond_0

    .line 223
    mul-int/lit8 v6, v5, 0x4

    invoke-static {p0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v6

    .line 225
    .local v6, "yi":I
    or-int/2addr v1, v6

    .line 226
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    aget v7, v7, v5

    xor-int/2addr v7, v6

    or-int/2addr v2, v7

    .line 227
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v7, v7, v5

    xor-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 228
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v7, v7, v5

    xor-int/2addr v7, v6

    or-int/2addr v3, v7

    .line 221
    .end local v6    # "yi":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 231
    .end local v5    # "i":I
    :cond_0
    const/4 v5, 0x0

    invoke-static {p0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v6

    .line 234
    .local v6, "y0":I
    const/high16 v7, -0x80000000

    if-nez v1, :cond_1

    add-int v8, v6, v7

    const v9, -0x7fffffff

    if-gt v8, v9, :cond_1

    .line 235
    return v5

    .line 238
    :cond_1
    const/4 v8, 0x1

    if-nez v2, :cond_2

    add-int v9, v6, v7

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    aget v10, v10, v5

    sub-int/2addr v10, v8

    add-int/2addr v10, v7

    if-lt v9, v10, :cond_2

    .line 239
    return v5

    .line 241
    :cond_2
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y1:[I

    aget v7, v7, v5

    xor-int/2addr v7, v6

    or-int/2addr v4, v7

    .line 242
    sget-object v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->ORDER8_y2:[I

    aget v7, v7, v5

    xor-int/2addr v7, v6

    or-int/2addr v3, v7

    .line 245
    if-eqz v4, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const/4 v5, 0x1

    :cond_4
    and-int/2addr v5, v7

    return v5
.end method

.method private static checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 250
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 251
    .local v0, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 252
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result v1

    return v1
.end method

.method private static checkPointVar([B)Z
    .locals 6
    .param p0, "p"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 257
    const/16 v0, 0x1c

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    const/4 v4, 0x1

    if-ge v0, v2, :cond_0

    .line 259
    return v4

    .line 262
    :cond_0
    const/16 v0, 0x8

    new-array v2, v0, [I

    .line 263
    .local v2, "t":[I
    const/4 v5, 0x0

    invoke-static {p0, v5, v2, v5, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    .line 264
    aget v0, v2, v3

    and-int/2addr v0, v1

    aput v0, v2, v3

    .line 265
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->P:[I

    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    xor-int/2addr v0, v4

    return v0
.end method

.method private static copy([BII)[B
    .locals 2
    .param p0, "buf"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buf",
            "off",
            "len"
        }
    .end annotation

    .line 270
    new-array v0, p2, [B

    .line 271
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 272
    return-object v0
.end method

.method private static createDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 3

    .line 277
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    .line 278
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 282
    return-object v0

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 287
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method private static decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z
    .locals 6
    .param p0, "p"    # [B
    .param p1, "negate"    # Z
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "negate",
            "r"
        }
    .end annotation

    .line 292
    const/16 v0, 0x1f

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    .line 294
    .local v0, "x_0":I
    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->decode([B[I)V

    .line 296
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v1

    .line 297
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    .line 299
    .local v2, "v":[I
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 300
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d:[I

    invoke-static {v3, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 301
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->subOne([I)V

    .line 302
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->addOne([I)V

    .line 304
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqrtRatioVar([I[I[I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 306
    return v4

    .line 309
    :cond_0
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 310
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 312
    return v4

    .line 315
    :cond_1
    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    aget v5, v5, v4

    and-int/2addr v5, v3

    if-eq v0, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    xor-int/2addr v4, p1

    if-eqz v4, :cond_3

    .line 317
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    .line 318
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 321
    :cond_3
    return v3
.end method

.method private static dom2(Lorg/bouncycastle/crypto/Digest;B[B)V
    .locals 5
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "phflag"    # B
    .param p2, "ctx"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "d",
            "phflag",
            "ctx"
        }
    .end annotation

    .line 328
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    array-length v0, v0

    .line 329
    .local v0, "n":I
    add-int/lit8 v1, v0, 0x2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 330
    .local v1, "t":[B
    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->DOM2_PREFIX:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    aput-byte p1, v1, v0

    .line 332
    add-int/lit8 v2, v0, 0x1

    array-length v4, p2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 333
    add-int/lit8 v2, v0, 0x2

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    array-length v2, v1

    invoke-interface {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 336
    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[BI)V
    .locals 4
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "r"    # [B
    .param p2, "rOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "r",
            "rOff"
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->encode([I[BI)V

    .line 341
    add-int/lit8 v0, p2, 0x20

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 342
    return-void
.end method

.method public static encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BI)V
    .locals 4
    .param p0, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p1, "pk"    # [B
    .param p2, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicPoint",
            "pk",
            "pkOff"
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/16 v1, 0xa

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->encode([II[BI)V

    .line 347
    add-int/lit8 v0, p2, 0x20

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p1, v0

    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 348
    return-void
.end method

.method private static encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)I
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p1, "r"    # [B
    .param p2, "rOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "r",
            "rOff"
        }
    .end annotation

    .line 352
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 353
    .local v0, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V

    .line 355
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I

    move-result v1

    .line 357
    .local v1, "result":I
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[BI)V

    .line 359
    return v1
.end method

.method private static exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 4
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 364
    const/16 v0, 0x14

    new-array v0, v0, [I

    .line 365
    .local v0, "data":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 366
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    const/16 v3, 0xa

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 368
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;-><init>([I)V

    return-object v1
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 2
    .param p0, "random"    # Ljava/security/SecureRandom;
    .param p1, "k"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "random",
            "k"
        }
    .end annotation

    .line 373
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 378
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 379
    return-void

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 6
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sk",
            "skOff"
        }
    .end annotation

    .line 397
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 398
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 400
    .local v1, "h":[B
    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 401
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 403
    new-array v2, v2, [B

    .line 404
    .local v2, "s":[B
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 406
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 407
    .local v3, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 409
    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 410
    .local v5, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V

    .line 412
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object v4

    return-object v4

    .line 414
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 4
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk",
            "skOff",
            "pk",
            "pkOff"
        }
    .end annotation

    .line 383
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    .line 384
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v1, 0x40

    new-array v1, v1, [B

    .line 386
    .local v1, "h":[B
    const/16 v2, 0x20

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 387
    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 389
    new-array v2, v2, [B

    .line 390
    .local v2, "s":[B
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 392
    invoke-static {v2, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    .line 393
    return-void
.end method

.method private static getWindow4([II)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 422
    ushr-int/lit8 v0, p1, 0x3

    .local v0, "w":I
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x2

    .line 423
    .local v1, "b":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0xf

    return v2
.end method

.method private static groupCombBits([I)V
    .locals 2
    .param p0, "n"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 434
    aget v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->shuffle2(I)I

    move-result v1

    aput v1, p0, v0

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 436
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V
    .locals 16
    .param p0, "d"    # Lorg/bouncycastle/crypto/Digest;
    .param p1, "h"    # [B
    .param p2, "s"    # [B
    .param p3, "pk"    # [B
    .param p4, "pkOff"    # I
    .param p5, "ctx"    # [B
    .param p6, "phflag"    # B
    .param p7, "m"    # [B
    .param p8, "mOff"    # I
    .param p9, "mLen"    # I
    .param p10, "sig"    # [B
    .param p11, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
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
            "d",
            "h",
            "s",
            "pk",
            "pkOff",
            "ctx",
            "phflag",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 441
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p11

    if-eqz v2, :cond_0

    .line 443
    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    .line 445
    :cond_0
    const/16 v9, 0x20

    invoke-interface {v0, v1, v9, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 446
    invoke-interface {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 447
    const/4 v10, 0x0

    invoke-interface {v0, v1, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 449
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v11

    .line 450
    .local v11, "r":[B
    new-array v12, v9, [B

    .line 451
    .local v12, "R":[B
    invoke-static {v11, v12, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    .line 453
    if-eqz v2, :cond_1

    .line 455
    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    .line 457
    :cond_1
    invoke-interface {v0, v12, v10, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 458
    move-object/from16 v13, p3

    move/from16 v14, p4

    invoke-interface {v0, v13, v14, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 459
    invoke-interface {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 460
    invoke-interface {v0, v1, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 462
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v15

    .line 463
    .local v15, "k":[B
    move-object/from16 v9, p2

    invoke-static {v11, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->calculateS([B[B[B)[B

    move-result-object v0

    .line 465
    .local v0, "S":[B
    const/16 v1, 0x20

    invoke-static {v12, v10, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 466
    add-int/lit8 v2, v8, 0x20

    invoke-static {v0, v10, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    return-void
.end method

.method private static implSign([BI[BB[BII[BI)V
    .locals 13
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "ctx"    # [B
    .param p3, "phflag"    # B
    .param p4, "m"    # [B
    .param p5, "mOff"    # I
    .param p6, "mLen"    # I
    .param p7, "sig"    # [B
    .param p8, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "sk",
            "skOff",
            "ctx",
            "phflag",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 472
    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 477
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 478
    .local v1, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 480
    .local v2, "h":[B
    const/16 v0, 0x20

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 481
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 483
    new-array v4, v0, [B

    .line 484
    .local v4, "s":[B
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 486
    new-array v0, v0, [B

    .line 487
    .local v0, "pk":[B
    invoke-static {v4, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBaseEncoded([B[BI)V

    .line 489
    const/4 v5, 0x0

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object v3, v4

    move-object v4, v0

    .end local v0    # "pk":[B
    .local v3, "s":[B
    .local v4, "pk":[B
    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    .line 490
    return-void

    .line 474
    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v2    # "h":[B
    .end local v3    # "s":[B
    .end local v4    # "pk":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implSign([BI[BI[BB[BII[BI)V
    .locals 13
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "phflag"    # B
    .param p6, "m"    # [B
    .param p7, "mOff"    # I
    .param p8, "mLen"    # I
    .param p9, "sig"    # [B
    .param p10, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
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
            "sk",
            "skOff",
            "pk",
            "pkOff",
            "ctx",
            "phflag",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 495
    invoke-static/range {p4 .. p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v1

    .line 501
    .local v1, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v0, 0x40

    new-array v2, v0, [B

    .line 503
    .local v2, "h":[B
    const/16 v0, 0x20

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 504
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 506
    new-array v0, v0, [B

    .line 507
    .local v0, "s":[B
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 509
    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object v3, v0

    .end local v0    # "s":[B
    .local v3, "s":[B
    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign(Lorg/bouncycastle/crypto/Digest;[B[B[BI[BB[BII[BI)V

    .line 510
    return-void

    .line 497
    .end local v1    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v2    # "h":[B
    .end local v3    # "s":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z
    .locals 20
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p3, "ctx"    # [B
    .param p4, "phflag"    # B
    .param p5, "m"    # [B
    .param p6, "mOff"    # I
    .param p7, "mLen"    # I
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
            "sig",
            "sigOff",
            "publicPoint",
            "ctx",
            "phflag",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 585
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {p3 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 590
    const/16 v4, 0x20

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v5

    .line 591
    .local v5, "R":[B
    add-int/lit8 v6, v1, 0x20

    invoke-static {v0, v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v6

    .line 593
    .local v6, "S":[B
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    .line 595
    return v8

    .line 598
    :cond_0
    const/16 v7, 0x8

    new-array v9, v7, [I

    .line 599
    .local v9, "nS":[I
    invoke-static {v6, v9}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->checkVar([B[I)Z

    move-result v10

    if-nez v10, :cond_1

    .line 601
    return v8

    .line 604
    :cond_1
    new-instance v13, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v10, 0x0

    invoke-direct {v13, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 605
    .local v13, "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    const/4 v11, 0x1

    invoke-static {v5, v11, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 607
    return v8

    .line 610
    :cond_2
    new-instance v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 611
    .local v11, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    iget-object v12, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    iget-object v14, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    .line 612
    iget-object v12, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;->data:[I

    const/16 v14, 0xa

    iget-object v15, v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v12, v14, v15, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 614
    new-array v15, v4, [B

    .line 615
    .local v15, "A":[B
    invoke-static {v2, v15, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BI)V

    .line 617
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v12

    .line 618
    .local v12, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v14, 0x40

    new-array v14, v14, [B

    .line 620
    .local v14, "h":[B
    if-eqz v3, :cond_3

    .line 622
    move/from16 v10, p4

    invoke-static {v12, v10, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    goto :goto_0

    .line 620
    :cond_3
    move/from16 v10, p4

    .line 624
    :goto_0
    invoke-interface {v12, v5, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 625
    invoke-interface {v12, v15, v8, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 626
    move-object/from16 v4, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-interface {v12, v4, v7, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 627
    const/4 v0, 0x0

    invoke-interface {v12, v14, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 629
    invoke-static {v14}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v0

    .line 631
    .local v0, "k":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 632
    .local v1, "nA":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 634
    move-object/from16 v17, v0

    .end local v0    # "k":[B
    .local v17, "k":[B
    const/4 v0, 0x4

    new-array v10, v0, [I

    .line 635
    .local v10, "v0":[I
    new-array v0, v0, [I

    .line 637
    .local v0, "v1":[I
    invoke-static {v1, v10, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduceBasisVar([I[I[I)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 642
    invoke-static {v9, v0, v9}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->multiply128Var([I[I[I)V

    .line 644
    move-object/from16 v18, v0

    .end local v0    # "v1":[I
    .local v18, "v1":[I
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "nA":[I
    .local v19, "nA":[I
    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 645
    .local v0, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    move-object v1, v14

    move-object v14, v0

    move-object v0, v12

    move-object/from16 v12, v18

    .end local v18    # "v1":[I
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    .local v1, "h":[B
    .local v12, "v1":[I
    .local v14, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    invoke-static/range {v9 .. v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 646
    invoke-static {v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result v16

    return v16

    .line 639
    .end local v19    # "nA":[I
    .local v0, "v1":[I
    .local v1, "nA":[I
    .local v12, "d":Lorg/bouncycastle/crypto/Digest;
    .local v14, "h":[B
    :cond_4
    move-object/from16 v19, v12

    move-object v12, v0

    move-object/from16 v0, v19

    move-object/from16 v19, v1

    move-object v1, v14

    .end local v14    # "h":[B
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    .local v1, "h":[B
    .local v12, "v1":[I
    .restart local v19    # "nA":[I
    new-instance v14, Ljava/lang/IllegalStateException;

    invoke-direct {v14}, Ljava/lang/IllegalStateException;-><init>()V

    throw v14

    .line 587
    .end local v0    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v1    # "h":[B
    .end local v5    # "R":[B
    .end local v6    # "S":[B
    .end local v9    # "nS":[I
    .end local v10    # "v0":[I
    .end local v11    # "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v12    # "v1":[I
    .end local v13    # "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v15    # "A":[B
    .end local v17    # "k":[B
    .end local v19    # "nA":[I
    :cond_5
    move-object/from16 v4, p5

    move/from16 v7, p6

    move/from16 v8, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 21
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "phflag"    # B
    .param p6, "m"    # [B
    .param p7, "mOff"    # I
    .param p8, "mLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "sig",
            "sigOff",
            "pk",
            "pkOff",
            "ctx",
            "phflag",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 515
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-static/range {p4 .. p5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkContextVar([BB)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 520
    const/16 v3, 0x20

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v4

    .line 521
    .local v4, "R":[B
    add-int/lit8 v5, v1, 0x20

    invoke-static {v0, v5, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v5

    .line 522
    .local v5, "S":[B
    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-static {v6, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v8

    .line 524
    .local v8, "A":[B
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointVar([B)Z

    move-result v9

    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 526
    return v10

    .line 529
    :cond_0
    const/16 v9, 0x8

    new-array v11, v9, [I

    .line 530
    .local v11, "nS":[I
    invoke-static {v5, v11}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->checkVar([B[I)Z

    move-result v12

    if-nez v12, :cond_1

    .line 532
    return v10

    .line 535
    :cond_1
    invoke-static {v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result v12

    if-nez v12, :cond_2

    .line 536
    return v10

    .line 538
    :cond_2
    new-instance v15, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v12, 0x0

    invoke-direct {v15, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 539
    .local v15, "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    const/4 v13, 0x1

    invoke-static {v4, v13, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 541
    return v10

    .line 544
    :cond_3
    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v14, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 545
    .local v14, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    invoke-static {v8, v13, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 547
    return v10

    .line 550
    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v13

    .line 551
    .local v13, "d":Lorg/bouncycastle/crypto/Digest;
    const/16 v12, 0x40

    new-array v12, v12, [B

    .line 553
    .local v12, "h":[B
    if-eqz v2, :cond_5

    .line 555
    move/from16 v9, p5

    invoke-static {v13, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->dom2(Lorg/bouncycastle/crypto/Digest;B[B)V

    goto :goto_0

    .line 553
    :cond_5
    move/from16 v9, p5

    .line 557
    :goto_0
    invoke-interface {v13, v4, v10, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 558
    invoke-interface {v13, v8, v10, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 559
    move-object/from16 v3, p6

    move/from16 v10, p7

    move/from16 v0, p8

    invoke-interface {v13, v3, v10, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    .line 560
    const/4 v0, 0x0

    invoke-interface {v13, v12, v0}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 562
    invoke-static {v12}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce512([B)[B

    move-result-object v0

    .line 564
    .local v0, "k":[B
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 565
    .local v1, "nA":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 567
    move-object/from16 v17, v0

    .end local v0    # "k":[B
    .local v17, "k":[B
    const/4 v0, 0x4

    move-object/from16 v18, v12

    .end local v12    # "h":[B
    .local v18, "h":[B
    new-array v12, v0, [I

    .line 568
    .local v12, "v0":[I
    new-array v0, v0, [I

    .line 570
    .local v0, "v1":[I
    invoke-static {v1, v12, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduceBasisVar([I[I[I)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 575
    invoke-static {v11, v0, v11}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->multiply128Var([I[I[I)V

    .line 577
    move-object/from16 v19, v0

    .end local v0    # "v1":[I
    .local v19, "v1":[I
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    move-object/from16 v20, v1

    const/4 v1, 0x0

    .end local v1    # "nA":[I
    .local v20, "nA":[I
    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    move-object/from16 v16, v0

    .line 578
    .local v16, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    move-object v0, v13

    move-object v13, v14

    move-object/from16 v14, v19

    .end local v19    # "v1":[I
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    .local v13, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .local v14, "v1":[I
    invoke-static/range {v11 .. v16}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 579
    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z

    move-result v1

    return v1

    .line 572
    .end local v16    # "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .end local v20    # "nA":[I
    .local v0, "v1":[I
    .restart local v1    # "nA":[I
    .local v13, "d":Lorg/bouncycastle/crypto/Digest;
    .local v14, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    :cond_6
    move-object/from16 v20, v14

    move-object v14, v0

    move-object v0, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v1

    .end local v1    # "nA":[I
    .local v0, "d":Lorg/bouncycastle/crypto/Digest;
    .local v13, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .local v14, "v1":[I
    .restart local v20    # "nA":[I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 517
    .end local v0    # "d":Lorg/bouncycastle/crypto/Digest;
    .end local v4    # "R":[B
    .end local v5    # "S":[B
    .end local v8    # "A":[B
    .end local v11    # "nS":[I
    .end local v12    # "v0":[I
    .end local v13    # "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v14    # "v1":[I
    .end local v15    # "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v17    # "k":[B
    .end local v18    # "h":[B
    .end local v20    # "nA":[I
    :cond_7
    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v9, p5

    move-object/from16 v3, p6

    move/from16 v10, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invertDoubleZs([Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 8
    .param p0, "points"    # [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .line 651
    array-length v0, p0

    .line 652
    .local v0, "count":I
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v1

    .line 654
    .local v1, "cs":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v2

    .line 655
    .local v2, "u":[I
    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v4, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 656
    invoke-static {v2, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 658
    const/4 v4, 0x0

    .line 659
    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_0

    .line 661
    aget-object v5, p0, v4

    iget-object v5, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 662
    mul-int/lit8 v5, v4, 0xa

    invoke-static {v2, v3, v1, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    goto :goto_0

    .line 665
    :cond_0
    invoke-static {v2, v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 666
    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->invVar([I[I)V

    .line 667
    add-int/lit8 v4, v4, -0x1

    .line 669
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->create()[I

    move-result-object v5

    .line 671
    .local v5, "t":[I
    :goto_1
    if-lez v4, :cond_1

    .line 673
    add-int/lit8 v6, v4, -0x1

    .line 674
    .local v4, "j":I
    .local v6, "i":I
    mul-int/lit8 v7, v6, 0xa

    invoke-static {v1, v7, v5, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 675
    invoke-static {v5, v2, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 676
    aget-object v7, p0, v4

    iget-object v7, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 677
    aget-object v7, p0, v4

    iget-object v7, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v5, v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 678
    .end local v4    # "j":I
    move v4, v6

    goto :goto_1

    .line 680
    .end local v6    # "i":I
    .local v4, "i":I
    :cond_1
    aget-object v6, p0, v3

    iget-object v6, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v2, v3, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 681
    return-void
.end method

.method private static normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "r"
        }
    .end annotation

    .line 685
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->inv([I[I)V

    .line 686
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 687
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 688
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 689
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 690
    return-void
.end method

.method private static normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)Z
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 694
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 695
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 696
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 698
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->isZeroVar([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->areEqualVar([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 10
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .param p1, "q"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "q",
            "r",
            "t"
        }
    .end annotation

    .line 706
    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    .line 707
    .local v0, "a":[I
    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    .line 708
    .local v1, "b":[I
    iget-object v2, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 709
    .local v2, "c":[I
    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r1:[I

    .line 710
    .local v3, "d":[I
    move-object v4, v0

    .line 711
    .local v4, "e":[I
    move-object v5, v2

    .line 712
    .local v5, "f":[I
    move-object v6, v3

    .line 713
    .local v6, "g":[I
    move-object v7, v1

    .line 715
    .local v7, "h":[I
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v9, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v8, v9, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 716
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v8, v9, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 717
    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 718
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 719
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 720
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    invoke-static {v2, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 721
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v9, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 722
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v3, v8, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 723
    invoke-static {v1, v0, v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 724
    invoke-static {v3, v2, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 725
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v4, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 726
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v5, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 727
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v4, v5, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 728
    iget-object v8, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v7, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 729
    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 9
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "r",
            "t"
        }
    .end annotation

    .line 733
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    .line 734
    .local v0, "a":[I
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    .line 735
    .local v1, "b":[I
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 736
    .local v2, "c":[I
    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 737
    .local v3, "e":[I
    move-object v4, v0

    .line 738
    .local v4, "f":[I
    move-object v5, v1

    .line 739
    .local v5, "g":[I
    iget-object v6, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 741
    .local v6, "h":[I
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v7, v8, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 742
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v0, v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 743
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v1, v7, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 744
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 745
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 746
    invoke-static {v1, v0, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 747
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v7, v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 748
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 749
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v3, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 750
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 751
    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 10
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "r",
            "t"
        }
    .end annotation

    .line 755
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    .line 756
    .local v0, "a":[I
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    .line 757
    .local v1, "b":[I
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 758
    .local v2, "c":[I
    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    .line 759
    .local v3, "d":[I
    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 760
    .local v4, "e":[I
    move-object v5, v0

    .line 761
    .local v5, "f":[I
    move-object v6, v1

    .line 762
    .local v6, "g":[I
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 764
    .local v7, "h":[I
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v8, v9, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 765
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v0, v8, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 766
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v1, v8, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 767
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 768
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v2, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 769
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v9, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 770
    invoke-static {v1, v0, v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 771
    invoke-static {v3, v2, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 772
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v5, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 773
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v5, v4, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 774
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v6, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 775
    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 16
    .param p0, "negate"    # Z
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "negate",
            "p",
            "r",
            "t"
        }
    .end annotation

    .line 779
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    .line 780
    .local v2, "a":[I
    iget-object v3, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    .line 781
    .local v3, "b":[I
    move-object/from16 v4, p3

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 782
    .local v5, "c":[I
    iget-object v6, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 783
    .local v6, "e":[I
    move-object v7, v2

    .line 784
    .local v7, "f":[I
    move-object v8, v3

    .line 785
    .local v8, "g":[I
    iget-object v9, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 788
    .local v9, "h":[I
    if-eqz p0, :cond_0

    .line 790
    move-object v10, v3

    .local v10, "na":[I
    move-object v11, v2

    .local v11, "nb":[I
    goto :goto_0

    .line 794
    .end local v10    # "na":[I
    .end local v11    # "nb":[I
    :cond_0
    move-object v10, v2

    .restart local v10    # "na":[I
    move-object v11, v3

    .line 796
    .restart local v11    # "nb":[I
    :goto_0
    move-object v12, v10

    .local v12, "nf":[I
    move-object v13, v11

    .line 798
    .local v13, "ng":[I
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v14, v15, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 799
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v10, v14, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 800
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v11, v14, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 801
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v14, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 802
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v5, v14, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 803
    invoke-static {v3, v2, v9, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 804
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v14, v5, v13, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 805
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v7, v8, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 806
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v7, v6, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 807
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v8, v9, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 808
    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 16
    .param p0, "negate"    # Z
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "negate",
            "p",
            "r",
            "t"
        }
    .end annotation

    .line 812
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    .line 813
    .local v2, "a":[I
    iget-object v3, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    .line 814
    .local v3, "b":[I
    move-object/from16 v4, p3

    iget-object v5, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;->r0:[I

    .line 815
    .local v5, "c":[I
    iget-object v6, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    .line 816
    .local v6, "d":[I
    iget-object v7, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 817
    .local v7, "e":[I
    move-object v8, v2

    .line 818
    .local v8, "f":[I
    move-object v9, v3

    .line 819
    .local v9, "g":[I
    iget-object v10, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 822
    .local v10, "h":[I
    if-eqz p0, :cond_0

    .line 824
    move-object v11, v3

    .local v11, "na":[I
    move-object v12, v2

    .local v12, "nb":[I
    goto :goto_0

    .line 828
    .end local v11    # "na":[I
    .end local v12    # "nb":[I
    :cond_0
    move-object v11, v2

    .restart local v11    # "na":[I
    move-object v12, v3

    .line 830
    .restart local v12    # "nb":[I
    :goto_0
    move-object v13, v11

    .local v13, "nf":[I
    move-object v14, v12

    .line 832
    .local v14, "ng":[I
    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v15, v4, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 833
    iget-object v4, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v11, v4, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 834
    iget-object v4, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v12, v4, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 835
    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v4, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 836
    iget-object v4, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v5, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 837
    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v4, v15, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 838
    invoke-static {v3, v2, v10, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 839
    invoke-static {v6, v5, v14, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 840
    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v8, v9, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 841
    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v8, v7, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 842
    iget-object v4, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v9, v10, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 843
    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "r"
        }
    .end annotation

    .line 847
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 848
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 849
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 850
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 851
    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "r"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 856
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 857
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    .line 858
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 859
    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V
    .locals 4
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "r"
        }
    .end annotation

    .line 864
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 865
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d2:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 866
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 867
    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 9
    .param p0, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    .line 872
    .local v0, "a":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    .line 873
    .local v1, "b":[I
    iget-object v2, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    .line 874
    .local v2, "c":[I
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    .line 875
    .local v3, "e":[I
    move-object v4, v0

    .line 876
    .local v4, "f":[I
    move-object v5, v1

    .line 877
    .local v5, "g":[I
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    .line 879
    .local v6, "h":[I
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 880
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 881
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v7, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 882
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 883
    invoke-static {v2, v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 884
    invoke-static {v0, v1, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 885
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sqr([I[I)V

    .line 886
    invoke-static {v6, v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->sub([I[I[I)V

    .line 887
    invoke-static {v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->add([I[I[I)V

    .line 888
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->carry([I)V

    .line 889
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 890
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v4, v3, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 891
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 892
    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V
    .locals 6
    .param p0, "block"    # I
    .param p1, "index"    # I
    .param p2, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "block",
            "index",
            "p"
        }
    .end annotation

    .line 899
    mul-int/lit8 v0, p0, 0x8

    mul-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0xa

    .line 901
    .local v0, "off":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 903
    xor-int v2, v1, p1

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    .line 904
    .local v2, "cond":I
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    const/4 v5, 0x0

    invoke-static {v2, v3, v0, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v0, v0, 0xa

    .line 905
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v2, v3, v0, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v0, v0, 0xa

    .line 906
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, v3, v0, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    .end local v2    # "cond":I
    add-int/lit8 v0, v0, 0xa

    .line 901
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 908
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private static pointLookupZ([II[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "table"    # [I
    .param p3, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "n",
            "table",
            "r"
        }
    .end annotation

    .line 914
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->getWindow4([II)I

    move-result v0

    .line 916
    .local v0, "w":I
    ushr-int/lit8 v1, v0, 0x3

    xor-int/lit8 v1, v1, 0x1

    .line 917
    .local v1, "sign":I
    neg-int v2, v1

    xor-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x7

    .line 922
    .local v2, "abs":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 924
    xor-int v5, v3, v2

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 925
    .local v5, "cond":I
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    const/4 v7, 0x0

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 926
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 927
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 928
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cmov(I[II[II)V

    .end local v5    # "cond":I
    add-int/lit8 v4, v4, 0xa

    .line 922
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 931
    .end local v3    # "i":I
    .end local v4    # "off":I
    :cond_0
    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    iget-object v4, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cswap(I[I[I)V

    .line 932
    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    .line 933
    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 6
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .param p2, "pointsOff"    # I
    .param p3, "pointsLen"    # I
    .param p4, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
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
            "points",
            "pointsOff",
            "pointsLen",
            "t"
        }
    .end annotation

    .line 940
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v0, p1, p2

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 942
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 943
    .local v0, "d":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    aget-object v2, p1, p2

    aget-object v3, p1, p2

    invoke-static {v2, v3, v0, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 945
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 947
    add-int v3, p2, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    add-int v4, p2, v2

    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v5, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v5, p1, v4

    invoke-static {v3, v0, v5, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 949
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    .param p2, "count"    # I
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "points",
            "count",
            "t"
        }
    .end annotation

    .line 990
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 991
    .local v0, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 993
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 994
    .local v2, "d":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-static {v0, v0, v2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 996
    const/4 v3, 0x0

    .line 999
    .local v3, "i":I
    :goto_0
    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    invoke-direct {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v4, p1, v3

    .line 1000
    .local v4, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    .line 1002
    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_0

    .line 1004
    nop

    .line 1009
    .end local v4    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    return-void

    .line 1007
    .restart local v4    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    :cond_0
    invoke-static {v0, v2, v0, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1008
    .end local v4    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    goto :goto_0
.end method

.method private static pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)[I
    .locals 8
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "count"    # I
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "count",
            "t"
        }
    .end annotation

    .line 955
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 956
    .local v0, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 958
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 959
    .local v2, "d":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-static {v0, v0, v2, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 961
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    invoke-direct {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 962
    .local v3, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    mul-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v1

    .line 963
    .local v1, "table":[I
    const/4 v4, 0x0

    .line 965
    .local v4, "off":I
    const/4 v5, 0x0

    .line 968
    .local v5, "i":I
    :goto_0
    invoke-static {v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    .line 970
    iget-object v6, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ymx_h:[I

    const/4 v7, 0x0

    invoke-static {v6, v7, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 971
    iget-object v6, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->ypx_h:[I

    invoke-static {v6, v7, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 972
    iget-object v6, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->xyd:[I

    invoke-static {v6, v7, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 973
    iget-object v6, v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;->z:[I

    invoke-static {v6, v7, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v4, v4, 0xa

    .line 975
    add-int/lit8 v5, v5, 0x1

    if-ne v5, p1, :cond_0

    .line 977
    nop

    .line 983
    return-object v1

    .line 980
    :cond_0
    invoke-static {v0, v2, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_0
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 1
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 1013
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->zero([I)V

    .line 1014
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    .line 1015
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    .line 1016
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->zero([I)V

    .line 1017
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    .line 1018
    return-void
.end method

.method public static precompute()V
    .locals 22

    .line 1022
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1024
    :try_start_0
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    if-eqz v0, :cond_0

    .line 1026
    monitor-exit v1

    return-void

    .line 1029
    :cond_0
    const/16 v0, 0x10

    .line 1030
    .local v0, "wnafPoints":I
    const/16 v2, 0x40

    .line 1031
    .local v2, "combPoints":I
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    .line 1033
    .local v3, "totalPoints":I
    new-array v4, v3, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    .line 1034
    .local v4, "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1036
    .local v5, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v7, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1037
    .local v7, "B":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    iget-object v9, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    const/4 v10, 0x0

    invoke-static {v8, v10, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1038
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    iget-object v9, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v8, v10, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1040
    invoke-static {v7, v4, v10, v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1042
    new-instance v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v8, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1043
    .local v8, "B128":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_x:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->x:[I

    invoke-static {v9, v10, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1044
    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B128_y:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;->y:[I

    invoke-static {v9, v10, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1046
    invoke-static {v8, v4, v0, v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1048
    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    invoke-direct {v9, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1049
    .local v9, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_x:[I

    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v11, v10, v12, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1050
    sget-object v11, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->B_y:[I

    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    invoke-static {v11, v10, v12, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1051
    iget-object v11, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->one([I)V

    .line 1052
    iget-object v11, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v11, v10, v12, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1053
    iget-object v11, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    iget-object v12, v9, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->v:[I

    invoke-static {v11, v10, v12, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1055
    mul-int/lit8 v11, v0, 0x2

    .line 1056
    .local v11, "pointsIndex":I
    const/4 v12, 0x4

    new-array v13, v12, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    .line 1057
    .local v13, "toothPowers":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    const/4 v14, 0x0

    .local v14, "tooth":I
    :goto_0
    if-ge v14, v12, :cond_1

    .line 1059
    new-instance v15, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v15, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v15, v13, v14

    .line 1057
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 1062
    .end local v14    # "tooth":I
    :cond_1
    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v14, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1063
    .local v14, "u":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    const/4 v15, 0x0

    .local v15, "block":I
    :goto_1
    const/16 v10, 0x8

    if-ge v15, v10, :cond_8

    .line 1065
    add-int/lit8 v16, v11, 0x1

    .end local v11    # "pointsIndex":I
    .local v16, "pointsIndex":I
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    invoke-direct {v10, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v10, v4, v11

    .line 1067
    .local v10, "sum":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    const/4 v11, 0x0

    .local v11, "tooth":I
    :goto_2
    if-ge v11, v12, :cond_5

    .line 1069
    if-nez v11, :cond_2

    .line 1071
    invoke-static {v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    goto :goto_3

    .line 1075
    :cond_2
    invoke-static {v9, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 1076
    invoke-static {v10, v14, v10, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1079
    :goto_3
    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1080
    aget-object v12, v13, v11

    invoke-static {v9, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 1082
    add-int v12, v15, v11

    const/16 v6, 0xa

    if-eq v12, v6, :cond_3

    .line 1084
    const/4 v6, 0x1

    .local v6, "spacing":I
    :goto_4
    const/16 v12, 0x8

    if-ge v6, v12, :cond_4

    .line 1086
    invoke-static {v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1084
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 1082
    .end local v6    # "spacing":I
    :cond_3
    const/16 v12, 0x8

    .line 1067
    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x4

    goto :goto_2

    .line 1091
    .end local v11    # "tooth":I
    :cond_5
    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v6, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    .line 1092
    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->t:[I

    invoke-static {v6, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->negate([I[I)V

    .line 1094
    const/4 v6, 0x0

    move/from16 v11, v16

    .end local v16    # "pointsIndex":I
    .local v6, "tooth":I
    .local v11, "pointsIndex":I
    :goto_5
    const/4 v12, 0x3

    if-ge v6, v12, :cond_7

    .line 1096
    const/4 v12, 0x1

    shl-int/2addr v12, v6

    .line 1097
    .local v12, "size":I
    const/16 v16, 0x0

    move/from16 v21, v16

    move/from16 v16, v2

    move/from16 v2, v21

    .local v2, "j":I
    .local v16, "combPoints":I
    :goto_6
    if-ge v2, v12, :cond_6

    .line 1099
    move/from16 v17, v2

    .end local v2    # "j":I
    .local v17, "j":I
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;

    move-object/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .local v19, "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-direct {v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v2, v19, v11

    .line 1100
    sub-int v2, v11, v12

    aget-object v2, v19, v2

    aget-object v4, v13, v6

    move/from16 v20, v6

    .end local v6    # "tooth":I
    .local v20, "tooth":I
    aget-object v6, v19, v11

    invoke-static {v2, v4, v6, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1097
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "j":I
    .restart local v2    # "j":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v19

    move/from16 v6, v20

    goto :goto_6

    .end local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v20    # "tooth":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .restart local v6    # "tooth":I
    :cond_6
    move/from16 v17, v2

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 1094
    .end local v2    # "j":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v6    # "tooth":I
    .end local v12    # "size":I
    .restart local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .restart local v20    # "tooth":I
    add-int/lit8 v6, v20, 0x1

    move/from16 v2, v16

    .end local v20    # "tooth":I
    .restart local v6    # "tooth":I
    goto :goto_5

    .end local v16    # "combPoints":I
    .end local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .local v2, "combPoints":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    :cond_7
    move/from16 v16, v2

    move-object/from16 v19, v4

    move/from16 v20, v6

    .line 1063
    .end local v2    # "combPoints":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v6    # "tooth":I
    .end local v10    # "sum":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .restart local v16    # "combPoints":I
    .restart local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x4

    goto/16 :goto_1

    .end local v16    # "combPoints":I
    .end local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .restart local v2    # "combPoints":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    :cond_8
    move/from16 v16, v2

    move-object/from16 v19, v4

    .line 1107
    .end local v2    # "combPoints":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v15    # "block":I
    .restart local v16    # "combPoints":I
    .restart local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->invertDoubleZs([Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;)V

    .line 1109
    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    .line 1110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_9

    .line 1112
    aget-object v4, v19, v2

    .line 1113
    .local v4, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v10, v6, v2

    .line 1116
    .local v10, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v6, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1117
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v6, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1120
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v15, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    move/from16 v17, v2

    .end local v2    # "i":I
    .local v17, "i":I
    iget-object v2, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v6, v12, v15, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 1123
    iget-object v2, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, v6, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1124
    iget-object v2, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2, v6, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1126
    iget-object v2, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1127
    iget-object v2, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1128
    iget-object v2, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1110
    .end local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    add-int/lit8 v2, v17, 0x1

    .end local v17    # "i":I
    .restart local v2    # "i":I
    goto :goto_7

    :cond_9
    move/from16 v17, v2

    .line 1131
    .end local v2    # "i":I
    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    sput-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    .line 1132
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    if-ge v2, v0, :cond_a

    .line 1134
    add-int v4, v0, v2

    aget-object v4, v19, v4

    .line 1135
    .restart local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    aput-object v10, v6, v2

    .line 1138
    .restart local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v6, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1139
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v6, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1142
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v15, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    move/from16 v17, v0

    .end local v0    # "wnafPoints":I
    .local v17, "wnafPoints":I
    iget-object v0, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v6, v12, v15, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 1145
    iget-object v0, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v0, v6, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1146
    iget-object v0, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v12, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v0, v6, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1148
    iget-object v0, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1149
    iget-object v0, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1150
    iget-object v0, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1132
    .end local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    add-int/lit8 v2, v2, 0x1

    move/from16 v0, v17

    goto :goto_8

    .end local v17    # "wnafPoints":I
    .restart local v0    # "wnafPoints":I
    :cond_a
    move/from16 v17, v0

    .line 1153
    .end local v0    # "wnafPoints":I
    .end local v2    # "i":I
    .restart local v17    # "wnafPoints":I
    mul-int/lit8 v2, v16, 0x3

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->createTable(I)[I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    .line 1154
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v12, 0x0

    invoke-direct {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1155
    .local v0, "s":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    const/4 v2, 0x0

    .line 1156
    .local v2, "off":I
    mul-int/lit8 v4, v17, 0x2

    .local v4, "i":I
    :goto_9
    if-ge v4, v3, :cond_b

    .line 1158
    aget-object v6, v19, v4

    .line 1161
    .local v6, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v12, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    invoke-static {v10, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1162
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->z:[I

    iget-object v15, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    invoke-static {v10, v12, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1165
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    move/from16 v18, v3

    .end local v3    # "totalPoints":I
    .local v18, "totalPoints":I
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v10, v12, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->apm([I[I[I[I)V

    .line 1168
    iget-object v3, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->x:[I

    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;->y:[I

    iget-object v12, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3, v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1169
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->C_d4:[I

    iget-object v12, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3, v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->mul([I[I[I)V

    .line 1171
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1172
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1173
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->normalize([I)V

    .line 1175
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ymx_h:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    const/4 v12, 0x0

    invoke-static {v3, v12, v10, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v2, v2, 0xa

    .line 1176
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->ypx_h:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    const/4 v12, 0x0

    invoke-static {v3, v12, v10, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    add-int/lit8 v2, v2, 0xa

    .line 1177
    iget-object v3, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;->xyd:[I

    sget-object v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_COMB:[I

    const/4 v12, 0x0

    invoke-static {v3, v12, v10, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .end local v6    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    add-int/lit8 v2, v2, 0xa

    .line 1156
    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v18

    goto :goto_9

    .end local v18    # "totalPoints":I
    .restart local v3    # "totalPoints":I
    :cond_b
    move/from16 v18, v3

    .line 1180
    .end local v0    # "s":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    .end local v2    # "off":I
    .end local v3    # "totalPoints":I
    .end local v4    # "i":I
    .end local v5    # "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    .end local v7    # "B":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v8    # "B128":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .end local v9    # "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .end local v11    # "pointsIndex":I
    .end local v13    # "toothPowers":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v14    # "u":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    .end local v16    # "combPoints":I
    .end local v17    # "wnafPoints":I
    .end local v19    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointExtended;
    monitor-exit v1

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static pruneScalar([BI[B)V
    .locals 2
    .param p0, "n"    # [B
    .param p1, "nOff"    # I
    .param p2, "r"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "nOff",
            "r"
        }
    .end annotation

    .line 1185
    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1187
    aget-byte v0, p2, v1

    and-int/lit16 v0, v0, 0xf8

    int-to-byte v0, v0

    aput-byte v0, p2, v1

    .line 1188
    const/16 v0, 0x1f

    aget-byte v1, p2, v0

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1189
    aget-byte v1, p2, v0

    or-int/lit8 v1, v1, 0x40

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 1190
    return-void
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 7
    .param p0, "k"    # [B
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "p",
            "r"
        }
    .end annotation

    .line 1194
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1195
    .local v1, "n":[I
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 1196
    const/16 v2, 0x100

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->toSignedDigits(I[I)V

    .line 1198
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1199
    .local v2, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1200
    .local v4, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    invoke-static {p1, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)[I

    move-result-object v0

    .line 1202
    .local v0, "table":[I
    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1204
    const/16 v3, 0x3f

    .line 1207
    .local v3, "w":I
    :goto_0
    invoke-static {v1, v3, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointLookupZ([II[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;)V

    .line 1208
    invoke-static {v2, p2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1210
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 1212
    nop

    .line 1220
    return-void

    .line 1215
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 1217
    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1215
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_1
    goto :goto_0
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 12
    .param p0, "k"    # [B
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "k",
            "r"
        }
    .end annotation

    .line 1230
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    .line 1232
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 1233
    .local v1, "n":[I
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    .line 1234
    const/16 v2, 0x100

    invoke-static {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->toSignedDigits(I[I)V

    .line 1235
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->groupCombBits([I)V

    .line 1237
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1238
    .local v2, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;
    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1240
    .local v4, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1241
    const/4 v3, 0x0

    .line 1243
    .local v3, "resultSign":I
    const/16 v5, 0x1c

    .line 1246
    .local v5, "cOff":I
    :goto_0
    const/4 v6, 0x0

    .local v6, "block":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 1248
    aget v7, v1, v6

    ushr-int/2addr v7, v5

    .line 1249
    .local v7, "w":I
    ushr-int/lit8 v8, v7, 0x3

    and-int/lit8 v8, v8, 0x1

    .line 1250
    .local v8, "sign":I
    neg-int v9, v8

    xor-int/2addr v9, v7

    and-int/lit8 v9, v9, 0x7

    .line 1255
    .local v9, "abs":I
    invoke-static {v6, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;)V

    .line 1257
    xor-int v10, v3, v8

    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    .line 1258
    xor-int v10, v3, v8

    iget-object v11, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    .line 1259
    move v3, v8

    .line 1261
    invoke-static {v2, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1246
    .end local v7    # "w":I
    .end local v8    # "sign":I
    .end local v9    # "abs":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1264
    .end local v6    # "block":I
    :cond_0
    add-int/lit8 v5, v5, -0x4

    if-gez v5, :cond_1

    .line 1266
    nop

    .line 1272
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->x:[I

    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    .line 1273
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->u:[I

    invoke-static {v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->cnegate(I[I)V

    .line 1274
    return-void

    .line 1269
    :cond_1
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    goto :goto_0
.end method

.method private static scalarMultBaseEncoded([B[BI)V
    .locals 2
    .param p0, "k"    # [B
    .param p1, "r"    # [B
    .param p2, "rOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "k",
            "r",
            "rOff"
        }
    .end annotation

    .line 1278
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1279
    .local v0, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1280
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;[BI)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1284
    return-void

    .line 1282
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public static scalarMultBaseYZ(Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;[BI[I[I)V
    .locals 4
    .param p0, "friend"    # Lorg/bouncycastle/math/ec/rfc7748/X25519$Friend;
    .param p1, "k"    # [B
    .param p2, "kOff"    # I
    .param p3, "y"    # [I
    .param p4, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "friend",
            "k",
            "kOff",
            "y",
            "z"
        }
    .end annotation

    .line 1291
    if-eqz p0, :cond_1

    .line 1296
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 1297
    .local v0, "n":[B
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pruneScalar([BI[B)V

    .line 1299
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1300
    .local v1, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1301
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1306
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->y:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, p3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1307
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;->z:[I

    invoke-static {v2, v3, p4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$F;->copy([II[II)V

    .line 1308
    return-void

    .line 1303
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1293
    .end local v0    # "n":[B
    .end local v1    # "p":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by X25519"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 9
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "r"
        }
    .end annotation

    .line 1312
    const/16 v0, 0xfd

    new-array v0, v0, [B

    .line 1315
    .local v0, "ws_p":[B
    const/4 v1, 0x4

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->getOrderWnafVar(I[B)V

    .line 1317
    const/4 v1, 0x4

    .line 1318
    .local v1, "count":I
    new-array v2, v1, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    .line 1319
    .local v2, "tp":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1320
    .local v3, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    invoke-static {p0, v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1322
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1324
    const/16 v4, 0xfc

    .line 1326
    .local v4, "bit":I
    :goto_0
    aget-byte v5, v0, v4

    .line 1327
    .local v5, "wp":I
    if-eqz v5, :cond_1

    .line 1329
    shr-int/lit8 v6, v5, 0x1

    shr-int/lit8 v7, v5, 0x1f

    xor-int/2addr v6, v7

    .line 1330
    .local v6, "index":I
    if-gez v5, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    aget-object v8, v2, v6

    invoke-static {v7, v8, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1333
    .end local v6    # "index":I
    :cond_1
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_2

    .line 1335
    nop

    .line 1340
    .end local v4    # "bit":I
    .end local v5    # "wp":I
    return-void

    .line 1338
    .restart local v4    # "bit":I
    .restart local v5    # "wp":I
    :cond_2
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1339
    .end local v5    # "wp":I
    goto :goto_0
.end method

.method private static scalarMultStraus128Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V
    .locals 22
    .param p0, "nb"    # [I
    .param p1, "np"    # [I
    .param p2, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p3, "nq"    # [I
    .param p4, "q"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    .param p5, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;
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
            "nb",
            "np",
            "p",
            "nq",
            "q",
            "r"
        }
    .end annotation

    .line 1349
    move-object/from16 v0, p5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->precompute()V

    .line 1351
    const/16 v1, 0x100

    new-array v1, v1, [B

    .line 1352
    .local v1, "ws_b":[B
    const/16 v2, 0x80

    new-array v3, v2, [B

    .line 1353
    .local v3, "ws_p":[B
    new-array v2, v2, [B

    .line 1355
    .local v2, "ws_q":[B
    const/4 v4, 0x6

    move-object/from16 v5, p0

    invoke-static {v5, v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1356
    const/4 v4, 0x4

    move-object/from16 v6, p1

    invoke-static {v6, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1357
    move-object/from16 v7, p3

    invoke-static {v7, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1359
    const/4 v4, 0x4

    .line 1360
    .local v4, "count":I
    new-array v8, v4, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    .line 1361
    .local v8, "tp":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    new-array v9, v4, [Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;

    .line 1362
    .local v9, "tq":[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1363
    .local v10, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;
    move-object/from16 v11, p2

    invoke-static {v11, v8, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1364
    move-object/from16 v12, p4

    invoke-static {v12, v9, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointPrecomputeZ(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;ILorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    .line 1366
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1368
    const/16 v13, 0x80

    .line 1369
    .local v13, "bit":I
    :cond_0
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_1

    .line 1371
    aget-byte v14, v1, v13

    add-int/lit16 v15, v13, 0x80

    aget-byte v15, v1, v15

    or-int/2addr v14, v15

    aget-byte v15, v3, v13

    or-int/2addr v14, v15

    aget-byte v15, v2, v13

    or-int/2addr v14, v15

    if-eqz v14, :cond_0

    .line 1373
    nop

    .line 1377
    :cond_1
    :goto_0
    if-ltz v13, :cond_a

    .line 1379
    aget-byte v14, v1, v13

    .line 1380
    .local v14, "wb":I
    const/16 v16, 0x1

    if-eqz v14, :cond_3

    .line 1382
    shr-int/lit8 v17, v14, 0x1

    shr-int/lit8 v18, v14, 0x1f

    xor-int v17, v17, v18

    .line 1383
    .local v17, "index":I
    if-gez v14, :cond_2

    const/4 v15, 0x1

    goto :goto_1

    :cond_2
    const/4 v15, 0x0

    :goto_1
    sget-object v19, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    move-object/from16 v20, v1

    .end local v1    # "ws_b":[B
    .local v20, "ws_b":[B
    aget-object v1, v19, v17

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_2

    .line 1380
    .end local v17    # "index":I
    .end local v20    # "ws_b":[B
    .restart local v1    # "ws_b":[B
    :cond_3
    move-object/from16 v20, v1

    .line 1386
    .end local v1    # "ws_b":[B
    .restart local v20    # "ws_b":[B
    :goto_2
    add-int/lit16 v1, v13, 0x80

    aget-byte v1, v20, v1

    .line 1387
    .local v1, "wb128":I
    if-eqz v1, :cond_5

    .line 1389
    shr-int/lit8 v15, v1, 0x1

    shr-int/lit8 v17, v1, 0x1f

    xor-int v15, v15, v17

    .line 1390
    .local v15, "index":I
    move/from16 v17, v1

    if-gez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .end local v1    # "wb128":I
    .local v17, "wb128":I
    :goto_3
    sget-object v19, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->PRECOMP_BASE128_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;

    move-object/from16 v21, v2

    .end local v2    # "ws_q":[B
    .local v21, "ws_q":[B
    aget-object v2, v19, v15

    invoke-static {v1, v2, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecomp;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_4

    .line 1387
    .end local v15    # "index":I
    .end local v17    # "wb128":I
    .end local v21    # "ws_q":[B
    .restart local v1    # "wb128":I
    .restart local v2    # "ws_q":[B
    :cond_5
    move/from16 v17, v1

    move-object/from16 v21, v2

    .line 1393
    .end local v1    # "wb128":I
    .end local v2    # "ws_q":[B
    .restart local v17    # "wb128":I
    .restart local v21    # "ws_q":[B
    :goto_4
    aget-byte v1, v3, v13

    .line 1394
    .local v1, "wp":I
    if-eqz v1, :cond_7

    .line 1396
    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v15, v1, 0x1f

    xor-int/2addr v2, v15

    .line 1397
    .local v2, "index":I
    if-gez v1, :cond_6

    const/4 v15, 0x1

    goto :goto_5

    :cond_6
    const/4 v15, 0x0

    :goto_5
    move/from16 v19, v1

    .end local v1    # "wp":I
    .local v19, "wp":I
    aget-object v1, v8, v2

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_6

    .line 1394
    .end local v2    # "index":I
    .end local v19    # "wp":I
    .restart local v1    # "wp":I
    :cond_7
    move/from16 v19, v1

    .line 1400
    .end local v1    # "wp":I
    .restart local v19    # "wp":I
    :goto_6
    aget-byte v1, v21, v13

    .line 1401
    .local v1, "wq":I
    if-eqz v1, :cond_9

    .line 1403
    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v15, v1, 0x1f

    xor-int/2addr v2, v15

    .line 1404
    .restart local v2    # "index":I
    if-gez v1, :cond_8

    const/4 v15, 0x1

    goto :goto_7

    :cond_8
    const/4 v15, 0x0

    :goto_7
    move/from16 v16, v1

    .end local v1    # "wq":I
    .local v16, "wq":I
    aget-object v1, v9, v2

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointPrecompZ;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointTemp;)V

    goto :goto_8

    .line 1401
    .end local v2    # "index":I
    .end local v16    # "wq":I
    .restart local v1    # "wq":I
    :cond_9
    move/from16 v16, v1

    .line 1407
    .end local v1    # "wq":I
    .restart local v16    # "wq":I
    :goto_8
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1377
    .end local v14    # "wb":I
    .end local v16    # "wq":I
    .end local v17    # "wb128":I
    .end local v19    # "wp":I
    add-int/lit8 v13, v13, -0x1

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    goto :goto_0

    .line 1411
    .end local v20    # "ws_b":[B
    .end local v21    # "ws_q":[B
    .local v1, "ws_b":[B
    .local v2, "ws_q":[B
    :cond_a
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1412
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAccum;)V

    .line 1413
    return-void
.end method

.method public static sign([BI[BII[BI)V
    .locals 9
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "m"    # [B
    .param p3, "mOff"    # I
    .param p4, "mLen"    # I
    .param p5, "sig"    # [B
    .param p6, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk",
            "skOff",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1417
    const/4 v2, 0x0

    .line 1418
    .local v2, "ctx":[B
    const/4 v3, 0x0

    .line 1420
    .local v3, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, p6

    .end local p0    # "sk":[B
    .end local p1    # "skOff":I
    .end local p2    # "m":[B
    .end local p3    # "mOff":I
    .end local p4    # "mLen":I
    .end local p5    # "sig":[B
    .end local p6    # "sigOff":I
    .local v0, "sk":[B
    .local v1, "skOff":I
    .local v4, "m":[B
    .local v5, "mOff":I
    .local v6, "mLen":I
    .local v7, "sig":[B
    .local v8, "sigOff":I
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    .line 1421
    return-void
.end method

.method public static sign([BI[BI[BII[BI)V
    .locals 11
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "m"    # [B
    .param p5, "mOff"    # I
    .param p6, "mLen"    # I
    .param p7, "sig"    # [B
    .param p8, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "sk",
            "skOff",
            "pk",
            "pkOff",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1426
    const/4 v4, 0x0

    .line 1427
    .local v4, "ctx":[B
    const/4 v5, 0x0

    .line 1429
    .local v5, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    .line 1430
    return-void
.end method

.method public static sign([BI[BI[B[BII[BI)V
    .locals 11
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "m"    # [B
    .param p6, "mOff"    # I
    .param p7, "mLen"    # I
    .param p8, "sig"    # [B
    .param p9, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
            "sk",
            "skOff",
            "pk",
            "pkOff",
            "ctx",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1442
    const/4 v5, 0x0

    .line 1444
    .local v5, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    .line 1445
    return-void
.end method

.method public static sign([BI[B[BII[BI)V
    .locals 9
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "ctx"    # [B
    .param p3, "m"    # [B
    .param p4, "mOff"    # I
    .param p5, "mLen"    # I
    .param p6, "sig"    # [B
    .param p7, "sigOff"    # I
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
            "sk",
            "skOff",
            "ctx",
            "m",
            "mOff",
            "mLen",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1434
    const/4 v3, 0x0

    .line 1436
    .local v3, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    .line 1437
    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 13
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # Lorg/bouncycastle/crypto/Digest;
    .param p6, "sig"    # [B
    .param p7, "sigOff"    # I
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
            "sk",
            "skOff",
            "pk",
            "pkOff",
            "ctx",
            "ph",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1478
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 1479
    .local v7, "m":[B
    const/4 v1, 0x0

    move-object/from16 v12, p5

    invoke-interface {v12, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1484
    const/4 v6, 0x1

    .line 1486
    .local v6, "phflag":B
    const/4 v8, 0x0

    array-length v9, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    .line 1487
    return-void

    .line 1481
    .end local v6    # "phflag":B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ph"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static signPrehash([BI[BI[B[BI[BI)V
    .locals 11
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # [B
    .param p6, "phOff"    # I
    .param p7, "sig"    # [B
    .param p8, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "sk",
            "skOff",
            "pk",
            "pkOff",
            "ctx",
            "ph",
            "phOff",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1457
    const/4 v5, 0x1

    .line 1459
    .local v5, "phflag":B
    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BI[BB[BII[BI)V

    .line 1460
    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Digest;[BI)V
    .locals 10
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "ctx"    # [B
    .param p3, "ph"    # Lorg/bouncycastle/crypto/Digest;
    .param p4, "sig"    # [B
    .param p5, "sigOff"    # I
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
            "sk",
            "skOff",
            "ctx",
            "ph",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1464
    const/16 v0, 0x40

    new-array v5, v0, [B

    .line 1465
    .local v5, "m":[B
    const/4 v1, 0x0

    invoke-interface {p3, v5, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1470
    const/4 v4, 0x1

    .line 1472
    .local v4, "phflag":B
    const/4 v6, 0x0

    array-length v7, v5

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v8, p4

    move v9, p5

    .end local p0    # "sk":[B
    .end local p1    # "skOff":I
    .end local p2    # "ctx":[B
    .end local p4    # "sig":[B
    .end local p5    # "sigOff":I
    .local v1, "sk":[B
    .local v2, "skOff":I
    .local v3, "ctx":[B
    .local v8, "sig":[B
    .local v9, "sigOff":I
    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    .line 1473
    return-void

    .line 1467
    .end local v1    # "sk":[B
    .end local v2    # "skOff":I
    .end local v3    # "ctx":[B
    .end local v4    # "phflag":B
    .end local v8    # "sig":[B
    .end local v9    # "sigOff":I
    .restart local p0    # "sk":[B
    .restart local p1    # "skOff":I
    .restart local p2    # "ctx":[B
    .restart local p4    # "sig":[B
    .restart local p5    # "sigOff":I
    :cond_0
    move-object v1, p0

    move v2, p1

    .end local p0    # "sk":[B
    .end local p1    # "skOff":I
    .restart local v1    # "sk":[B
    .restart local v2    # "skOff":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static signPrehash([BI[B[BI[BI)V
    .locals 9
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "ctx"    # [B
    .param p3, "ph"    # [B
    .param p4, "phOff"    # I
    .param p5, "sig"    # [B
    .param p6, "sigOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sk",
            "skOff",
            "ctx",
            "ph",
            "phOff",
            "sig",
            "sigOff"
        }
    .end annotation

    .line 1449
    const/4 v3, 0x1

    .line 1451
    .local v3, "phflag":B
    const/16 v6, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object v7, p5

    move v8, p6

    .end local p0    # "sk":[B
    .end local p1    # "skOff":I
    .end local p2    # "ctx":[B
    .end local p3    # "ph":[B
    .end local p4    # "phOff":I
    .end local p5    # "sig":[B
    .end local p6    # "sigOff":I
    .local v0, "sk":[B
    .local v1, "skOff":I
    .local v2, "ctx":[B
    .local v4, "ph":[B
    .local v5, "phOff":I
    .local v7, "sig":[B
    .local v8, "sigOff":I
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implSign([BI[BB[BII[BI)V

    .line 1452
    return-void
.end method

.method public static validatePublicKeyFull([BI)Z
    .locals 4
    .param p0, "pk"    # [B
    .param p1, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "pkOff"
        }
    .end annotation

    .line 1491
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v0

    .line 1493
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1495
    return v2

    .line 1498
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1499
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1501
    return v2

    .line 1504
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v2

    return v2
.end method

.method public static validatePublicKeyFullExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 4
    .param p0, "pk"    # [B
    .param p1, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "pkOff"
        }
    .end annotation

    .line 1509
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v0

    .line 1511
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1513
    return-object v2

    .line 1516
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1517
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1519
    return-object v2

    .line 1522
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1524
    return-object v2

    .line 1527
    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object v2

    return-object v2
.end method

.method public static validatePublicKeyPartial([BI)Z
    .locals 4
    .param p0, "pk"    # [B
    .param p1, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "pkOff"
        }
    .end annotation

    .line 1532
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v0

    .line 1534
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1536
    return v2

    .line 1539
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1540
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v2

    return v2
.end method

.method public static validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .locals 4
    .param p0, "pk"    # [B
    .param p1, "pkOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pk",
            "pkOff"
        }
    .end annotation

    .line 1545
    const/16 v0, 0x20

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->copy([BII)[B

    move-result-object v0

    .line 1547
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1549
    return-object v2

    .line 1552
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519-IA;)V

    .line 1553
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1555
    return-object v2

    .line 1558
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object v2

    return-object v2
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BII)Z
    .locals 8
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p3, "m"    # [B
    .param p4, "mOff"    # I
    .param p5, "mLen"    # I
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
            "sig",
            "sigOff",
            "publicPoint",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 1571
    const/4 v3, 0x0

    .line 1572
    .local v3, "ctx":[B
    const/4 v4, 0x0

    .line 1574
    .local v4, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .end local p3    # "m":[B
    .end local p4    # "mOff":I
    .end local p5    # "mLen":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .local v5, "m":[B
    .local v6, "mOff":I
    .local v7, "mLen":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BII)Z
    .locals 8
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p3, "ctx"    # [B
    .param p4, "m"    # [B
    .param p5, "mOff"    # I
    .param p6, "mLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigOff",
            "publicPoint",
            "ctx",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 1587
    const/4 v4, 0x0

    .line 1589
    .local v4, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .end local p3    # "ctx":[B
    .end local p4    # "m":[B
    .end local p5    # "mOff":I
    .end local p6    # "mLen":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .local v3, "ctx":[B
    .local v5, "m":[B
    .local v6, "mOff":I
    .local v7, "mLen":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[BII)Z
    .locals 9
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "m"    # [B
    .param p5, "mOff"    # I
    .param p6, "mLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigOff",
            "pk",
            "pkOff",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 1563
    const/4 v4, 0x0

    .line 1564
    .local v4, "ctx":[B
    const/4 v5, 0x0

    .line 1566
    .local v5, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    move v7, p5

    move v8, p6

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "pk":[B
    .end local p3    # "pkOff":I
    .end local p4    # "m":[B
    .end local p5    # "mOff":I
    .end local p6    # "mLen":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "pk":[B
    .local v3, "pkOff":I
    .local v6, "m":[B
    .local v7, "mOff":I
    .local v8, "mLen":I
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verify([BI[BI[B[BII)Z
    .locals 10
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "m"    # [B
    .param p6, "mOff"    # I
    .param p7, "mLen"    # I
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
            "sig",
            "sigOff",
            "pk",
            "pkOff",
            "ctx",
            "m",
            "mOff",
            "mLen"
        }
    .end annotation

    .line 1579
    const/4 v5, 0x0

    .line 1581
    .local v5, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result v9

    return v9
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BLorg/bouncycastle/crypto/Digest;)Z
    .locals 9
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p3, "ctx"    # [B
    .param p4, "ph"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigOff",
            "publicPoint",
            "ctx",
            "ph"
        }
    .end annotation

    .line 1622
    const/16 v0, 0x40

    new-array v6, v0, [B

    .line 1623
    .local v6, "m":[B
    const/4 v1, 0x0

    invoke-interface {p4, v6, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1628
    const/4 v5, 0x1

    .line 1630
    .local v5, "phflag":B
    const/4 v7, 0x0

    array-length v8, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .end local p3    # "ctx":[B
    .local v1, "sig":[B
    .local v2, "sigOff":I
    .local v3, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .local v4, "ctx":[B
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0

    .line 1625
    .end local v1    # "sig":[B
    .end local v2    # "sigOff":I
    .end local v3    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .end local v4    # "ctx":[B
    .end local v5    # "phflag":B
    .restart local p0    # "sig":[B
    .restart local p1    # "sigOff":I
    .restart local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .restart local p3    # "ctx":[B
    :cond_0
    move-object v1, p0

    move v2, p1

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .restart local v1    # "sig":[B
    .restart local v2    # "sigOff":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[B[BI)Z
    .locals 8
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .param p3, "ctx"    # [B
    .param p4, "ph"    # [B
    .param p5, "phOff"    # I
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
            "sig",
            "sigOff",
            "publicPoint",
            "ctx",
            "ph",
            "phOff"
        }
    .end annotation

    .line 1602
    const/4 v4, 0x1

    .line 1604
    .local v4, "phflag":B
    const/16 v7, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v6, p5

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .end local p3    # "ctx":[B
    .end local p4    # "ph":[B
    .end local p5    # "phOff":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;
    .local v3, "ctx":[B
    .local v5, "ph":[B
    .local v6, "phOff":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Digest;)Z
    .locals 10
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # Lorg/bouncycastle/crypto/Digest;
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
            "sig",
            "sigOff",
            "pk",
            "pkOff",
            "ctx",
            "ph"
        }
    .end annotation

    .line 1609
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 1610
    .local v7, "m":[B
    const/4 v1, 0x0

    invoke-interface {p5, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1615
    const/4 v6, 0x1

    .line 1617
    .local v6, "phflag":B
    const/4 v8, 0x0

    array-length v9, v7

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "pk":[B
    .end local p3    # "pkOff":I
    .end local p4    # "ctx":[B
    .local v1, "sig":[B
    .local v2, "sigOff":I
    .local v3, "pk":[B
    .local v4, "pkOff":I
    .local v5, "ctx":[B
    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    .line 1612
    .end local v1    # "sig":[B
    .end local v2    # "sigOff":I
    .end local v3    # "pk":[B
    .end local v4    # "pkOff":I
    .end local v5    # "ctx":[B
    .end local v6    # "phflag":B
    .restart local p0    # "sig":[B
    .restart local p1    # "sigOff":I
    .restart local p2    # "pk":[B
    .restart local p3    # "pkOff":I
    .restart local p4    # "ctx":[B
    :cond_0
    move-object v1, p0

    move v2, p1

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .restart local v1    # "sig":[B
    .restart local v2    # "sigOff":I
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ph"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static verifyPrehash([BI[BI[B[BI)Z
    .locals 9
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # [B
    .param p6, "phOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sig",
            "sigOff",
            "pk",
            "pkOff",
            "ctx",
            "ph",
            "phOff"
        }
    .end annotation

    .line 1594
    const/4 v5, 0x1

    .line 1596
    .local v5, "phflag":B
    const/16 v8, 0x40

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move v7, p6

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "pk":[B
    .end local p3    # "pkOff":I
    .end local p4    # "ctx":[B
    .end local p5    # "ph":[B
    .end local p6    # "phOff":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "pk":[B
    .local v3, "pkOff":I
    .local v4, "ctx":[B
    .local v6, "ph":[B
    .local v7, "phOff":I
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

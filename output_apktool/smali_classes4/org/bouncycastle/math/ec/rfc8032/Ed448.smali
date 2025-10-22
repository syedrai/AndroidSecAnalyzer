.class public abstract Lorg/bouncycastle/math/ec/rfc8032/Ed448;
.super Ljava/lang/Object;
.source "Ed448.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;,
        Lorg/bouncycastle/math/ec/rfc8032/Ed448$Algorithm;
    }
.end annotation


# static fields
.field private static final B225_x:[I

.field private static final B225_y:[I

.field private static final B_x:[I

.field private static final B_y:[I

.field private static final COORD_INTS:I = 0xe

.field private static final C_d:I = 0x98a9

.field private static final DOM4_PREFIX:[B

.field private static final P:[I

.field private static final POINT_BYTES:I = 0x39

.field private static PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine; = null

.field private static PRECOMP_BASE_COMB:[I = null

.field private static PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine; = null

.field private static final PRECOMP_BLOCKS:I = 0x5

.field private static final PRECOMP_LOCK:Ljava/lang/Object;

.field private static final PRECOMP_MASK:I = 0xf

.field private static final PRECOMP_POINTS:I = 0x10

.field private static final PRECOMP_RANGE:I = 0x1c2

.field private static final PRECOMP_SPACING:I = 0x12

.field private static final PRECOMP_TEETH:I = 0x5

.field public static final PREHASH_SIZE:I = 0x40

.field public static final PUBLIC_KEY_SIZE:I = 0x39

.field private static final SCALAR_BYTES:I = 0x39

.field private static final SCALAR_INTS:I = 0xe

.field public static final SECRET_KEY_SIZE:I = 0x39

.field public static final SIGNATURE_SIZE:I = 0x72

.field private static final WNAF_WIDTH_225:I = 0x5

.field private static final WNAF_WIDTH_BASE:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    .line 55
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    .line 58
    const/16 v0, 0x10

    new-array v1, v0, [I

    fill-array-data v1, :array_2

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    .line 61
    new-array v1, v0, [I

    fill-array-data v1, :array_3

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    .line 66
    new-array v1, v0, [I

    fill-array-data v1, :array_4

    sput-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_x:[I

    .line 69
    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_y:[I

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_LOCK:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    .line 89
    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    .line 90
    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x53t
        0x69t
        0x67t
        0x45t
        0x64t
        0x34t
        0x34t
        0x38t
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        0x70cc05e
        0x26a82bc
        0x938e26
        0x80e18b0
        0x511433b
        0xf72ab66
        0x412ae1a
        0xa3d3a46
        0xa6de324
        0xf1767e
        0x4657047
        0x36da9e1
        0x5a622bf
        0xed221d1
        0x66bed0d
        0x4f1970c
    .end array-data

    :array_3
    .array-data 4
        0x230fa14
        0x8795bf
        0x7c8ad98
        0x132c4ed
        0x9c4fdbd
        0x1ce67c3
        0x73ad3ff
        0x5a0c2d
        0x7789c1e
        0xa398408
        0xa73736c
        0xc7624be
        0x3756c9
        0x2488762
        0x16eb6bc
        0x693f467
    .end array-data

    :array_4
    .array-data 4
        0x6909ee2
        0x1d7605c
        0x995ec8a
        0xfc4d970
        0xcf2b361
        0x2d82e9d
        0x1225f55
        0x7f0ef6
        0xaee9c55
        0xa240c13
        0x5627b54
        0xd449d1e
        0x3a44575    # 9.655E-37f
        0x7164a7
        0xbd4bd71
        0x61a15fd
    .end array-data

    :array_5
    .array-data 4
        0xd3a9fe4
        0x30696b9
        0x7e7e326
        0x68308c7
        0xce0b8c8
        0x3ac222b
        0x304db8e
        0x83ee319
        0x5e5db0b
        0xeca503b
        0xb1c6539
        0x78a8dce
        0x2d256bc
        0x4a8b05e
        0xbd9fd57
        0xa1c3cb8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
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

    .line 120
    const/16 v0, 0x1c

    new-array v0, v0, [I

    .local v0, "t":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 121
    const/16 v1, 0xe

    new-array v2, v1, [I

    .local v2, "u":[I
    invoke-static {p1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 122
    new-array v3, v1, [I

    .local v3, "v":[I
    invoke-static {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 124
    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/math/raw/Nat;->mulAddTo(I[I[I[I)I

    .line 126
    const/16 v1, 0x72

    new-array v1, v1, [B

    .line 127
    .local v1, "result":[B
    const/4 v4, 0x0

    array-length v5, v0

    invoke-static {v0, v4, v5, v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    .line 128
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v4

    return-object v4
.end method

.method private static checkContextVar([B)Z
    .locals 2
    .param p0, "ctx"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 133
    if-eqz p0, :cond_0

    array-length v0, p0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 138
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    .line 139
    .local v0, "t":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    .line 140
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    .line 142
    .local v2, "v":[I
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 143
    iget-object v3, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 144
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 145
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 146
    const v3, 0x98a9

    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 147
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->subOne([I)V

    .line 148
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 149
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 150
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 152
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v3

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v4

    not-int v4, v4

    and-int/2addr v3, v4

    return v3
.end method

.method private static checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)I
    .locals 6
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 157
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v0

    .line 158
    .local v0, "t":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    .line 159
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    .line 160
    .local v2, "v":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v3

    .line 162
    .local v3, "w":[I
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 163
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 164
    iget-object v4, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 165
    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 166
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 167
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 168
    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 169
    const v4, 0x98a9

    invoke-static {v0, v4, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 170
    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 171
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 172
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 173
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 174
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 176
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v4

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZero([I)I

    move-result v5

    not-int v5, v5

    and-int/2addr v4, v5

    return v4
.end method

.method private static checkPointFullVar([B)Z
    .locals 9
    .param p0, "p"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 181
    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 182
    return v1

    .line 184
    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    .line 186
    .local v0, "y13":I
    move v2, v0

    .line 187
    .local v2, "t0":I
    sget-object v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    xor-int/2addr v3, v0

    .line 189
    .local v3, "t1":I
    const/16 v4, 0xc

    .local v4, "i":I
    :goto_0
    const/high16 v5, -0x80000000

    if-lez v4, :cond_2

    .line 191
    mul-int/lit8 v6, v4, 0x4

    invoke-static {p0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v6

    .line 194
    .local v6, "yi":I
    if-nez v3, :cond_1

    add-int v7, v6, v5

    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v8, v8, v4

    add-int/2addr v8, v5

    if-le v7, v8, :cond_1

    .line 195
    return v1

    .line 197
    :cond_1
    or-int/2addr v2, v6

    .line 198
    sget-object v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v5, v5, v4

    xor-int/2addr v5, v6

    or-int/2addr v3, v5

    .line 189
    .end local v6    # "yi":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 201
    .end local v4    # "i":I
    :cond_2
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v4

    .line 204
    .local v4, "y0":I
    if-nez v2, :cond_3

    add-int v6, v4, v5

    const v7, -0x7fffffff

    if-gt v6, v7, :cond_3

    .line 205
    return v1

    .line 208
    :cond_3
    const/4 v6, 0x1

    if-nez v3, :cond_4

    add-int v7, v4, v5

    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    aget v8, v8, v1

    sub-int/2addr v8, v6

    add-int/2addr v8, v5

    if-lt v7, v8, :cond_4

    .line 209
    return v1

    .line 211
    :cond_4
    return v6
.end method

.method private static checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 216
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 217
    .local v0, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 218
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result v1

    return v1
.end method

.method private static checkPointVar([B)Z
    .locals 4
    .param p0, "p"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 223
    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit8 v0, v0, 0x7f

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 225
    return v1

    .line 227
    :cond_0
    const/16 v0, 0x34

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v0

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_1

    .line 229
    return v3

    .line 232
    :cond_1
    const/16 v0, 0xe

    new-array v2, v0, [I

    .line 233
    .local v2, "t":[I
    invoke-static {p0, v1, v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    .line 234
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->P:[I

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    xor-int/2addr v0, v3

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

    .line 239
    new-array v0, p2, [B

    .line 240
    .local v0, "result":[B
    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    return-object v0
.end method

.method public static createPrehash()Lorg/bouncycastle/crypto/Xof;
    .locals 1

    .line 246
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    return-object v0
.end method

.method private static createXof()Lorg/bouncycastle/crypto/Xof;
    .locals 2

    .line 251
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    return-object v0
.end method

.method private static decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z
    .locals 6
    .param p0, "p"    # [B
    .param p1, "negate"    # Z
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
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

    .line 256
    const/16 v0, 0x38

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0x80

    ushr-int/lit8 v0, v0, 0x7

    .line 258
    .local v0, "x_0":I
    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->decode([B[I)V

    .line 260
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v1

    .line 261
    .local v1, "u":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    .line 263
    .local v2, "v":[I
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 264
    const v3, 0x98a9

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 265
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    .line 266
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    .line 267
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->addOne([I)V

    .line 269
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqrtRatioVar([I[I[I)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 271
    return v4

    .line 274
    :cond_0
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 275
    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 277
    return v4

    .line 280
    :cond_1
    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    aget v5, v5, v4

    and-int/2addr v5, v3

    if-eq v0, v5, :cond_2

    const/4 v4, 0x1

    :cond_2
    xor-int/2addr v4, p1

    if-eqz v4, :cond_3

    .line 282
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    .line 283
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 286
    :cond_3
    return v3
.end method

.method private static dom4(Lorg/bouncycastle/crypto/Xof;B[B)V
    .locals 5
    .param p0, "d"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 293
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    array-length v0, v0

    .line 294
    .local v0, "n":I
    add-int/lit8 v1, v0, 0x2

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 295
    .local v1, "t":[B
    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->DOM4_PREFIX:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    aput-byte p1, v1, v0

    .line 297
    add-int/lit8 v2, v0, 0x1

    array-length v4, p2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    .line 298
    add-int/lit8 v2, v0, 0x2

    array-length v4, p2

    invoke-static {p2, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    array-length v2, v1

    invoke-interface {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 301
    return-void
.end method

.method private static encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[BI)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
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

    .line 305
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([I[BI)V

    .line 306
    add-int/lit8 v0, p2, 0x39

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 307
    return-void
.end method

.method public static encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V
    .locals 3
    .param p0, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 311
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/16 v1, 0x10

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->encode([II[BI)V

    .line 312
    add-int/lit8 v0, p2, 0x39

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    and-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x7

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 313
    return-void
.end method

.method private static encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;[BI)I
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 317
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 318
    .local v0, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    .line 320
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I

    move-result v1

    .line 322
    .local v1, "result":I
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[BI)V

    .line 324
    return v1
.end method

.method private static exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 4
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 329
    const/16 v0, 0x20

    new-array v0, v0, [I

    .line 330
    .local v0, "data":[I
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 331
    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    const/16 v3, 0x10

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 333
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    invoke-direct {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;-><init>([I)V

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

    .line 338
    array-length v0, p1

    const/16 v1, 0x39

    if-ne v0, v1, :cond_0

    .line 343
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 344
    return-void

    .line 340
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 362
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    .line 363
    .local v0, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v1, 0x72

    new-array v1, v1, [B

    .line 365
    .local v1, "h":[B
    const/16 v2, 0x39

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 366
    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 368
    new-array v2, v2, [B

    .line 369
    .local v2, "s":[B
    invoke-static {v1, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    .line 371
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 372
    .local v3, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 374
    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v5, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 375
    .local v5, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    .line 377
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    invoke-static {v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v4

    return-object v4

    .line 379
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 5
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

    .line 348
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    .line 349
    .local v0, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v1, 0x72

    new-array v1, v1, [B

    .line 351
    .local v1, "h":[B
    const/16 v2, 0x39

    invoke-interface {v0, p0, p1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 352
    array-length v3, v1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 354
    new-array v2, v2, [B

    .line 355
    .local v2, "s":[B
    invoke-static {v1, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    .line 357
    invoke-static {v2, p2, p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    .line 358
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

    .line 387
    ushr-int/lit8 v0, p1, 0x3

    .local v0, "w":I
    and-int/lit8 v1, p1, 0x7

    shl-int/lit8 v1, v1, 0x2

    .line 388
    .local v1, "b":I
    aget v2, p0, v0

    ushr-int/2addr v2, v1

    and-int/lit8 v2, v2, 0xf

    return v2
.end method

.method private static implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V
    .locals 16
    .param p0, "d"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p10

    move/from16 v8, p11

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    .line 395
    const/16 v9, 0x39

    invoke-interface {v0, v1, v9, v9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 396
    invoke-interface {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 397
    array-length v10, v1

    const/4 v11, 0x0

    invoke-interface {v0, v1, v11, v10}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 399
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v10

    .line 400
    .local v10, "r":[B
    new-array v12, v9, [B

    .line 401
    .local v12, "R":[B
    invoke-static {v10, v12, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    .line 403
    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    .line 404
    invoke-interface {v0, v12, v11, v9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 405
    move-object/from16 v13, p3

    move/from16 v14, p4

    invoke-interface {v0, v13, v14, v9}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 406
    invoke-interface {v0, v4, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 407
    array-length v15, v1

    invoke-interface {v0, v1, v11, v15}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 409
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v15

    .line 410
    .local v15, "k":[B
    move-object/from16 v9, p2

    invoke-static {v10, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->calculateS([B[B[B)[B

    move-result-object v0

    .line 412
    .local v0, "S":[B
    const/16 v1, 0x39

    invoke-static {v12, v11, v7, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    add-int/lit8 v2, v8, 0x39

    invoke-static {v0, v11, v7, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
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

    .line 419
    invoke-static {p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    .line 425
    .local v1, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v0, 0x72

    new-array v2, v0, [B

    .line 427
    .local v2, "h":[B
    const/16 v0, 0x39

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 428
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 430
    new-array v3, v0, [B

    .line 431
    .local v3, "s":[B
    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    .line 433
    new-array v0, v0, [B

    .line 434
    .local v0, "pk":[B
    invoke-static {v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseEncoded([B[BI)V

    .line 436
    const/4 v5, 0x0

    move-object v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move-object v4, v0

    .end local v0    # "pk":[B
    .local v4, "pk":[B
    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    .line 437
    return-void

    .line 421
    .end local v1    # "d":Lorg/bouncycastle/crypto/Xof;
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

    .line 442
    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v1

    .line 448
    .local v1, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v0, 0x72

    new-array v2, v0, [B

    .line 450
    .local v2, "h":[B
    const/16 v0, 0x39

    invoke-interface {v1, p0, p1, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 451
    array-length v3, v2

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 453
    new-array v3, v0, [B

    .line 454
    .local v3, "s":[B
    invoke-static {v2, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    .line 456
    move-object v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-static/range {v1 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign(Lorg/bouncycastle/crypto/Xof;[B[B[BI[BB[BII[BI)V

    .line 457
    return-void

    .line 444
    .end local v1    # "d":Lorg/bouncycastle/crypto/Xof;
    .end local v2    # "h":[B
    .end local v3    # "s":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z
    .locals 19
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 529
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 534
    const/16 v3, 0x39

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v4

    .line 535
    .local v4, "R":[B
    add-int/lit8 v5, v1, 0x39

    invoke-static {v0, v5, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v5

    .line 537
    .local v5, "S":[B
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_0

    .line 539
    return v7

    .line 542
    :cond_0
    const/16 v6, 0xe

    new-array v8, v6, [I

    .line 543
    .local v8, "nS":[I
    invoke-static {v5, v8}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->checkVar([B[I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 545
    return v7

    .line 548
    :cond_1
    new-instance v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v9, 0x0

    invoke-direct {v12, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 549
    .local v12, "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    const/4 v10, 0x1

    invoke-static {v4, v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 551
    return v7

    .line 554
    :cond_2
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v10, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 555
    .local v10, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    iget-object v11, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    iget-object v13, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v11, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    .line 556
    iget-object v11, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;->data:[I

    const/16 v13, 0x10

    iget-object v14, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v11, v13, v14, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 558
    new-array v14, v3, [B

    .line 559
    .local v14, "A":[B
    invoke-static {v2, v14, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V

    .line 561
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v15

    .line 562
    .local v15, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v11, 0x72

    new-array v11, v11, [B

    .line 564
    .local v11, "h":[B
    move-object/from16 v13, p3

    move/from16 v9, p4

    invoke-static {v15, v9, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    .line 565
    invoke-interface {v15, v4, v7, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 566
    invoke-interface {v15, v14, v7, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 567
    move-object/from16 v3, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-interface {v15, v3, v6, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 568
    array-length v0, v11

    const/4 v1, 0x0

    invoke-interface {v15, v11, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 570
    invoke-static {v11}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v0

    .line 572
    .local v0, "k":[B
    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 573
    .local v1, "nA":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 575
    move-object/from16 v16, v0

    .end local v0    # "k":[B
    .local v16, "k":[B
    const/16 v0, 0x8

    new-array v9, v0, [I

    .line 576
    .local v9, "v0":[I
    new-array v0, v0, [I

    .line 578
    .local v0, "v1":[I
    invoke-static {v1, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduceBasisVar([I[I[I)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 583
    invoke-static {v8, v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->multiply225Var([I[I[I)V

    .line 585
    move-object/from16 v17, v0

    .end local v0    # "v1":[I
    .local v17, "v1":[I
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    move-object/from16 v18, v1

    const/4 v1, 0x0

    .end local v1    # "nA":[I
    .local v18, "nA":[I
    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 586
    .local v0, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    move-object v13, v0

    move-object v0, v11

    move-object/from16 v11, v17

    .end local v17    # "v1":[I
    .local v0, "h":[B
    .local v11, "v1":[I
    .local v13, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 587
    invoke-static {v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result v1

    return v1

    .line 580
    .end local v13    # "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v18    # "nA":[I
    .local v0, "v1":[I
    .restart local v1    # "nA":[I
    .local v11, "h":[B
    :cond_3
    move-object/from16 v18, v11

    move-object v11, v0

    move-object/from16 v0, v18

    move-object/from16 v18, v1

    .end local v1    # "nA":[I
    .local v0, "h":[B
    .local v11, "v1":[I
    .restart local v18    # "nA":[I
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 531
    .end local v0    # "h":[B
    .end local v4    # "R":[B
    .end local v5    # "S":[B
    .end local v8    # "nS":[I
    .end local v9    # "v0":[I
    .end local v10    # "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v11    # "v1":[I
    .end local v12    # "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v14    # "A":[B
    .end local v15    # "d":Lorg/bouncycastle/crypto/Xof;
    .end local v16    # "k":[B
    .end local v18    # "nA":[I
    :cond_4
    move-object/from16 v3, p5

    move/from16 v6, p6

    move/from16 v7, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static implVerify([BI[BI[BB[BII)Z
    .locals 20
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

    .line 462
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkContextVar([B)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 467
    const/16 v2, 0x39

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v3

    .line 468
    .local v3, "R":[B
    add-int/lit8 v4, v1, 0x39

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v4

    .line 469
    .local v4, "S":[B
    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-static {v5, v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v7

    .line 471
    .local v7, "A":[B
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointVar([B)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_0

    .line 473
    return v9

    .line 476
    :cond_0
    const/16 v8, 0xe

    new-array v10, v8, [I

    .line 477
    .local v10, "nS":[I
    invoke-static {v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->checkVar([B[I)Z

    move-result v11

    if-nez v11, :cond_1

    .line 479
    return v9

    .line 482
    :cond_1
    invoke-static {v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result v11

    if-nez v11, :cond_2

    .line 483
    return v9

    .line 485
    :cond_2
    new-instance v14, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v11, 0x0

    invoke-direct {v14, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 486
    .local v14, "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    const/4 v12, 0x1

    invoke-static {v3, v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 488
    return v9

    .line 491
    :cond_3
    new-instance v13, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v13, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 492
    .local v13, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    invoke-static {v7, v12, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 494
    return v9

    .line 497
    :cond_4
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createXof()Lorg/bouncycastle/crypto/Xof;

    move-result-object v12

    .line 498
    .local v12, "d":Lorg/bouncycastle/crypto/Xof;
    const/16 v15, 0x72

    new-array v15, v15, [B

    .line 500
    .local v15, "h":[B
    move-object/from16 v11, p4

    move/from16 v8, p5

    invoke-static {v12, v8, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->dom4(Lorg/bouncycastle/crypto/Xof;B[B)V

    .line 501
    invoke-interface {v12, v3, v9, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 502
    invoke-interface {v12, v7, v9, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 503
    move-object/from16 v2, p6

    move/from16 v9, p7

    move/from16 v0, p8

    invoke-interface {v12, v2, v9, v0}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    .line 504
    array-length v0, v15

    const/4 v1, 0x0

    invoke-interface {v12, v15, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    .line 506
    invoke-static {v15}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce912([B)[B

    move-result-object v0

    .line 508
    .local v0, "k":[B
    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 509
    .local v1, "nA":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 511
    move-object/from16 v17, v0

    .end local v0    # "k":[B
    .local v17, "k":[B
    const/16 v0, 0x8

    new-array v11, v0, [I

    .line 512
    .local v11, "v0":[I
    new-array v0, v0, [I

    .line 514
    .local v0, "v1":[I
    invoke-static {v1, v11, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduceBasisVar([I[I[I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 519
    invoke-static {v10, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->multiply225Var([I[I[I)V

    .line 521
    move-object/from16 v18, v0

    .end local v0    # "v1":[I
    .local v18, "v1":[I
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    move-object/from16 v19, v1

    const/4 v1, 0x0

    .end local v1    # "nA":[I
    .local v19, "nA":[I
    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 522
    .local v0, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    move-object v1, v15

    move-object v15, v0

    move-object v0, v12

    move-object v12, v13

    move-object/from16 v13, v18

    .end local v18    # "v1":[I
    .local v0, "d":Lorg/bouncycastle/crypto/Xof;
    .local v1, "h":[B
    .local v12, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .local v13, "v1":[I
    .local v15, "pZ":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 523
    invoke-static {v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z

    move-result v16

    return v16

    .line 516
    .end local v19    # "nA":[I
    .local v0, "v1":[I
    .local v1, "nA":[I
    .local v12, "d":Lorg/bouncycastle/crypto/Xof;
    .local v13, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .local v15, "h":[B
    :cond_5
    move-object/from16 v19, v13

    move-object v13, v0

    move-object v0, v12

    move-object/from16 v12, v19

    move-object/from16 v19, v1

    move-object v1, v15

    .end local v15    # "h":[B
    .local v0, "d":Lorg/bouncycastle/crypto/Xof;
    .local v1, "h":[B
    .local v12, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .local v13, "v1":[I
    .restart local v19    # "nA":[I
    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15}, Ljava/lang/IllegalStateException;-><init>()V

    throw v15

    .line 464
    .end local v0    # "d":Lorg/bouncycastle/crypto/Xof;
    .end local v1    # "h":[B
    .end local v3    # "R":[B
    .end local v4    # "S":[B
    .end local v7    # "A":[B
    .end local v10    # "nS":[I
    .end local v11    # "v0":[I
    .end local v12    # "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v13    # "v1":[I
    .end local v14    # "pR":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v17    # "k":[B
    .end local v19    # "nA":[I
    :cond_6
    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    move-object/from16 v2, p6

    move/from16 v9, p7

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static invertZs([Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 8
    .param p0, "points"    # [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .line 592
    array-length v0, p0

    .line 593
    .local v0, "count":I
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v1

    .line 595
    .local v1, "cs":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v2

    .line 596
    .local v2, "u":[I
    const/4 v3, 0x0

    aget-object v4, p0, v3

    iget-object v4, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 597
    invoke-static {v2, v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 599
    const/4 v4, 0x0

    .line 600
    .local v4, "i":I
    :goto_0
    add-int/lit8 v4, v4, 0x1

    if-ge v4, v0, :cond_0

    .line 602
    aget-object v5, p0, v4

    iget-object v5, v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v5, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 603
    mul-int/lit8 v5, v4, 0x10

    invoke-static {v2, v3, v1, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    goto :goto_0

    .line 606
    :cond_0
    invoke-static {v2, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->invVar([I[I)V

    .line 607
    add-int/lit8 v4, v4, -0x1

    .line 609
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->create()[I

    move-result-object v5

    .line 611
    .local v5, "t":[I
    :goto_1
    if-lez v4, :cond_1

    .line 613
    add-int/lit8 v6, v4, -0x1

    .line 614
    .local v4, "j":I
    .local v6, "i":I
    mul-int/lit8 v7, v6, 0x10

    invoke-static {v1, v7, v5, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 615
    invoke-static {v5, v2, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 616
    aget-object v7, p0, v4

    iget-object v7, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v7, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 617
    aget-object v7, p0, v4

    iget-object v7, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 618
    .end local v4    # "j":I
    move v4, v6

    goto :goto_1

    .line 620
    .end local v6    # "i":I
    .local v4, "i":I
    :cond_1
    aget-object v6, p0, v3

    iget-object v6, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v3, v6, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 621
    return-void
.end method

.method private static normalizeToAffine(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
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

    .line 625
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->inv([I[I)V

    .line 626
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 627
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 628
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 629
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 630
    return-void
.end method

.method private static normalizeToNeutralElementVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)Z
    .locals 2
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 635
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 636
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 638
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->isZeroVar([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v1, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->areEqualVar([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 9
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 643
    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    .line 644
    .local v0, "b":[I
    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    .line 645
    .local v1, "c":[I
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    .line 646
    .local v2, "d":[I
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    .line 647
    .local v3, "e":[I
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    .line 648
    .local v4, "f":[I
    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    .line 649
    .local v5, "g":[I
    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    .line 651
    .local v6, "h":[I
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 652
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v7, v8, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 653
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 654
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 655
    const v7, 0x98a9

    invoke-static {v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 657
    invoke-static {v0, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 658
    invoke-static {v0, v3, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 659
    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v8, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 660
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v7, v8, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 661
    invoke-static {v6, v3, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 663
    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 664
    invoke-static {v2, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 665
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 666
    invoke-static {v6, v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 667
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v6, v7, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 668
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 669
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 670
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 671
    iget-object v7, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v4, v5, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 672
    return-void
.end method

.method private static pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 10
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 676
    iget-object v0, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    .line 677
    .local v0, "a":[I
    iget-object v1, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    .line 678
    .local v1, "b":[I
    iget-object v2, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    .line 679
    .local v2, "c":[I
    iget-object v3, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    .line 680
    .local v3, "d":[I
    iget-object v4, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    .line 681
    .local v4, "e":[I
    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    .line 682
    .local v5, "f":[I
    iget-object v6, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    .line 683
    .local v6, "g":[I
    iget-object v7, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    .line 685
    .local v7, "h":[I
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v8, v9, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 686
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 687
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 688
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v8, v9, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 689
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 690
    const v8, 0x98a9

    invoke-static {v4, v8, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 692
    invoke-static {v1, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 693
    invoke-static {v1, v4, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 694
    iget-object v8, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v9, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v8, v9, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 695
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v9, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v8, v9, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 696
    invoke-static {v7, v4, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 698
    invoke-static {v3, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 699
    invoke-static {v3, v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 700
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 701
    invoke-static {v7, v1, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 702
    invoke-static {v7, v0, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 703
    invoke-static {v4, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 704
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v5, v7, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 705
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v4, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 706
    iget-object v8, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v6, v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 707
    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 16
    .param p0, "negate"    # Z
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 711
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    .line 712
    .local v3, "b":[I
    iget-object v4, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    .line 713
    .local v4, "c":[I
    iget-object v5, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    .line 714
    .local v5, "d":[I
    iget-object v6, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    .line 715
    .local v6, "e":[I
    iget-object v7, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    .line 716
    .local v7, "f":[I
    iget-object v8, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    .line 717
    .local v8, "g":[I
    iget-object v9, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    .line 720
    .local v9, "h":[I
    if-eqz p0, :cond_0

    .line 722
    move-object v10, v6

    .local v10, "nb":[I
    move-object v11, v3

    .local v11, "ne":[I
    move-object v12, v8

    .local v12, "nf":[I
    move-object v13, v7

    .line 723
    .local v13, "ng":[I
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v14, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    goto :goto_0

    .line 727
    .end local v10    # "nb":[I
    .end local v11    # "ne":[I
    .end local v12    # "nf":[I
    .end local v13    # "ng":[I
    :cond_0
    move-object v10, v3

    .restart local v10    # "nb":[I
    move-object v11, v6

    .restart local v11    # "ne":[I
    move-object v12, v7

    .restart local v12    # "nf":[I
    move-object v13, v8

    .line 728
    .restart local v13    # "ng":[I
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v14, v15, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 731
    :goto_0
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v14, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 732
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v14, v15, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 733
    iget-object v14, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v14, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 734
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 735
    const v14, 0x98a9

    invoke-static {v6, v14, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 737
    invoke-static {v3, v6, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 738
    invoke-static {v3, v6, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 739
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v14, v15, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 740
    invoke-static {v9, v6, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 742
    invoke-static {v5, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 743
    invoke-static {v5, v4, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 744
    invoke-static {v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 745
    invoke-static {v9, v3, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 746
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v9, v14, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 747
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v6, v14, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 748
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v7, v9, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 749
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v6, v8, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 750
    iget-object v14, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v7, v8, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 751
    return-void
.end method

.method private static pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 16
    .param p0, "negate"    # Z
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p3, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 755
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    .line 756
    .local v3, "a":[I
    iget-object v4, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    .line 757
    .local v4, "b":[I
    iget-object v5, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    .line 758
    .local v5, "c":[I
    iget-object v6, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    .line 759
    .local v6, "d":[I
    iget-object v7, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    .line 760
    .local v7, "e":[I
    iget-object v8, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r5:[I

    .line 761
    .local v8, "f":[I
    iget-object v9, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r6:[I

    .line 762
    .local v9, "g":[I
    iget-object v10, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    .line 765
    .local v10, "h":[I
    if-eqz p0, :cond_0

    .line 767
    move-object v11, v7

    .local v11, "nb":[I
    move-object v12, v4

    .local v12, "ne":[I
    move-object v13, v9

    .local v13, "nf":[I
    move-object v14, v8

    .line 768
    .local v14, "ng":[I
    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v15, v2, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    goto :goto_0

    .line 772
    .end local v11    # "nb":[I
    .end local v12    # "ne":[I
    .end local v13    # "nf":[I
    .end local v14    # "ng":[I
    :cond_0
    move-object v11, v4

    .restart local v11    # "nb":[I
    move-object v12, v7

    .restart local v12    # "ne":[I
    move-object v13, v8

    .restart local v13    # "nf":[I
    move-object v14, v9

    .line 773
    .restart local v14    # "ng":[I
    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v15, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v2, v15, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 776
    :goto_0
    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v2, v15, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 777
    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 778
    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v2, v15, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 779
    iget-object v2, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v2, v15, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 780
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 781
    const v2, 0x98a9

    invoke-static {v7, v2, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([II[I)V

    .line 783
    invoke-static {v4, v7, v13}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 784
    invoke-static {v4, v7, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 785
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v15, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v2, v15, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 786
    invoke-static {v10, v7, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 788
    invoke-static {v6, v5, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 789
    invoke-static {v6, v5, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 790
    invoke-static {v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 791
    invoke-static {v10, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 792
    invoke-static {v10, v3, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 793
    invoke-static {v7, v3, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 794
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v8, v10, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 795
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v7, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 796
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 797
    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 801
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 802
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 803
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    .line 804
    return-void
.end method

.method private static pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 808
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 809
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 810
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0, v2, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 811
    return-void
.end method

.method private static pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 8
    .param p0, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p1, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "t"
        }
    .end annotation

    .line 815
    iget-object v0, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r1:[I

    .line 816
    .local v0, "b":[I
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r2:[I

    .line 817
    .local v1, "c":[I
    iget-object v2, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r3:[I

    .line 818
    .local v2, "d":[I
    iget-object v3, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r4:[I

    .line 819
    .local v3, "e":[I
    iget-object v4, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r7:[I

    .line 820
    .local v4, "h":[I
    iget-object v5, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;->r0:[I

    .line 822
    .local v5, "j":[I
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v7, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 823
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 824
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v6, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 825
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v6, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 826
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 827
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 828
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v6, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sqr([I[I)V

    .line 829
    invoke-static {v4, v4, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->add([I[I[I)V

    .line 830
    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->carry([I)V

    .line 831
    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 832
    invoke-static {v0, v3, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 833
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->sub([I[I[I)V

    .line 834
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0, v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 835
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v3, v1, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 836
    iget-object v6, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v3, v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    .line 837
    return-void
.end method

.method private static pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V
    .locals 7
    .param p0, "block"    # I
    .param p1, "index"    # I
    .param p2, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
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

    .line 844
    mul-int/lit8 v0, p0, 0x10

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x10

    mul-int/lit8 v0, v0, 0x10

    .line 846
    .local v0, "off":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 848
    xor-int v3, v2, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    .line 849
    .local v3, "cond":I
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v6, 0x0

    invoke-static {v3, v4, v0, v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v0, v0, 0x10

    .line 850
    sget-object v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    iget-object v5, p2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v3, v4, v0, v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    .end local v3    # "cond":I
    add-int/2addr v0, v1

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 852
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 8
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "table"    # [I
    .param p3, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 858
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->getWindow4([II)I

    move-result v0

    .line 860
    .local v0, "w":I
    ushr-int/lit8 v1, v0, 0x3

    xor-int/lit8 v1, v1, 0x1

    .line 861
    .local v1, "sign":I
    neg-int v2, v1

    xor-int/2addr v2, v0

    and-int/lit8 v2, v2, 0x7

    .line 866
    .local v2, "abs":I
    const/4 v3, 0x0

    .local v3, "i":I
    const/4 v4, 0x0

    .local v4, "off":I
    :goto_0
    const/16 v5, 0x8

    if-ge v3, v5, :cond_0

    .line 868
    xor-int v5, v3, v2

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x1f

    .line 869
    .local v5, "cond":I
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v7, 0x0

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v4, v4, 0x10

    .line 870
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    add-int/lit8 v4, v4, 0x10

    .line 871
    iget-object v6, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, p2, v4, v6, v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cmov(I[II[II)V

    .end local v5    # "cond":I
    add-int/lit8 v4, v4, 0x10

    .line 866
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    .end local v3    # "i":I
    .end local v4    # "off":I
    :cond_0
    iget-object v3, p3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    .line 875
    return-void
.end method

.method private static pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 3
    .param p0, "table"    # [I
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "r"
        }
    .end annotation

    .line 879
    const/16 v0, 0x150

    .line 881
    .local v0, "off":I
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v0, v0, 0x10

    .line 882
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v0, v0, 0x10

    .line 883
    iget-object v1, p1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {p0, v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 884
    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V
    .locals 5
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p1, "points"    # [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p2, "pointsOff"    # I
    .param p3, "pointsLen"    # I
    .param p4, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 923
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 924
    .local v0, "d":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 925
    invoke-static {v0, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 927
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v2, p1, p2

    .line 928
    aget-object v2, p1, p2

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 929
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_0

    .line 931
    add-int v3, p2, v2

    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v4, p1, v3

    .line 932
    add-int v3, p2, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p1, v3

    add-int v4, p2, v2

    aget-object v4, p1, v4

    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 933
    add-int v3, p2, v2

    aget-object v3, p1, v3

    invoke-static {v0, v3, p4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 929
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 935
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private static pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)[I
    .locals 7
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p1, "count"    # I
    .param p2, "t"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
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

    .line 890
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 891
    .local v0, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 893
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 894
    .local v2, "d":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 895
    invoke-static {v2, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 897
    mul-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v1

    .line 898
    .local v1, "table":[I
    const/4 v3, 0x0

    .line 900
    .local v3, "off":I
    const/4 v4, 0x0

    .line 903
    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v6, 0x0

    invoke-static {v5, v6, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    .line 904
    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v5, v6, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    .line 905
    iget-object v5, v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v5, v6, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v3, v3, 0x10

    .line 907
    add-int/lit8 v4, v4, 0x1

    if-ne v4, p1, :cond_0

    .line 909
    nop

    .line 915
    return-object v1

    .line 912
    :cond_0
    invoke-static {v2, v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_0
.end method

.method private static pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 1
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 939
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->zero([I)V

    .line 940
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    .line 941
    iget-object v0, p0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->one([I)V

    .line 942
    return-void
.end method

.method public static precompute()V
    .locals 18

    .line 946
    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 948
    :try_start_0
    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    if-eqz v0, :cond_0

    .line 950
    monitor-exit v1

    return-void

    .line 956
    :cond_0
    const/16 v0, 0x20

    .line 957
    .local v0, "wnafPoints":I
    const/16 v2, 0x50

    .line 958
    .local v2, "combPoints":I
    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v3, v2

    .line 960
    .local v3, "totalPoints":I
    new-array v4, v3, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    .line 961
    .local v4, "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    new-instance v5, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 963
    .local v5, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    new-instance v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v7, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 964
    .local v7, "B":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_x:[I

    iget-object v9, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    const/4 v10, 0x0

    invoke-static {v8, v10, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 965
    sget-object v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B_y:[I

    iget-object v9, v7, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v8, v10, v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 967
    invoke-static {v7, v4, v10, v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 969
    new-instance v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v8, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 970
    .local v8, "B225":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_x:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v9, v10, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 971
    sget-object v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->B225_y:[I

    iget-object v11, v8, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v9, v10, v11, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 973
    invoke-static {v8, v4, v0, v0, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 975
    new-instance v9, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v9, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 976
    .local v9, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {v7, v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 978
    mul-int/lit8 v11, v0, 0x2

    .line 979
    .local v11, "pointsIndex":I
    const/4 v12, 0x5

    new-array v13, v12, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    .line 980
    .local v13, "toothPowers":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    const/4 v14, 0x0

    .local v14, "tooth":I
    :goto_0
    if-ge v14, v12, :cond_1

    .line 982
    new-instance v15, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v15, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v15, v13, v14

    .line 980
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 985
    .end local v14    # "tooth":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "block":I
    :goto_1
    if-ge v14, v12, :cond_7

    .line 987
    add-int/lit8 v15, v11, 0x1

    .end local v11    # "pointsIndex":I
    .local v15, "pointsIndex":I
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    invoke-direct {v10, v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v10, v4, v11

    .line 989
    .local v10, "sum":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    const/4 v11, 0x0

    .local v11, "tooth":I
    :goto_2
    if-ge v11, v12, :cond_4

    .line 991
    if-nez v11, :cond_2

    .line 993
    invoke-static {v9, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    goto :goto_3

    .line 997
    :cond_2
    invoke-static {v9, v10, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1000
    :goto_3
    invoke-static {v9, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1001
    aget-object v12, v13, v11

    invoke-static {v9, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1003
    add-int v12, v14, v11

    const/16 v6, 0x8

    if-eq v12, v6, :cond_3

    .line 1005
    const/4 v6, 0x1

    .local v6, "spacing":I
    :goto_4
    const/16 v12, 0x12

    if-ge v6, v12, :cond_3

    .line 1007
    invoke-static {v9, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1005
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 989
    .end local v6    # "spacing":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x0

    const/4 v12, 0x5

    goto :goto_2

    .line 1012
    .end local v11    # "tooth":I
    :cond_4
    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v11, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v6, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->negate([I[I)V

    .line 1014
    const/4 v6, 0x0

    move v11, v15

    .end local v15    # "pointsIndex":I
    .local v6, "tooth":I
    .local v11, "pointsIndex":I
    :goto_5
    const/4 v12, 0x4

    if-ge v6, v12, :cond_6

    .line 1016
    const/4 v12, 0x1

    shl-int/2addr v12, v6

    .line 1017
    .local v12, "size":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_6
    if-ge v15, v12, :cond_5

    .line 1019
    move/from16 v16, v2

    .end local v2    # "combPoints":I
    .local v16, "combPoints":I
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .local v17, "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-direct {v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v2, v17, v11

    .line 1020
    sub-int v2, v11, v12

    aget-object v2, v17, v2

    aget-object v4, v17, v11

    invoke-static {v2, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointCopy(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1021
    aget-object v2, v13, v6

    aget-object v4, v17, v11

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1017
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v16

    move-object/from16 v4, v17

    goto :goto_6

    .end local v16    # "combPoints":I
    .end local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .restart local v2    # "combPoints":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    :cond_5
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 1014
    .end local v2    # "combPoints":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v12    # "size":I
    .end local v15    # "j":I
    .restart local v16    # "combPoints":I
    .restart local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .end local v16    # "combPoints":I
    .end local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .restart local v2    # "combPoints":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    :cond_6
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 985
    .end local v2    # "combPoints":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v6    # "tooth":I
    .end local v10    # "sum":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .restart local v16    # "combPoints":I
    .restart local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x5

    goto :goto_1

    .end local v16    # "combPoints":I
    .end local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .restart local v2    # "combPoints":I
    .restart local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    :cond_7
    move/from16 v16, v2

    move-object/from16 v17, v4

    .line 1027
    .end local v2    # "combPoints":I
    .end local v4    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v14    # "block":I
    .restart local v16    # "combPoints":I
    .restart local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static/range {v17 .. v17}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->invertZs([Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1029
    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    .line 1030
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v0, :cond_8

    .line 1032
    aget-object v4, v17, v2

    .line 1033
    .local v4, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v10, v6, v2

    .line 1035
    .local v10, "r":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v14, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v6, v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1036
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v12, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v14, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v6, v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1030
    .end local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1039
    .end local v2    # "i":I
    :cond_8
    new-array v2, v0, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    sput-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    .line 1040
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8
    if-ge v2, v0, :cond_9

    .line 1042
    add-int v4, v0, v2

    aget-object v4, v17, v4

    .line 1043
    .restart local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    sget-object v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v12, 0x0

    invoke-direct {v10, v12}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    aput-object v10, v6, v2

    .line 1045
    .restart local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v14, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v15, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v6, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1046
    iget-object v6, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v14, v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v15, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v6, v14, v15}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v6, v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->y:[I

    invoke-static {v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1040
    .end local v4    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v10    # "r":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1049
    .end local v2    # "i":I
    :cond_9
    mul-int/lit8 v2, v16, 0x2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->createTable(I)[I

    move-result-object v2

    sput-object v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    .line 1050
    const/4 v2, 0x0

    .line 1051
    .local v2, "off":I
    mul-int/lit8 v4, v0, 0x2

    .local v4, "i":I
    :goto_9
    if-ge v4, v3, :cond_a

    .line 1053
    aget-object v6, v17, v4

    .line 1055
    .local v6, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    iget-object v12, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v14, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v10, v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    invoke-static {v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1056
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    iget-object v12, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->z:[I

    iget-object v14, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v10, v12, v14}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->mul([I[I[I)V

    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->normalize([I)V

    .line 1058
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    sget-object v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    const/4 v14, 0x0

    invoke-static {v10, v14, v12, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    add-int/lit8 v2, v2, 0x10

    .line 1059
    iget-object v10, v6, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    sget-object v12, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_COMB:[I

    const/4 v14, 0x0

    invoke-static {v10, v14, v12, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .end local v6    # "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    add-int/lit8 v2, v2, 0x10

    .line 1051
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 1062
    .end local v0    # "wnafPoints":I
    .end local v2    # "off":I
    .end local v3    # "totalPoints":I
    .end local v4    # "i":I
    .end local v5    # "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    .end local v7    # "B":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v8    # "B225":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .end local v9    # "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v11    # "pointsIndex":I
    .end local v13    # "toothPowers":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .end local v16    # "combPoints":I
    .end local v17    # "points":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    :cond_a
    monitor-exit v1

    .line 1063
    return-void

    .line 1062
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static pruneScalar([BI[B)V
    .locals 4
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

    .line 1067
    const/4 v0, 0x0

    const/16 v1, 0x38

    invoke-static {p0, p1, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1069
    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xfc

    int-to-byte v2, v2

    aput-byte v2, p2, v0

    .line 1070
    const/16 v2, 0x37

    aget-byte v3, p2, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    .line 1071
    aput-byte v0, p2, v1

    .line 1072
    return-void
.end method

.method private static scalarMult([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 7
    .param p0, "k"    # [B
    .param p1, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    .param p2, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 1076
    const/16 v0, 0xf

    new-array v0, v0, [I

    .line 1077
    .local v0, "n":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 1078
    const/16 v1, 0x1c1

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->toSignedDigits(I[I[I)V

    .line 1083
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1084
    .local v1, "q":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    invoke-direct {v3, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1085
    .local v3, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    const/16 v2, 0x8

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)[I

    move-result-object v2

    .line 1088
    .local v2, "table":[I
    invoke-static {v2, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup15([ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1089
    invoke-static {p1, p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1091
    const/16 v4, 0x6f

    .line 1094
    .local v4, "w":I
    :goto_0
    invoke-static {v0, v4, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup([II[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1095
    invoke-static {v1, p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1097
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_0

    .line 1099
    nop

    .line 1107
    return-void

    .line 1102
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v6, 0x4

    if-ge v5, v6, :cond_1

    .line 1104
    invoke-static {p2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v5    # "i":I
    :cond_1
    goto :goto_0
.end method

.method private static scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 13
    .param p0, "k"    # [B
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 1118
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    .line 1120
    const/16 v0, 0xf

    new-array v1, v0, [I

    .line 1121
    .local v1, "n":[I
    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    .line 1122
    const/16 v2, 0x1c2

    invoke-static {v2, v1, v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->toSignedDigits(I[I[I)V

    .line 1124
    new-instance v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1125
    .local v2, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    new-instance v4, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    invoke-direct {v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1127
    .local v4, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1129
    const/16 v3, 0x11

    .line 1132
    .local v3, "cOff":I
    :goto_0
    move v5, v3

    .line 1134
    .local v5, "tPos":I
    const/4 v6, 0x0

    .local v6, "block":I
    :goto_1
    const/4 v7, 0x5

    if-ge v6, v7, :cond_1

    .line 1136
    const/4 v8, 0x0

    .line 1137
    .local v8, "w":I
    const/4 v9, 0x0

    .local v9, "tooth":I
    :goto_2
    const/4 v10, 0x1

    if-ge v9, v7, :cond_0

    .line 1139
    ushr-int/lit8 v11, v5, 0x5

    aget v11, v1, v11

    and-int/lit8 v12, v5, 0x1f

    ushr-int/2addr v11, v12

    .line 1140
    .local v11, "tBit":I
    shl-int/2addr v10, v9

    not-int v10, v10

    and-int/2addr v8, v10

    .line 1141
    shl-int v10, v11, v9

    xor-int/2addr v8, v10

    .line 1142
    nop

    .end local v11    # "tBit":I
    add-int/lit8 v5, v5, 0x12

    .line 1137
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1145
    .end local v9    # "tooth":I
    :cond_0
    ushr-int/lit8 v7, v8, 0x4

    and-int/2addr v7, v10

    .line 1146
    .local v7, "sign":I
    neg-int v9, v7

    xor-int/2addr v9, v8

    and-int/2addr v9, v0

    .line 1151
    .local v9, "abs":I
    invoke-static {v6, v9, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointLookup(IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)V

    .line 1153
    iget-object v10, v2, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;->x:[I

    invoke-static {v7, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->cnegate(I[I)V

    .line 1155
    invoke-static {v2, p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAdd(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1134
    .end local v7    # "sign":I
    .end local v8    # "w":I
    .end local v9    # "abs":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1158
    .end local v6    # "block":I
    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_2

    .line 1160
    nop

    .line 1165
    .end local v5    # "tPos":I
    return-void

    .line 1163
    .restart local v5    # "tPos":I
    :cond_2
    invoke-static {p1, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1164
    .end local v5    # "tPos":I
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

    .line 1169
    new-instance v0, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1170
    .local v0, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1171
    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodeResult(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;[BI)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    return-void

    .line 1173
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method public static scalarMultBaseXY(Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;[BI[I[I)V
    .locals 4
    .param p0, "friend"    # Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;
    .param p1, "k"    # [B
    .param p2, "kOff"    # I
    .param p3, "x"    # [I
    .param p4, "y"    # [I
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
            "x",
            "y"
        }
    .end annotation

    .line 1182
    if-eqz p0, :cond_1

    .line 1187
    const/16 v0, 0x39

    new-array v0, v0, [B

    .line 1188
    .local v0, "n":[B
    invoke-static {p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pruneScalar([BI[B)V

    .line 1190
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1191
    .local v1, "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBase([BLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1192
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1197
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->x:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, p3, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 1198
    iget-object v2, v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;->y:[I

    invoke-static {v2, v3, p4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$F;->copy([II[II)V

    .line 1199
    return-void

    .line 1194
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 1184
    .end local v0    # "n":[B
    .end local v1    # "p":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by X448"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static scalarMultOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 10
    .param p0, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p1, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 1203
    const/16 v0, 0x1bf

    new-array v0, v0, [B

    .line 1206
    .local v0, "ws_p":[B
    const/4 v1, 0x5

    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->getOrderWnafVar(I[B)V

    .line 1208
    const/16 v1, 0x8

    .line 1209
    .local v1, "count":I
    new-array v2, v1, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    .line 1210
    .local v2, "tp":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    new-instance v3, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1211
    .local v3, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    const/4 v4, 0x0

    invoke-static {p0, v2, v4, v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1213
    invoke-static {p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1215
    const/16 v5, 0x1be

    .line 1217
    .local v5, "bit":I
    :goto_0
    aget-byte v6, v0, v5

    .line 1218
    .local v6, "wp":I
    if-eqz v6, :cond_1

    .line 1220
    shr-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v6, 0x1f

    xor-int/2addr v7, v8

    .line 1221
    .local v7, "index":I
    if-gez v6, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    :goto_1
    aget-object v9, v2, v7

    invoke-static {v8, v9, p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1224
    .end local v7    # "index":I
    :cond_1
    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 1226
    nop

    .line 1231
    .end local v5    # "bit":I
    .end local v6    # "wp":I
    return-void

    .line 1229
    .restart local v5    # "bit":I
    .restart local v6    # "wp":I
    :cond_2
    invoke-static {p1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1230
    .end local v6    # "wp":I
    goto :goto_0
.end method

.method private static scalarMultStraus225Var([I[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[ILorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V
    .locals 21
    .param p0, "nb"    # [I
    .param p1, "np"    # [I
    .param p2, "p"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p3, "nq"    # [I
    .param p4, "q"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    .param p5, "r"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
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

    .line 1243
    move-object/from16 v0, p5

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    .line 1245
    const/16 v1, 0x1c2

    new-array v1, v1, [B

    .line 1246
    .local v1, "ws_b":[B
    const/16 v2, 0xe1

    new-array v3, v2, [B

    .line 1247
    .local v3, "ws_p":[B
    new-array v2, v2, [B

    .line 1249
    .local v2, "ws_q":[B
    const/4 v4, 0x7

    move-object/from16 v5, p0

    invoke-static {v5, v4, v1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1250
    const/4 v4, 0x5

    move-object/from16 v6, p1

    invoke-static {v6, v4, v3}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1251
    move-object/from16 v7, p3

    invoke-static {v7, v4, v2}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    .line 1253
    const/16 v4, 0x8

    .line 1254
    .local v4, "count":I
    new-array v8, v4, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    .line 1255
    .local v8, "tp":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    new-array v9, v4, [Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;

    .line 1256
    .local v9, "tq":[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;
    new-instance v10, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1257
    .local v10, "t":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;
    const/4 v11, 0x0

    move-object/from16 v12, p2

    invoke-static {v12, v8, v11, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1258
    move-object/from16 v13, p4

    invoke-static {v13, v9, v11, v4, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointPrecompute(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;IILorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1260
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointSetNeutral(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;)V

    .line 1262
    const/16 v14, 0xe1

    .line 1263
    .local v14, "bit":I
    :goto_0
    add-int/lit8 v14, v14, -0x1

    if-ltz v14, :cond_1

    .line 1265
    aget-byte v15, v1, v14

    add-int/lit16 v11, v14, 0xe1

    aget-byte v11, v1, v11

    or-int/2addr v11, v15

    aget-byte v15, v3, v14

    or-int/2addr v11, v15

    aget-byte v15, v2, v14

    or-int/2addr v11, v15

    if-eqz v11, :cond_0

    .line 1267
    goto :goto_1

    .line 1265
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1271
    :cond_1
    :goto_1
    if-ltz v14, :cond_a

    .line 1273
    aget-byte v11, v1, v14

    .line 1274
    .local v11, "wb":I
    if-eqz v11, :cond_3

    .line 1276
    shr-int/lit8 v16, v11, 0x1

    shr-int/lit8 v17, v11, 0x1f

    xor-int v16, v16, v17

    .line 1277
    .local v16, "index":I
    if-gez v11, :cond_2

    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    sget-object v18, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    move-object/from16 v19, v1

    .end local v1    # "ws_b":[B
    .local v19, "ws_b":[B
    aget-object v1, v18, v16

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_3

    .line 1274
    .end local v16    # "index":I
    .end local v19    # "ws_b":[B
    .restart local v1    # "ws_b":[B
    :cond_3
    move-object/from16 v19, v1

    .line 1280
    .end local v1    # "ws_b":[B
    .restart local v19    # "ws_b":[B
    :goto_3
    add-int/lit16 v1, v14, 0xe1

    aget-byte v1, v19, v1

    .line 1281
    .local v1, "wb225":I
    if-eqz v1, :cond_5

    .line 1283
    shr-int/lit8 v15, v1, 0x1

    shr-int/lit8 v16, v1, 0x1f

    xor-int v15, v15, v16

    .line 1284
    .local v15, "index":I
    move/from16 v16, v1

    if-gez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_4

    :cond_4
    const/4 v1, 0x0

    .end local v1    # "wb225":I
    .local v16, "wb225":I
    :goto_4
    sget-object v18, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->PRECOMP_BASE225_WNAF:[Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    move-object/from16 v20, v2

    .end local v2    # "ws_q":[B
    .local v20, "ws_q":[B
    aget-object v2, v18, v15

    invoke-static {v1, v2, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_5

    .line 1281
    .end local v15    # "index":I
    .end local v16    # "wb225":I
    .end local v20    # "ws_q":[B
    .restart local v1    # "wb225":I
    .restart local v2    # "ws_q":[B
    :cond_5
    move/from16 v16, v1

    move-object/from16 v20, v2

    .line 1287
    .end local v1    # "wb225":I
    .end local v2    # "ws_q":[B
    .restart local v16    # "wb225":I
    .restart local v20    # "ws_q":[B
    :goto_5
    aget-byte v1, v3, v14

    .line 1288
    .local v1, "wp":I
    if-eqz v1, :cond_7

    .line 1290
    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v15, v1, 0x1f

    xor-int/2addr v2, v15

    .line 1291
    .local v2, "index":I
    if-gez v1, :cond_6

    const/4 v15, 0x1

    goto :goto_6

    :cond_6
    const/4 v15, 0x0

    :goto_6
    move/from16 v18, v1

    .end local v1    # "wp":I
    .local v18, "wp":I
    aget-object v1, v8, v2

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_7

    .line 1288
    .end local v2    # "index":I
    .end local v18    # "wp":I
    .restart local v1    # "wp":I
    :cond_7
    move/from16 v18, v1

    .line 1294
    .end local v1    # "wp":I
    .restart local v18    # "wp":I
    :goto_7
    aget-byte v1, v20, v14

    .line 1295
    .local v1, "wq":I
    if-eqz v1, :cond_9

    .line 1297
    shr-int/lit8 v2, v1, 0x1

    shr-int/lit8 v15, v1, 0x1f

    xor-int/2addr v2, v15

    .line 1298
    .restart local v2    # "index":I
    if-gez v1, :cond_8

    const/4 v15, 0x1

    goto :goto_8

    :cond_8
    const/4 v15, 0x0

    :goto_8
    move/from16 v17, v1

    .end local v1    # "wq":I
    .local v17, "wq":I
    aget-object v1, v9, v2

    invoke-static {v15, v1, v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointAddVar(ZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    goto :goto_9

    .line 1295
    .end local v2    # "index":I
    .end local v17    # "wq":I
    .restart local v1    # "wq":I
    :cond_9
    move/from16 v17, v1

    .line 1301
    .end local v1    # "wq":I
    .restart local v17    # "wq":I
    :goto_9
    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1271
    .end local v11    # "wb":I
    .end local v16    # "wb225":I
    .end local v17    # "wq":I
    .end local v18    # "wp":I
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    goto :goto_1

    .line 1305
    .end local v19    # "ws_b":[B
    .end local v20    # "ws_q":[B
    .local v1, "ws_b":[B
    .local v2, "ws_q":[B
    :cond_a
    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->pointDouble(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointProjective;Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointTemp;)V

    .line 1306
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

    .line 1318
    const/4 v5, 0x0

    .line 1320
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

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    .line 1321
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

    .line 1310
    const/4 v3, 0x0

    .line 1312
    .local v3, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    .line 1313
    return-void
.end method

.method public static signPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 13
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 1354
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 1355
    .local v7, "m":[B
    const/4 v1, 0x0

    move-object/from16 v12, p5

    invoke-interface {v12, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1360
    const/4 v6, 0x1

    .line 1362
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

    invoke-static/range {v1 .. v11}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    .line 1363
    return-void

    .line 1357
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

    .line 1333
    const/4 v5, 0x1

    .line 1335
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

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BI[BB[BII[BI)V

    .line 1336
    return-void
.end method

.method public static signPrehash([BI[BLorg/bouncycastle/crypto/Xof;[BI)V
    .locals 10
    .param p0, "sk"    # [B
    .param p1, "skOff"    # I
    .param p2, "ctx"    # [B
    .param p3, "ph"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 1340
    const/16 v0, 0x40

    new-array v5, v0, [B

    .line 1341
    .local v5, "m":[B
    const/4 v1, 0x0

    invoke-interface {p3, v5, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1346
    const/4 v4, 0x1

    .line 1348
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
    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    .line 1349
    return-void

    .line 1343
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

    .line 1325
    const/4 v3, 0x1

    .line 1327
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
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implSign([BI[BB[BII[BI)V

    .line 1328
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

    .line 1367
    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v0

    .line 1369
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1371
    return v2

    .line 1374
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1375
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1377
    return v2

    .line 1380
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v2

    return v2
.end method

.method public static validatePublicKeyFullExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 1385
    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v0

    .line 1387
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1389
    return-object v2

    .line 1392
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1393
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1395
    return-object v2

    .line 1398
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointOrderVar(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1400
    return-object v2

    .line 1403
    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

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

    .line 1408
    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v0

    .line 1410
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1412
    return v2

    .line 1415
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1416
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v2

    return v2
.end method

.method public static validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 1421
    const/16 v0, 0x39

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->copy([BII)[B

    move-result-object v0

    .line 1423
    .local v0, "A":[B
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->checkPointFullVar([B)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1425
    return-object v2

    .line 1428
    :cond_0
    new-instance v1, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;

    invoke-direct {v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448-IA;)V

    .line 1429
    .local v1, "pA":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;
    const/4 v3, 0x0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->decodePointVar([BZLorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1431
    return-object v2

    .line 1434
    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->exportPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PointAffine;)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v2

    return-object v2
.end method

.method public static verify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BII)Z
    .locals 8
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 1447
    const/4 v4, 0x0

    .line 1449
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
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .end local p3    # "ctx":[B
    .end local p4    # "m":[B
    .end local p5    # "mOff":I
    .end local p6    # "mLen":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .local v3, "ctx":[B
    .local v5, "m":[B
    .local v6, "mOff":I
    .local v7, "mLen":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

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

    .line 1439
    const/4 v5, 0x0

    .line 1441
    .local v5, "phflag":B
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result v9

    return v9
.end method

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 9
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .param p3, "ctx"    # [B
    .param p4, "ph"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 1482
    const/16 v0, 0x40

    new-array v6, v0, [B

    .line 1483
    .local v6, "m":[B
    const/4 v1, 0x0

    invoke-interface {p4, v6, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1488
    const/4 v5, 0x1

    .line 1490
    .local v5, "phflag":B
    const/4 v7, 0x0

    array-length v8, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    .end local p0    # "sig":[B
    .end local p1    # "sigOff":I
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .end local p3    # "ctx":[B
    .local v1, "sig":[B
    .local v2, "sigOff":I
    .local v3, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .local v4, "ctx":[B
    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

    move-result p0

    return p0

    .line 1485
    .end local v1    # "sig":[B
    .end local v2    # "sigOff":I
    .end local v3    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .end local v4    # "ctx":[B
    .end local v5    # "phflag":B
    .restart local p0    # "sig":[B
    .restart local p1    # "sigOff":I
    .restart local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

.method public static verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BI)Z
    .locals 8
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "publicPoint"    # Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
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

    .line 1462
    const/4 v4, 0x1

    .line 1464
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
    .end local p2    # "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .end local p3    # "ctx":[B
    .end local p4    # "ph":[B
    .end local p5    # "phOff":I
    .local v0, "sig":[B
    .local v1, "sigOff":I
    .local v2, "publicPoint":Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .local v3, "ctx":[B
    .local v5, "ph":[B
    .local v6, "phOff":I
    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BB[BII)Z

    move-result p0

    return p0
.end method

.method public static verifyPrehash([BI[BI[BLorg/bouncycastle/crypto/Xof;)Z
    .locals 10
    .param p0, "sig"    # [B
    .param p1, "sigOff"    # I
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "ctx"    # [B
    .param p5, "ph"    # Lorg/bouncycastle/crypto/Xof;
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

    .line 1469
    const/16 v0, 0x40

    new-array v7, v0, [B

    .line 1470
    .local v7, "m":[B
    const/4 v1, 0x0

    invoke-interface {p5, v7, v1, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1475
    const/4 v6, 0x1

    .line 1477
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
    invoke-static/range {v1 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0

    .line 1472
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

    .line 1454
    const/4 v5, 0x1

    .line 1456
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
    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->implVerify([BI[BI[BB[BII)Z

    move-result p0

    return p0
.end method

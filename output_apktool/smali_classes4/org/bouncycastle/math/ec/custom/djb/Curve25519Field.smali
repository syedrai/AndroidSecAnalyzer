.class public Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;
.super Ljava/lang/Object;
.source "Curve25519Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = 0x7fffffff

.field private static final PExt:[I

.field private static final PInv:I = 0x13


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    return-void

    nop

    :array_0
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

    :array_1
    .array-data 4
        0x169
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 26
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    .line 27
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 31
    :cond_0
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 2
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xx",
            "yy",
            "zz"
        }
    .end annotation

    .line 35
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    .line 36
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    .line 40
    :cond_0
    return-void
.end method

.method public static addOne([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 44
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    .line 45
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 49
    :cond_0
    return-void
.end method

.method private static addPExtTo([I)I
    .locals 13
    .param p0, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 238
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    add-long/2addr v1, v5

    .line 239
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    .line 240
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 241
    const/4 v5, 0x1

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 243
    invoke-static {v6, p0, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v9

    int-to-long v1, v9

    .line 245
    :cond_0
    aget v9, p0, v6

    int-to-long v9, v9

    and-long/2addr v9, v3

    const-wide/16 v11, 0x13

    sub-long/2addr v9, v11

    add-long/2addr v1, v9

    .line 246
    long-to-int v9, v1

    aput v9, p0, v6

    .line 247
    shr-long/2addr v1, v0

    .line 248
    const/16 v6, 0xf

    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 250
    const/16 v7, 0x9

    invoke-static {v6, p0, v7}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v7

    int-to-long v1, v7

    .line 252
    :cond_1
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    sget-object v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v9, v9, v6

    add-int/2addr v9, v5

    int-to-long v9, v9

    and-long/2addr v3, v9

    add-long/2addr v7, v3

    add-long/2addr v1, v7

    .line 253
    long-to-int v3, v1

    aput v3, p0, v6

    .line 254
    shr-long v0, v1, v0

    .line 255
    .end local v1    # "c":J
    .local v0, "c":J
    long-to-int v2, v0

    return v2
.end method

.method private static addPTo([I)I
    .locals 9
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 223
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x13

    sub-long/2addr v1, v5

    .line 224
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    .line 225
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 226
    const-wide/16 v5, 0x0

    const/4 v7, 0x7

    cmp-long v8, v1, v5

    if-eqz v8, :cond_0

    .line 228
    const/4 v5, 0x1

    invoke-static {v7, p0, v5}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v5

    int-to-long v1, v5

    .line 230
    :cond_0
    aget v5, p0, v7

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide v5, 0x80000000L

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 231
    long-to-int v3, v1

    aput v3, p0, v7

    .line 232
    shr-long v0, v1, v0

    .line 233
    .end local v1    # "c":J
    .local v0, "c":J
    long-to-int v2, v0

    return v2
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 2
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 53
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 54
    .local v0, "z":[I
    :goto_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    goto :goto_0

    .line 58
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 65
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 69
    :cond_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    .line 70
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 72
    :goto_0
    return-void
.end method

.method public static inv([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 76
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 77
    return-void
.end method

.method public static isZero([I)I
    .locals 3
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 84
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 87
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static multiply([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 92
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 93
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 94
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 95
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "zz"
        }
    .end annotation

    .line 99
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    .line 100
    const/16 v0, 0x10

    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPExtFrom([I)I

    .line 104
    :cond_0
    return-void
.end method

.method public static negate([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 108
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 116
    :goto_0
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .locals 5
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "z"
        }
    .end annotation

    .line 120
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 123
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 124
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 125
    const/4 v1, 0x7

    aget v3, p1, v1

    const v4, 0x7fffffff

    and-int/2addr v3, v4

    aput v3, p1, v1

    .line 127
    sget-object v1, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    return-void
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "z"
        }
    .end annotation

    .line 134
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->random(Ljava/security/SecureRandom;[I)V

    .line 136
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void
.end method

.method public static reduce([I[I)V
    .locals 7
    .param p0, "xx"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "xx",
            "z"
        }
    .end annotation

    .line 143
    const/4 v0, 0x7

    aget v4, p0, v0

    .line 144
    .local v4, "xx07":I
    const/16 v3, 0x8

    const/4 v6, 0x0

    const/16 v1, 0x8

    move-object v2, p0

    move-object v5, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v2, "xx":[I
    .local v5, "z":[I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[III[II)I

    .line 145
    const/16 p0, 0x13

    invoke-static {p0, v2, v5}, Lorg/bouncycastle/math/raw/Nat256;->mulByWordAddTo(I[I[I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x1

    .line 146
    .local p0, "c":I
    aget p1, v5, v0

    .line 147
    .local p1, "z7":I
    ushr-int/lit8 v1, p1, 0x1f

    ushr-int/lit8 v3, v4, 0x1f

    sub-int/2addr v1, v3

    add-int/2addr p0, v1

    .line 148
    const v1, 0x7fffffff

    and-int/2addr p1, v1

    .line 149
    mul-int/lit8 v1, p0, 0x13

    invoke-static {v0, v1, v5}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 150
    aput p1, v5, v0

    .line 151
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {v5, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {v5}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 155
    :cond_0
    return-void
.end method

.method public static reduce27(I[I)V
    .locals 4
    .param p0, "x"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 161
    const/4 v0, 0x7

    aget v1, p1, v0

    .line 162
    .local v1, "z7":I
    shl-int/lit8 v2, p0, 0x1

    ushr-int/lit8 v3, v1, 0x1f

    or-int/2addr v2, v3

    .line 163
    .local v2, "c":I
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    .line 164
    mul-int/lit8 v3, v2, 0x13

    invoke-static {v0, v3, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 165
    aput v1, p1, v0

    .line 166
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 170
    :cond_0
    return-void
.end method

.method public static square([I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 174
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 175
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 176
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 177
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "n",
            "z"
        }
    .end annotation

    .line 183
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 184
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 185
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    .line 187
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 189
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 190
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->reduce([I[I)V

    goto :goto_0

    .line 192
    :cond_0
    return-void
.end method

.method private static subPExtFrom([I)I
    .locals 13
    .param p0, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    sget-object v5, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v5, v5, v0

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v1, v5

    .line 276
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    .line 277
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 278
    const/4 v5, 0x1

    const/16 v6, 0x8

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 280
    invoke-static {v6, p0, v5}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    move-result v9

    int-to-long v1, v9

    .line 282
    :cond_0
    aget v9, p0, v6

    int-to-long v9, v9

    and-long/2addr v9, v3

    const-wide/16 v11, 0x13

    add-long/2addr v9, v11

    add-long/2addr v1, v9

    .line 283
    long-to-int v9, v1

    aput v9, p0, v6

    .line 284
    shr-long/2addr v1, v0

    .line 285
    const/16 v6, 0xf

    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 287
    const/16 v7, 0x9

    invoke-static {v6, p0, v7}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v7

    int-to-long v1, v7

    .line 289
    :cond_1
    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v3

    sget-object v9, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->PExt:[I

    aget v9, v9, v6

    add-int/2addr v9, v5

    int-to-long v9, v9

    and-long/2addr v3, v9

    sub-long/2addr v7, v3

    add-long/2addr v1, v7

    .line 290
    long-to-int v3, v1

    aput v3, p0, v6

    .line 291
    shr-long v0, v1, v0

    .line 292
    .end local v1    # "c":J
    .local v0, "c":J
    long-to-int v2, v0

    return v2
.end method

.method private static subPFrom([I)I
    .locals 9
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 260
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x13

    add-long/2addr v1, v5

    .line 261
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    .line 262
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 263
    const-wide/16 v5, 0x0

    const/4 v7, 0x7

    cmp-long v8, v1, v5

    if-eqz v8, :cond_0

    .line 265
    const/4 v5, 0x1

    invoke-static {v7, p0, v5}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v5

    int-to-long v1, v5

    .line 267
    :cond_0
    aget v5, p0, v7

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide v5, 0x80000000L

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 268
    long-to-int v3, v1

    aput v3, p0, v7

    .line 269
    shr-long v0, v1, v0

    .line 270
    .end local v1    # "c":J
    .local v0, "c":J
    long-to-int v2, v0

    return v2
.end method

.method public static subtract([I[I[I)V
    .locals 1
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    .line 196
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 197
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 199
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPTo([I)I

    .line 201
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 1
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "xx",
            "yy",
            "zz"
        }
    .end annotation

    .line 205
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 206
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 208
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->addPExtTo([I)I

    .line 210
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "z"
        }
    .end annotation

    .line 214
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    .line 215
    sget-object v0, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/djb/Curve25519Field;->subPFrom([I)I

    .line 219
    :cond_0
    return-void
.end method

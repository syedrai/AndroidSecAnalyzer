.class public Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final P:[I

.field private static final P16:I = 0x1ff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 4
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

    .line 20
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 21
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_0

    if-ne v1, v2, :cond_1

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 23
    :cond_0
    invoke-static {v0, p2}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 24
    and-int/2addr v1, v2

    .line 26
    :cond_1
    aput v1, p2, v0

    .line 27
    return-void
.end method

.method public static addOne([I[I)V
    .locals 4
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

    .line 31
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 32
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_0

    if-ne v1, v2, :cond_1

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v3}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 34
    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 35
    and-int/2addr v1, v2

    .line 37
    :cond_1
    aput v1, p1, v0

    .line 38
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 42
    const/16 v0, 0x209

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 43
    .local v0, "z":[I
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    const/16 v2, 0x11

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat;->zero(I[I)V

    .line 47
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 5
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

    .line 52
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 53
    .local v1, "x16":I
    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v2

    .line 54
    .local v2, "c":I
    ushr-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x17

    or-int/2addr v3, v4

    aput v3, p1, v0

    .line 55
    return-void
.end method

.method protected static implMultiply([I[I[I)V
    .locals 8
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

    .line 209
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    .line 211
    const/16 v0, 0x10

    aget v2, p0, v0

    .local v2, "x16":I
    aget v4, p1, v0

    .line 212
    .local v4, "y16":I
    const/16 v1, 0x10

    const/16 v7, 0x10

    move-object v5, p0

    move-object v3, p1

    move-object v6, p2

    .end local p0    # "x":[I
    .end local p1    # "y":[I
    .end local p2    # "zz":[I
    .local v3, "y":[I
    .local v5, "x":[I
    .local v6, "zz":[I
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result p0

    mul-int p1, v2, v4

    add-int/2addr p0, p1

    const/16 p1, 0x20

    aput p0, v6, p1

    .line 213
    return-void
.end method

.method protected static implSquare([I[I)V
    .locals 7
    .param p0, "x"    # [I
    .param p1, "zz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "zz"
        }
    .end annotation

    .line 217
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat512;->square([I[I)V

    .line 219
    const/16 v0, 0x10

    aget v0, p0, v0

    .line 220
    .local v0, "x16":I
    shl-int/lit8 v2, v0, 0x1

    const/4 v4, 0x0

    const/16 v6, 0x10

    const/16 v1, 0x10

    move-object v3, p0

    move-object v5, p1

    .end local p0    # "x":[I
    .end local p1    # "zz":[I
    .local v3, "x":[I
    .local v5, "zz":[I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result p0

    mul-int p1, v0, v0

    add-int/2addr p0, p1

    const/16 p1, 0x20

    aput p0, v5, p1

    .line 221
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

    .line 59
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 60
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

    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x11

    if-ge v1, v2, :cond_0

    .line 67
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 70
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

    .line 75
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 76
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 77
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 78
    return-void
.end method

.method public static multiply([I[I[I[I)V
    .locals 0
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "tt"
        }
    .end annotation

    .line 82
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 83
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 84
    return-void
.end method

.method public static negate([I[I)V
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

    .line 88
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0

    .line 94
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 96
    :goto_0
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .locals 4
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

    .line 100
    const/16 v0, 0x44

    new-array v0, v0, [B

    .line 103
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 104
    const/4 v1, 0x0

    const/16 v2, 0x11

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 105
    const/16 v1, 0x10

    aget v3, p1, v1

    and-int/lit16 v3, v3, 0x1ff

    aput v3, p1, v1

    .line 107
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 108
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

    .line 114
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 116
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void
.end method

.method public static reduce([I[I)V
    .locals 8
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

    .line 123
    const/16 v0, 0x20

    aget v5, p0, v0

    .line 124
    .local v5, "xx32":I
    const/16 v4, 0x9

    const/4 v7, 0x0

    const/16 v1, 0x10

    const/16 v3, 0x10

    move-object v2, p0

    move-object v6, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v2, "xx":[I
    .local v6, "z":[I
    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result p0

    ushr-int/lit8 p0, p0, 0x17

    .line 125
    .local p0, "c":I
    ushr-int/lit8 p1, v5, 0x9

    add-int/2addr p0, p1

    .line 126
    const/16 p1, 0x10

    invoke-static {p1, v2, v6}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v0

    add-int/2addr p0, v0

    .line 127
    const/16 v0, 0x1ff

    if-gt p0, v0, :cond_0

    if-ne p0, v0, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {p1, v6, v1}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    :cond_0
    invoke-static {p1, v6}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v1

    add-int/2addr p0, v1

    .line 130
    and-int/2addr p0, v0

    .line 132
    :cond_1
    aput p0, v6, p1

    .line 133
    return-void
.end method

.method public static reduce23([I)V
    .locals 5
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 137
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 138
    .local v1, "z16":I
    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v0, v2, p0}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    and-int/lit16 v3, v1, 0x1ff

    add-int/2addr v2, v3

    .line 139
    .local v2, "c":I
    const/16 v3, 0x1ff

    if-gt v2, v3, :cond_0

    if-ne v2, v3, :cond_1

    sget-object v4, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, v4}, Lorg/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    :cond_0
    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v2, v4

    .line 142
    and-int/2addr v2, v3

    .line 144
    :cond_1
    aput v2, p0, v0

    .line 145
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

    .line 149
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 150
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 151
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 152
    return-void
.end method

.method public static square([I[I[I)V
    .locals 0
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "tt"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "tt"
        }
    .end annotation

    .line 156
    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 157
    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 158
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

    .line 164
    const/16 v0, 0x21

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 165
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 166
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 168
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 170
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 171
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_0

    .line 173
    :cond_0
    return-void
.end method

.method public static squareN([II[I[I)V
    .locals 0
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
    .param p3, "tt"    # [I
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
            "z",
            "tt"
        }
    .end annotation

    .line 179
    invoke-static {p0, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 180
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 182
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 184
    invoke-static {p2, p3}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 185
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_0

    .line 187
    :cond_0
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 3
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

    .line 191
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    sub-int/2addr v1, v2

    .line 192
    .local v1, "c":I
    if-gez v1, :cond_0

    .line 194
    invoke-static {v0, p2}, Lorg/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result v2

    add-int/2addr v1, v2

    .line 195
    and-int/lit16 v1, v1, 0x1ff

    .line 197
    :cond_0
    aput v1, p2, v0

    .line 198
    return-void
.end method

.method public static twice([I[I)V
    .locals 4
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

    .line 202
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 203
    .local v1, "x16":I
    shl-int/lit8 v2, v1, 0x17

    invoke-static {v0, p0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v2, v3

    .line 204
    .local v2, "c":I
    and-int/lit16 v3, v2, 0x1ff

    aput v3, p1, v0

    .line 205
    return-void
.end method

.class public Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;
.super Ljava/lang/Object;
.source "SecP192K1Field.java"


# static fields
.field static final P:[I

.field private static final P5:I = -0x1

.field private static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x11c9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 15
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x11c9
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x13c4fd1
        0x2392
        0x1
        0x0
        0x0
        0x0
        -0x2392
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x13c4fd1
        -0x2393
        -0x2
        -0x1
        -0x1
        -0x1
        0x2391
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
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

    .line 25
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 26
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 28
    :cond_0
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 30
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 4
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

    .line 34
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 35
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 37
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 42
    :cond_1
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

    .line 46
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 47
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 49
    :cond_0
    const/16 v2, 0x11c9

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 51
    :cond_1
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

    .line 55
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 56
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 60
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

    .line 65
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 67
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 71
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 72
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 74
    .end local v0    # "c":I
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

    .line 78
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 79
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

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 86
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 84
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 89
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

    .line 94
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 95
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 96
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 97
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 4
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

    .line 101
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 102
    .local v0, "c":I
    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 104
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 109
    :cond_1
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

    .line 113
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    .line 121
    :goto_0
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .locals 3
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

    .line 125
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 128
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 131
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 132
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

    .line 138
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 140
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 141
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

    .line 145
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x11c9

    const/4 v2, 0x6

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v1, "xx":[I
    .local v5, "z":[I
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/raw/Nat192;->mul33Add(I[II[II[II)J

    move-result-wide p0

    .line 146
    .local p0, "cc":J
    const/4 v0, 0x0

    const/16 v2, 0x11c9

    invoke-static {v2, p0, p1, v5, v0}, Lorg/bouncycastle/math/raw/Nat192;->mul33DWordAdd(IJ[II)I

    move-result v0

    .line 150
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v3, 0x5

    aget v3, v5, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {v5, v3}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 152
    :cond_0
    const/4 v3, 0x6

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 154
    :cond_1
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 3
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

    .line 158
    const/16 v0, 0x11c9

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/bouncycastle/math/raw/Nat192;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    .line 159
    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    :cond_1
    const/4 v1, 0x6

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 163
    :cond_2
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

    .line 167
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 168
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 169
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 170
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

    .line 176
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 177
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 178
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 180
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 182
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 183
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    goto :goto_0

    .line 185
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

    .line 189
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 190
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 192
    const/4 v1, 0x6

    const/16 v2, 0x11c9

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 194
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 4
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

    .line 198
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 199
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 201
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 206
    :cond_0
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

    .line 210
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {v1, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 211
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    :cond_0
    const/16 v2, 0x11c9

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 215
    :cond_1
    return-void
.end method

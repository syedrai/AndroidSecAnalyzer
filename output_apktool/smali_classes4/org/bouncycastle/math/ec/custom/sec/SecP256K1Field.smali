.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final P:[I

.field private static final P7:I = -0x1

.field private static final PExt:[I

.field private static final PExt15:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv33:I = 0x3d1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 16
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
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

    .line 27
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 32
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

    .line 36
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 44
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

    .line 48
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 49
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    const/16 v2, 0x3d1

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 53
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

    .line 57
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 62
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

    .line 67
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    .line 69
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 74
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 76
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

    .line 80
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 81
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

    .line 85
    const/4 v0, 0x0

    .line 86
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 88
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 91
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

    .line 96
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 97
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 99
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

    .line 103
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 104
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 105
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

    .line 109
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 110
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 112
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 114
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 117
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

    .line 121
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 129
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

    .line 133
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 136
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 137
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 139
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
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

    .line 146
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 148
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 149
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

    .line 153
    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v0, 0x3d1

    const/16 v2, 0x8

    move-object v3, p0

    move-object v1, p0

    move-object v5, p1

    .end local p0    # "xx":[I
    .end local p1    # "z":[I
    .local v1, "xx":[I
    .local v5, "z":[I
    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    move-result-wide p0

    .line 154
    .local p0, "cc":J
    const/4 v0, 0x0

    const/16 v2, 0x3d1

    invoke-static {v2, p0, p1, v5, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    move-result v0

    .line 158
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v3, 0x7

    aget v3, v5, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v5, v3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 160
    :cond_0
    const/16 v3, 0x8

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 162
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

    .line 166
    const/16 v0, 0x3d1

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 167
    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 169
    :cond_1
    const/16 v1, 0x8

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 171
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

    .line 175
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 176
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 177
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 178
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

    .line 182
    invoke-static {p0, p2}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 183
    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 184
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

    .line 190
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 191
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 192
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 194
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 196
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 197
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_0

    .line 199
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

    .line 205
    invoke-static {p0, p3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 206
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 208
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 210
    invoke-static {p2, p3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 211
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_0

    .line 213
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

    .line 217
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 218
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 220
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 222
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

    .line 226
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 227
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 229
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 234
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

    .line 238
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-static {v1, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 239
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    :cond_0
    const/16 v2, 0x3d1

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 243
    :cond_1
    return-void
.end method

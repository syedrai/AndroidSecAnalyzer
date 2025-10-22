.class public Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;
.super Ljava/lang/Object;
.source "SecP160R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P4:I = -0x1

.field private static final PExt:[I

.field private static final PExt9:I = -0x1

.field private static final PExtInv:[I

.field private static final PInv:I = -0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const v0, 0x7fffffff

    const/4 v1, -0x1

    filled-new-array {v0, v1, v1, v1, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    .line 17
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x40000001    # 2.0000002f
        0x0
        0x0
        0x0
        -0x2
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x40000002    # -1.9999998f
        -0x1
        -0x1
        -0x1
        0x1
        0x1
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
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    const/4 v1, 0x5

    const v2, -0x7fffffff

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

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
    const/16 v0, 0xa

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

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
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 49
    .local v1, "c":I
    if-nez v1, :cond_0

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    :cond_0
    const v2, -0x7fffffff

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

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
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat160;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x4

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat160;->subFrom([I[I)I

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

    const/4 v2, 0x5

    if-nez v1, :cond_0

    .line 69
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat160;->add([I[I[I)I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

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
    const/4 v2, 0x5

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    .line 97
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat160;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    .line 99
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

    .line 103
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->mulAddTo([I[I[I)I

    move-result v0

    .line 104
    .local v0, "c":I
    const/16 v1, 0xa

    if-nez v0, :cond_0

    const/16 v2, 0x9

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 111
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

    .line 115
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat160;->sub([I[I[I)I

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat160;->sub([I[I[I)I

    .line 123
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

    .line 127
    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 130
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 133
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 134
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

    .line 140
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 142
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void
.end method

.method public static reduce([I[I)V
    .locals 23
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

    .line 147
    move-object/from16 v0, p1

    const/4 v1, 0x5

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "x5":J
    const/4 v5, 0x6

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "x6":J
    const/4 v7, 0x7

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "x7":J
    const/16 v9, 0x8

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .local v9, "x8":J
    const/16 v11, 0x9

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .line 149
    .local v11, "x9":J
    const-wide/16 v13, 0x0

    .line 150
    .local v13, "c":J
    const/4 v15, 0x0

    move-wide/from16 v16, v3

    aget v3, p0, v15

    int-to-long v3, v3

    and-long v3, v3, v16

    add-long/2addr v3, v1

    const/16 v18, 0x1f

    shl-long v19, v1, v18

    add-long v3, v3, v19

    add-long/2addr v13, v3

    .line 151
    long-to-int v3, v13

    aput v3, v0, v15

    const/16 v3, 0x20

    ushr-long/2addr v13, v3

    .line 152
    const/4 v4, 0x1

    aget v15, p0, v4

    const/16 v19, 0x20

    const/16 v20, 0x1

    int-to-long v3, v15

    and-long v3, v3, v16

    add-long/2addr v3, v5

    shl-long v21, v5, v18

    add-long v3, v3, v21

    add-long/2addr v13, v3

    .line 153
    long-to-int v3, v13

    aput v3, v0, v20

    ushr-long v3, v13, v19

    .line 154
    .end local v13    # "c":J
    .local v3, "c":J
    const/4 v13, 0x2

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v14, v7

    shl-long v20, v7, v18

    add-long v14, v14, v20

    add-long/2addr v3, v14

    .line 155
    long-to-int v14, v3

    aput v14, v0, v13

    ushr-long v3, v3, v19

    .line 156
    const/4 v13, 0x3

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v14, v9

    shl-long v20, v9, v18

    add-long v14, v14, v20

    add-long/2addr v3, v14

    .line 157
    long-to-int v14, v3

    aput v14, v0, v13

    ushr-long v3, v3, v19

    .line 158
    const/4 v13, 0x4

    aget v14, p0, v13

    int-to-long v14, v14

    and-long v14, v14, v16

    add-long/2addr v14, v11

    shl-long v16, v11, v18

    add-long v14, v14, v16

    add-long/2addr v3, v14

    .line 159
    long-to-int v14, v3

    aput v14, v0, v13

    ushr-long v3, v3, v19

    .line 163
    long-to-int v13, v3

    invoke-static {v13, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce32(I[I)V

    .line 164
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

    .line 168
    const v0, -0x7fffffff

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lorg/bouncycastle/math/raw/Nat160;->mulWordsAdd(II[II)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x4

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    .line 169
    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    :cond_1
    const/4 v1, 0x5

    invoke-static {v1, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    .line 173
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

    .line 177
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    .line 178
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    .line 179
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    .line 180
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

    .line 186
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat160;->createExt()[I

    move-result-object v0

    .line 187
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    .line 188
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    .line 190
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 192
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat160;->square([I[I)V

    .line 193
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->reduce([I[I)V

    goto :goto_0

    .line 195
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

    .line 199
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat160;->sub([I[I[I)I

    move-result v0

    .line 200
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 202
    const/4 v1, 0x5

    const v2, -0x7fffffff

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->subWordFrom(II[I)I

    .line 204
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

    .line 208
    const/16 v0, 0xa

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 209
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 211
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 216
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

    .line 220
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-static {v1, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 221
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v2, 0x4

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP160R1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat160;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    :cond_0
    const v2, -0x7fffffff

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    .line 225
    :cond_1
    return-void
.end method

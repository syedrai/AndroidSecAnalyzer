.class public Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P6:I = -0x1

.field private static final PExt:[I

.field private static final PExt13:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 18
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
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
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

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
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 39
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 44
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
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

    .line 48
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 49
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 53
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 12
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 296
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 297
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 298
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 300
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 301
    long-to-int v10, v1

    aput v10, p0, v9

    .line 302
    shr-long/2addr v1, v0

    .line 303
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 304
    long-to-int v10, v1

    aput v10, p0, v9

    .line 305
    shr-long/2addr v1, v0

    .line 307
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 308
    long-to-int v3, v1

    aput v3, p0, v9

    .line 309
    shr-long v0, v1, v0

    .line 310
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 312
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 314
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
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

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

    const/4 v2, 0x7

    if-nez v1, :cond_0

    .line 69
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 73
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat224;->add([I[I[I)I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

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
    const/4 v2, 0x7

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 97
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 98
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

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
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result v0

    .line 104
    .local v0, "c":I
    const/16 v1, 0xe

    if-nez v0, :cond_0

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

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
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    goto :goto_0

    .line 121
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

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
    const/16 v0, 0x1c

    new-array v0, v0, [B

    .line 130
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 131
    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 133
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

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
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 142
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    return-void
.end method

.method public static reduce([I[I)V
    .locals 37
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

    const/16 v1, 0xa

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx10":J
    const/16 v5, 0xb

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx11":J
    const/16 v7, 0xc

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx12":J
    const/16 v9, 0xd

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 149
    .local v9, "xx13":J
    const-wide/16 v11, 0x1

    .line 151
    .local v11, "n":J
    const/4 v13, 0x7

    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v5

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 152
    .local v14, "t0":J
    const/16 v18, 0x8

    move-wide/from16 v19, v3

    aget v3, p0, v18

    int-to-long v3, v3

    and-long v3, v3, v19

    add-long/2addr v3, v7

    .line 153
    .local v3, "t1":J
    const/16 v18, 0x9

    aget v13, p0, v18

    move-wide/from16 v21, v1

    .end local v1    # "xx10":J
    .local v21, "xx10":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long/2addr v1, v9

    .line 155
    .local v1, "t2":J
    const-wide/16 v23, 0x0

    .line 156
    .local v23, "cc":J
    const/16 v18, 0x0

    aget v13, p0, v18

    move-wide/from16 v25, v1

    .end local v1    # "t2":J
    .local v25, "t2":J
    int-to-long v1, v13

    and-long v1, v1, v19

    sub-long/2addr v1, v14

    add-long v23, v23, v1

    .line 157
    and-long v1, v23, v19

    .line 158
    .local v1, "z0":J
    const/16 v13, 0x20

    shr-long v23, v23, v13

    .line 159
    const/16 v27, 0x1

    const/16 v28, 0x20

    aget v13, p0, v27

    move-wide/from16 v29, v1

    .end local v1    # "z0":J
    .local v29, "z0":J
    int-to-long v1, v13

    and-long v1, v1, v19

    sub-long/2addr v1, v3

    add-long v1, v23, v1

    .line 160
    .end local v23    # "cc":J
    .local v1, "cc":J
    long-to-int v13, v1

    aput v13, v0, v27

    .line 161
    shr-long v1, v1, v28

    .line 162
    const/16 v23, 0x2

    aget v13, p0, v23

    move-wide/from16 v31, v1

    .end local v1    # "cc":J
    .local v31, "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    sub-long v1, v1, v25

    add-long v1, v31, v1

    .line 163
    .end local v31    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v13, v1

    aput v13, v0, v23

    .line 164
    shr-long v1, v1, v28

    .line 165
    const/16 v24, 0x3

    aget v13, p0, v24

    move-wide/from16 v31, v1

    .end local v1    # "cc":J
    .restart local v31    # "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long/2addr v1, v14

    sub-long v1, v1, v21

    add-long v1, v31, v1

    .line 166
    .end local v31    # "cc":J
    .restart local v1    # "cc":J
    and-long v31, v1, v19

    .line 167
    .local v31, "z3":J
    shr-long v1, v1, v28

    .line 168
    const/16 v33, 0x4

    aget v13, p0, v33

    move-wide/from16 v34, v1

    .end local v1    # "cc":J
    .local v34, "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long/2addr v1, v3

    sub-long/2addr v1, v5

    add-long v1, v34, v1

    .line 169
    .end local v34    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v13, v1

    aput v13, v0, v33

    .line 170
    shr-long v1, v1, v28

    .line 171
    const/16 v34, 0x5

    aget v13, p0, v34

    move-wide/from16 v35, v1

    .end local v1    # "cc":J
    .local v35, "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long v1, v1, v25

    sub-long/2addr v1, v7

    add-long v1, v35, v1

    .line 172
    .end local v35    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v13, v1

    aput v13, v0, v34

    .line 173
    shr-long v1, v1, v28

    .line 174
    const/16 v34, 0x6

    aget v13, p0, v34

    move-wide/from16 v35, v1

    .end local v1    # "cc":J
    .restart local v35    # "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long v1, v1, v21

    sub-long/2addr v1, v9

    add-long v1, v35, v1

    .line 175
    .end local v35    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v13, v1

    aput v13, v0, v34

    .line 176
    shr-long v1, v1, v28

    .line 177
    add-long v1, v1, v16

    .line 181
    add-long v31, v31, v1

    .line 183
    move-wide/from16 v16, v1

    .end local v1    # "cc":J
    .local v16, "cc":J
    sub-long v1, v29, v16

    .line 184
    .end local v29    # "z0":J
    .local v1, "z0":J
    long-to-int v13, v1

    aput v13, v0, v18

    .line 185
    shr-long v16, v1, v28

    .line 186
    const-wide/16 v29, 0x0

    cmp-long v13, v16, v29

    if-eqz v13, :cond_0

    .line 188
    aget v13, v0, v27

    move-wide/from16 v35, v1

    .end local v1    # "z0":J
    .local v35, "z0":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long v1, v16, v1

    .line 189
    .end local v16    # "cc":J
    .local v1, "cc":J
    long-to-int v13, v1

    aput v13, v0, v27

    .line 190
    shr-long v1, v1, v28

    .line 191
    aget v13, v0, v23

    move-wide/from16 v16, v1

    .end local v1    # "cc":J
    .restart local v16    # "cc":J
    int-to-long v1, v13

    and-long v1, v1, v19

    add-long v1, v16, v1

    .line 192
    .end local v16    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v13, v1

    aput v13, v0, v23

    .line 193
    shr-long v16, v1, v28

    add-long v31, v31, v16

    move-wide/from16 v16, v1

    move-wide/from16 v1, v31

    goto :goto_0

    .line 186
    .end local v35    # "z0":J
    .local v1, "z0":J
    .restart local v16    # "cc":J
    :cond_0
    move-wide/from16 v35, v1

    .end local v1    # "z0":J
    .restart local v35    # "z0":J
    move-wide/from16 v1, v31

    .line 195
    .end local v31    # "z3":J
    .local v1, "z3":J
    :goto_0
    long-to-int v13, v1

    aput v13, v0, v24

    .line 196
    shr-long v16, v1, v28

    .line 200
    cmp-long v13, v16, v29

    if-eqz v13, :cond_1

    move-wide/from16 v18, v1

    const/4 v1, 0x4

    const/4 v13, 0x7

    .end local v1    # "z3":J
    .local v18, "z3":J
    invoke-static {v13, v0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .end local v18    # "z3":J
    .restart local v1    # "z3":J
    :cond_1
    move-wide/from16 v18, v1

    .end local v1    # "z3":J
    .restart local v18    # "z3":J
    :goto_1
    aget v1, v0, v34

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 201
    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 203
    :cond_2
    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 205
    :cond_3
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 12
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

    .line 209
    const-wide/16 v0, 0x0

    .line 211
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 213
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 215
    .local v4, "xx07":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    sub-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 216
    long-to-int v9, v0

    aput v9, p1, v8

    .line 217
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 218
    cmp-long v9, v0, v2

    if-eqz v9, :cond_0

    .line 220
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 221
    long-to-int v10, v0

    aput v10, p1, v9

    .line 222
    shr-long/2addr v0, v8

    .line 223
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 224
    long-to-int v10, v0

    aput v10, p1, v9

    .line 225
    shr-long/2addr v0, v8

    .line 227
    :cond_0
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 228
    long-to-int v6, v0

    aput v6, p1, v9

    .line 229
    shr-long/2addr v0, v8

    .line 234
    .end local v4    # "xx07":J
    :cond_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x6

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 235
    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 237
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 239
    :cond_4
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

    .line 243
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 244
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 245
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 246
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

    .line 252
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 253
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 254
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 256
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 258
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 259
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_0

    .line 261
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 12
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 318
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 319
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 320
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 321
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 323
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 324
    long-to-int v10, v1

    aput v10, p0, v9

    .line 325
    shr-long/2addr v1, v0

    .line 326
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 327
    long-to-int v10, v1

    aput v10, p0, v9

    .line 328
    shr-long/2addr v1, v0

    .line 330
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 331
    long-to-int v3, v1

    aput v3, p0, v9

    .line 332
    shr-long v0, v1, v0

    .line 333
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 335
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 337
    :cond_1
    return-void
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

    .line 265
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result v0

    .line 266
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 268
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    .line 270
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

    .line 274
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 275
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 277
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 282
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
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

    .line 286
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 287
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 291
    :cond_1
    return-void
.end method

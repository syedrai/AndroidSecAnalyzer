.class public Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = -0x1

.field private static final PExt:[I

.field private static final PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
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
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
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

    .line 26
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 27
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 31
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

    .line 35
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 36
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 40
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

    .line 44
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 45
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 49
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

    .line 313
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 314
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 315
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 316
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 318
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 319
    long-to-int v10, v1

    aput v10, p0, v9

    .line 320
    shr-long/2addr v1, v0

    .line 321
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 322
    long-to-int v10, v1

    aput v10, p0, v9

    .line 323
    shr-long/2addr v1, v0

    .line 325
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 326
    long-to-int v10, v1

    aput v10, p0, v9

    .line 327
    shr-long/2addr v1, v0

    .line 328
    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 330
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 331
    long-to-int v8, v1

    aput v8, p0, v7

    .line 332
    shr-long/2addr v1, v0

    .line 333
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 334
    long-to-int v8, v1

    aput v8, p0, v7

    .line 335
    shr-long/2addr v1, v0

    .line 337
    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 338
    long-to-int v8, v1

    aput v8, p0, v7

    .line 339
    shr-long v0, v1, v0

    .line 340
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 341
    long-to-int v3, v0

    aput v3, p0, v2

    .line 343
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

    .line 53
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 54
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 70
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 72
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

    .line 76
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

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
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 95
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

    .line 99
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 100
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 101
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

    .line 105
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 106
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 110
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

    .line 114
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 122
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

    .line 126
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 129
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 130
    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 132
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 133
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

    .line 139
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 141
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
    return-void
.end method

.method public static reduce([I[I)V
    .locals 49
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

    .line 146
    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx08":J
    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx09":J
    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx10":J
    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 147
    .local v9, "xx11":J
    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx12":J
    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx13":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    .local v3, "xx14":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v1

    .end local v1    # "xx08":J
    .local v18, "xx08":J
    int-to-long v1, v15

    and-long v1, v1, v16

    .line 149
    .local v1, "xx15":J
    const-wide/16 v20, 0x6

    .line 151
    .local v20, "n":J
    const-wide/16 v22, 0x6

    sub-long v18, v18, v22

    .line 153
    add-long v24, v18, v5

    .line 154
    .local v24, "t0":J
    add-long v26, v5, v7

    .line 155
    .local v26, "t1":J
    add-long v28, v7, v9

    sub-long v28, v28, v1

    .line 156
    .local v28, "t2":J
    add-long v30, v9, v11

    .line 157
    .local v30, "t3":J
    add-long v32, v11, v13

    .line 158
    .local v32, "t4":J
    add-long v34, v13, v3

    .line 159
    .local v34, "t5":J
    add-long v36, v3, v1

    .line 160
    .local v36, "t6":J
    sub-long v38, v34, v24

    .line 162
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 163
    .local v40, "cc":J
    const/16 v42, 0x0

    aget v15, p0, v42

    move-wide/from16 v43, v1

    .end local v1    # "xx15":J
    .local v43, "xx15":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v30

    sub-long v1, v1, v38

    add-long v1, v40, v1

    .line 164
    .end local v40    # "cc":J
    .local v1, "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 165
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 166
    const/16 v40, 0x1

    const/16 v41, 0x20

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .local v45, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v26

    sub-long v1, v1, v32

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 167
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 168
    shr-long v1, v1, v41

    .line 169
    const/16 v42, 0x2

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v28

    sub-long v1, v1, v34

    add-long v1, v45, v1

    .line 170
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 171
    shr-long v1, v1, v41

    .line 172
    const/16 v42, 0x3

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v30, v40

    add-long v1, v1, v47

    add-long v1, v1, v38

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 173
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 174
    shr-long v1, v1, v41

    .line 175
    const/16 v42, 0x4

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v32, v40

    add-long v1, v1, v47

    add-long/2addr v1, v3

    sub-long v1, v1, v26

    add-long v1, v45, v1

    .line 176
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 177
    shr-long v1, v1, v41

    .line 178
    const/16 v42, 0x5

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v34, v40

    add-long v1, v1, v47

    sub-long v1, v1, v28

    add-long v1, v45, v1

    .line 179
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 180
    shr-long v1, v1, v41

    .line 181
    const/16 v42, 0x6

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v47, v36, v40

    add-long v1, v1, v47

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 182
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 183
    shr-long v1, v1, v41

    .line 184
    const/16 v42, 0x7

    aget v15, p0, v42

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    shl-long v15, v43, v40

    add-long/2addr v1, v15

    add-long v1, v1, v18

    sub-long v1, v1, v28

    sub-long v1, v1, v32

    add-long v1, v45, v1

    .line 185
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 186
    shr-long v1, v1, v41

    .line 187
    add-long v1, v1, v22

    .line 191
    long-to-int v15, v1

    invoke-static {v15, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 192
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 13
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

    .line 196
    const-wide/16 v0, 0x0

    .line 198
    .local v0, "cc":J
    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_2

    .line 200
    int-to-long v5, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 202
    .local v5, "xx08":J
    const/4 v9, 0x0

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v10, v5

    add-long/2addr v0, v10

    .line 203
    long-to-int v10, v0

    aput v10, p1, v9

    .line 204
    const/16 v9, 0x20

    shr-long/2addr v0, v9

    .line 205
    cmp-long v10, v0, v3

    if-eqz v10, :cond_0

    .line 207
    const/4 v10, 0x1

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 208
    long-to-int v11, v0

    aput v11, p1, v10

    .line 209
    shr-long/2addr v0, v9

    .line 210
    const/4 v10, 0x2

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 211
    long-to-int v11, v0

    aput v11, p1, v10

    .line 212
    shr-long/2addr v0, v9

    .line 214
    :cond_0
    const/4 v10, 0x3

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 215
    long-to-int v11, v0

    aput v11, p1, v10

    .line 216
    shr-long/2addr v0, v9

    .line 217
    cmp-long v10, v0, v3

    if-eqz v10, :cond_1

    .line 219
    const/4 v10, 0x4

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 220
    long-to-int v11, v0

    aput v11, p1, v10

    .line 221
    shr-long/2addr v0, v9

    .line 222
    const/4 v10, 0x5

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 223
    long-to-int v11, v0

    aput v11, p1, v10

    .line 224
    shr-long/2addr v0, v9

    .line 226
    :cond_1
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 227
    long-to-int v11, v0

    aput v11, p1, v10

    .line 228
    shr-long/2addr v0, v9

    .line 229
    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v7, v10

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 230
    long-to-int v7, v0

    aput v7, p1, v2

    .line 231
    shr-long/2addr v0, v9

    .line 236
    .end local v5    # "xx08":J
    :cond_2
    cmp-long v5, v0, v3

    if-nez v5, :cond_3

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 240
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

    .line 244
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 245
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 246
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 247
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

    .line 251
    invoke-static {p0, p2}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 252
    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 253
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

    .line 259
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 260
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 261
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 263
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 265
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 266
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    .line 268
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

    .line 274
    invoke-static {p0, p3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 275
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 277
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 279
    invoke-static {p2, p3}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 280
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_0

    .line 282
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

    .line 347
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 348
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 349
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 350
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 352
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 353
    long-to-int v10, v1

    aput v10, p0, v9

    .line 354
    shr-long/2addr v1, v0

    .line 355
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 356
    long-to-int v10, v1

    aput v10, p0, v9

    .line 357
    shr-long/2addr v1, v0

    .line 359
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 360
    long-to-int v10, v1

    aput v10, p0, v9

    .line 361
    shr-long/2addr v1, v0

    .line 362
    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 364
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 365
    long-to-int v8, v1

    aput v8, p0, v7

    .line 366
    shr-long/2addr v1, v0

    .line 367
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 368
    long-to-int v8, v1

    aput v8, p0, v7

    .line 369
    shr-long/2addr v1, v0

    .line 371
    :cond_1
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 372
    long-to-int v8, v1

    aput v8, p0, v7

    .line 373
    shr-long v0, v1, v0

    .line 374
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 375
    long-to-int v3, v0

    aput v3, p0, v2

    .line 377
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

    .line 286
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 287
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 289
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 291
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3
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

    .line 295
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 296
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 298
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 300
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

    .line 304
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 305
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 309
    :cond_1
    return-void
.end method

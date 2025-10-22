.class public Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P11:I = -0x1

.field private static final PExt:[I

.field private static final PExt23:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 18
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 21
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
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

    .line 29
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 30
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 34
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

    .line 38
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 39
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0x17

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 43
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 46
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

    .line 50
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 51
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 55
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

    .line 312
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 313
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 314
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 315
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 316
    long-to-int v8, v1

    aput v8, p0, v7

    .line 317
    shr-long/2addr v1, v0

    .line 318
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 320
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 321
    long-to-int v10, v1

    aput v10, p0, v9

    .line 322
    shr-long/2addr v1, v0

    .line 324
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 325
    long-to-int v10, v1

    aput v10, p0, v9

    .line 326
    shr-long/2addr v1, v0

    .line 327
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 328
    long-to-int v3, v1

    aput v3, p0, v9

    .line 329
    shr-long v0, v1, v0

    .line 330
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 332
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 334
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

    .line 59
    const/16 v0, 0x180

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 60
    .local v0, "z":[I
    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v2, 0xc

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 64
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

    .line 69
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-nez v1, :cond_0

    .line 71
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 75
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 76
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 78
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

    .line 82
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 83
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

    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_0

    .line 90
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 88
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 93
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

    .line 98
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 99
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 100
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 101
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

    .line 105
    invoke-static {p0, p1, p3}, Lorg/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 106
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 107
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

    .line 111
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    const/16 v1, 0xc

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, v2, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_0

    .line 117
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 119
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

    .line 123
    const/16 v0, 0x30

    new-array v0, v0, [B

    .line 126
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 127
    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 129
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 130
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

    .line 136
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 138
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 139
    return-void
.end method

.method public static reduce([I[I)V
    .locals 47
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
    move-object/from16 v0, p1

    const/16 v1, 0x10

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx16":J
    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx17":J
    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx18":J
    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 144
    .local v9, "xx19":J
    const/16 v11, 0x14

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx20":J
    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx21":J
    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v3

    int-to-long v3, v15

    and-long v3, v3, v16

    .local v3, "xx22":J
    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v1

    .end local v1    # "xx16":J
    .local v18, "xx16":J
    int-to-long v1, v15

    and-long v1, v1, v16

    .line 146
    .local v1, "xx23":J
    const-wide/16 v20, 0x1

    .line 148
    .local v20, "n":J
    const/16 v15, 0xc

    aget v15, p0, v15

    move-wide/from16 v22, v1

    .end local v1    # "xx23":J
    .local v22, "xx23":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v11

    const-wide/16 v24, 0x1

    sub-long v1, v1, v24

    .line 149
    .local v1, "t0":J
    const/16 v15, 0xd

    aget v15, p0, v15

    move-wide/from16 v26, v1

    .end local v1    # "t0":J
    .local v26, "t0":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    .line 150
    .local v1, "t1":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v28, v1

    .end local v1    # "t1":J
    .local v28, "t1":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v3

    add-long v1, v1, v22

    .line 151
    .local v1, "t2":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v30, v1

    .end local v1    # "t2":J
    .local v30, "t2":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v22

    .line 152
    .local v1, "t3":J
    add-long v32, v5, v13

    .line 153
    .local v32, "t4":J
    sub-long v34, v13, v22

    .line 154
    .local v34, "t5":J
    sub-long v36, v3, v22

    .line 155
    .local v36, "t6":J
    add-long v38, v26, v34

    .line 157
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 158
    .local v40, "cc":J
    const/16 v42, 0x0

    aget v15, p0, v42

    move-wide/from16 v43, v1

    .end local v1    # "t3":J
    .local v43, "t3":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v38

    add-long v1, v40, v1

    .line 159
    .end local v40    # "cc":J
    .local v1, "cc":J
    long-to-int v15, v1

    aput v15, v0, v42

    .line 160
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 161
    const/16 v40, 0x1

    const/16 v41, 0x20

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .local v45, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v22

    sub-long v1, v1, v26

    add-long v1, v1, v28

    add-long v1, v45, v1

    .line 162
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 163
    shr-long v1, v1, v41

    .line 164
    const/16 v40, 0x2

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long/2addr v1, v13

    sub-long v1, v1, v28

    add-long v1, v1, v30

    add-long v1, v45, v1

    .line 165
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 166
    shr-long v1, v1, v41

    .line 167
    const/16 v40, 0x3

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v30

    add-long v1, v1, v43

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 168
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 169
    shr-long v1, v1, v41

    .line 170
    const/16 v40, 0x4

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v13

    add-long v1, v1, v28

    sub-long v1, v1, v43

    add-long v1, v1, v38

    add-long v1, v45, v1

    .line 171
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 172
    shr-long v1, v1, v41

    .line 173
    const/16 v40, 0x5

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v18

    add-long v1, v1, v28

    add-long v1, v1, v30

    add-long v1, v1, v32

    add-long v1, v45, v1

    .line 174
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 175
    shr-long v1, v1, v41

    .line 176
    const/16 v40, 0x6

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v5

    add-long v1, v1, v30

    add-long v1, v1, v43

    add-long v1, v45, v1

    .line 177
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 178
    shr-long v1, v1, v41

    .line 179
    const/16 v40, 0x7

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v9

    sub-long/2addr v1, v7

    add-long v1, v1, v43

    add-long v1, v45, v1

    .line 180
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 181
    shr-long v1, v1, v41

    .line 182
    const/16 v40, 0x8

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v18

    add-long/2addr v1, v5

    add-long/2addr v1, v11

    sub-long/2addr v1, v9

    add-long v1, v45, v1

    .line 183
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 184
    shr-long v1, v1, v41

    .line 185
    const/16 v40, 0x9

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    sub-long/2addr v1, v11

    add-long v1, v1, v32

    add-long v1, v45, v1

    .line 186
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 187
    shr-long v1, v1, v41

    .line 188
    const/16 v40, 0xa

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v7

    add-long/2addr v1, v9

    sub-long v1, v1, v34

    add-long v1, v1, v36

    add-long v1, v45, v1

    .line 189
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 190
    shr-long v1, v1, v41

    .line 191
    const/16 v40, 0xb

    aget v15, p0, v40

    move-wide/from16 v45, v1

    .end local v1    # "cc":J
    .restart local v45    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v9

    add-long/2addr v1, v11

    sub-long v1, v1, v36

    add-long v1, v45, v1

    .line 192
    .end local v45    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v40

    .line 193
    shr-long v1, v1, v41

    .line 194
    add-long v1, v1, v24

    .line 198
    long-to-int v15, v1

    invoke-static {v15, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 199
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

    .line 203
    const-wide/16 v0, 0x0

    .line 205
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 207
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 209
    .local v4, "xx12":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 210
    long-to-int v9, v0

    aput v9, p1, v8

    .line 211
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 212
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    sub-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 213
    long-to-int v10, v0

    aput v10, p1, v9

    .line 214
    shr-long/2addr v0, v8

    .line 215
    cmp-long v9, v0, v2

    if-eqz v9, :cond_0

    .line 217
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 218
    long-to-int v10, v0

    aput v10, p1, v9

    .line 219
    shr-long/2addr v0, v8

    .line 221
    :cond_0
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 222
    long-to-int v10, v0

    aput v10, p1, v9

    .line 223
    shr-long/2addr v0, v8

    .line 224
    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 225
    long-to-int v6, v0

    aput v6, p1, v9

    .line 226
    shr-long/2addr v0, v8

    .line 231
    .end local v4    # "xx12":J
    :cond_1
    const/16 v4, 0xc

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    const/4 v2, 0x5

    invoke-static {v4, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 232
    invoke-static {v4, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 234
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 236
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

    .line 240
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 241
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 242
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 243
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

    .line 247
    invoke-static {p0, p2}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 248
    invoke-static {p2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 249
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

    .line 255
    const/16 v0, 0x18

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 256
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 257
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 259
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 261
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 262
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_0

    .line 264
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

    .line 270
    invoke-static {p0, p3}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 271
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 273
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 275
    invoke-static {p2, p3}, Lorg/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 276
    invoke-static {p3, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_0

    .line 278
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

    .line 338
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 339
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 340
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 341
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 342
    long-to-int v8, v1

    aput v8, p0, v7

    .line 343
    shr-long/2addr v1, v0

    .line 344
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 346
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 347
    long-to-int v10, v1

    aput v10, p0, v9

    .line 348
    shr-long/2addr v1, v0

    .line 350
    :cond_0
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 351
    long-to-int v10, v1

    aput v10, p0, v9

    .line 352
    shr-long/2addr v1, v0

    .line 353
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 354
    long-to-int v3, v1

    aput v3, p0, v9

    .line 355
    shr-long v0, v1, v0

    .line 356
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 358
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 360
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

    .line 282
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 283
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 285
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 287
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

    .line 291
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 292
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 294
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 296
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 299
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

    .line 303
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 304
    .local v0, "c":I
    if-nez v0, :cond_0

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 308
    :cond_1
    return-void
.end method

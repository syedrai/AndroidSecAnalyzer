.class public Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P5:I = -0x1

.field private static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    .line 19
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
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

    .line 26
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 27
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 36
    .local v1, "c":I
    if-nez v1, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 43
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

    .line 47
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 48
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 52
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

    .line 288
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 289
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 290
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 291
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 293
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 294
    long-to-int v10, v1

    aput v10, p0, v9

    .line 295
    shr-long/2addr v1, v0

    .line 297
    :cond_0
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 298
    long-to-int v3, v1

    aput v3, p0, v9

    .line 299
    shr-long v0, v1, v0

    .line 300
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 302
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 304
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

    .line 56
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 57
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 61
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

    .line 66
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x6

    if-nez v1, :cond_0

    .line 68
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 72
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 73
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 75
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

    .line 79
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 80
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

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 87
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 85
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 89
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 90
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

    .line 95
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 96
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 97
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 98
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

    .line 102
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 103
    .local v0, "c":I
    const/16 v1, 0xc

    if-nez v0, :cond_0

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 107
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

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
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_0

    .line 120
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

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
    const/16 v0, 0x18

    new-array v0, v0, [B

    .line 129
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 132
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

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
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 141
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 142
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

    .line 146
    move-object/from16 v0, p1

    const/4 v1, 0x6

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xx06":J
    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    .local v6, "xx07":J
    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    .line 147
    .local v8, "xx08":J
    const/16 v10, 0x9

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .local v10, "xx09":J
    const/16 v12, 0xa

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    .local v12, "xx10":J
    const/16 v14, 0xb

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v4

    .line 149
    .local v14, "xx11":J
    add-long v16, v2, v12

    .line 150
    .local v16, "t0":J
    add-long v18, v6, v14

    .line 152
    .local v18, "t1":J
    const-wide/16 v20, 0x0

    .line 153
    .local v20, "cc":J
    const/16 v22, 0x0

    move-wide/from16 v23, v4

    aget v4, p0, v22

    int-to-long v4, v4

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long v4, v20, v4

    .line 154
    .end local v20    # "cc":J
    .local v4, "cc":J
    long-to-int v1, v4

    .line 155
    .local v1, "z0":I
    const/16 v21, 0x20

    shr-long v4, v4, v21

    .line 156
    const/16 v25, 0x1

    move-wide/from16 v26, v2

    .end local v2    # "xx06":J
    .local v26, "xx06":J
    aget v2, p0, v25

    int-to-long v2, v2

    and-long v2, v2, v23

    add-long v2, v2, v18

    add-long/2addr v4, v2

    .line 157
    long-to-int v2, v4

    aput v2, v0, v25

    .line 158
    shr-long v2, v4, v21

    .line 160
    .end local v4    # "cc":J
    .local v2, "cc":J
    add-long v16, v16, v8

    .line 161
    add-long v18, v18, v10

    .line 163
    const/4 v4, 0x2

    aget v5, p0, v4

    const/16 v28, 0x2

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long/2addr v2, v4

    .line 164
    and-long v4, v2, v23

    .line 165
    .local v4, "z2":J
    shr-long v2, v2, v21

    .line 166
    move-wide/from16 v29, v2

    .end local v2    # "cc":J
    .local v29, "cc":J
    const/4 v2, 0x3

    aget v3, p0, v2

    const/16 v31, 0x3

    int-to-long v2, v3

    and-long v2, v2, v23

    add-long v2, v2, v18

    add-long v2, v29, v2

    .line 167
    .end local v29    # "cc":J
    .restart local v2    # "cc":J
    move-wide/from16 v29, v4

    .end local v4    # "z2":J
    .local v29, "z2":J
    long-to-int v4, v2

    aput v4, v0, v31

    .line 168
    shr-long v2, v2, v21

    .line 170
    sub-long v16, v16, v26

    .line 171
    sub-long v18, v18, v6

    .line 173
    const/4 v4, 0x4

    aget v5, p0, v4

    const/16 v32, 0x4

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v16

    add-long/2addr v2, v4

    .line 174
    long-to-int v4, v2

    aput v4, v0, v32

    .line 175
    shr-long v2, v2, v21

    .line 176
    const/4 v4, 0x5

    aget v5, p0, v4

    const/16 v32, 0x5

    int-to-long v4, v5

    and-long v4, v4, v23

    add-long v4, v4, v18

    add-long/2addr v2, v4

    .line 177
    long-to-int v4, v2

    aput v4, v0, v32

    .line 178
    shr-long v2, v2, v21

    .line 180
    add-long v4, v29, v2

    .line 182
    .end local v29    # "z2":J
    .restart local v4    # "z2":J
    move-wide/from16 v29, v2

    .end local v2    # "cc":J
    .local v29, "cc":J
    int-to-long v2, v1

    and-long v2, v2, v23

    add-long v2, v29, v2

    .line 183
    .end local v29    # "cc":J
    .restart local v2    # "cc":J
    move/from16 v29, v1

    .end local v1    # "z0":I
    .local v29, "z0":I
    long-to-int v1, v2

    aput v1, v0, v22

    .line 184
    shr-long v1, v2, v21

    .line 185
    .end local v2    # "cc":J
    .local v1, "cc":J
    const-wide/16 v33, 0x0

    cmp-long v3, v1, v33

    if-eqz v3, :cond_0

    .line 187
    aget v3, v0, v25

    move-wide/from16 v35, v1

    .end local v1    # "cc":J
    .local v35, "cc":J
    int-to-long v1, v3

    and-long v1, v1, v23

    add-long v1, v35, v1

    .line 188
    .end local v35    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v3, v1

    aput v3, v0, v25

    .line 189
    shr-long v22, v1, v21

    add-long v4, v4, v22

    goto :goto_0

    .line 185
    :cond_0
    move-wide/from16 v35, v1

    .line 191
    :goto_0
    long-to-int v3, v4

    aput v3, v0, v28

    .line 192
    shr-long v1, v4, v21

    .line 196
    cmp-long v3, v1, v33

    if-eqz v3, :cond_1

    move-wide/from16 v20, v1

    const/4 v1, 0x3

    const/4 v3, 0x6

    .end local v1    # "cc":J
    .restart local v20    # "cc":J
    invoke-static {v3, v0, v1}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .end local v20    # "cc":J
    .restart local v1    # "cc":J
    :cond_1
    move-wide/from16 v20, v1

    .end local v1    # "cc":J
    .restart local v20    # "cc":J
    :goto_1
    aget v1, v0, v32

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 197
    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    :cond_2
    invoke-static {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 201
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

    .line 205
    const-wide/16 v0, 0x0

    .line 207
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_1

    .line 209
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 211
    .local v4, "xx06":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 212
    long-to-int v9, v0

    aput v9, p1, v8

    .line 213
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 214
    cmp-long v9, v0, v2

    if-eqz v9, :cond_0

    .line 216
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 217
    long-to-int v10, v0

    aput v10, p1, v9

    .line 218
    shr-long/2addr v0, v8

    .line 220
    :cond_0
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 221
    long-to-int v6, v0

    aput v6, p1, v9

    .line 222
    shr-long/2addr v0, v8

    .line 227
    .end local v4    # "xx06":J
    :cond_1
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p1, v3}, Lorg/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 228
    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 230
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 232
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

    .line 236
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 237
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 238
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 239
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

    .line 245
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 246
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 247
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 249
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 251
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 252
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_0

    .line 254
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

    .line 308
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 309
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 310
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 311
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 313
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 314
    long-to-int v10, v1

    aput v10, p0, v9

    .line 315
    shr-long/2addr v1, v0

    .line 317
    :cond_0
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 318
    long-to-int v3, v1

    aput v3, p0, v9

    .line 319
    shr-long v0, v1, v0

    .line 320
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_1

    .line 322
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 324
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

    .line 258
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 259
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 261
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    .line 263
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

    .line 267
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 268
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 270
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v2, v3, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 275
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

    .line 279
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 280
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 282
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 284
    :cond_1
    return-void
.end method

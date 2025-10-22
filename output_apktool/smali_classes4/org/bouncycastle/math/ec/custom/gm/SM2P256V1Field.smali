.class public Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;
.super Ljava/lang/Object;
.source "SM2P256V1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7s1:I = 0x7fffffff

.field private static final PExt:[I

.field private static final PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        -0x2
        0x1
        0x1
        -0x2
        0x0
        0x2
        -0x2
        -0x3
        0x3
        -0x2
        -0x1
        -0x1
        0x0
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

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

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

    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

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

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

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

    .line 282
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 283
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 284
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 285
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 287
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 288
    long-to-int v10, v1

    aput v10, p0, v9

    .line 289
    shr-long/2addr v1, v0

    .line 291
    :cond_0
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 292
    long-to-int v10, v1

    aput v10, p0, v9

    .line 293
    shr-long/2addr v1, v0

    .line 294
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 295
    long-to-int v10, v1

    aput v10, p0, v9

    .line 296
    shr-long/2addr v1, v0

    .line 297
    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 299
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 300
    long-to-int v8, v1

    aput v8, p0, v7

    .line 301
    shr-long/2addr v1, v0

    .line 302
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 303
    long-to-int v8, v1

    aput v8, p0, v7

    .line 304
    shr-long/2addr v1, v0

    .line 305
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 306
    long-to-int v8, v1

    aput v8, p0, v7

    .line 307
    shr-long/2addr v1, v0

    .line 309
    :cond_1
    const/4 v0, 0x7

    aget v7, p0, v0

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 310
    long-to-int v3, v1

    aput v3, p0, v0

    .line 312
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

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

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
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

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
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 95
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

    .line 99
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 100
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_0

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 104
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

    .line 108
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 116
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

    .line 126
    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 127
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

    .line 133
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 135
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 136
    return-void
.end method

.method public static reduce([I[I)V
    .locals 40
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

    .line 140
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

    .line 141
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

    .line 143
    .local v1, "xx15":J
    add-long v20, v18, v5

    .line 144
    .local v20, "t0":J
    add-long v22, v7, v9

    .line 145
    .local v22, "t1":J
    add-long v24, v11, v1

    .line 146
    .local v24, "t2":J
    add-long v26, v13, v3

    .line 147
    .local v26, "t3":J
    const/4 v15, 0x1

    shl-long v28, v1, v15

    add-long v28, v26, v28

    .line 149
    .local v28, "t4":J
    add-long v30, v20, v26

    .line 150
    .local v30, "ts":J
    add-long v32, v22, v24

    add-long v32, v32, v30

    .line 152
    .local v32, "tt":J
    const-wide/16 v34, 0x0

    .line 153
    .local v34, "cc":J
    const/16 v36, 0x0

    const/16 v37, 0x1

    aget v15, p0, v36

    move-wide/from16 v38, v1

    .end local v1    # "xx15":J
    .local v38, "xx15":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v32

    add-long/2addr v1, v13

    add-long/2addr v1, v3

    add-long v1, v1, v38

    add-long v1, v34, v1

    .line 154
    .end local v34    # "cc":J
    .local v1, "cc":J
    long-to-int v15, v1

    aput v15, v0, v36

    .line 155
    const/16 v15, 0x20

    shr-long/2addr v1, v15

    .line 156
    const/16 v34, 0x20

    aget v15, p0, v37

    move-wide/from16 v35, v1

    .end local v1    # "cc":J
    .local v35, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v32

    sub-long v1, v1, v18

    add-long/2addr v1, v3

    add-long v1, v1, v38

    add-long v1, v35, v1

    .line 157
    .end local v35    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v37

    .line 158
    shr-long v1, v1, v34

    .line 159
    const/16 v35, 0x2

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .local v36, "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    sub-long v1, v1, v30

    add-long v1, v36, v1

    .line 160
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 161
    shr-long v1, v1, v34

    .line 162
    const/16 v35, 0x3

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .restart local v36    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v32

    sub-long/2addr v1, v5

    sub-long/2addr v1, v7

    add-long/2addr v1, v13

    add-long v1, v36, v1

    .line 163
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 164
    shr-long v1, v1, v34

    .line 165
    const/16 v35, 0x4

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .restart local v36    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v32

    sub-long v1, v1, v22

    sub-long v1, v1, v18

    add-long/2addr v1, v3

    add-long v1, v36, v1

    .line 166
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 167
    shr-long v1, v1, v34

    .line 168
    const/16 v35, 0x5

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .restart local v36    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v28

    add-long/2addr v1, v7

    add-long v1, v36, v1

    .line 169
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 170
    shr-long v1, v1, v34

    .line 171
    const/16 v35, 0x6

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .restart local v36    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long/2addr v1, v9

    add-long/2addr v1, v3

    add-long v1, v1, v38

    add-long v1, v36, v1

    .line 172
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 173
    shr-long v1, v1, v34

    .line 174
    const/16 v35, 0x7

    aget v15, p0, v35

    move-wide/from16 v36, v1

    .end local v1    # "cc":J
    .restart local v36    # "cc":J
    int-to-long v1, v15

    and-long v1, v1, v16

    add-long v1, v1, v32

    add-long v1, v1, v28

    add-long/2addr v1, v11

    add-long v1, v36, v1

    .line 175
    .end local v36    # "cc":J
    .restart local v1    # "cc":J
    long-to-int v15, v1

    aput v15, v0, v35

    .line 176
    shr-long v1, v1, v34

    .line 180
    long-to-int v15, v1

    invoke-static {v15, v0}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->reduce32(I[I)V

    .line 181
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 14
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

    .line 185
    const-wide/16 v0, 0x0

    .line 187
    .local v0, "cc":J
    const/4 v2, 0x1

    const/4 v3, 0x7

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_2

    .line 189
    int-to-long v6, p0

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 191
    .local v6, "xx08":J
    const/4 v10, 0x0

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v11, v6

    add-long/2addr v0, v11

    .line 192
    long-to-int v11, v0

    aput v11, p1, v10

    .line 193
    const/16 v10, 0x20

    shr-long/2addr v0, v10

    .line 194
    cmp-long v11, v0, v4

    if-eqz v11, :cond_0

    .line 196
    aget v11, p1, v2

    int-to-long v11, v11

    and-long/2addr v11, v8

    add-long/2addr v0, v11

    .line 197
    long-to-int v11, v0

    aput v11, p1, v2

    .line 198
    shr-long/2addr v0, v10

    .line 200
    :cond_0
    const/4 v11, 0x2

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v8

    sub-long/2addr v12, v6

    add-long/2addr v0, v12

    .line 201
    long-to-int v12, v0

    aput v12, p1, v11

    .line 202
    shr-long/2addr v0, v10

    .line 203
    const/4 v11, 0x3

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v8

    add-long/2addr v12, v6

    add-long/2addr v0, v12

    .line 204
    long-to-int v12, v0

    aput v12, p1, v11

    .line 205
    shr-long/2addr v0, v10

    .line 206
    cmp-long v11, v0, v4

    if-eqz v11, :cond_1

    .line 208
    const/4 v11, 0x4

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v8

    add-long/2addr v0, v12

    .line 209
    long-to-int v12, v0

    aput v12, p1, v11

    .line 210
    shr-long/2addr v0, v10

    .line 211
    const/4 v11, 0x5

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v8

    add-long/2addr v0, v12

    .line 212
    long-to-int v12, v0

    aput v12, p1, v11

    .line 213
    shr-long/2addr v0, v10

    .line 214
    const/4 v11, 0x6

    aget v12, p1, v11

    int-to-long v12, v12

    and-long/2addr v12, v8

    add-long/2addr v0, v12

    .line 215
    long-to-int v12, v0

    aput v12, p1, v11

    .line 216
    shr-long/2addr v0, v10

    .line 218
    :cond_1
    aget v11, p1, v3

    int-to-long v11, v11

    and-long/2addr v8, v11

    add-long/2addr v8, v6

    add-long/2addr v0, v8

    .line 219
    long-to-int v8, v0

    aput v8, p1, v3

    .line 220
    shr-long/2addr v0, v10

    .line 225
    .end local v6    # "xx08":J
    :cond_2
    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    aget v3, p1, v3

    ushr-int/lit8 v2, v3, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_4

    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v2}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 227
    :cond_3
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 229
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

    .line 233
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 234
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 235
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 236
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

    .line 242
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 243
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 244
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    .line 246
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 248
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 249
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->reduce([I[I)V

    goto :goto_0

    .line 251
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

    .line 316
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 317
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 318
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 319
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_0

    .line 321
    const/4 v9, 0x1

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
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 326
    long-to-int v10, v1

    aput v10, p0, v9

    .line 327
    shr-long/2addr v1, v0

    .line 328
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 329
    long-to-int v10, v1

    aput v10, p0, v9

    .line 330
    shr-long/2addr v1, v0

    .line 331
    cmp-long v9, v1, v7

    if-eqz v9, :cond_1

    .line 333
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 334
    long-to-int v8, v1

    aput v8, p0, v7

    .line 335
    shr-long/2addr v1, v0

    .line 336
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 337
    long-to-int v8, v1

    aput v8, p0, v7

    .line 338
    shr-long/2addr v1, v0

    .line 339
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 340
    long-to-int v8, v1

    aput v8, p0, v7

    .line 341
    shr-long/2addr v1, v0

    .line 343
    :cond_1
    const/4 v0, 0x7

    aget v7, p0, v0

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 344
    long-to-int v3, v1

    aput v3, p0, v0

    .line 346
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

    .line 255
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 256
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 258
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->subPInvFrom([I)V

    .line 260
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

    .line 264
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 265
    .local v1, "c":I
    if-eqz v1, :cond_0

    .line 267
    sget-object v2, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 269
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

    .line 273
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 274
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7fffffff

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 276
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/gm/SM2P256V1Field;->addPInvTo([I)V

    .line 278
    :cond_1
    return-void
.end method

.class public Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;
.super Ljava/lang/Object;
.source "SecT113Field.java"


# static fields
.field private static final M49:J = 0x1ffffffffffffL

.field private static final M57:J = 0x1ffffffffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J
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

    .line 16
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 17
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 18
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 5
    .param p0, "xx"    # [J
    .param p1, "yy"    # [J
    .param p2, "zz"    # [J
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

    .line 22
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 23
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 24
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 25
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 26
    return-void
.end method

.method public static addOne([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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

    .line 30
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 31
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 32
    return-void
.end method

.method private static addTo([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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

    .line 36
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 37
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 38
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1
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
    const/16 v0, 0x71

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger64(ILjava/math/BigInteger;)[J

    move-result-object v0

    return-object v0
.end method

.method public static halfTrace([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    .line 49
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat128;->copy64([J[J)V

    .line 50
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x71

    if-ge v1, v2, :cond_0

    .line 52
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 53
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 54
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 55
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 56
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addTo([J[J)V

    .line 50
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 31
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J
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

    .line 178
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "f0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 179
    .local v4, "f1":J
    const/16 v6, 0x39

    ushr-long v7, v1, v6

    const/4 v9, 0x7

    shl-long v10, v4, v9

    xor-long/2addr v7, v10

    const-wide v10, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long v13, v7, v10

    .line 180
    .end local v4    # "f1":J
    .local v13, "f1":J
    and-long v16, v1, v10

    .line 182
    .end local v1    # "f0":J
    .local v16, "f0":J
    aget-wide v1, p1, v0

    .local v1, "g0":J
    aget-wide v4, p1, v3

    .line 183
    .local v4, "g1":J
    ushr-long v7, v1, v6

    shl-long v18, v4, v9

    xor-long v7, v7, v18

    and-long v4, v7, v10

    .line 184
    and-long v18, v1, v10

    .line 186
    .end local v1    # "g0":J
    .local v18, "g0":J
    move-object/from16 v15, p2

    .line 187
    .local v15, "u":[J
    const/4 v1, 0x6

    new-array v1, v1, [J

    .line 189
    .local v1, "H":[J
    const/16 v21, 0x0

    move-object/from16 v20, v1

    .end local v1    # "H":[J
    .local v20, "H":[J
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw([JJJ[JI)V

    .line 190
    move-wide/from16 v1, v16

    move-wide/from16 v7, v18

    move-object/from16 v17, v20

    .end local v16    # "f0":J
    .end local v18    # "g0":J
    .end local v20    # "H":[J
    .local v1, "f0":J
    .local v7, "g0":J
    .local v17, "H":[J
    const/16 v18, 0x2

    move-object v12, v15

    move-wide v15, v4

    .end local v4    # "g1":J
    .local v12, "u":[J
    .local v15, "g1":J
    invoke-static/range {v12 .. v18}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw([JJJ[JI)V

    .line 191
    move-object/from16 v20, v12

    .end local v12    # "u":[J
    .local v20, "u":[J
    xor-long v21, v1, v13

    xor-long v23, v7, v15

    const/16 v26, 0x4

    move-object/from16 v25, v17

    .end local v17    # "H":[J
    .local v25, "H":[J
    invoke-static/range {v20 .. v26}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMulw([JJJ[JI)V

    .line 193
    .end local v25    # "H":[J
    .restart local v17    # "H":[J
    aget-wide v4, v17, v3

    const/4 v10, 0x2

    aget-wide v11, v17, v10

    xor-long/2addr v4, v11

    .line 194
    .local v4, "r":J
    aget-wide v11, v17, v0

    .line 195
    .local v11, "z0":J
    const/16 v18, 0x3

    aget-wide v21, v17, v18

    .line 196
    .local v21, "z3":J
    const/16 v19, 0x4

    aget-wide v23, v17, v19

    xor-long v23, v23, v11

    xor-long v23, v23, v4

    .line 197
    .local v23, "z1":J
    const/16 v19, 0x5

    aget-wide v25, v17, v19

    xor-long v25, v25, v21

    xor-long v25, v25, v4

    .line 199
    .local v25, "z2":J
    shl-long v27, v23, v6

    xor-long v27, v11, v27

    aput-wide v27, p2, v0

    .line 200
    ushr-long v27, v23, v9

    const/16 v0, 0x32

    shl-long v29, v25, v0

    xor-long v27, v27, v29

    aput-wide v27, p2, v3

    .line 201
    const/16 v0, 0xe

    ushr-long v27, v25, v0

    const/16 v0, 0x2b

    shl-long v29, v21, v0

    xor-long v27, v27, v29

    aput-wide v27, p2, v10

    .line 202
    const/16 v0, 0x15

    ushr-long v9, v21, v0

    aput-wide v9, p2, v18

    .line 203
    return-void
.end method

.method protected static implMulw([JJJ[JI)V
    .locals 17
    .param p0, "u"    # [J
    .param p1, "x"    # J
    .param p3, "y"    # J
    .param p5, "z"    # [J
    .param p6, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "x",
            "y",
            "z",
            "zOff"
        }
    .end annotation

    .line 211
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 212
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 213
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 214
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 215
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 216
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 217
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v5, 0x7

    aput-wide v2, p0, v5

    .line 219
    long-to-int v2, v0

    .line 220
    .local v2, "j":I
    const-wide/16 v7, 0x0

    .local v7, "h":J
    and-int/lit8 v3, v2, 0x7

    aget-wide v9, p0, v3

    .line 221
    .local v9, "l":J
    const/16 v3, 0x30

    .line 224
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 225
    and-int/lit8 v11, v2, 0x7

    aget-wide v11, p0, v11

    ushr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v5

    aget-wide v13, p0, v13

    shl-long/2addr v13, v6

    xor-long/2addr v11, v13

    ushr-int/lit8 v13, v2, 0x6

    and-int/2addr v13, v5

    aget-wide v13, p0, v13

    shl-long/2addr v13, v4

    xor-long/2addr v11, v13

    .line 228
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 229
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 231
    add-int/lit8 v3, v3, -0x9

    if-gtz v3, :cond_0

    .line 233
    const-wide v13, 0x100804020100800L

    and-long/2addr v13, v0

    shl-long v15, p3, v5

    const/16 v4, 0x3f

    shr-long/2addr v15, v4

    and-long/2addr v13, v15

    const/16 v4, 0x8

    ushr-long/2addr v13, v4

    xor-long/2addr v7, v13

    .line 237
    const-wide v13, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v13, v9

    aput-wide v13, p5, p6

    .line 238
    add-int/lit8 v4, p6, 0x1

    const/16 v6, 0x39

    ushr-long v13, v9, v6

    shl-long v5, v7, v5

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 239
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "zz"    # [J
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

    .line 243
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 244
    return-void
.end method

.method public static invert([J[J)V
    .locals 3
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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

    .line 62
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v0

    .line 70
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->create64()[J

    move-result-object v1

    .line 72
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    .line 73
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 74
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    .line 75
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 76
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 77
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 78
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    .line 79
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 80
    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 81
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 82
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 83
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 84
    const/16 v2, 0x1c

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 85
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 86
    const/16 v2, 0x38

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->squareN([JI[J)V

    .line 87
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->multiply([J[J[J)V

    .line 88
    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->square([J[J)V

    .line 89
    return-void

    .line 64
    .end local v0    # "t0":[J
    .end local v1    # "t1":[J
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static multiply([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "z"    # [J
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

    .line 93
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 94
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMultiply([J[J[J)V

    .line 95
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 96
    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .param p2, "zz"    # [J
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

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 101
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implMultiply([J[J[J)V

    .line 102
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addExt([J[J[J)V

    .line 103
    return-void
.end method

.method public static reduce([J[J)V
    .locals 18
    .param p0, "xx"    # [J
    .param p1, "z"    # [J
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

    .line 107
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "x1":J
    const/4 v6, 0x2

    aget-wide v6, p0, v6

    .local v6, "x2":J
    const/4 v8, 0x3

    aget-wide v8, p0, v8

    .line 109
    .local v8, "x3":J
    const/16 v10, 0xf

    shl-long v11, v8, v10

    const/16 v13, 0x18

    shl-long v14, v8, v13

    xor-long/2addr v11, v14

    xor-long/2addr v4, v11

    .line 110
    const/16 v11, 0x31

    ushr-long v14, v8, v11

    const/16 v12, 0x28

    ushr-long v16, v8, v12

    xor-long v14, v14, v16

    xor-long/2addr v6, v14

    .line 112
    shl-long v14, v6, v10

    shl-long v16, v6, v13

    xor-long v14, v14, v16

    xor-long/2addr v1, v14

    .line 113
    ushr-long v13, v6, v11

    ushr-long v15, v6, v12

    xor-long/2addr v13, v15

    xor-long/2addr v4, v13

    .line 115
    ushr-long v10, v4, v11

    .line 116
    .local v10, "t":J
    xor-long v12, v1, v10

    const/16 v14, 0x9

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    aput-wide v12, p1, v0

    .line 117
    const-wide v12, 0x1ffffffffffffL

    and-long/2addr v12, v4

    aput-wide v12, p1, v3

    .line 118
    return-void
.end method

.method public static reduce15([JI)V
    .locals 8
    .param p0, "z"    # [J
    .param p1, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "zOff"
        }
    .end annotation

    .line 122
    add-int/lit8 v0, p1, 0x1

    aget-wide v0, p0, v0

    .local v0, "z1":J
    const/16 v2, 0x31

    ushr-long v2, v0, v2

    .line 123
    .local v2, "t":J
    aget-wide v4, p0, p1

    const/16 v6, 0x9

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 124
    add-int/lit8 v4, p1, 0x1

    const-wide v5, 0x1ffffffffffffL

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 125
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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

    .line 129
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    .local v1, "u0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    .line 130
    .local v4, "u1":J
    const-wide v6, 0xffffffffL

    and-long/2addr v6, v1

    const/16 v8, 0x20

    shl-long v9, v4, v8

    or-long/2addr v6, v9

    .line 131
    .local v6, "e0":J
    ushr-long v8, v1, v8

    const-wide v10, -0x100000000L

    and-long/2addr v10, v4

    or-long/2addr v8, v10

    .line 133
    .local v8, "c0":J
    const/16 v10, 0x39

    shl-long v10, v8, v10

    xor-long/2addr v10, v6

    const/4 v12, 0x5

    shl-long v12, v8, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 134
    const/4 v0, 0x7

    ushr-long v10, v8, v0

    const/16 v0, 0x3b

    ushr-long v12, v8, v0

    xor-long/2addr v10, v12

    aput-wide v10, p1, v3

    .line 135
    return-void
.end method

.method public static square([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "z"    # [J
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

    .line 139
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    .line 140
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 141
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 142
    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "zz"    # [J
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

    .line 146
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    .line 147
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 148
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->addExt([J[J[J)V

    .line 149
    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "n"    # I
    .param p2, "z"    # [J
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

    .line 155
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt64()[J

    move-result-object v0

    .line 156
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 157
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    .line 159
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 161
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->implSquare([J[J)V

    .line 162
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT113Field;->reduce([J[J)V

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 2
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

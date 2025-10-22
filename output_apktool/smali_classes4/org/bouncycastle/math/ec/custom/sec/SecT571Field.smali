.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;
.source "SecT571Field.java"


# static fields
.field private static final M59:J = 0x7ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add([JI[JI[JI)V
    .locals 6
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 29
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
    .end local v0    # "i":I
    :cond_0
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

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 21
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static addBothTo([JI[JI[JI)V
    .locals 8
    .param p0, "x"    # [J
    .param p1, "xOff"    # I
    .param p2, "y"    # [J
    .param p3, "yOff"    # I
    .param p4, "z"    # [J
    .param p5, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "y",
            "yOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 43
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 45
    add-int v1, p5, v0

    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static addBothTo([J[J[J)V
    .locals 7
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

    .line 35
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 37
    aget-wide v1, p2, v0

    aget-wide v3, p0, v0

    aget-wide v5, p1, v0

    xor-long/2addr v3, v5

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "i":I
    :cond_0
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

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    .line 53
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
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

    .line 59
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 60
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 62
    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v0    # "i":I
    :cond_0
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

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    .line 70
    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    :cond_0
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

    .line 76
    const/16 v0, 0x23b

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

    .line 81
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 83
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat576;->copy64([J[J)V

    .line 84
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x23b

    if-ge v1, v2, :cond_0

    .line 86
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 87
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 88
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 89
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 90
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addTo([J[J)V

    .line 84
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 92
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 28
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

    .line 296
    const/16 v0, 0x10

    new-array v1, v0, [J

    .line 297
    .local v1, "u":[J
    const/4 v2, 0x0

    move v8, v2

    .local v8, "i":I
    :goto_0
    const/16 v2, 0x9

    if-ge v8, v2, :cond_0

    .line 299
    aget-wide v2, p0, v8

    aget-wide v4, p1, v8

    shl-int/lit8 v7, v8, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 297
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 302
    .end local v8    # "i":I
    :cond_0
    const/4 v8, 0x0

    aget-wide v3, p2, v8

    .local v3, "v0":J
    const/4 v9, 0x1

    aget-wide v5, p2, v9

    .line 303
    .local v5, "v1":J
    const/4 v10, 0x2

    aget-wide v11, p2, v10

    xor-long/2addr v3, v11

    xor-long v11, v3, v5

    aput-wide v11, p2, v9

    const/4 v11, 0x3

    aget-wide v12, p2, v11

    xor-long/2addr v5, v12

    .line 304
    const/4 v12, 0x4

    aget-wide v13, p2, v12

    xor-long/2addr v3, v13

    xor-long v13, v3, v5

    aput-wide v13, p2, v10

    const/4 v13, 0x5

    aget-wide v14, p2, v13

    xor-long/2addr v5, v14

    .line 305
    const/4 v14, 0x6

    aget-wide v15, p2, v14

    xor-long/2addr v3, v15

    xor-long v15, v3, v5

    aput-wide v15, p2, v11

    const/4 v15, 0x7

    aget-wide v16, p2, v15

    xor-long v5, v5, v16

    .line 306
    const/16 v16, 0x8

    aget-wide v17, p2, v16

    xor-long v3, v3, v17

    xor-long v17, v3, v5

    aput-wide v17, p2, v12

    aget-wide v17, p2, v2

    xor-long v5, v5, v17

    .line 307
    const/16 v7, 0xa

    aget-wide v17, p2, v7

    xor-long v3, v3, v17

    xor-long v17, v3, v5

    aput-wide v17, p2, v13

    const/16 v17, 0xb

    aget-wide v18, p2, v17

    xor-long v5, v5, v18

    .line 308
    const/16 v18, 0xc

    aget-wide v19, p2, v18

    xor-long v3, v3, v19

    xor-long v19, v3, v5

    aput-wide v19, p2, v14

    const/16 v19, 0xd

    aget-wide v20, p2, v19

    xor-long v5, v5, v20

    .line 309
    const/16 v20, 0xe

    aget-wide v21, p2, v20

    xor-long v3, v3, v21

    xor-long v21, v3, v5

    aput-wide v21, p2, v15

    const/16 v21, 0xf

    aget-wide v22, p2, v21

    xor-long v5, v5, v22

    .line 310
    aget-wide v22, p2, v0

    xor-long v22, v3, v22

    .end local v3    # "v0":J
    .local v22, "v0":J
    xor-long v3, v22, v5

    aput-wide v3, p2, v16

    const/16 v3, 0x11

    aget-wide v24, p2, v3

    xor-long v24, v5, v24

    .line 312
    .end local v5    # "v1":J
    .local v24, "v1":J
    xor-long v26, v22, v24

    .line 313
    .local v26, "w":J
    aget-wide v4, p2, v8

    xor-long v4, v4, v26

    aput-wide v4, p2, v2

    .line 314
    aget-wide v4, p2, v9

    xor-long v4, v4, v26

    aput-wide v4, p2, v7

    .line 315
    aget-wide v4, p2, v10

    xor-long v4, v4, v26

    aput-wide v4, p2, v17

    .line 316
    aget-wide v4, p2, v11

    xor-long v4, v4, v26

    aput-wide v4, p2, v18

    .line 317
    aget-wide v4, p2, v12

    xor-long v4, v4, v26

    aput-wide v4, p2, v19

    .line 318
    aget-wide v4, p2, v13

    xor-long v4, v4, v26

    aput-wide v4, p2, v20

    .line 319
    aget-wide v4, p2, v14

    xor-long v4, v4, v26

    aput-wide v4, p2, v21

    .line 320
    aget-wide v4, p2, v15

    xor-long v4, v4, v26

    aput-wide v4, p2, v0

    .line 321
    aget-wide v4, p2, v16

    xor-long v4, v4, v26

    aput-wide v4, p2, v3

    .line 323
    aget-wide v2, p0, v8

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/4 v7, 0x1

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 325
    aget-wide v2, p0, v8

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    const/4 v7, 0x2

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 327
    aget-wide v2, p0, v8

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 328
    aget-wide v2, p0, v9

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    const/4 v7, 0x3

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 330
    aget-wide v2, p0, v8

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    const/4 v7, 0x4

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 331
    aget-wide v2, p0, v9

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/4 v7, 0x4

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 333
    aget-wide v2, p0, v8

    aget-wide v4, p0, v13

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v13

    xor-long/2addr v4, v6

    const/4 v7, 0x5

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 334
    aget-wide v2, p0, v9

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    const/4 v7, 0x5

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 335
    aget-wide v2, p0, v10

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/4 v7, 0x5

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 337
    aget-wide v2, p0, v8

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/4 v7, 0x6

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 338
    aget-wide v2, p0, v9

    aget-wide v4, p0, v13

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v13

    xor-long/2addr v4, v6

    const/4 v7, 0x6

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 339
    aget-wide v2, p0, v10

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    const/4 v7, 0x6

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 341
    aget-wide v2, p0, v8

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/4 v7, 0x7

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 342
    aget-wide v2, p0, v9

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/4 v7, 0x7

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 343
    aget-wide v2, p0, v10

    aget-wide v4, p0, v13

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v13

    xor-long/2addr v4, v6

    const/4 v7, 0x7

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 344
    aget-wide v2, p0, v11

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    const/4 v7, 0x7

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 346
    aget-wide v2, p0, v8

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0x8

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 347
    aget-wide v2, p0, v9

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0x8

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 348
    aget-wide v2, p0, v10

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/16 v7, 0x8

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 349
    aget-wide v2, p0, v11

    aget-wide v4, p0, v13

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v13

    xor-long/2addr v4, v6

    const/16 v7, 0x8

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 351
    aget-wide v2, p0, v9

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v9

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 352
    aget-wide v2, p0, v10

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 353
    aget-wide v2, p0, v11

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 354
    aget-wide v2, p0, v12

    aget-wide v4, p0, v13

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v13

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 356
    aget-wide v2, p0, v10

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 357
    aget-wide v2, p0, v11

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 358
    aget-wide v2, p0, v12

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 360
    aget-wide v2, p0, v11

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 361
    aget-wide v2, p0, v12

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 362
    aget-wide v2, p0, v13

    aget-wide v4, p0, v14

    xor-long/2addr v2, v4

    aget-wide v4, p1, v13

    aget-wide v6, p1, v14

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 364
    aget-wide v2, p0, v12

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xc

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 365
    aget-wide v2, p0, v13

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v13

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0xc

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 367
    aget-wide v2, p0, v13

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v13

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xd

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 368
    aget-wide v2, p0, v14

    aget-wide v4, p0, v15

    xor-long/2addr v2, v4

    aget-wide v4, p1, v14

    aget-wide v6, p1, v15

    xor-long/2addr v4, v6

    const/16 v7, 0xd

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 370
    aget-wide v2, p0, v14

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v14

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xe

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 372
    aget-wide v2, p0, v15

    aget-wide v4, p0, v16

    xor-long/2addr v2, v4

    aget-wide v4, p1, v15

    aget-wide v6, p1, v16

    xor-long/2addr v4, v6

    const/16 v7, 0xf

    move-object/from16 v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    .line 373
    return-void
.end method

.method protected static implMultiplyPrecomp([J[J[J)V
    .locals 19
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "precomp",
            "zz"
        }
    .end annotation

    .line 377
    const/16 v0, 0xf

    .line 383
    .local v0, "MASK":I
    const/16 v1, 0x38

    .local v1, "k":I
    :goto_0
    const/16 v2, 0x9

    if-ltz v1, :cond_1

    .line 385
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 387
    aget-wide v4, p0, v3

    ushr-long/2addr v4, v1

    long-to-int v5, v4

    .line 388
    .local v5, "aVal":I
    and-int v4, v5, v0

    .line 389
    .local v4, "u":I
    ushr-int/lit8 v6, v5, 0x4

    and-int/2addr v6, v0

    .line 390
    .local v6, "v":I
    mul-int/lit8 v8, v4, 0x9

    add-int/lit8 v7, v6, 0x10

    mul-int/lit8 v10, v7, 0x9

    add-int/lit8 v12, v3, -0x1

    move-object/from16 v9, p1

    move-object/from16 v7, p1

    move-object/from16 v11, p2

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    .line 385
    .end local v4    # "u":I
    .end local v5    # "aVal":I
    .end local v6    # "v":I
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 392
    .end local v3    # "j":I
    :cond_0
    const/16 v7, 0x8

    const-wide/16 v8, 0x0

    const/16 v4, 0x10

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    .line 383
    add-int/lit8 v1, v1, -0x8

    goto :goto_0

    .line 395
    .end local v1    # "k":I
    :cond_1
    const/16 v1, 0x38

    .restart local v1    # "k":I
    :goto_2
    if-ltz v1, :cond_4

    .line 397
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_3
    if-ge v3, v2, :cond_2

    .line 399
    aget-wide v4, p0, v3

    ushr-long/2addr v4, v1

    long-to-int v5, v4

    .line 400
    .restart local v5    # "aVal":I
    and-int v4, v5, v0

    .line 401
    .restart local v4    # "u":I
    ushr-int/lit8 v6, v5, 0x4

    and-int/2addr v6, v0

    .line 402
    .restart local v6    # "v":I
    mul-int/lit8 v14, v4, 0x9

    add-int/lit8 v7, v6, 0x10

    mul-int/lit8 v16, v7, 0x9

    move-object/from16 v15, p1

    move-object/from16 v13, p1

    move-object/from16 v17, p2

    move/from16 v18, v3

    .end local v3    # "j":I
    .local v18, "j":I
    invoke-static/range {v13 .. v18}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    .line 397
    .end local v4    # "u":I
    .end local v5    # "aVal":I
    .end local v6    # "v":I
    add-int/lit8 v3, v18, 0x2

    .end local v18    # "j":I
    .restart local v3    # "j":I
    goto :goto_3

    :cond_2
    move/from16 v18, v3

    .line 404
    .end local v3    # "j":I
    if-lez v1, :cond_3

    .line 406
    const/16 v7, 0x8

    const-wide/16 v8, 0x0

    const/16 v4, 0x12

    const/4 v6, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    .line 395
    :cond_3
    add-int/lit8 v1, v1, -0x8

    goto :goto_2

    .line 409
    .end local v1    # "k":I
    :cond_4
    return-void
.end method

.method protected static implMulwAcc([JJJ[JI)V
    .locals 15
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

    .line 414
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 415
    const/4 v3, 0x2

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_0

    .line 417
    ushr-int/lit8 v4, v3, 0x1

    aget-wide v4, p0, v4

    shl-long/2addr v4, v2

    aput-wide v4, p0, v3

    .line 418
    add-int/lit8 v4, v3, 0x1

    aget-wide v5, p0, v3

    xor-long v5, v5, p3

    aput-wide v5, p0, v4

    .line 415
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 421
    .end local v3    # "i":I
    :cond_0
    long-to-int v3, v0

    .line 422
    .local v3, "j":I
    const-wide/16 v4, 0x0

    .local v4, "h":J
    and-int/lit8 v6, v3, 0xf

    aget-wide v6, p0, v6

    ushr-int/lit8 v8, v3, 0x4

    and-int/lit8 v8, v8, 0xf

    aget-wide v8, p0, v8

    const/4 v10, 0x4

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    .line 424
    .local v6, "l":J
    const/16 v8, 0x38

    .line 427
    .local v8, "k":I
    :cond_1
    ushr-long v11, v0, v8

    long-to-int v3, v11

    .line 428
    and-int/lit8 v9, v3, 0xf

    aget-wide v11, p0, v9

    ushr-int/lit8 v9, v3, 0x4

    and-int/lit8 v9, v9, 0xf

    aget-wide v13, p0, v9

    shl-long/2addr v13, v10

    xor-long/2addr v11, v13

    .line 430
    .local v11, "g":J
    shl-long v13, v11, v8

    xor-long/2addr v6, v13

    .line 431
    neg-int v9, v8

    ushr-long v13, v11, v9

    xor-long/2addr v4, v13

    .line 433
    add-int/lit8 v8, v8, -0x8

    if-gtz v8, :cond_1

    .line 435
    const/4 v9, 0x0

    .end local p1    # "x":J
    .local v0, "x":J
    .local v9, "p":I
    :goto_1
    const/4 v10, 0x7

    if-ge v9, v10, :cond_2

    .line 437
    const-wide v13, -0x101010101010102L

    and-long/2addr v13, v0

    ushr-long v0, v13, v2

    .line 438
    shl-long v13, p3, v9

    const/16 v10, 0x3f

    shr-long/2addr v13, v10

    and-long/2addr v13, v0

    xor-long/2addr v4, v13

    .line 435
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 443
    .end local v9    # "p":I
    :cond_2
    aget-wide v9, p5, p6

    xor-long/2addr v9, v6

    aput-wide v9, p5, p6

    .line 444
    add-int/lit8 v2, p6, 0x1

    aget-wide v9, p5, v2

    xor-long/2addr v9, v4

    aput-wide v9, p5, v2

    .line 445
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

    .line 449
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 450
    return-void
.end method

.method public static invert([J[J)V
    .locals 4
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

    .line 96
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    .line 104
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    .line 105
    .local v1, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    .line 107
    .local v2, "t2":[J
    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 110
    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 111
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    .line 112
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 113
    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 114
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 115
    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 118
    const/4 v3, 0x5

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 119
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 120
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 121
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 124
    const/16 v3, 0xf

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 125
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 128
    const/16 v3, 0x1e

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 129
    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 130
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 133
    const/16 v3, 0x3c

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 134
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 135
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 136
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 139
    const/16 v3, 0xb4

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 140
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 141
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    .line 142
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 144
    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 145
    return-void

    .line 98
    .end local v0    # "t0":[J
    .end local v1    # "t1":[J
    .end local v2    # "t2":[J
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

    .line 149
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 150
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 151
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 152
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

    .line 156
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 157
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    .line 158
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 159
    return-void
.end method

.method public static multiplyPrecomp([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "precomp",
            "z"
        }
    .end annotation

    .line 163
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 164
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    .line 165
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 166
    return-void
.end method

.method public static multiplyPrecompAddToExt([J[J[J)V
    .locals 1
    .param p0, "x"    # [J
    .param p1, "precomp"    # [J
    .param p2, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "precomp",
            "zz"
        }
    .end annotation

    .line 170
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 171
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    .line 172
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 173
    return-void
.end method

.method public static precompMultiplicand([J)[J
    .locals 10
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 180
    const/16 v0, 0x90

    .line 181
    .local v0, "len":I
    shl-int/lit8 v1, v0, 0x1

    new-array v1, v1, [J

    .line 182
    .local v1, "t":[J
    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-static {p0, v2, v1, v3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    const/4 v2, 0x0

    .line 185
    .local v2, "tOff":I
    const/4 v3, 0x7

    move v8, v2

    move v9, v3

    .end local v2    # "tOff":I
    .local v8, "tOff":I
    .local v9, "i":I
    :goto_0
    if-lez v9, :cond_0

    .line 187
    add-int/lit8 v5, v8, 0x12

    .line 188
    .end local v8    # "tOff":I
    .local v5, "tOff":I
    ushr-int/lit8 v4, v5, 0x1

    move v8, v5

    .end local v5    # "tOff":I
    .restart local v8    # "tOff":I
    const-wide/16 v5, 0x0

    const/16 v2, 0x9

    move-object v7, v1

    move-object v3, v1

    .end local v1    # "t":[J
    .local v3, "t":[J
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit64(I[JIJ[JI)J

    .line 189
    .end local v3    # "t":[J
    .restart local v1    # "t":[J
    invoke-static {v1, v8}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    .line 190
    add-int/lit8 v7, v8, 0x9

    const/16 v3, 0x9

    move-object v4, v1

    move-object v6, v1

    move-object v2, v1

    move v5, v8

    .end local v1    # "t":[J
    .end local v8    # "tOff":I
    .local v2, "t":[J
    .restart local v5    # "tOff":I
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([JI[JI[JI)V

    .line 185
    .end local v2    # "t":[J
    .end local v5    # "tOff":I
    .restart local v1    # "t":[J
    .restart local v8    # "tOff":I
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 196
    .end local v9    # "i":I
    :cond_0
    const/4 v3, 0x4

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v6, v1

    move v7, v0

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    .line 198
    return-object v1
.end method

.method public static reduce([J[J)V
    .locals 21
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

    .line 203
    const/16 v0, 0x9

    aget-wide v0, p0, v0

    .line 204
    .local v0, "xx09":J
    const/16 v2, 0x11

    aget-wide v2, p0, v2

    .local v2, "u":J
    move-wide v4, v0

    .line 206
    .local v4, "v":J
    const/16 v6, 0x3b

    ushr-long v7, v2, v6

    xor-long/2addr v7, v4

    const/16 v9, 0x39

    ushr-long v10, v2, v9

    xor-long/2addr v7, v10

    const/16 v10, 0x36

    ushr-long v11, v2, v10

    xor-long/2addr v7, v11

    const/16 v11, 0x31

    ushr-long v12, v2, v11

    xor-long v0, v7, v12

    .line 207
    const/16 v7, 0x8

    aget-wide v12, p0, v7

    const/4 v8, 0x5

    shl-long v14, v2, v8

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    shl-long v15, v2, v14

    xor-long/2addr v12, v15

    const/16 v15, 0xa

    shl-long v16, v2, v15

    xor-long v12, v12, v16

    const/16 v16, 0xf

    shl-long v17, v2, v16

    xor-long v4, v12, v17

    .line 209
    const/16 v12, 0x10

    .local v12, "i":I
    :goto_0
    if-lt v12, v15, :cond_0

    .line 211
    aget-wide v2, p0, v12

    .line 212
    add-int/lit8 v13, v12, -0x8

    ushr-long v17, v2, v6

    xor-long v17, v4, v17

    ushr-long v19, v2, v9

    xor-long v17, v17, v19

    ushr-long v19, v2, v10

    xor-long v17, v17, v19

    ushr-long v19, v2, v11

    xor-long v17, v17, v19

    aput-wide v17, p1, v13

    .line 213
    add-int/lit8 v13, v12, -0x9

    aget-wide v17, p0, v13

    shl-long v19, v2, v8

    xor-long v17, v17, v19

    shl-long v19, v2, v14

    xor-long v17, v17, v19

    shl-long v19, v2, v15

    xor-long v17, v17, v19

    shl-long v19, v2, v16

    xor-long v4, v17, v19

    .line 209
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 216
    .end local v12    # "i":I
    :cond_0
    move-wide v2, v0

    .line 217
    ushr-long v12, v2, v6

    xor-long/2addr v12, v4

    ushr-long v17, v2, v9

    xor-long v12, v12, v17

    ushr-long v9, v2, v10

    xor-long/2addr v9, v12

    ushr-long v11, v2, v11

    xor-long/2addr v9, v11

    const/4 v11, 0x1

    aput-wide v9, p1, v11

    .line 218
    const/4 v9, 0x0

    aget-wide v10, p0, v9

    shl-long v12, v2, v8

    xor-long/2addr v10, v12

    shl-long v12, v2, v14

    xor-long/2addr v10, v12

    shl-long v12, v2, v15

    xor-long/2addr v10, v12

    shl-long v12, v2, v16

    xor-long v4, v10, v12

    .line 220
    aget-wide v10, p1, v7

    .line 221
    .local v10, "x08":J
    ushr-long v12, v10, v6

    .line 222
    .local v12, "t":J
    xor-long v16, v4, v12

    const/4 v6, 0x2

    shl-long v18, v12, v6

    xor-long v16, v16, v18

    shl-long v18, v12, v8

    xor-long v16, v16, v18

    shl-long v14, v12, v15

    xor-long v14, v16, v14

    aput-wide v14, p1, v9

    .line 223
    const-wide v8, 0x7ffffffffffffffL

    and-long/2addr v8, v10

    aput-wide v8, p1, v7

    .line 224
    return-void
.end method

.method public static reduce5([JI)V
    .locals 10
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

    .line 228
    add-int/lit8 v0, p1, 0x8

    aget-wide v0, p0, v0

    .local v0, "z8":J
    const/16 v2, 0x3b

    ushr-long v2, v0, v2

    .line 229
    .local v2, "t":J
    aget-wide v4, p0, p1

    const/4 v6, 0x2

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    const/4 v8, 0x5

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xa

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 230
    add-int/lit8 v4, p1, 0x8

    const-wide v5, 0x7ffffffffffffffL

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 231
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

    .line 235
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    .local v0, "evn":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    .line 237
    .local v1, "odd":[J
    const/4 v2, 0x0

    .line 238
    .local v2, "pos":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    const/4 v7, 0x4

    if-ge v3, v7, :cond_0

    .line 240
    add-int/lit8 v7, v2, 0x1

    .end local v2    # "pos":I
    .local v7, "pos":I
    aget-wide v8, p0, v2

    invoke-static {v8, v9}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    .line 241
    .local v8, "u0":J
    add-int/lit8 v2, v7, 0x1

    .end local v7    # "pos":I
    .restart local v2    # "pos":I
    aget-wide v10, p0, v7

    invoke-static {v10, v11}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v10

    .line 242
    .local v10, "u1":J
    and-long/2addr v4, v8

    shl-long v12, v10, v6

    or-long/2addr v4, v12

    aput-wide v4, v0, v3

    .line 243
    ushr-long v4, v8, v6

    const-wide v6, -0x100000000L

    and-long/2addr v6, v10

    or-long/2addr v4, v6

    aput-wide v4, v1, v3

    .line 238
    .end local v8    # "u0":J
    .end local v10    # "u1":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 246
    .end local v3    # "i":I
    :cond_0
    aget-wide v8, p0, v2

    invoke-static {v8, v9}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v8

    .line 247
    .restart local v8    # "u0":J
    and-long/2addr v4, v8

    aput-wide v4, v0, v7

    .line 248
    ushr-long v3, v8, v6

    aput-wide v3, v1, v7

    .line 251
    .end local v8    # "u0":J
    sget-object v3, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    invoke-static {v1, v3, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    .line 252
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    .line 253
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

    .line 257
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 258
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 259
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 260
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

    .line 264
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 265
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 266
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    .line 267
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

    .line 273
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    .line 274
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 275
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    .line 277
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 279
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    .line 280
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    goto :goto_0

    .line 282
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 6
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 287
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/16 v2, 0x8

    aget-wide v3, p0, v2

    const/16 v5, 0x31

    ushr-long/2addr v3, v5

    xor-long/2addr v0, v3

    aget-wide v2, p0, v2

    const/16 v4, 0x39

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

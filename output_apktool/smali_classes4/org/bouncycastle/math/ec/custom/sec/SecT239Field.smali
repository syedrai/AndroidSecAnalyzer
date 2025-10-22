.class public Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;
.super Ljava/lang/Object;
.source "SecT239Field.java"


# static fields
.field private static final M47:J = 0x7fffffffffffL

.field private static final M60:J = 0xfffffffffffffffL


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
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 19
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 20
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

    .line 24
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 25
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 26
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 27
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 28
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 29
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 30
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 31
    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 32
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

    .line 36
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 37
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 38
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 39
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 40
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

    .line 44
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 45
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 46
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 47
    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 48
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

    .line 52
    const/16 v0, 0xef

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

    .line 57
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 59
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->copy64([J[J)V

    .line 60
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xef

    if-ge v1, v2, :cond_0

    .line 62
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 63
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 64
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 65
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 66
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addTo([J[J)V

    .line 60
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 68
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implCompactExt([J)V
    .locals 28
    .param p0, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 236
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "z0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "z1":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "z2":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .local v10, "z3":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .local v13, "z4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "z5":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "z6":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .line 237
    .local v22, "z7":J
    const/16 v24, 0x3c

    shl-long v24, v4, v24

    xor-long v24, v1, v24

    aput-wide v24, p0, v0

    .line 238
    ushr-long v24, v4, v12

    const/16 v0, 0x38

    shl-long v26, v7, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v3

    .line 239
    const/16 v0, 0x8

    ushr-long v24, v7, v0

    const/16 v0, 0x34

    shl-long v26, v10, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v6

    .line 240
    const/16 v0, 0xc

    ushr-long v24, v10, v0

    const/16 v0, 0x30

    shl-long v26, v13, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v9

    .line 241
    const/16 v0, 0x10

    ushr-long v24, v13, v0

    const/16 v0, 0x2c

    shl-long v26, v16, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v12

    .line 242
    const/16 v0, 0x14

    ushr-long v24, v16, v0

    const/16 v0, 0x28

    shl-long v26, v19, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v15

    .line 243
    const/16 v0, 0x18

    ushr-long v24, v19, v0

    const/16 v0, 0x24

    shl-long v26, v22, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v18

    .line 244
    const/16 v0, 0x1c

    ushr-long v24, v22, v0

    aput-wide v24, p0, v21

    .line 245
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 18
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

    .line 249
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "x1":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "x2":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .line 250
    .local v10, "x3":J
    const-wide v12, 0xfffffffffffffffL

    and-long v14, v1, v12

    aput-wide v14, p1, v0

    .line 251
    const/16 v0, 0x3c

    ushr-long v14, v1, v0

    const/4 v0, 0x4

    shl-long v16, v4, v0

    xor-long v14, v14, v16

    and-long/2addr v14, v12

    aput-wide v14, p1, v3

    .line 252
    const/16 v0, 0x38

    ushr-long v14, v4, v0

    const/16 v0, 0x8

    shl-long v16, v7, v0

    xor-long v14, v14, v16

    and-long/2addr v12, v14

    aput-wide v12, p1, v6

    .line 253
    const/16 v0, 0x34

    ushr-long v12, v7, v0

    const/16 v0, 0xc

    shl-long v14, v10, v0

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 254
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

    .line 262
    const/4 v0, 0x4

    new-array v1, v0, [J

    .local v1, "f":[J
    new-array v2, v0, [J

    .line 263
    .local v2, "g":[J
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    .line 264
    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implExpand([J[J)V

    .line 266
    const/16 v5, 0x8

    new-array v6, v5, [J

    .line 268
    .local v6, "u":[J
    const/4 v5, 0x0

    aget-wide v7, v1, v5

    aget-wide v9, v2, v5

    const/4 v12, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 269
    const/4 v13, 0x1

    aget-wide v7, v1, v13

    aget-wide v9, v2, v13

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 270
    const/4 v14, 0x2

    aget-wide v7, v1, v14

    aget-wide v9, v2, v14

    const/4 v12, 0x2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 271
    const/4 v15, 0x3

    aget-wide v7, v1, v15

    aget-wide v9, v2, v15

    const/4 v12, 0x3

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 274
    const/4 v7, 0x5

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 276
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x1

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 274
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 279
    .end local v7    # "i":I
    :cond_0
    aget-wide v7, v1, v5

    aget-wide v9, v1, v13

    xor-long/2addr v7, v9

    aget-wide v9, v2, v5

    aget-wide v11, v2, v13

    xor-long/2addr v9, v11

    const/4 v12, 0x1

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 280
    aget-wide v7, v1, v14

    aget-wide v9, v1, v15

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v15

    xor-long/2addr v9, v11

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 283
    const/4 v7, 0x7

    .restart local v7    # "i":I
    :goto_1
    if-le v7, v13, :cond_1

    .line 285
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x2

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 283
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 290
    .end local v7    # "i":I
    :cond_1
    aget-wide v7, v1, v5

    aget-wide v9, v1, v14

    xor-long v16, v7, v9

    .local v16, "c0":J
    aget-wide v7, v1, v13

    aget-wide v9, v1, v15

    xor-long v18, v7, v9

    .line 291
    .local v18, "c1":J
    aget-wide v7, v2, v5

    aget-wide v9, v2, v14

    xor-long v20, v7, v9

    .local v20, "d0":J
    aget-wide v7, v2, v13

    aget-wide v9, v2, v15

    xor-long v22, v7, v9

    .line 292
    .local v22, "d1":J
    xor-long v7, v16, v18

    xor-long v9, v20, v22

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 293
    new-array v11, v15, [J

    .line 294
    .local v11, "t":[J
    const/4 v12, 0x0

    move-wide/from16 v7, v16

    move-wide/from16 v9, v20

    .end local v16    # "c0":J
    .end local v20    # "d0":J
    .local v7, "c0":J
    .local v9, "d0":J
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 295
    .end local v7    # "c0":J
    .end local v9    # "d0":J
    .restart local v16    # "c0":J
    .restart local v20    # "d0":J
    const/4 v12, 0x1

    move-wide/from16 v7, v18

    move-wide/from16 v9, v22

    .end local v18    # "c1":J
    .end local v22    # "d1":J
    .local v7, "c1":J
    .local v9, "d1":J
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMulwAcc([JJJ[JI)V

    .line 296
    aget-wide v18, v11, v5

    .local v18, "t0":J
    aget-wide v12, v11, v13

    .local v12, "t1":J
    aget-wide v22, v11, v14

    .line 297
    .local v22, "t2":J
    aget-wide v24, p2, v14

    xor-long v24, v24, v18

    aput-wide v24, p2, v14

    .line 298
    aget-wide v24, p2, v15

    xor-long v26, v18, v12

    xor-long v24, v24, v26

    aput-wide v24, p2, v15

    .line 299
    aget-wide v14, p2, v0

    xor-long v24, v22, v12

    xor-long v14, v14, v24

    aput-wide v14, p2, v0

    .line 300
    const/4 v0, 0x5

    aget-wide v14, p2, v0

    xor-long v14, v14, v22

    aput-wide v14, p2, v0

    .line 303
    .end local v7    # "c1":J
    .end local v9    # "d1":J
    .end local v11    # "t":[J
    .end local v12    # "t1":J
    .end local v16    # "c0":J
    .end local v18    # "t0":J
    .end local v20    # "d0":J
    .end local v22    # "t2":J
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implCompactExt([J)V

    .line 304
    return-void
.end method

.method protected static implMulwAcc([JJJ[JI)V
    .locals 18
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

    .line 312
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 313
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 314
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 315
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 316
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v7, 0x5

    aput-wide v3, p0, v7

    .line 317
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 318
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v4, 0x7

    aput-wide v2, p0, v4

    .line 320
    long-to-int v2, v0

    .line 321
    .local v2, "j":I
    const-wide/16 v8, 0x0

    .local v8, "h":J
    and-int/lit8 v3, v2, 0x7

    aget-wide v10, p0, v3

    ushr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v4

    aget-wide v12, p0, v3

    shl-long/2addr v12, v6

    xor-long/2addr v10, v12

    .line 323
    .local v10, "l":J
    const/16 v3, 0x36

    .line 326
    .local v3, "k":I
    :cond_0
    ushr-long v12, v0, v3

    long-to-int v2, v12

    .line 327
    and-int/lit8 v12, v2, 0x7

    aget-wide v12, p0, v12

    ushr-int/lit8 v14, v2, 0x3

    and-int/2addr v14, v4

    aget-wide v14, p0, v14

    shl-long/2addr v14, v6

    xor-long/2addr v12, v14

    .line 329
    .local v12, "g":J
    shl-long v14, v12, v3

    xor-long/2addr v10, v14

    .line 330
    neg-int v14, v3

    ushr-long v14, v12, v14

    xor-long/2addr v8, v14

    .line 332
    add-int/lit8 v3, v3, -0x6

    if-gtz v3, :cond_0

    .line 334
    const-wide v14, 0x820820820820820L

    and-long/2addr v14, v0

    shl-long v16, p3, v5

    const/16 v4, 0x3f

    shr-long v16, v16, v4

    and-long v14, v14, v16

    ushr-long v6, v14, v7

    xor-long/2addr v6, v8

    .line 338
    .end local v8    # "h":J
    .local v6, "h":J
    aget-wide v8, p5, p6

    const-wide v14, 0xfffffffffffffffL

    and-long/2addr v14, v10

    xor-long/2addr v8, v14

    aput-wide v8, p5, p6

    .line 339
    add-int/lit8 v4, p6, 0x1

    aget-wide v8, p5, v4

    const/16 v14, 0x3c

    ushr-long v14, v10, v14

    shl-long v16, v6, v5

    xor-long v14, v14, v16

    xor-long/2addr v8, v14

    aput-wide v8, p5, v4

    .line 340
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

    .line 344
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 345
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

    .line 72
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 80
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 82
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 83
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 85
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 86
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 87
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 88
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 89
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 90
    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 92
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 93
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 94
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 95
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 96
    const/16 v2, 0x1d

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 97
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 98
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 99
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 100
    const/16 v2, 0x3b

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 101
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 102
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 103
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 104
    const/16 v2, 0x77

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->squareN([JI[J)V

    .line 105
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->multiply([J[J[J)V

    .line 106
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->square([J[J)V

    .line 107
    return-void

    .line 74
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

    .line 111
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 112
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 113
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 114
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

    .line 118
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 119
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implMultiply([J[J[J)V

    .line 120
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    .line 121
    return-void
.end method

.method public static reduce([J[J)V
    .locals 24
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

    .line 125
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "x1":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "x2":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .line 126
    .local v10, "x3":J
    const/4 v12, 0x4

    aget-wide v12, p0, v12

    .local v12, "x4":J
    const/4 v14, 0x5

    aget-wide v14, p0, v14

    .local v14, "x5":J
    const/16 v16, 0x6

    aget-wide v16, p0, v16

    .local v16, "x6":J
    const/16 v18, 0x7

    aget-wide v18, p0, v18

    .line 128
    .local v18, "x7":J
    const/16 v20, 0x11

    shl-long v21, v18, v20

    xor-long v10, v10, v21

    .line 129
    const/16 v21, 0x2f

    ushr-long v22, v18, v21

    xor-long v12, v12, v22

    .line 130
    shl-long v22, v18, v21

    xor-long v14, v14, v22

    .line 131
    ushr-long v22, v18, v20

    xor-long v16, v16, v22

    .line 133
    shl-long v22, v16, v20

    xor-long v7, v7, v22

    .line 134
    ushr-long v22, v16, v21

    xor-long v10, v10, v22

    .line 135
    shl-long v22, v16, v21

    xor-long v12, v12, v22

    .line 136
    ushr-long v22, v16, v20

    xor-long v14, v14, v22

    .line 138
    shl-long v22, v14, v20

    xor-long v4, v4, v22

    .line 139
    ushr-long v22, v14, v21

    xor-long v7, v7, v22

    .line 140
    shl-long v22, v14, v21

    xor-long v10, v10, v22

    .line 141
    ushr-long v22, v14, v20

    xor-long v12, v12, v22

    .line 143
    shl-long v22, v12, v20

    xor-long v1, v1, v22

    .line 144
    ushr-long v22, v12, v21

    xor-long v4, v4, v22

    .line 145
    shl-long v22, v12, v21

    xor-long v7, v7, v22

    .line 146
    ushr-long v22, v12, v20

    xor-long v10, v10, v22

    .line 148
    ushr-long v20, v10, v21

    .line 149
    .local v20, "t":J
    xor-long v22, v1, v20

    aput-wide v22, p1, v0

    .line 150
    aput-wide v4, p1, v3

    .line 151
    const/16 v0, 0x1e

    shl-long v22, v20, v0

    xor-long v22, v7, v22

    aput-wide v22, p1, v6

    .line 152
    const-wide v22, 0x7fffffffffffL

    and-long v22, v10, v22

    aput-wide v22, p1, v9

    .line 153
    return-void
.end method

.method public static reduce17([JI)V
    .locals 9
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

    .line 157
    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p0, v0

    .local v0, "z3":J
    const/16 v2, 0x2f

    ushr-long v2, v0, v2

    .line 158
    .local v2, "t":J
    aget-wide v4, p0, p1

    xor-long/2addr v4, v2

    aput-wide v4, p0, p1

    .line 159
    add-int/lit8 v4, p1, 0x2

    aget-wide v5, p0, v4

    const/16 v7, 0x1e

    shl-long v7, v2, v7

    xor-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 160
    add-int/lit8 v4, p1, 0x3

    const-wide v5, 0x7fffffffffffL

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 161
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 32
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

    .line 166
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    .local v2, "u0":J
    const/4 v4, 0x1

    aget-wide v5, p0, v4

    invoke-static {v5, v6}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v5

    .line 167
    .local v5, "u1":J
    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    .line 168
    .local v9, "e0":J
    ushr-long v12, v2, v11

    const-wide v14, -0x100000000L

    and-long v16, v5, v14

    or-long v12, v12, v16

    .line 170
    .local v12, "c0":J
    const/16 v16, 0x2

    aget-wide v16, p0, v16

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/16 v16, 0x3

    aget-wide v16, p0, v16

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v5

    .line 171
    and-long/2addr v7, v2

    shl-long v16, v5, v11

    or-long v7, v7, v16

    .line 172
    .local v7, "e1":J
    ushr-long v16, v2, v11

    and-long/2addr v14, v5

    or-long v14, v16, v14

    .line 175
    .local v14, "c1":J
    const/16 v11, 0x31

    ushr-long v16, v14, v11

    .line 176
    .local v16, "c3":J
    ushr-long v18, v12, v11

    const/16 v11, 0xf

    shl-long v20, v14, v11

    or-long v18, v18, v20

    .line 177
    .local v18, "c2":J
    shl-long v20, v12, v11

    xor-long v14, v14, v20

    .line 179
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v11

    .line 181
    .local v11, "tt":[J
    const/16 v20, 0x0

    const/16 v1, 0x27

    const/16 v21, 0x1

    const/16 v4, 0x78

    filled-new-array {v1, v4}, [I

    move-result-object v1

    .line 182
    .local v1, "shifts":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    move-wide/from16 v22, v2

    .end local v2    # "u0":J
    .local v22, "u0":J
    array-length v2, v1

    if-ge v4, v2, :cond_0

    .line 184
    aget v2, v1, v4

    ushr-int/lit8 v2, v2, 0x6

    .local v2, "w":I
    aget v3, v1, v4

    and-int/lit8 v3, v3, 0x3f

    .line 186
    .local v3, "s":I
    aget-wide v24, v11, v2

    shl-long v26, v12, v3

    xor-long v24, v24, v26

    aput-wide v24, v11, v2

    .line 187
    add-int/lit8 v24, v2, 0x1

    aget-wide v25, v11, v24

    shl-long v27, v14, v3

    move-object/from16 v29, v1

    .end local v1    # "shifts":[I
    .local v29, "shifts":[I
    neg-int v1, v3

    ushr-long v30, v12, v1

    or-long v27, v27, v30

    xor-long v25, v25, v27

    aput-wide v25, v11, v24

    .line 188
    add-int/lit8 v1, v2, 0x2

    aget-wide v24, v11, v1

    shl-long v26, v18, v3

    move/from16 v28, v1

    neg-int v1, v3

    ushr-long v30, v14, v1

    or-long v26, v26, v30

    xor-long v24, v24, v26

    aput-wide v24, v11, v28

    .line 189
    add-int/lit8 v1, v2, 0x3

    aget-wide v24, v11, v1

    shl-long v26, v16, v3

    move/from16 v28, v1

    neg-int v1, v3

    ushr-long v30, v18, v1

    or-long v26, v26, v30

    xor-long v24, v24, v26

    aput-wide v24, v11, v28

    .line 190
    add-int/lit8 v1, v2, 0x4

    aget-wide v24, v11, v1

    move/from16 v26, v1

    neg-int v1, v3

    ushr-long v27, v16, v1

    xor-long v24, v24, v27

    aput-wide v24, v11, v26

    .line 182
    .end local v2    # "w":I
    .end local v3    # "s":I
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v2, v22

    move-object/from16 v1, v29

    goto :goto_0

    .end local v29    # "shifts":[I
    .restart local v1    # "shifts":[I
    :cond_0
    move-object/from16 v29, v1

    .line 193
    .end local v1    # "shifts":[I
    .end local v4    # "i":I
    .restart local v29    # "shifts":[I
    invoke-static {v11, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 195
    aget-wide v1, v0, v20

    xor-long/2addr v1, v9

    aput-wide v1, v0, v20

    .line 196
    aget-wide v1, v0, v21

    xor-long/2addr v1, v7

    aput-wide v1, v0, v21

    .line 197
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

    .line 201
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 202
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 203
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 204
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

    .line 208
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 209
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 210
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->addExt([J[J[J)V

    .line 211
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

    .line 217
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 218
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 219
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    .line 221
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 223
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->implSquare([J[J)V

    .line 224
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT239Field;->reduce([J[J)V

    goto :goto_0

    .line 226
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

    .line 231
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/16 v5, 0x11

    ushr-long/2addr v3, v5

    xor-long/2addr v0, v3

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    const/16 v5, 0x22

    ushr-long/2addr v3, v5

    xor-long/2addr v0, v3

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

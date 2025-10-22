.class public Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;
.super Ljava/lang/Object;
.source "SecT233Field.java"


# static fields
.field private static final M41:J = 0x1ffffffffffL

.field private static final M59:J = 0x7ffffffffffffffL


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
    const/16 v0, 0xe9

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
    const/16 v2, 0xe9

    if-ge v1, v2, :cond_0

    .line 62
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 63
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 64
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 65
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 66
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->addTo([J[J)V

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

    .line 227
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

    .line 228
    .local v22, "z7":J
    const/16 v24, 0x3b

    shl-long v24, v4, v24

    xor-long v24, v1, v24

    aput-wide v24, p0, v0

    .line 229
    ushr-long v24, v4, v15

    const/16 v0, 0x36

    shl-long v26, v7, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v3

    .line 230
    const/16 v0, 0xa

    ushr-long v24, v7, v0

    const/16 v0, 0x31

    shl-long v26, v10, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v6

    .line 231
    const/16 v0, 0xf

    ushr-long v24, v10, v0

    const/16 v0, 0x2c

    shl-long v26, v13, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v9

    .line 232
    const/16 v0, 0x14

    ushr-long v24, v13, v0

    const/16 v0, 0x27

    shl-long v26, v16, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v12

    .line 233
    const/16 v0, 0x19

    ushr-long v24, v16, v0

    const/16 v0, 0x22

    shl-long v26, v19, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v15

    .line 234
    const/16 v0, 0x1e

    ushr-long v24, v19, v0

    const/16 v0, 0x1d

    shl-long v26, v22, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v18

    .line 235
    const/16 v0, 0x23

    ushr-long v24, v22, v0

    aput-wide v24, p0, v21

    .line 236
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

    .line 240
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

    .line 241
    .local v10, "x3":J
    const-wide v12, 0x7ffffffffffffffL

    and-long v14, v1, v12

    aput-wide v14, p1, v0

    .line 242
    const/16 v0, 0x3b

    ushr-long v14, v1, v0

    const/4 v0, 0x5

    shl-long v16, v4, v0

    xor-long v14, v14, v16

    and-long/2addr v14, v12

    aput-wide v14, p1, v3

    .line 243
    const/16 v0, 0x36

    ushr-long v14, v4, v0

    const/16 v0, 0xa

    shl-long v16, v7, v0

    xor-long v14, v14, v16

    and-long/2addr v12, v14

    aput-wide v12, p1, v6

    .line 244
    const/16 v0, 0x31

    ushr-long v12, v7, v0

    const/16 v0, 0xf

    shl-long v14, v10, v0

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 245
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

    .line 253
    const/4 v0, 0x4

    new-array v1, v0, [J

    .local v1, "f":[J
    new-array v2, v0, [J

    .line 254
    .local v2, "g":[J
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implExpand([J[J)V

    .line 255
    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implExpand([J[J)V

    .line 257
    const/16 v5, 0x8

    new-array v6, v5, [J

    .line 259
    .local v6, "u":[J
    const/4 v5, 0x0

    aget-wide v7, v1, v5

    aget-wide v9, v2, v5

    const/4 v12, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 260
    const/4 v13, 0x1

    aget-wide v7, v1, v13

    aget-wide v9, v2, v13

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 261
    const/4 v14, 0x2

    aget-wide v7, v1, v14

    aget-wide v9, v2, v14

    const/4 v12, 0x2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 262
    const/4 v15, 0x3

    aget-wide v7, v1, v15

    aget-wide v9, v2, v15

    const/4 v12, 0x3

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 265
    const/4 v7, 0x5

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 267
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x1

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 265
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 270
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

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 271
    aget-wide v7, v1, v14

    aget-wide v9, v1, v15

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v15

    xor-long/2addr v9, v11

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 274
    const/4 v7, 0x7

    .restart local v7    # "i":I
    :goto_1
    if-le v7, v13, :cond_1

    .line 276
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x2

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 274
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 281
    .end local v7    # "i":I
    :cond_1
    aget-wide v7, v1, v5

    aget-wide v9, v1, v14

    xor-long v16, v7, v9

    .local v16, "c0":J
    aget-wide v7, v1, v13

    aget-wide v9, v1, v15

    xor-long v18, v7, v9

    .line 282
    .local v18, "c1":J
    aget-wide v7, v2, v5

    aget-wide v9, v2, v14

    xor-long v20, v7, v9

    .local v20, "d0":J
    aget-wide v7, v2, v13

    aget-wide v9, v2, v15

    xor-long v22, v7, v9

    .line 283
    .local v22, "d1":J
    xor-long v7, v16, v18

    xor-long v9, v20, v22

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 284
    new-array v11, v15, [J

    .line 285
    .local v11, "t":[J
    const/4 v12, 0x0

    move-wide/from16 v7, v16

    move-wide/from16 v9, v20

    .end local v16    # "c0":J
    .end local v20    # "d0":J
    .local v7, "c0":J
    .local v9, "d0":J
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 286
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
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMulwAcc([JJJ[JI)V

    .line 287
    aget-wide v18, v11, v5

    .local v18, "t0":J
    aget-wide v12, v11, v13

    .local v12, "t1":J
    aget-wide v22, v11, v14

    .line 288
    .local v22, "t2":J
    aget-wide v24, p2, v14

    xor-long v24, v24, v18

    aput-wide v24, p2, v14

    .line 289
    aget-wide v24, p2, v15

    xor-long v26, v18, v12

    xor-long v24, v24, v26

    aput-wide v24, p2, v15

    .line 290
    aget-wide v14, p2, v0

    xor-long v24, v22, v12

    xor-long v14, v14, v24

    aput-wide v14, p2, v0

    .line 291
    const/4 v0, 0x5

    aget-wide v14, p2, v0

    xor-long v14, v14, v22

    aput-wide v14, p2, v0

    .line 294
    .end local v7    # "c1":J
    .end local v9    # "d1":J
    .end local v11    # "t":[J
    .end local v12    # "t1":J
    .end local v16    # "c0":J
    .end local v18    # "t0":J
    .end local v20    # "d0":J
    .end local v22    # "t2":J
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implCompactExt([J)V

    .line 295
    return-void
.end method

.method protected static implMulwAcc([JJJ[JI)V
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

    .line 303
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 304
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 305
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 306
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 307
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 308
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 309
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v4, 0x7

    aput-wide v2, p0, v4

    .line 311
    long-to-int v2, v0

    .line 312
    .local v2, "j":I
    const-wide/16 v7, 0x0

    .local v7, "h":J
    and-int/lit8 v3, v2, 0x7

    aget-wide v9, p0, v3

    ushr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v4

    aget-wide v11, p0, v3

    shl-long/2addr v11, v6

    xor-long/2addr v9, v11

    .line 314
    .local v9, "l":J
    const/16 v3, 0x36

    .line 317
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 318
    and-int/lit8 v11, v2, 0x7

    aget-wide v11, p0, v11

    ushr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v4

    aget-wide v13, p0, v13

    shl-long/2addr v13, v6

    xor-long/2addr v11, v13

    .line 320
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 321
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 323
    add-int/lit8 v3, v3, -0x6

    if-gtz v3, :cond_0

    .line 327
    aget-wide v13, p5, p6

    const-wide v15, 0x7ffffffffffffffL

    and-long/2addr v15, v9

    xor-long/2addr v13, v15

    aput-wide v13, p5, p6

    .line 328
    add-int/lit8 v4, p6, 0x1

    aget-wide v13, p5, v4

    const/16 v6, 0x3b

    ushr-long v15, v9, v6

    shl-long v5, v7, v5

    xor-long/2addr v5, v15

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 329
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

    .line 333
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 334
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
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->square([J[J)V

    .line 83
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->square([J[J)V

    .line 85
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 86
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 87
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 88
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->square([J[J)V

    .line 89
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 90
    const/4 v2, 0x7

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 92
    const/16 v2, 0xe

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 93
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 94
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->square([J[J)V

    .line 95
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 96
    const/16 v2, 0x1d

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 97
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 98
    const/16 v2, 0x3a

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 99
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 100
    const/16 v2, 0x74

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->squareN([JI[J)V

    .line 101
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->multiply([J[J[J)V

    .line 102
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->square([J[J)V

    .line 103
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

    .line 107
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 108
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMultiply([J[J[J)V

    .line 109
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 110
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

    .line 114
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 115
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implMultiply([J[J[J)V

    .line 116
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->addExt([J[J[J)V

    .line 117
    return-void
.end method

.method public static reduce([J[J)V
    .locals 29
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

    .line 121
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

    .line 122
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

    .line 124
    .local v18, "x7":J
    const/16 v20, 0x17

    shl-long v21, v18, v20

    xor-long v10, v10, v21

    .line 125
    const/16 v21, 0x29

    ushr-long v22, v18, v21

    const/16 v24, 0x21

    shl-long v25, v18, v24

    xor-long v22, v22, v25

    xor-long v12, v12, v22

    .line 126
    const/16 v22, 0x1f

    ushr-long v25, v18, v22

    xor-long v14, v14, v25

    .line 128
    shl-long v25, v16, v20

    xor-long v7, v7, v25

    .line 129
    ushr-long v25, v16, v21

    shl-long v27, v16, v24

    xor-long v25, v25, v27

    xor-long v10, v10, v25

    .line 130
    ushr-long v25, v16, v22

    xor-long v12, v12, v25

    .line 132
    shl-long v25, v14, v20

    xor-long v4, v4, v25

    .line 133
    ushr-long v25, v14, v21

    shl-long v27, v14, v24

    xor-long v25, v25, v27

    xor-long v7, v7, v25

    .line 134
    ushr-long v25, v14, v22

    xor-long v10, v10, v25

    .line 136
    shl-long v25, v12, v20

    xor-long v1, v1, v25

    .line 137
    ushr-long v25, v12, v21

    shl-long v23, v12, v24

    xor-long v23, v25, v23

    xor-long v4, v4, v23

    .line 138
    ushr-long v22, v12, v22

    xor-long v7, v7, v22

    .line 140
    ushr-long v20, v10, v21

    .line 141
    .local v20, "t":J
    xor-long v22, v1, v20

    aput-wide v22, p1, v0

    .line 142
    const/16 v0, 0xa

    shl-long v22, v20, v0

    xor-long v22, v4, v22

    aput-wide v22, p1, v3

    .line 143
    aput-wide v7, p1, v6

    .line 144
    const-wide v22, 0x1ffffffffffL

    and-long v22, v10, v22

    aput-wide v22, p1, v9

    .line 145
    return-void
.end method

.method public static reduce23([JI)V
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

    .line 149
    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p0, v0

    .local v0, "z3":J
    const/16 v2, 0x29

    ushr-long v2, v0, v2

    .line 150
    .local v2, "t":J
    aget-wide v4, p0, p1

    xor-long/2addr v4, v2

    aput-wide v4, p0, p1

    .line 151
    add-int/lit8 v4, p1, 0x1

    aget-wide v5, p0, v4

    const/16 v7, 0xa

    shl-long v7, v2, v7

    xor-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 152
    add-int/lit8 v4, p1, 0x3

    const-wide v5, 0x1ffffffffffL

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 153
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 30
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

    .line 158
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

    .line 159
    .local v5, "u1":J
    const-wide v7, 0xffffffffL

    and-long v9, v2, v7

    const/16 v11, 0x20

    shl-long v12, v5, v11

    or-long/2addr v9, v12

    .line 160
    .local v9, "e0":J
    ushr-long v12, v2, v11

    const-wide v14, -0x100000000L

    and-long v16, v5, v14

    or-long v12, v12, v16

    .line 162
    .local v12, "c0":J
    const/16 v16, 0x2

    aget-wide v16, p0, v16

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v2

    const/16 v16, 0x3

    aget-wide v16, p0, v16

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v5

    .line 163
    and-long/2addr v7, v2

    shl-long v16, v5, v11

    or-long v7, v7, v16

    .line 164
    .local v7, "e1":J
    ushr-long v16, v2, v11

    and-long/2addr v14, v5

    or-long v14, v16, v14

    .line 167
    .local v14, "c1":J
    const/16 v16, 0x1b

    ushr-long v17, v14, v16

    .line 168
    .local v17, "c2":J
    ushr-long v19, v12, v16

    const/16 v16, 0x25

    shl-long v21, v14, v16

    or-long v19, v19, v21

    xor-long v14, v14, v19

    .line 169
    shl-long v19, v12, v16

    xor-long v12, v12, v19

    .line 171
    const/16 v16, 0x0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v1

    .line 173
    .local v1, "tt":[J
    const/16 v19, 0x1

    const/16 v4, 0x75

    move-wide/from16 v20, v2

    .end local v2    # "u0":J
    .local v20, "u0":J
    const/16 v2, 0xbf

    filled-new-array {v11, v4, v2}, [I

    move-result-object v2

    .line 174
    .local v2, "shifts":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 176
    aget v4, v2, v3

    ushr-int/lit8 v4, v4, 0x6

    .local v4, "w":I
    aget v11, v2, v3

    and-int/lit8 v11, v11, 0x3f

    .line 178
    .local v11, "s":I
    aget-wide v22, v1, v4

    shl-long v24, v12, v11

    xor-long v22, v22, v24

    aput-wide v22, v1, v4

    .line 179
    add-int/lit8 v22, v4, 0x1

    aget-wide v23, v1, v22

    shl-long v25, v14, v11

    move-object/from16 v27, v2

    .end local v2    # "shifts":[I
    .local v27, "shifts":[I
    neg-int v2, v11

    ushr-long v28, v12, v2

    or-long v25, v25, v28

    xor-long v23, v23, v25

    aput-wide v23, v1, v22

    .line 180
    add-int/lit8 v2, v4, 0x2

    aget-wide v22, v1, v2

    shl-long v24, v17, v11

    move/from16 v26, v2

    neg-int v2, v11

    ushr-long v28, v14, v2

    or-long v24, v24, v28

    xor-long v22, v22, v24

    aput-wide v22, v1, v26

    .line 181
    add-int/lit8 v2, v4, 0x3

    aget-wide v22, v1, v2

    move/from16 v24, v2

    neg-int v2, v11

    ushr-long v25, v17, v2

    xor-long v22, v22, v25

    aput-wide v22, v1, v24

    .line 174
    .end local v4    # "w":I
    .end local v11    # "s":I
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v27

    goto :goto_0

    .end local v27    # "shifts":[I
    .restart local v2    # "shifts":[I
    :cond_0
    move-object/from16 v27, v2

    .line 184
    .end local v2    # "shifts":[I
    .end local v3    # "i":I
    .restart local v27    # "shifts":[I
    invoke-static {v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 186
    aget-wide v2, v0, v16

    xor-long/2addr v2, v9

    aput-wide v2, v0, v16

    .line 187
    aget-wide v2, v0, v19

    xor-long/2addr v2, v7

    aput-wide v2, v0, v19

    .line 188
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

    .line 192
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 193
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 194
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 195
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

    .line 199
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 200
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 201
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->addExt([J[J[J)V

    .line 202
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

    .line 208
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 209
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 210
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    .line 212
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 214
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->implSquare([J[J)V

    .line 215
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT233Field;->reduce([J[J)V

    goto :goto_0

    .line 217
    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 5
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 222
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

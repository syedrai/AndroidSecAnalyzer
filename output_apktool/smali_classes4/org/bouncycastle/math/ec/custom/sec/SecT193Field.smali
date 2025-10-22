.class public Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;
.super Ljava/lang/Object;
.source "SecT193Field.java"


# static fields
.field private static final M01:J = 0x1L

.field private static final M49:J = 0x1ffffffffffffL


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

    .line 35
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 36
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 37
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 38
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 39
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

    .line 43
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 44
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 45
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 46
    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 47
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

    .line 51
    const/16 v0, 0xc1

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

    .line 56
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 58
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->copy64([J[J)V

    .line 59
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xc1

    if-ge v1, v2, :cond_0

    .line 61
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 62
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 63
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 64
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 65
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->addTo([J[J)V

    .line 59
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 67
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

    .line 213
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

    .line 214
    .local v22, "z7":J
    const/16 v24, 0x31

    shl-long v24, v4, v24

    xor-long v24, v1, v24

    aput-wide v24, p0, v0

    .line 215
    const/16 v0, 0xf

    ushr-long v24, v4, v0

    const/16 v0, 0x22

    shl-long v26, v7, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v3

    .line 216
    const/16 v0, 0x1e

    ushr-long v24, v7, v0

    const/16 v0, 0x13

    shl-long v26, v10, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v6

    .line 217
    const/16 v0, 0x2d

    ushr-long v24, v10, v0

    shl-long v26, v13, v12

    xor-long v24, v24, v26

    const/16 v0, 0x35

    shl-long v26, v16, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v9

    .line 219
    const/16 v0, 0x3c

    ushr-long v24, v13, v0

    const/16 v0, 0x26

    shl-long v26, v19, v0

    xor-long v24, v24, v26

    const/16 v0, 0xb

    ushr-long v26, v16, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v12

    .line 221
    const/16 v0, 0x1a

    ushr-long v24, v19, v0

    const/16 v0, 0x17

    shl-long v26, v22, v0

    xor-long v24, v24, v26

    aput-wide v24, p0, v15

    .line 222
    const/16 v0, 0x29

    ushr-long v24, v22, v0

    aput-wide v24, p0, v18

    .line 223
    const-wide/16 v24, 0x0

    aput-wide v24, p0, v21

    .line 224
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

    .line 228
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

    .line 229
    .local v10, "x3":J
    const-wide v12, 0x1ffffffffffffL

    and-long v14, v1, v12

    aput-wide v14, p1, v0

    .line 230
    const/16 v0, 0x31

    ushr-long v14, v1, v0

    const/16 v0, 0xf

    shl-long v16, v4, v0

    xor-long v14, v14, v16

    and-long/2addr v14, v12

    aput-wide v14, p1, v3

    .line 231
    const/16 v0, 0x22

    ushr-long v14, v4, v0

    const/16 v0, 0x1e

    shl-long v16, v7, v0

    xor-long v14, v14, v16

    and-long/2addr v12, v14

    aput-wide v12, p1, v6

    .line 232
    const/16 v0, 0x13

    ushr-long v12, v7, v0

    const/16 v0, 0x2d

    shl-long v14, v10, v0

    xor-long/2addr v12, v14

    aput-wide v12, p1, v9

    .line 233
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

    .line 241
    const/4 v0, 0x4

    new-array v1, v0, [J

    .local v1, "f":[J
    new-array v2, v0, [J

    .line 242
    .local v2, "g":[J
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    .line 243
    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implExpand([J[J)V

    .line 245
    const/16 v5, 0x8

    new-array v6, v5, [J

    .line 247
    .local v6, "u":[J
    const/4 v5, 0x0

    aget-wide v7, v1, v5

    aget-wide v9, v2, v5

    const/4 v12, 0x0

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 248
    const/4 v13, 0x1

    aget-wide v7, v1, v13

    aget-wide v9, v2, v13

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 249
    const/4 v14, 0x2

    aget-wide v7, v1, v14

    aget-wide v9, v2, v14

    const/4 v12, 0x2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 250
    const/4 v15, 0x3

    aget-wide v7, v1, v15

    aget-wide v9, v2, v15

    const/4 v12, 0x3

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 253
    const/4 v7, 0x5

    .local v7, "i":I
    :goto_0
    if-lez v7, :cond_0

    .line 255
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x1

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 253
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    .line 258
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

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 259
    aget-wide v7, v1, v14

    aget-wide v9, v1, v15

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v15

    xor-long/2addr v9, v11

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 262
    const/4 v7, 0x7

    .restart local v7    # "i":I
    :goto_1
    if-le v7, v13, :cond_1

    .line 264
    aget-wide v8, p2, v7

    add-int/lit8 v10, v7, -0x2

    aget-wide v10, p2, v10

    xor-long/2addr v8, v10

    aput-wide v8, p2, v7

    .line 262
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 269
    .end local v7    # "i":I
    :cond_1
    aget-wide v7, v1, v5

    aget-wide v9, v1, v14

    xor-long v16, v7, v9

    .local v16, "c0":J
    aget-wide v7, v1, v13

    aget-wide v9, v1, v15

    xor-long v18, v7, v9

    .line 270
    .local v18, "c1":J
    aget-wide v7, v2, v5

    aget-wide v9, v2, v14

    xor-long v20, v7, v9

    .local v20, "d0":J
    aget-wide v7, v2, v13

    aget-wide v9, v2, v15

    xor-long v22, v7, v9

    .line 271
    .local v22, "d1":J
    xor-long v7, v16, v18

    xor-long v9, v20, v22

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 272
    new-array v11, v15, [J

    .line 273
    .local v11, "t":[J
    const/4 v12, 0x0

    move-wide/from16 v7, v16

    move-wide/from16 v9, v20

    .end local v16    # "c0":J
    .end local v20    # "d0":J
    .local v7, "c0":J
    .local v9, "d0":J
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 274
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
    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMulwAcc([JJJ[JI)V

    .line 275
    aget-wide v18, v11, v5

    .local v18, "t0":J
    aget-wide v12, v11, v13

    .local v12, "t1":J
    aget-wide v22, v11, v14

    .line 276
    .local v22, "t2":J
    aget-wide v24, p2, v14

    xor-long v24, v24, v18

    aput-wide v24, p2, v14

    .line 277
    aget-wide v24, p2, v15

    xor-long v26, v18, v12

    xor-long v24, v24, v26

    aput-wide v24, p2, v15

    .line 278
    aget-wide v14, p2, v0

    xor-long v24, v22, v12

    xor-long v14, v14, v24

    aput-wide v14, p2, v0

    .line 279
    const/4 v0, 0x5

    aget-wide v14, p2, v0

    xor-long v14, v14, v22

    aput-wide v14, p2, v0

    .line 282
    .end local v7    # "c1":J
    .end local v9    # "d1":J
    .end local v11    # "t":[J
    .end local v12    # "t1":J
    .end local v16    # "c0":J
    .end local v18    # "t0":J
    .end local v20    # "d0":J
    .end local v22    # "t2":J
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implCompactExt([J)V

    .line 283
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

    .line 291
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 292
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 293
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 294
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 295
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 296
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 297
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v5, 0x7

    aput-wide v2, p0, v5

    .line 299
    long-to-int v2, v0

    .line 300
    .local v2, "j":I
    const-wide/16 v7, 0x0

    .local v7, "h":J
    and-int/lit8 v3, v2, 0x7

    aget-wide v9, p0, v3

    ushr-int/lit8 v3, v2, 0x3

    and-int/2addr v3, v5

    aget-wide v11, p0, v3

    shl-long/2addr v11, v6

    xor-long/2addr v9, v11

    .line 302
    .local v9, "l":J
    const/16 v3, 0x24

    .line 305
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 306
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

    ushr-int/lit8 v13, v2, 0x9

    and-int/2addr v13, v5

    aget-wide v13, p0, v13

    const/16 v15, 0x9

    shl-long/2addr v13, v15

    xor-long/2addr v11, v13

    ushr-int/lit8 v13, v2, 0xc

    and-int/2addr v13, v5

    aget-wide v13, p0, v13

    const/16 v15, 0xc

    shl-long/2addr v13, v15

    xor-long/2addr v11, v13

    .line 311
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 312
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 314
    add-int/lit8 v3, v3, -0xf

    if-gtz v3, :cond_0

    .line 318
    aget-wide v4, p5, p6

    const-wide v13, 0x1ffffffffffffL

    and-long/2addr v13, v9

    xor-long/2addr v4, v13

    aput-wide v4, p5, p6

    .line 319
    add-int/lit8 v4, p6, 0x1

    aget-wide v5, p5, v4

    const/16 v13, 0x31

    ushr-long v13, v9, v13

    const/16 v15, 0xf

    shl-long v15, v7, v15

    xor-long/2addr v13, v15

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 320
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 4
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

    .line 324
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 325
    aget-wide v0, p0, v1

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const/4 v2, 0x6

    aput-wide v0, p1, v2

    .line 326
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

    .line 71
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat256;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v0

    .line 79
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->create64()[J

    move-result-object v1

    .line 81
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->square([J[J)V

    .line 84
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 85
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 86
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 87
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 90
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 94
    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 95
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 98
    const/16 v2, 0xc

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 99
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 102
    const/16 v2, 0x18

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 103
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 106
    const/16 v2, 0x30

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 107
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 110
    const/16 v2, 0x60

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->squareN([JI[J)V

    .line 111
    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->multiply([J[J[J)V

    .line 112
    return-void

    .line 73
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

    .line 116
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 117
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 118
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 119
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

    .line 123
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 124
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implMultiply([J[J[J)V

    .line 125
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    .line 126
    return-void
.end method

.method public static reduce([J[J)V
    .locals 26
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

    .line 130
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

    .local v10, "x3":J
    const/4 v12, 0x4

    aget-wide v12, p0, v12

    .local v12, "x4":J
    const/4 v14, 0x5

    aget-wide v14, p0, v14

    .local v14, "x5":J
    const/16 v16, 0x6

    aget-wide v16, p0, v16

    .line 132
    .local v16, "x6":J
    const/16 v18, 0x3f

    shl-long v19, v16, v18

    xor-long v7, v7, v19

    .line 133
    ushr-long v19, v16, v3

    const/16 v21, 0xe

    shl-long v22, v16, v21

    xor-long v19, v19, v22

    xor-long v10, v10, v19

    .line 134
    const/16 v19, 0x32

    ushr-long v22, v16, v19

    xor-long v12, v12, v22

    .line 136
    shl-long v22, v14, v18

    xor-long v4, v4, v22

    .line 137
    ushr-long v22, v14, v3

    shl-long v24, v14, v21

    xor-long v22, v22, v24

    xor-long v7, v7, v22

    .line 138
    ushr-long v22, v14, v19

    xor-long v10, v10, v22

    .line 140
    shl-long v22, v12, v18

    xor-long v1, v1, v22

    .line 141
    ushr-long v22, v12, v3

    shl-long v20, v12, v21

    xor-long v20, v22, v20

    xor-long v4, v4, v20

    .line 142
    ushr-long v18, v12, v19

    xor-long v7, v7, v18

    .line 144
    ushr-long v18, v10, v3

    .line 145
    .local v18, "t":J
    xor-long v20, v1, v18

    const/16 v22, 0xf

    shl-long v22, v18, v22

    xor-long v20, v20, v22

    aput-wide v20, p1, v0

    .line 146
    const/16 v0, 0x31

    ushr-long v20, v18, v0

    xor-long v20, v4, v20

    aput-wide v20, p1, v3

    .line 147
    aput-wide v7, p1, v6

    .line 148
    const-wide/16 v20, 0x1

    and-long v20, v10, v20

    aput-wide v20, p1, v9

    .line 149
    return-void
.end method

.method public static reduce63([JI)V
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

    .line 153
    add-int/lit8 v0, p1, 0x3

    aget-wide v0, p0, v0

    .local v0, "z3":J
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    .line 154
    .local v2, "t":J
    aget-wide v4, p0, p1

    const/16 v6, 0xf

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 155
    add-int/lit8 v4, p1, 0x1

    aget-wide v5, p0, v4

    const/16 v7, 0x31

    ushr-long v7, v2, v7

    xor-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 156
    add-int/lit8 v4, p1, 0x3

    const-wide/16 v5, 0x1

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 157
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 21
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

    .line 162
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    .local v1, "u0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    .line 163
    .local v4, "u1":J
    const-wide v6, 0xffffffffL

    and-long v8, v1, v6

    const/16 v10, 0x20

    shl-long v11, v4, v10

    or-long/2addr v8, v11

    .line 164
    .local v8, "e0":J
    ushr-long v11, v1, v10

    const-wide v13, -0x100000000L

    and-long/2addr v13, v4

    or-long/2addr v11, v13

    .line 166
    .local v11, "c0":J
    const/4 v13, 0x2

    aget-wide v14, p0, v13

    invoke-static {v14, v15}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    .line 167
    and-long/2addr v6, v1

    const/4 v14, 0x3

    aget-wide v15, p0, v14

    shl-long/2addr v15, v10

    xor-long/2addr v6, v15

    .line 168
    .local v6, "e1":J
    ushr-long v15, v1, v10

    .line 170
    .local v15, "c1":J
    const/16 v10, 0x8

    shl-long v17, v11, v10

    xor-long v17, v8, v17

    aput-wide v17, p1, v0

    .line 171
    shl-long v17, v15, v10

    xor-long v17, v6, v17

    const/16 v0, 0x38

    ushr-long v19, v11, v0

    xor-long v17, v17, v19

    const/16 v10, 0x21

    shl-long v19, v11, v10

    xor-long v17, v17, v19

    aput-wide v17, p1, v3

    .line 172
    ushr-long v17, v15, v0

    shl-long v19, v15, v10

    xor-long v17, v17, v19

    const/16 v0, 0x1f

    ushr-long v19, v11, v0

    xor-long v17, v17, v19

    aput-wide v17, p1, v13

    .line 173
    ushr-long v17, v15, v0

    aput-wide v17, p1, v14

    .line 174
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

    .line 178
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 179
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 180
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 181
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

    .line 185
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 186
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 187
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->addExt([J[J[J)V

    .line 188
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

    .line 194
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat256;->createExt64()[J

    move-result-object v0

    .line 195
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 196
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    .line 198
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 200
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->implSquare([J[J)V

    .line 201
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT193Field;->reduce([J[J)V

    goto :goto_0

    .line 203
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

    .line 208
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

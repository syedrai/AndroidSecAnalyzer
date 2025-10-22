.class public Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;
.super Ljava/lang/Object;
.source "SecT163Field.java"


# static fields
.field private static final M35:J = 0x7ffffffffL

.field private static final M55:J = 0x7fffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        -0x4924924924924950L    # -1.921780751074024E-44
        0x492492492492db6dL    # 2.293790934720842E44
        0x492492492L
    .end array-data
.end method

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

    .line 18
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 19
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 20
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 21
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

    .line 25
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 26
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 27
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 28
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 29
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 30
    const/4 v0, 0x5

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

    .line 42
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 43
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 44
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 45
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

    .line 49
    const/16 v0, 0xa3

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

    .line 54
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 56
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->copy64([J[J)V

    .line 57
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa3

    if-ge v1, v2, :cond_0

    .line 59
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 60
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    .line 61
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 62
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    .line 63
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->addTo([J[J)V

    .line 57
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implCompactExt([J)V
    .locals 22
    .param p0, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 206
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

    .line 207
    .local v16, "z5":J
    const/16 v18, 0x37

    shl-long v18, v4, v18

    xor-long v18, v1, v18

    aput-wide v18, p0, v0

    .line 208
    const/16 v0, 0x9

    ushr-long v18, v4, v0

    const/16 v0, 0x2e

    shl-long v20, v7, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v3

    .line 209
    const/16 v0, 0x12

    ushr-long v18, v7, v0

    const/16 v0, 0x25

    shl-long v20, v10, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v6

    .line 210
    const/16 v0, 0x1b

    ushr-long v18, v10, v0

    const/16 v0, 0x1c

    shl-long v20, v13, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v9

    .line 211
    const/16 v0, 0x24

    ushr-long v18, v13, v0

    const/16 v0, 0x13

    shl-long v20, v16, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v12

    .line 212
    const/16 v0, 0x2d

    ushr-long v18, v16, v0

    aput-wide v18, p0, v15

    .line 213
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 60
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

    .line 221
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "f0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "f1":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .line 222
    .local v7, "f2":J
    const/16 v9, 0x2e

    ushr-long v10, v4, v9

    const/16 v12, 0x12

    shl-long v13, v7, v12

    xor-long v16, v10, v13

    .line 223
    .end local v7    # "f2":J
    .local v16, "f2":J
    const/16 v7, 0x37

    ushr-long v10, v1, v7

    const/16 v8, 0x9

    shl-long v13, v4, v8

    xor-long/2addr v10, v13

    const-wide v13, 0x7fffffffffffffL

    and-long v4, v10, v13

    .line 224
    and-long v19, v1, v13

    .line 226
    .end local v1    # "f0":J
    .local v19, "f0":J
    aget-wide v1, p1, v0

    .local v1, "g0":J
    aget-wide v10, p1, v3

    .local v10, "g1":J
    aget-wide v21, p1, v6

    .line 227
    .local v21, "g2":J
    ushr-long v23, v10, v9

    shl-long v25, v21, v12

    xor-long v25, v23, v25

    .line 228
    .end local v21    # "g2":J
    .local v25, "g2":J
    ushr-long v21, v1, v7

    shl-long v23, v10, v8

    xor-long v21, v21, v23

    and-long v9, v21, v13

    .line 229
    .end local v10    # "g1":J
    .local v9, "g1":J
    and-long v21, v1, v13

    .line 231
    .end local v1    # "g0":J
    .local v21, "g0":J
    move-object/from16 v27, p2

    .line 232
    .local v27, "u":[J
    const/16 v1, 0xa

    new-array v1, v1, [J

    .line 234
    .local v1, "H":[J
    const/16 v24, 0x0

    move-object/from16 v23, v1

    move-object/from16 v18, v27

    .end local v1    # "H":[J
    .end local v27    # "u":[J
    .local v18, "u":[J
    .local v23, "H":[J
    invoke-static/range {v18 .. v24}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw([JJJ[JI)V

    .line 235
    move-wide/from16 v1, v19

    move-wide/from16 v11, v21

    move-object/from16 v32, v23

    .end local v18    # "u":[J
    .end local v19    # "f0":J
    .end local v21    # "g0":J
    .end local v23    # "H":[J
    .local v1, "f0":J
    .local v11, "g0":J
    .restart local v27    # "u":[J
    .local v32, "H":[J
    const/16 v21, 0x2

    move-wide/from16 v18, v25

    move-object/from16 v15, v27

    move-object/from16 v20, v32

    .end local v25    # "g2":J
    .end local v27    # "u":[J
    .end local v32    # "H":[J
    .local v15, "u":[J
    .local v18, "g2":J
    .local v20, "H":[J
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw([JJJ[JI)V

    .line 237
    .end local v15    # "u":[J
    .end local v20    # "H":[J
    .restart local v27    # "u":[J
    .restart local v32    # "H":[J
    xor-long v20, v1, v4

    xor-long v28, v20, v16

    .line 238
    .local v28, "t0":J
    xor-long v20, v11, v9

    xor-long v30, v20, v18

    .line 240
    .local v30, "t1":J
    const/16 v33, 0x4

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw([JJJ[JI)V

    .line 242
    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    .end local v28    # "t0":J
    .end local v30    # "t1":J
    .local v20, "t0":J
    .local v22, "t1":J
    shl-long v24, v4, v3

    shl-long v28, v16, v6

    xor-long v24, v24, v28

    .line 243
    .local v24, "t2":J
    shl-long v28, v9, v3

    shl-long v30, v18, v6

    xor-long v34, v28, v30

    .line 245
    .local v34, "t3":J
    xor-long v28, v1, v24

    xor-long v30, v11, v34

    const/16 v33, 0x6

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw([JJJ[JI)V

    .line 246
    xor-long v28, v20, v24

    xor-long v30, v22, v34

    const/16 v33, 0x8

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMulw([JJJ[JI)V

    .line 248
    const/4 v15, 0x6

    aget-wide v28, v32, v15

    const/16 v26, 0x8

    aget-wide v30, v32, v26

    xor-long v28, v28, v30

    .line 249
    .local v28, "t4":J
    const/16 v30, 0x7

    aget-wide v36, v32, v30

    aget-wide v38, v32, v8

    xor-long v36, v36, v38

    .line 254
    .local v36, "t5":J
    shl-long v38, v28, v3

    aget-wide v40, v32, v15

    xor-long v38, v38, v40

    .line 255
    .local v38, "v0":J
    shl-long v40, v36, v3

    xor-long v40, v28, v40

    aget-wide v30, v32, v30

    xor-long v30, v40, v30

    .line 256
    .local v30, "v1":J
    move-wide/from16 v40, v36

    .line 259
    .local v40, "v2":J
    aget-wide v42, v32, v0

    .line 260
    .local v42, "u0":J
    aget-wide v44, v32, v3

    aget-wide v46, v32, v0

    xor-long v44, v44, v46

    const/4 v8, 0x4

    aget-wide v46, v32, v8

    xor-long v44, v44, v46

    .line 261
    .local v44, "u1":J
    aget-wide v46, v32, v3

    const/4 v15, 0x5

    aget-wide v48, v32, v15

    xor-long v46, v46, v48

    .line 264
    .local v46, "u2":J
    xor-long v48, v42, v38

    aget-wide v50, v32, v6

    shl-long v50, v50, v8

    xor-long v48, v48, v50

    aget-wide v50, v32, v6

    shl-long v50, v50, v3

    xor-long v48, v48, v50

    .line 265
    .local v48, "w0":J
    xor-long v50, v44, v30

    const/16 v33, 0x3

    aget-wide v52, v32, v33

    shl-long v52, v52, v8

    xor-long v50, v50, v52

    aget-wide v52, v32, v33

    shl-long v52, v52, v3

    xor-long v50, v50, v52

    .line 266
    .local v50, "w1":J
    xor-long v52, v46, v40

    .line 269
    .local v52, "w2":J
    ushr-long v54, v48, v7

    xor-long v50, v50, v54

    and-long v48, v48, v13

    .line 270
    ushr-long v54, v50, v7

    xor-long v52, v52, v54

    and-long v50, v50, v13

    .line 276
    ushr-long v54, v48, v3

    const-wide/16 v56, 0x1

    and-long v58, v50, v56

    const/16 v7, 0x36

    shl-long v58, v58, v7

    xor-long v48, v54, v58

    .line 277
    ushr-long v54, v50, v3

    and-long v56, v52, v56

    shl-long v56, v56, v7

    xor-long v50, v54, v56

    .line 278
    ushr-long v52, v52, v3

    .line 282
    shl-long v54, v48, v3

    xor-long v48, v48, v54

    .line 283
    shl-long v54, v48, v6

    xor-long v48, v48, v54

    .line 284
    shl-long v54, v48, v8

    xor-long v48, v48, v54

    .line 285
    shl-long v54, v48, v26

    xor-long v48, v48, v54

    .line 286
    const/16 v54, 0x10

    shl-long v55, v48, v54

    xor-long v48, v48, v55

    .line 287
    const/16 v55, 0x20

    shl-long v56, v48, v55

    xor-long v48, v48, v56

    .line 289
    and-long v48, v48, v13

    ushr-long v56, v48, v7

    xor-long v50, v50, v56

    .line 291
    shl-long v56, v50, v3

    xor-long v50, v50, v56

    .line 292
    shl-long v56, v50, v6

    xor-long v50, v50, v56

    .line 293
    shl-long v56, v50, v8

    xor-long v50, v50, v56

    .line 294
    shl-long v56, v50, v26

    xor-long v50, v50, v56

    .line 295
    shl-long v56, v50, v54

    xor-long v50, v50, v56

    .line 296
    shl-long v56, v50, v55

    xor-long v50, v50, v56

    .line 298
    and-long v13, v50, v13

    .end local v50    # "w1":J
    .local v13, "w1":J
    ushr-long v50, v13, v7

    xor-long v50, v52, v50

    .line 300
    .end local v52    # "w2":J
    .local v50, "w2":J
    shl-long v52, v50, v3

    xor-long v50, v50, v52

    .line 301
    shl-long v52, v50, v6

    xor-long v50, v50, v52

    .line 302
    shl-long v52, v50, v8

    xor-long v50, v50, v52

    .line 303
    shl-long v52, v50, v26

    xor-long v50, v50, v52

    .line 304
    shl-long v52, v50, v54

    xor-long v50, v50, v52

    .line 305
    shl-long v52, v50, v55

    xor-long v50, v50, v52

    .line 309
    aput-wide v42, p2, v0

    .line 310
    xor-long v52, v44, v48

    aget-wide v54, v32, v6

    xor-long v52, v52, v54

    aput-wide v52, p2, v3

    .line 311
    xor-long v52, v46, v13

    xor-long v52, v52, v48

    aget-wide v54, v32, v33

    xor-long v52, v52, v54

    aput-wide v52, p2, v6

    .line 312
    xor-long v52, v50, v13

    aput-wide v52, p2, v33

    .line 313
    aget-wide v6, v32, v6

    xor-long v6, v50, v6

    aput-wide v6, p2, v8

    .line 314
    aget-wide v6, v32, v33

    aput-wide v6, p2, v15

    .line 316
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implCompactExt([J)V

    .line 317
    return-void
.end method

.method protected static implMulw([JJJ[JI)V
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

    .line 325
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 326
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 327
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 328
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 329
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 330
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 331
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v5, 0x7

    aput-wide v2, p0, v5

    .line 333
    long-to-int v2, v0

    .line 334
    .local v2, "j":I
    const-wide/16 v7, 0x0

    .local v7, "h":J
    and-int/lit8 v3, v2, 0x3

    aget-wide v9, p0, v3

    .line 335
    .local v9, "l":J
    const/16 v3, 0x2f

    .line 338
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 339
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

    .line 342
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 343
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 345
    add-int/lit8 v3, v3, -0x9

    if-gtz v3, :cond_0

    .line 349
    const-wide v4, 0x7fffffffffffffL

    and-long/2addr v4, v9

    aput-wide v4, p5, p6

    .line 350
    add-int/lit8 v4, p6, 0x1

    const/16 v5, 0x37

    ushr-long v5, v9, v5

    const/16 v13, 0x9

    shl-long v13, v7, v13

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 351
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

    .line 355
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 356
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

    .line 69
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 77
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    .line 79
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->square([J[J)V

    .line 82
    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 83
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 84
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 85
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 88
    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 89
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 90
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 91
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 94
    const/16 v2, 0x9

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 95
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 96
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 97
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 100
    const/16 v2, 0x1b

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 101
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 102
    invoke-static {v1, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 103
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 106
    const/16 v2, 0x51

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->squareN([JI[J)V

    .line 107
    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 108
    return-void

    .line 71
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

    .line 112
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 113
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMultiply([J[J[J)V

    .line 114
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    .line 115
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

    .line 119
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 120
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implMultiply([J[J[J)V

    .line 121
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->addExt([J[J[J)V

    .line 122
    return-void
.end method

.method public static reduce([J[J)V
    .locals 25
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

    .line 126
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

    .line 128
    .local v14, "x5":J
    const/16 v16, 0x1d

    shl-long v17, v14, v16

    const/16 v19, 0x20

    shl-long v20, v14, v19

    xor-long v17, v17, v20

    const/16 v20, 0x23

    shl-long v21, v14, v20

    xor-long v17, v17, v21

    const/16 v21, 0x24

    shl-long v22, v14, v21

    xor-long v17, v17, v22

    xor-long v7, v7, v17

    .line 129
    ushr-long v17, v14, v20

    ushr-long v22, v14, v19

    xor-long v17, v17, v22

    ushr-long v22, v14, v16

    xor-long v17, v17, v22

    const/16 v22, 0x1c

    ushr-long v23, v14, v22

    xor-long v17, v17, v23

    xor-long v10, v10, v17

    .line 131
    shl-long v17, v12, v16

    shl-long v23, v12, v19

    xor-long v17, v17, v23

    shl-long v23, v12, v20

    xor-long v17, v17, v23

    shl-long v23, v12, v21

    xor-long v17, v17, v23

    xor-long v4, v4, v17

    .line 132
    ushr-long v17, v12, v20

    ushr-long v23, v12, v19

    xor-long v17, v17, v23

    ushr-long v23, v12, v16

    xor-long v17, v17, v23

    ushr-long v23, v12, v22

    xor-long v17, v17, v23

    xor-long v7, v7, v17

    .line 134
    shl-long v17, v10, v16

    shl-long v23, v10, v19

    xor-long v17, v17, v23

    shl-long v23, v10, v20

    xor-long v17, v17, v23

    shl-long v23, v10, v21

    xor-long v17, v17, v23

    xor-long v1, v1, v17

    .line 135
    ushr-long v17, v10, v20

    ushr-long v23, v10, v19

    xor-long v17, v17, v23

    ushr-long v23, v10, v16

    xor-long v17, v17, v23

    ushr-long v21, v10, v22

    xor-long v17, v17, v21

    xor-long v4, v4, v17

    .line 137
    ushr-long v16, v7, v20

    .line 138
    .local v16, "t":J
    xor-long v18, v1, v16

    shl-long v20, v16, v9

    xor-long v18, v18, v20

    const/4 v9, 0x6

    shl-long v20, v16, v9

    xor-long v18, v18, v20

    const/4 v9, 0x7

    shl-long v20, v16, v9

    xor-long v18, v18, v20

    aput-wide v18, p1, v0

    .line 139
    aput-wide v4, p1, v3

    .line 140
    const-wide v18, 0x7ffffffffL

    and-long v18, v7, v18

    aput-wide v18, p1, v6

    .line 141
    return-void
.end method

.method public static reduce29([JI)V
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

    .line 145
    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p0, v0

    .local v0, "z2":J
    const/16 v2, 0x23

    ushr-long v2, v0, v2

    .line 146
    .local v2, "t":J
    aget-wide v4, p0, p1

    const/4 v6, 0x3

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    const/4 v8, 0x6

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/4 v8, 0x7

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 147
    add-int/lit8 v4, p1, 0x2

    const-wide v5, 0x7ffffffffL

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 148
    return-void
.end method

.method public static sqrt([J[J)V
    .locals 17
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

    .line 152
    move-object/from16 v0, p1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    .line 155
    .local v1, "odd":[J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    invoke-static {v3, v4}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    .local v3, "u0":J
    const/4 v5, 0x1

    aget-wide v6, p0, v5

    invoke-static {v6, v7}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    .line 156
    .local v6, "u1":J
    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long/2addr v10, v13

    .line 157
    .local v10, "e0":J
    ushr-long v13, v3, v12

    const-wide v15, -0x100000000L

    and-long/2addr v15, v6

    or-long/2addr v13, v15

    aput-wide v13, v1, v2

    .line 159
    const/4 v13, 0x2

    aget-wide v13, p0, v13

    invoke-static {v13, v14}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    .line 160
    and-long/2addr v8, v3

    .line 161
    .local v8, "e1":J
    ushr-long v12, v3, v12

    aput-wide v12, v1, v5

    .line 163
    sget-object v12, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->ROOT_Z:[J

    invoke-static {v1, v12, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->multiply([J[J[J)V

    .line 165
    aget-wide v12, v0, v2

    xor-long/2addr v12, v10

    aput-wide v12, v0, v2

    .line 166
    aget-wide v12, v0, v5

    xor-long/2addr v12, v8

    aput-wide v12, v0, v5

    .line 167
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

    .line 171
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 172
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 173
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    .line 174
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

    .line 178
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 179
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 180
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->addExt([J[J[J)V

    .line 181
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

    .line 187
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt64()[J

    move-result-object v0

    .line 188
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 189
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    .line 191
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 193
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->implSquare([J[J)V

    .line 194
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT163Field;->reduce([J[J)V

    goto :goto_0

    .line 196
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

    .line 201
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x2

    aget-wide v2, p0, v2

    const/16 v4, 0x1d

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

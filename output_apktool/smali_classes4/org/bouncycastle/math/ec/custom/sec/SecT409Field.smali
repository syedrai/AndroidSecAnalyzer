.class public Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;
.super Ljava/lang/Object;
.source "SecT409Field.java"


# static fields
.field private static final M25:J = 0x1ffffffL

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
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 21
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 22
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 23
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

    .line 27
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    .line 29
    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 27
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 31
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
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 40
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 41
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 42
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

    .line 46
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 47
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 48
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 49
    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 50
    const/4 v0, 0x4

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 51
    const/4 v0, 0x5

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 52
    const/4 v0, 0x6

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 53
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

    .line 57
    const/16 v0, 0x199

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

    .line 62
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 64
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat448;->copy64([J[J)V

    .line 65
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x199

    if-ge v1, v2, :cond_0

    .line 67
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 68
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 69
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 70
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 71
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addTo([J[J)V

    .line 65
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implCompactExt([J)V
    .locals 45
    .param p0, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 262
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "z00":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "z01":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "z02":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .local v10, "z03":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .local v13, "z04":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "z05":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .line 263
    .local v19, "z06":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .local v22, "z07":J
    const/16 v24, 0x8

    aget-wide v25, p0, v24

    .local v25, "z08":J
    const/16 v27, 0x9

    aget-wide v28, p0, v27

    .local v28, "z09":J
    const/16 v30, 0xa

    aget-wide v31, p0, v30

    .local v31, "z10":J
    const/16 v33, 0xb

    aget-wide v34, p0, v33

    .local v34, "z11":J
    const/16 v36, 0xc

    aget-wide v37, p0, v36

    .local v37, "z12":J
    const/16 v39, 0xd

    aget-wide v39, p0, v39

    .line 264
    .local v39, "z13":J
    const/16 v41, 0x3b

    shl-long v41, v4, v41

    xor-long v41, v1, v41

    aput-wide v41, p0, v0

    .line 265
    ushr-long v41, v4, v15

    const/16 v0, 0x36

    shl-long v43, v7, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v3

    .line 266
    ushr-long v41, v7, v30

    const/16 v0, 0x31

    shl-long v43, v10, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v6

    .line 267
    const/16 v0, 0xf

    ushr-long v41, v10, v0

    const/16 v0, 0x2c

    shl-long v43, v13, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v9

    .line 268
    const/16 v0, 0x14

    ushr-long v41, v13, v0

    const/16 v0, 0x27

    shl-long v43, v16, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v12

    .line 269
    const/16 v0, 0x19

    ushr-long v41, v16, v0

    const/16 v0, 0x22

    shl-long v43, v19, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v15

    .line 270
    const/16 v0, 0x1e

    ushr-long v41, v19, v0

    const/16 v0, 0x1d

    shl-long v43, v22, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v18

    .line 271
    const/16 v0, 0x23

    ushr-long v41, v22, v0

    const/16 v0, 0x18

    shl-long v43, v25, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v21

    .line 272
    const/16 v0, 0x28

    ushr-long v41, v25, v0

    const/16 v0, 0x13

    shl-long v43, v28, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v24

    .line 273
    const/16 v0, 0x2d

    ushr-long v41, v28, v0

    const/16 v0, 0xe

    shl-long v43, v31, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v27

    .line 274
    const/16 v0, 0x32

    ushr-long v41, v31, v0

    shl-long v43, v34, v27

    xor-long v41, v41, v43

    aput-wide v41, p0, v30

    .line 275
    const/16 v0, 0x37

    ushr-long v41, v34, v0

    shl-long v43, v37, v12

    xor-long v41, v41, v43

    const/16 v0, 0x3f

    shl-long v43, v39, v0

    xor-long v41, v41, v43

    aput-wide v41, p0, v33

    .line 277
    ushr-long v41, v39, v3

    aput-wide v41, p0, v36

    .line 279
    return-void
.end method

.method protected static implExpand([J[J)V
    .locals 27
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

    .line 283
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

    aget-wide v13, p0, v12

    .local v13, "x4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "x5":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .line 284
    .local v19, "x6":J
    const-wide v21, 0x7ffffffffffffffL

    and-long v23, v1, v21

    aput-wide v23, p1, v0

    .line 285
    const/16 v0, 0x3b

    ushr-long v23, v1, v0

    shl-long v25, v4, v15

    xor-long v23, v23, v25

    and-long v23, v23, v21

    aput-wide v23, p1, v3

    .line 286
    const/16 v0, 0x36

    ushr-long v23, v4, v0

    const/16 v0, 0xa

    shl-long v25, v7, v0

    xor-long v23, v23, v25

    and-long v23, v23, v21

    aput-wide v23, p1, v6

    .line 287
    const/16 v0, 0x31

    ushr-long v23, v7, v0

    const/16 v0, 0xf

    shl-long v25, v10, v0

    xor-long v23, v23, v25

    and-long v23, v23, v21

    aput-wide v23, p1, v9

    .line 288
    const/16 v0, 0x2c

    ushr-long v23, v10, v0

    const/16 v0, 0x14

    shl-long v25, v13, v0

    xor-long v23, v23, v25

    and-long v23, v23, v21

    aput-wide v23, p1, v12

    .line 289
    const/16 v0, 0x27

    ushr-long v23, v13, v0

    const/16 v0, 0x19

    shl-long v25, v16, v0

    xor-long v23, v23, v25

    and-long v21, v23, v21

    aput-wide v21, p1, v15

    .line 290
    const/16 v0, 0x22

    ushr-long v21, v16, v0

    const/16 v0, 0x1e

    shl-long v23, v19, v0

    xor-long v21, v21, v23

    aput-wide v21, p1, v18

    .line 291
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

    .line 295
    const/4 v0, 0x7

    new-array v1, v0, [J

    .local v1, "a":[J
    new-array v2, v0, [J

    .line 296
    .local v2, "b":[J
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    .line 297
    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implExpand([J[J)V

    .line 299
    const/16 v5, 0x8

    new-array v6, v5, [J

    .line 300
    .local v6, "u":[J
    const/4 v7, 0x0

    move v13, v7

    .local v13, "i":I
    :goto_0
    if-ge v13, v0, :cond_0

    .line 302
    aget-wide v7, v1, v13

    aget-wide v9, v2, v13

    shl-int/lit8 v12, v13, 0x1

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 300
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 305
    .end local v13    # "i":I
    :cond_0
    const/4 v13, 0x0

    aget-wide v7, p2, v13

    .local v7, "v0":J
    const/4 v14, 0x1

    aget-wide v9, p2, v14

    .line 306
    .local v9, "v1":J
    const/4 v15, 0x2

    aget-wide v11, p2, v15

    xor-long/2addr v7, v11

    xor-long v11, v7, v9

    aput-wide v11, p2, v14

    const/16 v16, 0x3

    aget-wide v11, p2, v16

    xor-long/2addr v9, v11

    .line 307
    const/16 v17, 0x4

    aget-wide v11, p2, v17

    xor-long/2addr v7, v11

    xor-long v11, v7, v9

    aput-wide v11, p2, v15

    const/16 v18, 0x5

    aget-wide v11, p2, v18

    xor-long/2addr v9, v11

    .line 308
    const/16 v19, 0x6

    aget-wide v11, p2, v19

    xor-long/2addr v7, v11

    xor-long v11, v7, v9

    aput-wide v11, p2, v16

    aget-wide v11, p2, v0

    xor-long/2addr v9, v11

    .line 309
    aget-wide v11, p2, v5

    xor-long/2addr v7, v11

    xor-long v11, v7, v9

    aput-wide v11, p2, v17

    const/16 v11, 0x9

    aget-wide v20, p2, v11

    xor-long v9, v9, v20

    .line 310
    const/16 v12, 0xa

    aget-wide v20, p2, v12

    xor-long v7, v7, v20

    xor-long v20, v7, v9

    aput-wide v20, p2, v18

    const/16 v20, 0xb

    aget-wide v21, p2, v20

    xor-long v9, v9, v21

    .line 311
    const/16 v21, 0xc

    aget-wide v22, p2, v21

    xor-long v22, v7, v22

    .end local v7    # "v0":J
    .local v22, "v0":J
    xor-long v7, v22, v9

    aput-wide v7, p2, v19

    const/16 v7, 0xd

    aget-wide v24, p2, v7

    xor-long v24, v9, v24

    .line 313
    .end local v9    # "v1":J
    .local v24, "v1":J
    xor-long v26, v22, v24

    .line 314
    .local v26, "w":J
    aget-wide v8, p2, v13

    xor-long v8, v8, v26

    aput-wide v8, p2, v0

    .line 315
    aget-wide v8, p2, v14

    xor-long v8, v8, v26

    aput-wide v8, p2, v5

    .line 316
    aget-wide v8, p2, v15

    xor-long v8, v8, v26

    aput-wide v8, p2, v11

    .line 317
    aget-wide v8, p2, v16

    xor-long v8, v8, v26

    aput-wide v8, p2, v12

    .line 318
    aget-wide v8, p2, v17

    xor-long v8, v8, v26

    aput-wide v8, p2, v20

    .line 319
    aget-wide v8, p2, v18

    xor-long v8, v8, v26

    aput-wide v8, p2, v21

    .line 320
    aget-wide v8, p2, v19

    xor-long v8, v8, v26

    aput-wide v8, p2, v7

    .line 322
    aget-wide v7, v1, v13

    aget-wide v9, v1, v14

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v14

    xor-long/2addr v9, v11

    const/4 v12, 0x1

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 324
    aget-wide v7, v1, v13

    aget-wide v9, v1, v15

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v15

    xor-long/2addr v9, v11

    const/4 v12, 0x2

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 326
    aget-wide v7, v1, v13

    aget-wide v9, v1, v16

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v16

    xor-long/2addr v9, v11

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 327
    aget-wide v7, v1, v14

    aget-wide v9, v1, v15

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v15

    xor-long/2addr v9, v11

    const/4 v12, 0x3

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 329
    aget-wide v7, v1, v13

    aget-wide v9, v1, v17

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v17

    xor-long/2addr v9, v11

    const/4 v12, 0x4

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 330
    aget-wide v7, v1, v14

    aget-wide v9, v1, v16

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v16

    xor-long/2addr v9, v11

    const/4 v12, 0x4

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 332
    aget-wide v7, v1, v13

    aget-wide v9, v1, v18

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v18

    xor-long/2addr v9, v11

    const/4 v12, 0x5

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 333
    aget-wide v7, v1, v14

    aget-wide v9, v1, v17

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v17

    xor-long/2addr v9, v11

    const/4 v12, 0x5

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 334
    aget-wide v7, v1, v15

    aget-wide v9, v1, v16

    xor-long/2addr v7, v9

    aget-wide v9, v2, v15

    aget-wide v11, v2, v16

    xor-long/2addr v9, v11

    const/4 v12, 0x5

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 336
    aget-wide v7, v1, v13

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v13

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/4 v12, 0x6

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 337
    aget-wide v7, v1, v14

    aget-wide v9, v1, v18

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v18

    xor-long/2addr v9, v11

    const/4 v12, 0x6

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 338
    aget-wide v7, v1, v15

    aget-wide v9, v1, v17

    xor-long/2addr v7, v9

    aget-wide v9, v2, v15

    aget-wide v11, v2, v17

    xor-long/2addr v9, v11

    const/4 v12, 0x6

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 340
    aget-wide v7, v1, v14

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v14

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/4 v12, 0x7

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 341
    aget-wide v7, v1, v15

    aget-wide v9, v1, v18

    xor-long/2addr v7, v9

    aget-wide v9, v2, v15

    aget-wide v11, v2, v18

    xor-long/2addr v9, v11

    const/4 v12, 0x7

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 342
    aget-wide v7, v1, v16

    aget-wide v9, v1, v17

    xor-long/2addr v7, v9

    aget-wide v9, v2, v16

    aget-wide v11, v2, v17

    xor-long/2addr v9, v11

    const/4 v12, 0x7

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 344
    aget-wide v7, v1, v15

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v15

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/16 v12, 0x8

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 345
    aget-wide v7, v1, v16

    aget-wide v9, v1, v18

    xor-long/2addr v7, v9

    aget-wide v9, v2, v16

    aget-wide v11, v2, v18

    xor-long/2addr v9, v11

    const/16 v12, 0x8

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 347
    aget-wide v7, v1, v16

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v16

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/16 v12, 0x9

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 348
    aget-wide v7, v1, v17

    aget-wide v9, v1, v18

    xor-long/2addr v7, v9

    aget-wide v9, v2, v17

    aget-wide v11, v2, v18

    xor-long/2addr v9, v11

    const/16 v12, 0x9

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 350
    aget-wide v7, v1, v17

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v17

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/16 v12, 0xa

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 352
    aget-wide v7, v1, v18

    aget-wide v9, v1, v19

    xor-long/2addr v7, v9

    aget-wide v9, v2, v18

    aget-wide v11, v2, v19

    xor-long/2addr v9, v11

    const/16 v12, 0xb

    move-object/from16 v11, p2

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMulwAcc([JJJ[JI)V

    .line 354
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implCompactExt([J)V

    .line 355
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

    .line 363
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 364
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 365
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 366
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 367
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 368
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 369
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v4, 0x7

    aput-wide v2, p0, v4

    .line 371
    long-to-int v2, v0

    .line 372
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

    .line 374
    .local v9, "l":J
    const/16 v3, 0x36

    .line 377
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 378
    and-int/lit8 v11, v2, 0x7

    aget-wide v11, p0, v11

    ushr-int/lit8 v13, v2, 0x3

    and-int/2addr v13, v4

    aget-wide v13, p0, v13

    shl-long/2addr v13, v6

    xor-long/2addr v11, v13

    .line 380
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 381
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 383
    add-int/lit8 v3, v3, -0x6

    if-gtz v3, :cond_0

    .line 387
    aget-wide v13, p5, p6

    const-wide v15, 0x7ffffffffffffffL

    and-long/2addr v15, v9

    xor-long/2addr v13, v15

    aput-wide v13, p5, p6

    .line 388
    add-int/lit8 v4, p6, 0x1

    aget-wide v13, p5, v4

    const/16 v6, 0x3b

    ushr-long v15, v9, v6

    shl-long v5, v7, v5

    xor-long/2addr v5, v15

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 389
    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 3
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

    .line 393
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 394
    aget-wide v0, p0, v1

    long-to-int v1, v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v0

    const/16 v2, 0xc

    aput-wide v0, p1, v2

    .line 395
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

    .line 77
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat448;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v0

    .line 85
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v1

    .line 86
    .local v1, "t1":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v2

    .line 88
    .local v2, "t2":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->square([J[J)V

    .line 91
    const/4 v3, 0x1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 92
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 93
    invoke-static {v1, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 94
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 97
    const/4 v3, 0x3

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 98
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 101
    const/4 v3, 0x6

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 102
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 105
    const/16 v3, 0xc

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 106
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 109
    const/16 v3, 0x18

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 110
    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 111
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 114
    const/16 v3, 0x30

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 115
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 118
    const/16 v3, 0x60

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 119
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 122
    const/16 v3, 0xc0

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->squareN([JI[J)V

    .line 123
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 125
    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->multiply([J[J[J)V

    .line 126
    return-void

    .line 79
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

    .line 130
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    .line 131
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    .line 132
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 133
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

    .line 137
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->createExt64()[J

    move-result-object v0

    .line 138
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implMultiply([J[J[J)V

    .line 139
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    .line 140
    return-void
.end method

.method public static reduce([J[J)V
    .locals 32
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

    .line 144
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x00":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "x01":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "x02":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .line 145
    .local v10, "x03":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .local v13, "x04":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "x05":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "x06":J
    const/16 v21, 0x7

    aget-wide v21, p0, v21

    .line 147
    .local v21, "x07":J
    const/16 v23, 0xc

    aget-wide v23, p0, v23

    .line 148
    .local v23, "u":J
    const/16 v25, 0x27

    shl-long v26, v23, v25

    xor-long v16, v16, v26

    .line 149
    const/16 v26, 0x19

    ushr-long v27, v23, v26

    const/16 v29, 0x3e

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v19, v19, v27

    .line 150
    ushr-long v27, v23, v6

    xor-long v21, v21, v27

    .line 152
    const/16 v27, 0xb

    aget-wide v23, p0, v27

    .line 153
    shl-long v27, v23, v25

    xor-long v13, v13, v27

    .line 154
    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v16, v16, v27

    .line 155
    ushr-long v27, v23, v6

    xor-long v19, v19, v27

    .line 157
    const/16 v27, 0xa

    aget-wide v23, p0, v27

    .line 158
    shl-long v27, v23, v25

    xor-long v10, v10, v27

    .line 159
    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v13, v13, v27

    .line 160
    ushr-long v27, v23, v6

    xor-long v16, v16, v27

    .line 162
    const/16 v27, 0x9

    aget-wide v23, p0, v27

    .line 163
    shl-long v27, v23, v25

    xor-long v7, v7, v27

    .line 164
    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v10, v10, v27

    .line 165
    ushr-long v27, v23, v6

    xor-long v13, v13, v27

    .line 167
    const/16 v27, 0x8

    aget-wide v23, p0, v27

    .line 168
    shl-long v27, v23, v25

    xor-long v4, v4, v27

    .line 169
    ushr-long v27, v23, v26

    shl-long v30, v23, v29

    xor-long v27, v27, v30

    xor-long v7, v7, v27

    .line 170
    ushr-long v27, v23, v6

    xor-long v10, v10, v27

    .line 172
    move-wide/from16 v23, v21

    .line 173
    shl-long v27, v23, v25

    xor-long v1, v1, v27

    .line 174
    ushr-long v27, v23, v26

    shl-long v29, v23, v29

    xor-long v27, v27, v29

    xor-long v4, v4, v27

    .line 175
    ushr-long v27, v23, v6

    xor-long v7, v7, v27

    .line 177
    ushr-long v25, v19, v26

    .line 178
    .local v25, "t":J
    xor-long v27, v1, v25

    aput-wide v27, p1, v0

    .line 179
    const/16 v0, 0x17

    shl-long v27, v25, v0

    xor-long v27, v4, v27

    aput-wide v27, p1, v3

    .line 180
    aput-wide v7, p1, v6

    .line 181
    aput-wide v10, p1, v9

    .line 182
    aput-wide v13, p1, v12

    .line 183
    aput-wide v16, p1, v15

    .line 184
    const-wide/32 v27, 0x1ffffff

    and-long v27, v19, v27

    aput-wide v27, p1, v18

    .line 185
    return-void
.end method

.method public static reduce39([JI)V
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

    .line 189
    add-int/lit8 v0, p1, 0x6

    aget-wide v0, p0, v0

    .local v0, "z6":J
    const/16 v2, 0x19

    ushr-long v2, v0, v2

    .line 190
    .local v2, "t":J
    aget-wide v4, p0, p1

    xor-long/2addr v4, v2

    aput-wide v4, p0, p1

    .line 191
    add-int/lit8 v4, p1, 0x1

    aget-wide v5, p0, v4

    const/16 v7, 0x17

    shl-long v7, v2, v7

    xor-long/2addr v5, v7

    aput-wide v5, p0, v4

    .line 192
    add-int/lit8 v4, p1, 0x6

    const-wide/32 v5, 0x1ffffff

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 193
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

    .line 198
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    .local v1, "u0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    .line 199
    .local v4, "u1":J
    const-wide v6, 0xffffffffL

    and-long v8, v1, v6

    const/16 v10, 0x20

    shl-long v11, v4, v10

    or-long/2addr v8, v11

    .line 200
    .local v8, "e0":J
    ushr-long v11, v1, v10

    const-wide v13, -0x100000000L

    and-long v15, v4, v13

    or-long/2addr v11, v15

    .line 202
    .local v11, "c0":J
    const/4 v15, 0x2

    aget-wide v16, p0, v15

    invoke-static/range {v16 .. v17}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    const/16 v16, 0x3

    aget-wide v17, p0, v16

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    .line 203
    and-long v17, v1, v6

    shl-long v19, v4, v10

    or-long v17, v17, v19

    .line 204
    .local v17, "e1":J
    ushr-long v19, v1, v10

    and-long v21, v4, v13

    or-long v19, v19, v21

    .line 206
    .local v19, "c1":J
    const/16 v21, 0x4

    aget-wide v22, p0, v21

    invoke-static/range {v22 .. v23}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    const/16 v22, 0x5

    aget-wide v23, p0, v22

    invoke-static/range {v23 .. v24}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    .line 207
    and-long v23, v1, v6

    shl-long v25, v4, v10

    or-long v23, v23, v25

    .line 208
    .local v23, "e2":J
    ushr-long v25, v1, v10

    and-long/2addr v13, v4

    or-long v13, v25, v13

    .line 210
    .local v13, "c2":J
    const/16 v25, 0x6

    aget-wide v26, p0, v25

    invoke-static/range {v26 .. v27}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v1

    .line 211
    and-long/2addr v6, v1

    .line 212
    .local v6, "e3":J
    ushr-long v26, v1, v10

    .line 214
    .local v26, "c3":J
    const/16 v10, 0x2c

    shl-long v28, v11, v10

    xor-long v28, v8, v28

    aput-wide v28, p1, v0

    .line 215
    shl-long v28, v19, v10

    xor-long v28, v17, v28

    const/16 v0, 0x14

    ushr-long v30, v11, v0

    xor-long v28, v28, v30

    aput-wide v28, p1, v3

    .line 216
    shl-long v28, v13, v10

    xor-long v28, v23, v28

    ushr-long v30, v19, v0

    xor-long v28, v28, v30

    aput-wide v28, p1, v15

    .line 217
    shl-long v28, v26, v10

    xor-long v28, v6, v28

    ushr-long v30, v13, v0

    xor-long v28, v28, v30

    const/16 v3, 0xd

    shl-long v30, v11, v3

    xor-long v28, v28, v30

    aput-wide v28, p1, v16

    .line 218
    ushr-long v15, v26, v0

    shl-long v28, v19, v3

    xor-long v15, v15, v28

    const/16 v0, 0x33

    ushr-long v28, v11, v0

    xor-long v15, v15, v28

    aput-wide v15, p1, v21

    .line 219
    shl-long v15, v13, v3

    ushr-long v28, v19, v0

    xor-long v15, v15, v28

    aput-wide v15, p1, v22

    .line 220
    shl-long v15, v26, v3

    ushr-long v21, v13, v0

    xor-long v15, v15, v21

    aput-wide v15, p1, v25

    .line 223
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

    .line 227
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 228
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 229
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 230
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

    .line 234
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 235
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 236
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->addExt([J[J[J)V

    .line 237
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

    .line 243
    const/16 v0, 0xd

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 244
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 245
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    .line 247
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 249
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->implSquare([J[J)V

    .line 250
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT409Field;->reduce([J[J)V

    goto :goto_0

    .line 252
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

    .line 257
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

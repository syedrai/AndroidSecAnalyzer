.class public Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;
.super Ljava/lang/Object;
.source "SecT131Field.java"


# static fields
.field private static final M03:J = 0x7L

.field private static final M44:J = 0xfffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x26bc4d789af13523L
        0x26bc4d789af135e2L    # 4.281425911902527E-122
        0x6
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

    .line 34
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 35
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 36
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 37
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

    .line 41
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 42
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 43
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 44
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

    .line 48
    const/16 v0, 0x83

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

    .line 53
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 55
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->copy64([J[J)V

    .line 56
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x83

    if-ge v1, v2, :cond_0

    .line 58
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 59
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    .line 60
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 61
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    .line 62
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addTo([J[J)V

    .line 56
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 64
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

    .line 193
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

    .line 194
    .local v16, "z5":J
    const/16 v18, 0x2c

    shl-long v18, v4, v18

    xor-long v18, v1, v18

    aput-wide v18, p0, v0

    .line 195
    const/16 v0, 0x14

    ushr-long v18, v4, v0

    const/16 v0, 0x18

    shl-long v20, v7, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v3

    .line 196
    const/16 v0, 0x28

    ushr-long v18, v7, v0

    shl-long v20, v10, v12

    xor-long v18, v18, v20

    const/16 v0, 0x30

    shl-long v20, v13, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v6

    .line 198
    const/16 v0, 0x3c

    ushr-long v18, v10, v0

    const/16 v0, 0x1c

    shl-long v20, v16, v0

    xor-long v18, v18, v20

    const/16 v0, 0x10

    ushr-long v20, v13, v0

    xor-long v18, v18, v20

    aput-wide v18, p0, v9

    .line 200
    const/16 v0, 0x24

    ushr-long v18, v16, v0

    aput-wide v18, p0, v12

    .line 201
    const-wide/16 v18, 0x0

    aput-wide v18, p0, v15

    .line 202
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

    .line 210
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "f0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "f1":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .line 211
    .local v7, "f2":J
    const/16 v9, 0x18

    ushr-long v10, v4, v9

    const/16 v12, 0x28

    shl-long v13, v7, v12

    xor-long/2addr v10, v13

    const-wide v13, 0xfffffffffffL

    and-long v16, v10, v13

    .line 212
    .end local v7    # "f2":J
    .local v16, "f2":J
    const/16 v7, 0x2c

    ushr-long v10, v1, v7

    const/16 v8, 0x14

    shl-long v18, v4, v8

    xor-long v10, v10, v18

    and-long v4, v10, v13

    .line 213
    and-long v19, v1, v13

    .line 215
    .end local v1    # "f0":J
    .local v19, "f0":J
    aget-wide v1, p1, v0

    .local v1, "g0":J
    aget-wide v10, p1, v3

    .local v10, "g1":J
    aget-wide v21, p1, v6

    .line 216
    .local v21, "g2":J
    ushr-long v23, v10, v9

    shl-long v25, v21, v12

    xor-long v23, v23, v25

    and-long v25, v23, v13

    .line 217
    .end local v21    # "g2":J
    .local v25, "g2":J
    ushr-long v21, v1, v7

    shl-long v8, v10, v8

    xor-long v8, v21, v8

    and-long/2addr v8, v13

    .line 218
    .end local v10    # "g1":J
    .local v8, "g1":J
    and-long v21, v1, v13

    .line 220
    .end local v1    # "g0":J
    .local v21, "g0":J
    move-object/from16 v27, p2

    .line 221
    .local v27, "u":[J
    const/16 v1, 0xa

    new-array v1, v1, [J

    .line 223
    .local v1, "H":[J
    const/16 v24, 0x0

    move-object/from16 v23, v1

    move-object/from16 v18, v27

    .end local v1    # "H":[J
    .end local v27    # "u":[J
    .local v18, "u":[J
    .local v23, "H":[J
    invoke-static/range {v18 .. v24}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw([JJJ[JI)V

    .line 224
    move-wide/from16 v1, v19

    move-wide/from16 v10, v21

    move-object/from16 v32, v23

    .end local v18    # "u":[J
    .end local v19    # "f0":J
    .end local v21    # "g0":J
    .end local v23    # "H":[J
    .local v1, "f0":J
    .local v10, "g0":J
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
    invoke-static/range {v15 .. v21}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw([JJJ[JI)V

    .line 226
    .end local v15    # "u":[J
    .end local v20    # "H":[J
    .restart local v27    # "u":[J
    .restart local v32    # "H":[J
    xor-long v20, v1, v4

    xor-long v28, v20, v16

    .line 227
    .local v28, "t0":J
    xor-long v20, v10, v8

    xor-long v30, v20, v18

    .line 229
    .local v30, "t1":J
    const/16 v33, 0x4

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw([JJJ[JI)V

    .line 231
    move-wide/from16 v20, v28

    move-wide/from16 v22, v30

    .end local v28    # "t0":J
    .end local v30    # "t1":J
    .local v20, "t0":J
    .local v22, "t1":J
    shl-long v24, v4, v3

    shl-long v28, v16, v6

    xor-long v24, v24, v28

    .line 232
    .local v24, "t2":J
    shl-long v28, v8, v3

    shl-long v30, v18, v6

    xor-long v34, v28, v30

    .line 234
    .local v34, "t3":J
    xor-long v28, v1, v24

    xor-long v30, v10, v34

    const/16 v33, 0x6

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw([JJJ[JI)V

    .line 235
    xor-long v28, v20, v24

    xor-long v30, v22, v34

    const/16 v33, 0x8

    invoke-static/range {v27 .. v33}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMulw([JJJ[JI)V

    .line 237
    const/4 v12, 0x6

    aget-wide v28, v32, v12

    const/16 v15, 0x8

    aget-wide v30, v32, v15

    xor-long v28, v28, v30

    .line 238
    .local v28, "t4":J
    const/16 v26, 0x7

    aget-wide v30, v32, v26

    const/16 v33, 0x9

    aget-wide v36, v32, v33

    xor-long v30, v30, v36

    .line 243
    .local v30, "t5":J
    shl-long v36, v28, v3

    aget-wide v38, v32, v12

    xor-long v36, v36, v38

    .line 244
    .local v36, "v0":J
    shl-long v38, v30, v3

    xor-long v38, v28, v38

    aget-wide v40, v32, v26

    xor-long v38, v38, v40

    .line 245
    .local v38, "v1":J
    move-wide/from16 v40, v30

    .line 248
    .local v40, "v2":J
    aget-wide v42, v32, v0

    .line 249
    .local v42, "u0":J
    aget-wide v44, v32, v3

    aget-wide v46, v32, v0

    xor-long v44, v44, v46

    const/4 v12, 0x4

    aget-wide v46, v32, v12

    xor-long v44, v44, v46

    .line 250
    .local v44, "u1":J
    aget-wide v46, v32, v3

    const/16 v26, 0x5

    aget-wide v48, v32, v26

    xor-long v46, v46, v48

    .line 253
    .local v46, "u2":J
    xor-long v48, v42, v36

    aget-wide v50, v32, v6

    shl-long v50, v50, v12

    xor-long v48, v48, v50

    aget-wide v50, v32, v6

    shl-long v50, v50, v3

    xor-long v48, v48, v50

    .line 254
    .local v48, "w0":J
    xor-long v50, v44, v38

    const/16 v33, 0x3

    aget-wide v52, v32, v33

    shl-long v52, v52, v12

    xor-long v50, v50, v52

    aget-wide v52, v32, v33

    shl-long v52, v52, v3

    xor-long v50, v50, v52

    .line 255
    .local v50, "w1":J
    xor-long v52, v46, v40

    .line 258
    .local v52, "w2":J
    ushr-long v54, v48, v7

    xor-long v50, v50, v54

    and-long v48, v48, v13

    .line 259
    ushr-long v54, v50, v7

    xor-long v52, v52, v54

    and-long v50, v50, v13

    .line 265
    ushr-long v54, v48, v3

    const-wide/16 v56, 0x1

    and-long v58, v50, v56

    const/16 v7, 0x2b

    shl-long v58, v58, v7

    xor-long v48, v54, v58

    .line 266
    ushr-long v54, v50, v3

    and-long v56, v52, v56

    shl-long v56, v56, v7

    xor-long v50, v54, v56

    .line 267
    ushr-long v52, v52, v3

    .line 271
    shl-long v54, v48, v3

    xor-long v48, v48, v54

    .line 272
    shl-long v54, v48, v6

    xor-long v48, v48, v54

    .line 273
    shl-long v54, v48, v12

    xor-long v48, v48, v54

    .line 274
    shl-long v54, v48, v15

    xor-long v48, v48, v54

    .line 275
    const/16 v54, 0x10

    shl-long v55, v48, v54

    xor-long v48, v48, v55

    .line 276
    const/16 v55, 0x20

    shl-long v56, v48, v55

    xor-long v48, v48, v56

    .line 278
    and-long v48, v48, v13

    ushr-long v56, v48, v7

    xor-long v50, v50, v56

    .line 280
    shl-long v56, v50, v3

    xor-long v50, v50, v56

    .line 281
    shl-long v56, v50, v6

    xor-long v50, v50, v56

    .line 282
    shl-long v56, v50, v12

    xor-long v50, v50, v56

    .line 283
    shl-long v56, v50, v15

    xor-long v50, v50, v56

    .line 284
    shl-long v56, v50, v54

    xor-long v50, v50, v56

    .line 285
    shl-long v56, v50, v55

    xor-long v50, v50, v56

    .line 287
    and-long v13, v50, v13

    .end local v50    # "w1":J
    .local v13, "w1":J
    ushr-long v50, v13, v7

    xor-long v50, v52, v50

    .line 289
    .end local v52    # "w2":J
    .local v50, "w2":J
    shl-long v52, v50, v3

    xor-long v50, v50, v52

    .line 290
    shl-long v52, v50, v6

    xor-long v50, v50, v52

    .line 291
    shl-long v52, v50, v12

    xor-long v50, v50, v52

    .line 292
    shl-long v52, v50, v15

    xor-long v50, v50, v52

    .line 293
    shl-long v52, v50, v54

    xor-long v50, v50, v52

    .line 294
    shl-long v52, v50, v55

    xor-long v50, v50, v52

    .line 298
    aput-wide v42, p2, v0

    .line 299
    xor-long v52, v44, v48

    aget-wide v54, v32, v6

    xor-long v52, v52, v54

    aput-wide v52, p2, v3

    .line 300
    xor-long v52, v46, v13

    xor-long v52, v52, v48

    aget-wide v54, v32, v33

    xor-long v52, v52, v54

    aput-wide v52, p2, v6

    .line 301
    xor-long v52, v50, v13

    aput-wide v52, p2, v33

    .line 302
    aget-wide v6, v32, v6

    xor-long v6, v50, v6

    aput-wide v6, p2, v12

    .line 303
    aget-wide v6, v32, v33

    aput-wide v6, p2, v26

    .line 305
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implCompactExt([J)V

    .line 306
    return-void
.end method

.method protected static implMulw([JJJ[JI)V
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

    .line 314
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 315
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 316
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 317
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 318
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 319
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 320
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v5, 0x7

    aput-wide v2, p0, v5

    .line 322
    long-to-int v2, v0

    .line 323
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

    ushr-int/lit8 v3, v2, 0x6

    and-int/2addr v3, v5

    aget-wide v11, p0, v3

    shl-long/2addr v11, v4

    xor-long/2addr v9, v11

    ushr-int/lit8 v3, v2, 0x9

    and-int/2addr v3, v5

    aget-wide v11, p0, v3

    const/16 v3, 0x9

    shl-long/2addr v11, v3

    xor-long/2addr v9, v11

    ushr-int/lit8 v11, v2, 0xc

    and-int/2addr v11, v5

    aget-wide v11, p0, v11

    const/16 v13, 0xc

    shl-long/2addr v11, v13

    xor-long/2addr v9, v11

    .line 328
    .local v9, "l":J
    const/16 v11, 0x1e

    .line 331
    .local v11, "k":I
    :cond_0
    ushr-long v14, v0, v11

    long-to-int v2, v14

    .line 332
    and-int/lit8 v12, v2, 0x7

    aget-wide v14, p0, v12

    ushr-int/lit8 v12, v2, 0x3

    and-int/2addr v12, v5

    aget-wide v16, p0, v12

    shl-long v16, v16, v6

    xor-long v14, v14, v16

    ushr-int/lit8 v12, v2, 0x6

    and-int/2addr v12, v5

    aget-wide v16, p0, v12

    shl-long v16, v16, v4

    xor-long v14, v14, v16

    ushr-int/lit8 v12, v2, 0x9

    and-int/2addr v12, v5

    aget-wide v16, p0, v12

    shl-long v16, v16, v3

    xor-long v14, v14, v16

    ushr-int/lit8 v12, v2, 0xc

    and-int/2addr v12, v5

    aget-wide v16, p0, v12

    shl-long v16, v16, v13

    xor-long v14, v14, v16

    .line 337
    .local v14, "g":J
    shl-long v16, v14, v11

    xor-long v9, v9, v16

    .line 338
    neg-int v12, v11

    ushr-long v16, v14, v12

    xor-long v7, v7, v16

    .line 340
    add-int/lit8 v11, v11, -0xf

    if-gtz v11, :cond_0

    .line 344
    const-wide v3, 0xfffffffffffL

    and-long/2addr v3, v9

    aput-wide v3, p5, p6

    .line 345
    add-int/lit8 v3, p6, 0x1

    const/16 v4, 0x2c

    ushr-long v4, v9, v4

    const/16 v6, 0x14

    shl-long v12, v7, v6

    xor-long/2addr v4, v12

    aput-wide v4, p5, v3

    .line 346
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

    .line 350
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 351
    aget-wide v0, p0, v1

    long-to-int v1, v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand8to16(I)I

    move-result v0

    int-to-long v0, v0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    aput-wide v0, p1, v2

    .line 352
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

    .line 68
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat192;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v0

    .line 76
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    .line 78
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    .line 79
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 80
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 81
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 82
    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 83
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 84
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 85
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 86
    const/16 v2, 0x10

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 87
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 88
    const/16 v2, 0x20

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 89
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 90
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    .line 91
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 92
    const/16 v2, 0x41

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->squareN([JI[J)V

    .line 93
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 94
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->square([J[J)V

    .line 95
    return-void

    .line 70
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

    .line 99
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 100
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    .line 101
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    .line 102
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

    .line 106
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 107
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implMultiply([J[J[J)V

    .line 108
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    .line 109
    return-void
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

    .line 113
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

    .line 115
    .local v12, "x4":J
    const/16 v14, 0x3d

    shl-long v15, v12, v14

    const/16 v17, 0x3f

    shl-long v18, v12, v17

    xor-long v15, v15, v18

    xor-long/2addr v4, v15

    .line 116
    ushr-long v15, v12, v9

    ushr-long v18, v12, v3

    xor-long v15, v15, v18

    xor-long/2addr v15, v12

    const/16 v18, 0x5

    shl-long v19, v12, v18

    xor-long v15, v15, v19

    xor-long/2addr v7, v15

    .line 117
    const/16 v15, 0x3b

    ushr-long v19, v12, v15

    xor-long v10, v10, v19

    .line 119
    shl-long v19, v10, v14

    shl-long v16, v10, v17

    xor-long v16, v19, v16

    xor-long v1, v1, v16

    .line 120
    ushr-long v16, v10, v9

    ushr-long v19, v10, v3

    xor-long v16, v16, v19

    xor-long v16, v16, v10

    shl-long v18, v10, v18

    xor-long v16, v16, v18

    xor-long v4, v4, v16

    .line 121
    ushr-long v14, v10, v15

    xor-long/2addr v7, v14

    .line 123
    ushr-long v14, v7, v9

    .line 124
    .local v14, "t":J
    xor-long v16, v1, v14

    shl-long v18, v14, v6

    xor-long v16, v16, v18

    shl-long v18, v14, v9

    xor-long v16, v16, v18

    const/16 v9, 0x8

    shl-long v18, v14, v9

    xor-long v16, v16, v18

    aput-wide v16, p1, v0

    .line 125
    const/16 v0, 0x38

    ushr-long v16, v14, v0

    xor-long v16, v4, v16

    aput-wide v16, p1, v3

    .line 126
    const-wide/16 v16, 0x7

    and-long v16, v7, v16

    aput-wide v16, p1, v6

    .line 127
    return-void
.end method

.method public static reduce61([JI)V
    .locals 11
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

    .line 131
    add-int/lit8 v0, p1, 0x2

    aget-wide v0, p0, v0

    .local v0, "z2":J
    const/4 v2, 0x3

    ushr-long v3, v0, v2

    .line 132
    .local v3, "t":J
    aget-wide v5, p0, p1

    const/4 v7, 0x2

    shl-long v7, v3, v7

    xor-long/2addr v7, v3

    shl-long v9, v3, v2

    xor-long/2addr v7, v9

    const/16 v2, 0x8

    shl-long v9, v3, v2

    xor-long/2addr v7, v9

    xor-long/2addr v5, v7

    aput-wide v5, p0, p1

    .line 133
    add-int/lit8 v2, p1, 0x1

    aget-wide v5, p0, v2

    const/16 v7, 0x38

    ushr-long v7, v3, v7

    xor-long/2addr v5, v7

    aput-wide v5, p0, v2

    .line 134
    add-int/lit8 v2, p1, 0x2

    const-wide/16 v5, 0x7

    and-long/2addr v5, v0

    aput-wide v5, p0, v2

    .line 135
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

    .line 139
    move-object/from16 v0, p1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create64()[J

    move-result-object v1

    .line 142
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

    .line 143
    .local v6, "u1":J
    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long/2addr v10, v13

    .line 144
    .local v10, "e0":J
    ushr-long v13, v3, v12

    const-wide v15, -0x100000000L

    and-long/2addr v15, v6

    or-long/2addr v13, v15

    aput-wide v13, v1, v2

    .line 146
    const/4 v13, 0x2

    aget-wide v13, p0, v13

    invoke-static {v13, v14}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    .line 147
    and-long/2addr v8, v3

    .line 148
    .local v8, "e1":J
    ushr-long v12, v3, v12

    aput-wide v12, v1, v5

    .line 150
    sget-object v12, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->ROOT_Z:[J

    invoke-static {v1, v12, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->multiply([J[J[J)V

    .line 152
    aget-wide v12, v0, v2

    xor-long/2addr v12, v10

    aput-wide v12, v0, v2

    .line 153
    aget-wide v12, v0, v5

    xor-long/2addr v12, v8

    aput-wide v12, v0, v5

    .line 154
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

    .line 158
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 159
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 160
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    .line 161
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

    .line 165
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 166
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 167
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->addExt([J[J[J)V

    .line 168
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

    .line 174
    const/4 v0, 0x5

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 175
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 176
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    .line 178
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 180
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->implSquare([J[J)V

    .line 181
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT131Field;->reduce([J[J)V

    goto :goto_0

    .line 183
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

    .line 188
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/16 v5, 0x3b

    ushr-long/2addr v3, v5

    xor-long/2addr v0, v3

    const/4 v3, 0x2

    aget-wide v3, p0, v3

    ushr-long/2addr v3, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

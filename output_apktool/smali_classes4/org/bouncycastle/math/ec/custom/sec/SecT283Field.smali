.class public Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;
.super Ljava/lang/Object;
.source "SecT283Field.java"


# static fields
.field private static final M27:J = 0x7ffffffL

.field private static final M57:J = 0x1ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    return-void

    nop

    :array_0
    .array-data 8
        0xc30c30c30c30808L    # 5.85284437198306E-250
        0x30c30c30c30c30c3L    # 8.42232057182544E-74
        -0x7df7df7df7df7cf4L    # -7.205387683174334E-299
        0x820820820820820L
        0x2082082
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

    .line 19
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 20
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 21
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 22
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 23
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 24
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

    .line 28
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 29
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 30
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 31
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 32
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 33
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 34
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 35
    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 36
    const/16 v0, 0x8

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 37
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

    .line 41
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 42
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 43
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 44
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 45
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 46
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

    .line 50
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 51
    const/4 v0, 0x1

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 52
    const/4 v0, 0x2

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 53
    const/4 v0, 0x3

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 54
    const/4 v0, 0x4

    aget-wide v1, p1, v0

    aget-wide v3, p0, v0

    xor-long/2addr v1, v3

    aput-wide v1, p1, v0

    .line 55
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

    .line 59
    const/16 v0, 0x11b

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

    .line 64
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 66
    .local v0, "tt":[J
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat320;->copy64([J[J)V

    .line 67
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x11b

    if-ge v1, v2, :cond_0

    .line 69
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 70
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 71
    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 72
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 73
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->addTo([J[J)V

    .line 67
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 75
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected static implCompactExt([J)V
    .locals 34
    .param p0, "zz"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zz"
        }
    .end annotation

    .line 221
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

    .line 222
    .local v13, "z4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "z5":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "z6":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .local v22, "z7":J
    const/16 v24, 0x8

    aget-wide v25, p0, v24

    .local v25, "z8":J
    const/16 v27, 0x9

    aget-wide v28, p0, v27

    .line 223
    .local v28, "z9":J
    const/16 v30, 0x39

    shl-long v30, v4, v30

    xor-long v30, v1, v30

    aput-wide v30, p0, v0

    .line 224
    ushr-long v30, v4, v21

    const/16 v0, 0x32

    shl-long v32, v7, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v3

    .line 225
    const/16 v0, 0xe

    ushr-long v30, v7, v0

    const/16 v0, 0x2b

    shl-long v32, v10, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v6

    .line 226
    const/16 v0, 0x15

    ushr-long v30, v10, v0

    const/16 v0, 0x24

    shl-long v32, v13, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v9

    .line 227
    const/16 v0, 0x1c

    ushr-long v30, v13, v0

    const/16 v0, 0x1d

    shl-long v32, v16, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v12

    .line 228
    const/16 v0, 0x23

    ushr-long v30, v16, v0

    const/16 v0, 0x16

    shl-long v32, v19, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v15

    .line 229
    const/16 v0, 0x2a

    ushr-long v30, v19, v0

    const/16 v0, 0xf

    shl-long v32, v22, v0

    xor-long v30, v30, v32

    aput-wide v30, p0, v18

    .line 230
    const/16 v0, 0x31

    ushr-long v30, v22, v0

    shl-long v32, v25, v24

    xor-long v30, v30, v32

    aput-wide v30, p0, v21

    .line 231
    const/16 v0, 0x38

    ushr-long v30, v25, v0

    shl-long v32, v28, v3

    xor-long v30, v30, v32

    aput-wide v30, p0, v24

    .line 232
    const/16 v0, 0x3f

    ushr-long v30, v28, v0

    aput-wide v30, p0, v27

    .line 233
    return-void
.end method

.method protected static implExpand([J[J)V
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

    .line 237
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

    .line 238
    .local v13, "x4":J
    const-wide v15, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long v17, v1, v15

    aput-wide v17, p1, v0

    .line 239
    const/16 v0, 0x39

    ushr-long v17, v1, v0

    const/4 v0, 0x7

    shl-long v19, v4, v0

    xor-long v17, v17, v19

    and-long v17, v17, v15

    aput-wide v17, p1, v3

    .line 240
    const/16 v0, 0x32

    ushr-long v17, v4, v0

    const/16 v0, 0xe

    shl-long v19, v7, v0

    xor-long v17, v17, v19

    and-long v17, v17, v15

    aput-wide v17, p1, v6

    .line 241
    const/16 v0, 0x2b

    ushr-long v17, v7, v0

    const/16 v0, 0x15

    shl-long v19, v10, v0

    xor-long v17, v17, v19

    and-long v15, v17, v15

    aput-wide v15, p1, v9

    .line 242
    const/16 v0, 0x24

    ushr-long v15, v10, v0

    const/16 v0, 0x1c

    shl-long v17, v13, v0

    xor-long v15, v15, v17

    aput-wide v15, p1, v12

    .line 243
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 112
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

    .line 266
    const/4 v0, 0x5

    new-array v1, v0, [J

    .local v1, "a":[J
    new-array v2, v0, [J

    .line 267
    .local v2, "b":[J
    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    .line 268
    move-object/from16 v4, p1

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implExpand([J[J)V

    .line 270
    move-object/from16 v5, p2

    .line 271
    .local v5, "u":[J
    const/16 v6, 0x1a

    new-array v10, v6, [J

    .line 273
    .local v10, "p":[J
    const/4 v12, 0x0

    aget-wide v6, v1, v12

    aget-wide v8, v2, v12

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 274
    const/4 v13, 0x1

    aget-wide v6, v1, v13

    aget-wide v8, v2, v13

    const/4 v11, 0x2

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 275
    const/4 v14, 0x2

    aget-wide v6, v1, v14

    aget-wide v8, v2, v14

    const/4 v11, 0x4

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 276
    const/4 v15, 0x3

    aget-wide v6, v1, v15

    aget-wide v8, v2, v15

    const/4 v11, 0x6

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 277
    const/16 v16, 0x4

    aget-wide v6, v1, v16

    aget-wide v8, v2, v16

    const/16 v11, 0x8

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 279
    aget-wide v6, v1, v12

    aget-wide v8, v1, v13

    xor-long v17, v6, v8

    .local v17, "u0":J
    aget-wide v6, v2, v12

    aget-wide v8, v2, v13

    xor-long v19, v6, v8

    .line 280
    .local v19, "v0":J
    aget-wide v6, v1, v12

    aget-wide v8, v1, v14

    xor-long v21, v6, v8

    .local v21, "u1":J
    aget-wide v6, v2, v12

    aget-wide v8, v2, v14

    xor-long v23, v6, v8

    .line 281
    .local v23, "v1":J
    aget-wide v6, v1, v14

    aget-wide v8, v1, v16

    xor-long v25, v6, v8

    .local v25, "u2":J
    aget-wide v6, v2, v14

    aget-wide v8, v2, v16

    xor-long v27, v6, v8

    .line 282
    .local v27, "v2":J
    aget-wide v6, v1, v15

    aget-wide v8, v1, v16

    xor-long v29, v6, v8

    .local v29, "u3":J
    aget-wide v6, v2, v15

    aget-wide v8, v2, v16

    xor-long v31, v6, v8

    .line 284
    .local v31, "v3":J
    aget-wide v6, v1, v15

    xor-long v6, v21, v6

    aget-wide v8, v2, v15

    xor-long v8, v23, v8

    const/16 v11, 0x12

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 285
    aget-wide v6, v1, v13

    xor-long v6, v25, v6

    aget-wide v8, v2, v13

    xor-long v8, v27, v8

    const/16 v11, 0x14

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 287
    xor-long v6, v17, v29

    .local v6, "A4":J
    xor-long v8, v19, v31

    .line 288
    .local v8, "B4":J
    aget-wide v33, v1, v14

    xor-long v33, v6, v33

    .local v33, "A5":J
    aget-wide v35, v2, v14

    xor-long v35, v8, v35

    .line 290
    .local v35, "B5":J
    const/16 v11, 0x16

    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 291
    move-wide/from16 v37, v6

    move-wide/from16 v39, v8

    .end local v6    # "A4":J
    .end local v8    # "B4":J
    .local v37, "A4":J
    .local v39, "B4":J
    const/16 v11, 0x18

    move-wide/from16 v6, v33

    move-wide/from16 v8, v35

    .end local v33    # "A5":J
    .end local v35    # "B5":J
    .local v6, "A5":J
    .local v8, "B5":J
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 293
    .end local v6    # "A5":J
    .end local v8    # "B5":J
    .restart local v33    # "A5":J
    .restart local v35    # "B5":J
    const/16 v11, 0xa

    move-wide/from16 v6, v17

    move-wide/from16 v8, v19

    .end local v17    # "u0":J
    .end local v19    # "v0":J
    .local v6, "u0":J
    .local v8, "v0":J
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 294
    .end local v6    # "u0":J
    .end local v8    # "v0":J
    .restart local v17    # "u0":J
    .restart local v19    # "v0":J
    const/16 v11, 0xc

    move-wide/from16 v6, v21

    move-wide/from16 v8, v23

    .end local v21    # "u1":J
    .end local v23    # "v1":J
    .local v6, "u1":J
    .local v8, "v1":J
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 295
    .end local v6    # "u1":J
    .end local v8    # "v1":J
    .restart local v21    # "u1":J
    .restart local v23    # "v1":J
    const/16 v11, 0xe

    move-wide/from16 v6, v25

    move-wide/from16 v8, v27

    .end local v25    # "u2":J
    .end local v27    # "v2":J
    .local v6, "u2":J
    .local v8, "v2":J
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 296
    .end local v6    # "u2":J
    .end local v8    # "v2":J
    .restart local v25    # "u2":J
    .restart local v27    # "v2":J
    const/16 v11, 0x10

    move-wide/from16 v6, v29

    move-wide/from16 v8, v31

    .end local v29    # "u3":J
    .end local v31    # "v3":J
    .local v6, "u3":J
    .local v8, "v3":J
    invoke-static/range {v5 .. v11}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMulw([JJJ[JI)V

    .line 313
    aget-wide v29, v10, v12

    aput-wide v29, p2, v12

    .line 314
    const/16 v11, 0x9

    aget-wide v29, v10, v11

    aput-wide v29, p2, v11

    .line 316
    aget-wide v29, v10, v12

    aget-wide v31, v10, v13

    xor-long v29, v29, v31

    .line 317
    .local v29, "t1":J
    aget-wide v31, v10, v14

    xor-long v31, v29, v31

    .line 318
    .local v31, "t2":J
    const/16 v41, 0xa

    aget-wide v41, v10, v41

    xor-long v41, v31, v41

    .line 320
    .local v41, "t3":J
    aput-wide v41, p2, v13

    .line 322
    aget-wide v43, v10, v15

    aget-wide v45, v10, v16

    xor-long v43, v43, v45

    .line 323
    .local v43, "t4":J
    const/16 v13, 0xb

    aget-wide v45, v10, v13

    const/16 v13, 0xc

    aget-wide v47, v10, v13

    xor-long v45, v45, v47

    .line 324
    .local v45, "t5":J
    xor-long v47, v43, v45

    .line 325
    .local v47, "t6":J
    xor-long v49, v31, v47

    .line 327
    .local v49, "t7":J
    aput-wide v49, p2, v14

    .line 329
    xor-long v13, v29, v43

    .line 330
    .local v13, "t8":J
    aget-wide v51, v10, v0

    const/16 v53, 0x6

    aget-wide v54, v10, v53

    xor-long v51, v51, v54

    .line 331
    .local v51, "t9":J
    xor-long v54, v13, v51

    .line 332
    .local v54, "t10":J
    const/16 v56, 0x8

    aget-wide v57, v10, v56

    xor-long v57, v54, v57

    .line 333
    .local v57, "t11":J
    const/16 v59, 0xd

    aget-wide v59, v10, v59

    const/16 v61, 0xe

    aget-wide v61, v10, v61

    xor-long v59, v59, v61

    .line 334
    .local v59, "t12":J
    xor-long v61, v57, v59

    .line 335
    .local v61, "t13":J
    const/16 v63, 0x12

    aget-wide v64, v10, v63

    const/16 v66, 0x16

    aget-wide v67, v10, v66

    xor-long v64, v64, v67

    .line 336
    .local v64, "t14":J
    const/16 v67, 0x18

    aget-wide v68, v10, v67

    xor-long v68, v64, v68

    .line 337
    .local v68, "t15":J
    xor-long v70, v61, v68

    .line 339
    .local v70, "t16":J
    aput-wide v70, p2, v15

    .line 341
    const/4 v15, 0x7

    aget-wide v72, v10, v15

    aget-wide v74, v10, v56

    xor-long v72, v72, v74

    .line 342
    .local v72, "t17":J
    aget-wide v74, v10, v11

    xor-long v74, v72, v74

    .line 343
    .local v74, "t18":J
    const/16 v76, 0x11

    aget-wide v76, v10, v76

    xor-long v76, v74, v76

    .line 345
    .local v76, "t19":J
    aput-wide v76, p2, v56

    .line 347
    xor-long v78, v74, v51

    .line 348
    .local v78, "t20":J
    const/16 v56, 0xf

    aget-wide v80, v10, v56

    const/16 v56, 0x10

    aget-wide v82, v10, v56

    xor-long v80, v80, v82

    .line 349
    .local v80, "t21":J
    xor-long v82, v78, v80

    .line 351
    .local v82, "t22":J
    aput-wide v82, p2, v15

    .line 353
    xor-long v84, v82, v41

    .line 354
    .local v84, "t23":J
    const/16 v15, 0x13

    aget-wide v86, v10, v15

    const/16 v15, 0x14

    aget-wide v88, v10, v15

    xor-long v86, v86, v88

    .line 356
    .local v86, "t24":J
    const/16 v15, 0x19

    aget-wide v88, v10, v15

    aget-wide v90, v10, v67

    xor-long v88, v88, v90

    .line 357
    .local v88, "t25":J
    aget-wide v90, v10, v63

    const/16 v56, 0x17

    aget-wide v92, v10, v56

    xor-long v90, v90, v92

    .line 358
    .local v90, "t26":J
    xor-long v92, v86, v88

    .line 359
    .local v92, "t27":J
    xor-long v94, v92, v90

    .line 360
    .local v94, "t28":J
    xor-long v96, v94, v84

    .line 362
    .local v96, "t29":J
    aput-wide v96, p2, v16

    .line 364
    xor-long v98, v49, v76

    .line 365
    .local v98, "t30":J
    xor-long v100, v92, v98

    .line 366
    .local v100, "t31":J
    const/16 v16, 0x15

    aget-wide v102, v10, v16

    aget-wide v66, v10, v66

    xor-long v66, v102, v66

    .line 367
    .local v66, "t32":J
    xor-long v102, v100, v66

    .line 369
    .local v102, "t33":J
    aput-wide v102, p2, v0

    .line 371
    aget-wide v104, v10, v12

    xor-long v104, v57, v104

    .line 372
    .local v104, "t34":J
    aget-wide v11, v10, v11

    xor-long v11, v104, v11

    .line 373
    .local v11, "t35":J
    xor-long v106, v11, v59

    .line 374
    .local v106, "t36":J
    aget-wide v108, v10, v16

    xor-long v108, v106, v108

    .line 375
    .local v108, "t37":J
    aget-wide v110, v10, v56

    xor-long v110, v108, v110

    .line 376
    .local v110, "t38":J
    aget-wide v15, v10, v15

    xor-long v15, v110, v15

    .line 378
    .local v15, "t39":J
    aput-wide v15, p2, v53

    .line 380
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implCompactExt([J)V

    .line 381
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

    .line 389
    move-wide/from16 v0, p1

    const/4 v2, 0x1

    aput-wide p3, p0, v2

    .line 390
    aget-wide v3, p0, v2

    shl-long/2addr v3, v2

    const/4 v5, 0x2

    aput-wide v3, p0, v5

    .line 391
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v6, 0x3

    aput-wide v3, p0, v6

    .line 392
    aget-wide v3, p0, v5

    shl-long/2addr v3, v2

    const/4 v5, 0x4

    aput-wide v3, p0, v5

    .line 393
    aget-wide v3, p0, v5

    xor-long v3, v3, p3

    const/4 v5, 0x5

    aput-wide v3, p0, v5

    .line 394
    aget-wide v3, p0, v6

    shl-long v2, v3, v2

    const/4 v4, 0x6

    aput-wide v2, p0, v4

    .line 395
    aget-wide v2, p0, v4

    xor-long v2, v2, p3

    const/4 v5, 0x7

    aput-wide v2, p0, v5

    .line 397
    long-to-int v2, v0

    .line 398
    .local v2, "j":I
    const-wide/16 v7, 0x0

    .local v7, "h":J
    and-int/lit8 v3, v2, 0x7

    aget-wide v9, p0, v3

    .line 399
    .local v9, "l":J
    const/16 v3, 0x30

    .line 402
    .local v3, "k":I
    :cond_0
    ushr-long v11, v0, v3

    long-to-int v2, v11

    .line 403
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

    .line 406
    .local v11, "g":J
    shl-long v13, v11, v3

    xor-long/2addr v9, v13

    .line 407
    neg-int v13, v3

    ushr-long v13, v11, v13

    xor-long/2addr v7, v13

    .line 409
    add-int/lit8 v3, v3, -0x9

    if-gtz v3, :cond_0

    .line 411
    const-wide v13, 0x100804020100800L

    and-long/2addr v13, v0

    shl-long v15, p3, v5

    const/16 v4, 0x3f

    shr-long/2addr v15, v4

    and-long/2addr v13, v15

    const/16 v4, 0x8

    ushr-long/2addr v13, v4

    xor-long/2addr v7, v13

    .line 415
    const-wide v13, 0x1ffffffffffffffL    # 4.77830972673648E-299

    and-long/2addr v13, v9

    aput-wide v13, p5, p6

    .line 416
    add-int/lit8 v4, p6, 0x1

    const/16 v6, 0x39

    ushr-long v13, v9, v6

    shl-long v5, v7, v5

    xor-long/2addr v5, v13

    aput-wide v5, p5, v4

    .line 417
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

    .line 421
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    .line 422
    aget-wide v0, p0, v1

    long-to-int v1, v0

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Interleave;->expand32to64(I)J

    move-result-wide v0

    const/16 v2, 0x8

    aput-wide v0, p1, v2

    .line 423
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

    .line 79
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat320;->isZero64([J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v0

    .line 87
    .local v0, "t0":[J
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v1

    .line 89
    .local v1, "t1":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 90
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 91
    const/4 v2, 0x2

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 92
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 93
    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 94
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 95
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 96
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 97
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 98
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 99
    const/16 v2, 0x11

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 100
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 101
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 102
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 103
    const/16 v2, 0x23

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 104
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 105
    const/16 v2, 0x46

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 106
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 107
    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 108
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 109
    const/16 v2, 0x8d

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->squareN([JI[J)V

    .line 110
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 111
    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->square([J[J)V

    .line 112
    return-void

    .line 81
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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    .line 117
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    .line 118
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

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
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->createExt64()[J

    move-result-object v0

    .line 124
    .local v0, "tt":[J
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implMultiply([J[J[J)V

    .line 125
    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

    .line 126
    return-void
.end method

.method public static reduce([J[J)V
    .locals 37
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

    aget-wide v13, p0, v12

    .line 131
    .local v13, "x4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "x5":J
    const/16 v18, 0x6

    aget-wide v18, p0, v18

    .local v18, "x6":J
    const/16 v20, 0x7

    aget-wide v21, p0, v20

    .local v21, "x7":J
    const/16 v23, 0x8

    aget-wide v23, p0, v23

    .line 133
    .local v23, "x8":J
    const/16 v25, 0x25

    shl-long v26, v23, v25

    const/16 v28, 0x2a

    shl-long v29, v23, v28

    xor-long v26, v26, v29

    const/16 v29, 0x2c

    shl-long v30, v23, v29

    xor-long v26, v26, v30

    const/16 v30, 0x31

    shl-long v31, v23, v30

    xor-long v26, v26, v31

    xor-long v10, v10, v26

    .line 134
    const/16 v26, 0x1b

    ushr-long v31, v23, v26

    const/16 v27, 0x16

    ushr-long v33, v23, v27

    xor-long v31, v31, v33

    const/16 v33, 0x14

    ushr-long v34, v23, v33

    xor-long v31, v31, v34

    const/16 v34, 0xf

    ushr-long v35, v23, v34

    xor-long v31, v31, v35

    xor-long v13, v13, v31

    .line 136
    shl-long v31, v21, v25

    shl-long v35, v21, v28

    xor-long v31, v31, v35

    shl-long v35, v21, v29

    xor-long v31, v31, v35

    shl-long v35, v21, v30

    xor-long v31, v31, v35

    xor-long v7, v7, v31

    .line 137
    ushr-long v31, v21, v26

    ushr-long v35, v21, v27

    xor-long v31, v31, v35

    ushr-long v35, v21, v33

    xor-long v31, v31, v35

    ushr-long v35, v21, v34

    xor-long v31, v31, v35

    xor-long v10, v10, v31

    .line 139
    shl-long v31, v18, v25

    shl-long v35, v18, v28

    xor-long v31, v31, v35

    shl-long v35, v18, v29

    xor-long v31, v31, v35

    shl-long v35, v18, v30

    xor-long v31, v31, v35

    xor-long v4, v4, v31

    .line 140
    ushr-long v31, v18, v26

    ushr-long v35, v18, v27

    xor-long v31, v31, v35

    ushr-long v35, v18, v33

    xor-long v31, v31, v35

    ushr-long v35, v18, v34

    xor-long v31, v31, v35

    xor-long v7, v7, v31

    .line 142
    shl-long v31, v16, v25

    shl-long v35, v16, v28

    xor-long v31, v31, v35

    shl-long v28, v16, v29

    xor-long v28, v31, v28

    shl-long v30, v16, v30

    xor-long v28, v28, v30

    xor-long v1, v1, v28

    .line 143
    ushr-long v28, v16, v26

    ushr-long v30, v16, v27

    xor-long v28, v28, v30

    ushr-long v30, v16, v33

    xor-long v28, v28, v30

    ushr-long v30, v16, v34

    xor-long v28, v28, v30

    xor-long v4, v4, v28

    .line 145
    ushr-long v25, v13, v26

    .line 146
    .local v25, "t":J
    xor-long v27, v1, v25

    shl-long v29, v25, v15

    xor-long v27, v27, v29

    shl-long v29, v25, v20

    xor-long v27, v27, v29

    const/16 v15, 0xc

    shl-long v29, v25, v15

    xor-long v27, v27, v29

    aput-wide v27, p1, v0

    .line 147
    aput-wide v4, p1, v3

    .line 148
    aput-wide v7, p1, v6

    .line 149
    aput-wide v10, p1, v9

    .line 150
    const-wide/32 v27, 0x7ffffff

    and-long v27, v13, v27

    aput-wide v27, p1, v12

    .line 151
    return-void
.end method

.method public static reduce37([JI)V
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

    .line 155
    add-int/lit8 v0, p1, 0x4

    aget-wide v0, p0, v0

    .local v0, "z4":J
    const/16 v2, 0x1b

    ushr-long v2, v0, v2

    .line 156
    .local v2, "t":J
    aget-wide v4, p0, p1

    const/4 v6, 0x5

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    const/4 v8, 0x7

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p0, p1

    .line 157
    add-int/lit8 v4, p1, 0x4

    const-wide/32 v5, 0x7ffffff

    and-long/2addr v5, v0

    aput-wide v5, p0, v4

    .line 158
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
    move-object/from16 v0, p1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat320;->create64()[J

    move-result-object v1

    .line 165
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

    .line 166
    .local v6, "u1":J
    const-wide v8, 0xffffffffL

    and-long v10, v3, v8

    const/16 v12, 0x20

    shl-long v13, v6, v12

    or-long/2addr v10, v13

    .line 167
    .local v10, "e0":J
    ushr-long v13, v3, v12

    const-wide v15, -0x100000000L

    and-long v17, v6, v15

    or-long v13, v13, v17

    aput-wide v13, v1, v2

    .line 169
    const/4 v13, 0x2

    aget-wide v17, p0, v13

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    const/4 v14, 0x3

    aget-wide v17, p0, v14

    invoke-static/range {v17 .. v18}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    .line 170
    and-long v17, v3, v8

    shl-long v19, v6, v12

    or-long v17, v17, v19

    .line 171
    .local v17, "e1":J
    ushr-long v19, v3, v12

    and-long/2addr v15, v6

    or-long v15, v19, v15

    aput-wide v15, v1, v5

    .line 173
    const/4 v14, 0x4

    aget-wide v14, p0, v14

    invoke-static {v14, v15}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v3

    .line 174
    and-long/2addr v8, v3

    .line 175
    .local v8, "e2":J
    ushr-long v14, v3, v12

    aput-wide v14, v1, v13

    .line 177
    sget-object v12, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->ROOT_Z:[J

    invoke-static {v1, v12, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->multiply([J[J[J)V

    .line 179
    aget-wide v14, v0, v2

    xor-long/2addr v14, v10

    aput-wide v14, v0, v2

    .line 180
    aget-wide v14, v0, v5

    xor-long v14, v14, v17

    aput-wide v14, v0, v5

    .line 181
    aget-wide v14, v0, v13

    xor-long/2addr v14, v8

    aput-wide v14, v0, v13

    .line 182
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

    .line 186
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 187
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 188
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 189
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

    .line 193
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 194
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 195
    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->addExt([J[J[J)V

    .line 196
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

    .line 202
    const/16 v0, 0x9

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v0

    .line 203
    .local v0, "tt":[J
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 204
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    .line 206
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 208
    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->implSquare([J[J)V

    .line 209
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT283Field;->reduce([J[J)V

    goto :goto_0

    .line 211
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

    .line 216
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x4

    aget-wide v2, p0, v2

    const/16 v4, 0xf

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v1, v0

    and-int/lit8 v0, v1, 0x1

    return v0
.end method

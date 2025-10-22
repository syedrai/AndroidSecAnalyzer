.class public abstract Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;
.super Ljava/lang/Object;
.source "GCMUtil.java"


# static fields
.field private static final E1:I = -0x1f000000

.field private static final E1L:J = -0x1f00000000000000L

.field public static final SIZE_BYTES:I = 0x10

.field public static final SIZE_INTS:I = 0x4

.field public static final SIZE_LONGS:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areEqual([B[B)B
    .locals 4
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 39
    const/4 v0, 0x0

    .line 40
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 42
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 40
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 44
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 45
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    int-to-byte v1, v1

    return v1
.end method

.method public static areEqual([I[I)I
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "d":I
    const/4 v1, 0x0

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 52
    const/4 v1, 0x1

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 53
    const/4 v1, 0x2

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 54
    const/4 v1, 0x3

    aget v2, p0, v1

    aget v1, p1, v1

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 55
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 56
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static areEqual([J[J)J
    .locals 8
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 61
    const-wide/16 v0, 0x0

    .line 62
    .local v0, "d":J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 63
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 64
    ushr-long v2, v0, v2

    const-wide/16 v4, 0x1

    and-long v6, v0, v4

    or-long v0, v2, v6

    .line 65
    sub-long v2, v0, v4

    const/16 v4, 0x3f

    shr-long/2addr v2, v4

    return-wide v2
.end method

.method public static asBytes([I[B)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [B
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
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 78
    return-void
.end method

.method public static asBytes([J[B)V
    .locals 2
    .param p0, "x"    # [J
    .param p1, "z"    # [B
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

    .line 89
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 90
    return-void
.end method

.method public static asBytes([I)[B
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

    .line 70
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 71
    .local v0, "z":[B
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p0, v1, v2, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian([III[BI)V

    .line 72
    return-object v0
.end method

.method public static asBytes([J)[B
    .locals 3
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 82
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 83
    .local v0, "z":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian([JII[BI)V

    .line 84
    return-object v0
.end method

.method public static asInts([B[I)V
    .locals 2
    .param p0, "x"    # [B
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

    .line 101
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 102
    return-void
.end method

.method public static asInts([B)[I
    .locals 3
    .param p0, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 94
    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 95
    .local v1, "z":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    .line 96
    return-object v1
.end method

.method public static asLongs([B[J)V
    .locals 2
    .param p0, "x"    # [B
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

    .line 113
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 114
    return-void
.end method

.method public static asLongs([B)[J
    .locals 3
    .param p0, "x"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 106
    const/4 v0, 0x2

    new-array v1, v0, [J

    .line 107
    .local v1, "z":[J
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI[JII)V

    .line 108
    return-object v1
.end method

.method public static copy([B[B)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "z"    # [B
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

    .line 118
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 120
    aget-byte v1, p0, v0

    aput-byte v1, p1, v0

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static copy([I[I)V
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

    .line 126
    const/4 v0, 0x0

    aget v1, p0, v0

    aput v1, p1, v0

    .line 127
    const/4 v0, 0x1

    aget v1, p0, v0

    aput v1, p1, v0

    .line 128
    const/4 v0, 0x2

    aget v1, p0, v0

    aput v1, p1, v0

    .line 129
    const/4 v0, 0x3

    aget v1, p0, v0

    aput v1, p1, v0

    .line 130
    return-void
.end method

.method public static copy([J[J)V
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

    .line 134
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 135
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 136
    return-void
.end method

.method public static divideP([J[J)V
    .locals 13
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

    .line 140
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 141
    .local v4, "x1":J
    const/16 v6, 0x3f

    shr-long v7, v1, v6

    .line 142
    .local v7, "m":J
    const-wide/high16 v9, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v9, v7

    xor-long/2addr v1, v9

    .line 143
    shl-long v9, v1, v3

    ushr-long v11, v4, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 144
    shl-long v9, v4, v3

    neg-long v11, v7

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 145
    return-void
.end method

.method private static implMul64(JJ)J
    .locals 34
    .param p0, "x"    # J
    .param p2, "y"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 512
    const-wide v0, 0x1111111111111111L

    and-long v2, p0, v0

    .line 513
    .local v2, "x0":J
    const-wide v4, 0x2222222222222222L

    and-long v6, p0, v4

    .line 514
    .local v6, "x1":J
    const-wide v8, 0x4444444444444444L    # 7.477080264543605E20

    and-long v10, p0, v8

    .line 515
    .local v10, "x2":J
    const-wide v12, -0x7777777777777778L    # -1.48603973805866E-267

    and-long v14, p0, v12

    .line 517
    .local v14, "x3":J
    and-long v16, p2, v0

    .line 518
    .local v16, "y0":J
    and-long v18, p2, v4

    .line 519
    .local v18, "y1":J
    and-long v20, p2, v8

    .line 520
    .local v20, "y2":J
    and-long v22, p2, v12

    .line 522
    .local v22, "y3":J
    mul-long v24, v2, v16

    mul-long v26, v6, v22

    xor-long v24, v24, v26

    mul-long v26, v10, v20

    xor-long v24, v24, v26

    mul-long v26, v14, v18

    xor-long v24, v24, v26

    .line 523
    .local v24, "z0":J
    mul-long v26, v2, v18

    mul-long v28, v6, v16

    xor-long v26, v26, v28

    mul-long v28, v10, v22

    xor-long v26, v26, v28

    mul-long v28, v14, v20

    xor-long v26, v26, v28

    .line 524
    .local v26, "z1":J
    mul-long v28, v2, v20

    mul-long v30, v6, v18

    xor-long v28, v28, v30

    mul-long v30, v10, v16

    xor-long v28, v28, v30

    mul-long v30, v14, v22

    xor-long v28, v28, v30

    .line 525
    .local v28, "z2":J
    mul-long v30, v2, v22

    mul-long v32, v6, v20

    xor-long v30, v30, v32

    mul-long v32, v10, v18

    xor-long v30, v30, v32

    mul-long v32, v14, v16

    xor-long v30, v30, v32

    .line 527
    .local v30, "z3":J
    and-long v0, v24, v0

    .line 528
    .end local v24    # "z0":J
    .local v0, "z0":J
    and-long v4, v26, v4

    .line 529
    .end local v26    # "z1":J
    .local v4, "z1":J
    and-long v8, v28, v8

    .line 530
    .end local v28    # "z2":J
    .local v8, "z2":J
    and-long v12, v30, v12

    .line 532
    .end local v30    # "z3":J
    .local v12, "z3":J
    or-long v24, v0, v4

    or-long v24, v24, v8

    or-long v24, v24, v12

    return-wide v24
.end method

.method public static multiply([B[B)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 149
    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    .line 150
    .local v0, "t1":[J
    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v1

    .line 151
    .local v1, "t2":[J
    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    .line 152
    invoke-static {v0, p0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    .line 153
    return-void
.end method

.method static multiply([B[J)V
    .locals 46
    .param p0, "x"    # [B
    .param p1, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 164
    move-object/from16 v0, p0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    .line 165
    .local v2, "x0":J
    const/16 v4, 0x8

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v5

    .line 166
    .local v5, "x1":J
    aget-wide v7, p1, v1

    .local v7, "y0":J
    const/4 v9, 0x1

    aget-wide v10, p1, v9

    .line 167
    .local v10, "y1":J
    invoke-static {v2, v3}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .local v12, "x0r":J
    invoke-static {v5, v6}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    .line 168
    .local v14, "x1r":J
    move-wide/from16 v16, v5

    .end local v5    # "x1":J
    .local v16, "x1":J
    invoke-static {v7, v8}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v4

    move-wide/from16 v18, v10

    const/4 v6, 0x1

    .end local v10    # "y1":J
    .local v4, "y0r":J
    .local v18, "y1":J
    invoke-static/range {v18 .. v19}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v9

    .line 170
    .local v9, "y1r":J
    invoke-static {v12, v13, v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v20

    .line 171
    .local v20, "h0":J
    invoke-static {v2, v3, v7, v8}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v22

    shl-long v22, v22, v6

    .line 172
    .local v22, "h1":J
    invoke-static {v14, v15, v9, v10}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v24

    .line 173
    .local v24, "h2":J
    move-wide/from16 v26, v7

    move-wide/from16 v6, v16

    move-wide/from16 v16, v9

    move-wide/from16 v8, v18

    const/4 v10, 0x1

    .end local v7    # "y0":J
    .end local v9    # "y1r":J
    .end local v18    # "y1":J
    .local v6, "x1":J
    .local v8, "y1":J
    .local v16, "y1r":J
    .local v26, "y0":J
    invoke-static {v6, v7, v8, v9}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v18

    shl-long v18, v18, v10

    .line 174
    .local v18, "h3":J
    const/16 v28, 0x1

    xor-long v10, v12, v14

    move-wide/from16 v29, v2

    .end local v2    # "x0":J
    .local v29, "x0":J
    xor-long v1, v4, v16

    invoke-static {v10, v11, v1, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v1

    .line 175
    .local v1, "h4":J
    xor-long v10, v29, v6

    move-wide/from16 v31, v1

    .end local v1    # "h4":J
    .local v31, "h4":J
    xor-long v1, v26, v8

    invoke-static {v10, v11, v1, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v1

    shl-long v1, v1, v28

    .line 177
    .local v1, "h5":J
    move-wide/from16 v10, v20

    .line 178
    .local v10, "z0":J
    xor-long v33, v22, v20

    xor-long v33, v33, v24

    xor-long v33, v33, v31

    .line 179
    .local v33, "z1":J
    xor-long v35, v24, v22

    xor-long v35, v35, v18

    xor-long v35, v35, v1

    .line 180
    .local v35, "z2":J
    move-wide/from16 v37, v18

    .line 182
    .local v37, "z3":J
    ushr-long v39, v37, v28

    xor-long v39, v37, v39

    const/4 v3, 0x2

    ushr-long v41, v37, v3

    xor-long v39, v39, v41

    const/16 v41, 0x7

    ushr-long v42, v37, v41

    xor-long v39, v39, v42

    xor-long v33, v33, v39

    .line 184
    const/16 v39, 0x3e

    shl-long v42, v37, v39

    const/16 v40, 0x39

    shl-long v44, v37, v40

    xor-long v42, v42, v44

    xor-long v35, v35, v42

    .line 186
    ushr-long v42, v35, v28

    xor-long v42, v35, v42

    ushr-long v44, v35, v3

    xor-long v42, v42, v44

    ushr-long v44, v35, v41

    xor-long v42, v42, v44

    xor-long v10, v10, v42

    .line 187
    const/16 v3, 0x3f

    shl-long v41, v35, v3

    shl-long v43, v35, v39

    xor-long v41, v41, v43

    shl-long v39, v35, v40

    xor-long v39, v41, v39

    move-wide/from16 v41, v1

    .end local v1    # "h5":J
    .local v41, "h5":J
    xor-long v1, v33, v39

    .line 189
    .end local v33    # "z1":J
    .local v1, "z1":J
    const/4 v3, 0x0

    invoke-static {v10, v11, v0, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 190
    const/16 v3, 0x8

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 191
    return-void
.end method

.method public static multiply([I[I)V
    .locals 19
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    aget v1, p1, v0

    .local v1, "y0":I
    const/4 v2, 0x1

    aget v3, p1, v2

    .local v3, "y1":I
    const/4 v4, 0x2

    aget v5, p1, v4

    .local v5, "y2":I
    const/4 v6, 0x3

    aget v7, p1, v6

    .line 196
    .local v7, "y3":I
    const/4 v8, 0x0

    .local v8, "z0":I
    const/4 v9, 0x0

    .local v9, "z1":I
    const/4 v10, 0x0

    .local v10, "z2":I
    const/4 v11, 0x0

    .line 198
    .local v11, "z3":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v12, v13, :cond_1

    .line 200
    aget v13, p0, v12

    .line 201
    .local v13, "bits":I
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    const/16 v15, 0x20

    if-ge v14, v15, :cond_0

    .line 203
    shr-int/lit8 v15, v13, 0x1f

    .local v15, "m1":I
    shl-int/lit8 v13, v13, 0x1

    .line 204
    and-int v16, v1, v15

    xor-int v8, v8, v16

    .line 205
    and-int v16, v3, v15

    xor-int v9, v9, v16

    .line 206
    and-int v16, v5, v15

    xor-int v10, v10, v16

    .line 207
    and-int v16, v7, v15

    xor-int v11, v11, v16

    .line 209
    shl-int/lit8 v16, v7, 0x1f

    shr-int/lit8 v16, v16, 0x8

    .line 210
    .local v16, "m2":I
    ushr-int/lit8 v17, v7, 0x1

    shl-int/lit8 v18, v5, 0x1f

    or-int v7, v17, v18

    .line 211
    ushr-int/lit8 v17, v5, 0x1

    shl-int/lit8 v18, v3, 0x1f

    or-int v5, v17, v18

    .line 212
    ushr-int/lit8 v17, v3, 0x1

    shl-int/lit8 v18, v1, 0x1f

    or-int v3, v17, v18

    .line 213
    ushr-int/lit8 v17, v1, 0x1

    const/high16 v18, -0x1f000000

    and-int v18, v16, v18

    xor-int v1, v17, v18

    .line 201
    .end local v15    # "m1":I
    .end local v16    # "m2":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 198
    .end local v13    # "bits":I
    .end local v14    # "j":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 217
    .end local v12    # "i":I
    :cond_1
    aput v8, p0, v0

    .line 218
    aput v9, p0, v2

    .line 219
    aput v10, p0, v4

    .line 220
    aput v11, p0, v6

    .line 221
    return-void
.end method

.method public static multiply([J[J)V
    .locals 46
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 257
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 258
    .local v4, "x1":J
    aget-wide v6, p1, v0

    .local v6, "y0":J
    aget-wide v8, p1, v3

    .line 259
    .local v8, "y1":J
    invoke-static {v1, v2}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v10

    .local v10, "x0r":J
    invoke-static {v4, v5}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v12

    .line 260
    .local v12, "x1r":J
    invoke-static {v6, v7}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v14

    move-wide/from16 v17, v4

    const/16 v16, 0x1

    .end local v4    # "x1":J
    .local v14, "y0r":J
    .local v17, "x1":J
    invoke-static {v8, v9}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v3

    .line 262
    .local v3, "y1r":J
    invoke-static {v10, v11, v14, v15}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v19

    .line 263
    .local v19, "h0":J
    invoke-static {v1, v2, v6, v7}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v21

    shl-long v21, v21, v16

    .line 264
    .local v21, "h1":J
    invoke-static {v12, v13, v3, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v23

    invoke-static/range {v23 .. v24}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v23

    .line 265
    .local v23, "h2":J
    move-wide/from16 v25, v1

    move-wide/from16 v0, v17

    const/4 v5, 0x0

    .end local v1    # "x0":J
    .end local v17    # "x1":J
    .local v0, "x1":J
    .local v25, "x0":J
    invoke-static {v0, v1, v8, v9}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v17

    shl-long v17, v17, v16

    .line 266
    .local v17, "h3":J
    move-wide/from16 v27, v6

    const/4 v2, 0x0

    .end local v6    # "y0":J
    .local v27, "y0":J
    xor-long v5, v10, v12

    move-wide/from16 v29, v0

    .end local v0    # "x1":J
    .local v29, "x1":J
    xor-long v0, v14, v3

    invoke-static {v5, v6, v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Longs;->reverse(J)J

    move-result-wide v0

    .line 267
    .local v0, "h4":J
    xor-long v5, v25, v29

    move-wide/from16 v31, v3

    const/4 v4, 0x0

    .end local v3    # "y1r":J
    .local v31, "y1r":J
    xor-long v2, v27, v8

    invoke-static {v5, v6, v2, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->implMul64(JJ)J

    move-result-wide v2

    shl-long v2, v2, v16

    .line 269
    .local v2, "h5":J
    move-wide/from16 v5, v19

    .line 270
    .local v5, "z0":J
    xor-long v33, v21, v19

    xor-long v33, v33, v23

    xor-long v33, v33, v0

    .line 271
    .local v33, "z1":J
    xor-long v35, v23, v21

    xor-long v35, v35, v17

    xor-long v35, v35, v2

    .line 272
    .local v35, "z2":J
    move-wide/from16 v37, v17

    .line 274
    .local v37, "z3":J
    ushr-long v39, v37, v16

    xor-long v39, v37, v39

    const/4 v7, 0x2

    ushr-long v41, v37, v7

    xor-long v39, v39, v41

    const/16 v41, 0x7

    ushr-long v42, v37, v41

    xor-long v39, v39, v42

    xor-long v33, v33, v39

    .line 276
    const/16 v39, 0x3e

    shl-long v42, v37, v39

    const/16 v40, 0x39

    shl-long v44, v37, v40

    xor-long v42, v42, v44

    xor-long v35, v35, v42

    .line 278
    ushr-long v42, v35, v16

    xor-long v42, v35, v42

    ushr-long v44, v35, v7

    xor-long v42, v42, v44

    ushr-long v44, v35, v41

    xor-long v42, v42, v44

    xor-long v5, v5, v42

    .line 279
    const/16 v7, 0x3f

    shl-long v41, v35, v7

    shl-long v43, v35, v39

    xor-long v41, v41, v43

    shl-long v39, v35, v40

    xor-long v39, v41, v39

    xor-long v33, v33, v39

    .line 281
    aput-wide v5, p0, v4

    .line 282
    aput-wide v33, p0, v16

    .line 283
    return-void
.end method

.method public static multiplyP([I)V
    .locals 11
    .param p0, "x"    # [I
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

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 288
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 289
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 290
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 291
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 292
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 293
    return-void
.end method

.method public static multiplyP([I[I)V
    .locals 11
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

    .line 297
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 298
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x1f

    shr-int/lit8 v8, v8, 0x1f

    .line 299
    .local v8, "m":I
    ushr-int/lit8 v9, v1, 0x1

    const/high16 v10, -0x1f000000

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 300
    ushr-int/lit8 v0, v3, 0x1

    shl-int/lit8 v9, v1, 0x1f

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 301
    ushr-int/lit8 v0, v5, 0x1

    shl-int/lit8 v2, v3, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 302
    ushr-int/lit8 v0, v7, 0x1

    shl-int/lit8 v2, v5, 0x1f

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 303
    return-void
.end method

.method public static multiplyP([J)V
    .locals 13
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 307
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 308
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 309
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p0, v0

    .line 310
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 311
    return-void
.end method

.method public static multiplyP([J[J)V
    .locals 13
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

    .line 315
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 316
    .local v4, "x1":J
    const/16 v6, 0x3f

    shl-long v7, v4, v6

    shr-long/2addr v7, v6

    .line 317
    .local v7, "m":J
    ushr-long v9, v1, v3

    const-wide/high16 v11, -0x1f00000000000000L    # -1.757388200993436E159

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 318
    ushr-long v9, v4, v3

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 319
    return-void
.end method

.method public static multiplyP16([J)V
    .locals 14
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 383
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 384
    .local v4, "x1":J
    const/16 v6, 0x30

    shl-long v7, v4, v6

    .line 385
    .local v7, "c":J
    const/16 v9, 0x10

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 386
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 387
    return-void
.end method

.method public static multiplyP3([J[J)V
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

    .line 323
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 324
    .local v4, "x1":J
    const/16 v6, 0x3d

    shl-long v7, v4, v6

    .line 325
    .local v7, "c":J
    const/4 v9, 0x3

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 326
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 327
    return-void
.end method

.method public static multiplyP4([J[J)V
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

    .line 331
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 332
    .local v4, "x1":J
    const/16 v6, 0x3c

    shl-long v7, v4, v6

    .line 333
    .local v7, "c":J
    const/4 v9, 0x4

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 334
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 335
    return-void
.end method

.method public static multiplyP7([J[J)V
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

    .line 339
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 340
    .local v4, "x1":J
    const/16 v6, 0x39

    shl-long v7, v4, v6

    .line 341
    .local v7, "c":J
    const/4 v9, 0x7

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    ushr-long v12, v7, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 342
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 343
    return-void
.end method

.method public static multiplyP8([I)V
    .locals 11
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 347
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 348
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 349
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p0, v0

    .line 350
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p0, v2

    .line 351
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v4

    .line 352
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p0, v6

    .line 353
    return-void
.end method

.method public static multiplyP8([I[I)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 357
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 358
    .local v7, "x3":I
    shl-int/lit8 v8, v7, 0x18

    .line 359
    .local v8, "c":I
    ushr-int/lit8 v9, v1, 0x8

    xor-int/2addr v9, v8

    ushr-int/lit8 v10, v8, 0x1

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x2

    xor-int/2addr v9, v10

    ushr-int/lit8 v10, v8, 0x7

    xor-int/2addr v9, v10

    aput v9, p1, v0

    .line 360
    ushr-int/lit8 v0, v3, 0x8

    shl-int/lit8 v9, v1, 0x18

    or-int/2addr v0, v9

    aput v0, p1, v2

    .line 361
    ushr-int/lit8 v0, v5, 0x8

    shl-int/lit8 v2, v3, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v4

    .line 362
    ushr-int/lit8 v0, v7, 0x8

    shl-int/lit8 v2, v5, 0x18

    or-int/2addr v0, v2

    aput v0, p1, v6

    .line 363
    return-void
.end method

.method public static multiplyP8([J)V
    .locals 14
    .param p0, "x"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 367
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 368
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 369
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p0, v0

    .line 370
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p0, v3

    .line 371
    return-void
.end method

.method public static multiplyP8([J[J)V
    .locals 14
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 375
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 376
    .local v4, "x1":J
    const/16 v6, 0x38

    shl-long v7, v4, v6

    .line 377
    .local v7, "c":J
    const/16 v9, 0x8

    ushr-long v10, v1, v9

    xor-long/2addr v10, v7

    ushr-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    ushr-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 378
    ushr-long v9, v4, v9

    shl-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 379
    return-void
.end method

.method public static oneAsBytes()[B
    .locals 3

    .line 18
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 19
    .local v0, "tmp":[B
    const/4 v1, 0x0

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    .line 20
    return-object v0
.end method

.method public static oneAsInts()[I
    .locals 3

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 26
    .local v0, "tmp":[I
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    .line 27
    return-object v0
.end method

.method public static oneAsLongs()[J
    .locals 4

    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 33
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, -0x8000000000000000L

    aput-wide v2, v0, v1

    .line 34
    return-object v0
.end method

.method public static pAsLongs()[J
    .locals 4

    .line 391
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 392
    .local v0, "tmp":[J
    const/4 v1, 0x0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    aput-wide v2, v0, v1

    .line 393
    return-object v0
.end method

.method public static square([J[J)V
    .locals 20
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

    .line 398
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 399
    .local v0, "t":[J
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 400
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128Rev(J[JI)V

    .line 402
    aget-wide v3, v0, v1

    .local v3, "z0":J
    aget-wide v6, v0, v2

    .local v6, "z1":J
    aget-wide v8, v0, v5

    .local v8, "z2":J
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 404
    .local v10, "z3":J
    ushr-long v12, v10, v2

    xor-long/2addr v12, v10

    ushr-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    ushr-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    .line 405
    const/16 v12, 0x3f

    shl-long v15, v10, v12

    const/16 v13, 0x3e

    shl-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    shl-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    .line 407
    ushr-long v15, v8, v2

    xor-long/2addr v15, v8

    ushr-long v18, v8, v5

    xor-long v15, v15, v18

    ushr-long v18, v8, v14

    xor-long v15, v15, v18

    xor-long/2addr v3, v15

    .line 408
    shl-long v14, v8, v12

    shl-long v12, v8, v13

    xor-long/2addr v12, v14

    shl-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    .line 410
    aput-wide v3, p1, v1

    .line 411
    aput-wide v6, p1, v2

    .line 412
    return-void
.end method

.method public static xor([BI[BII)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "len"
        }
    .end annotation

    .line 463
    nop

    :goto_0
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_0

    .line 465
    add-int v0, p1, p4

    aget-byte v1, p0, v0

    add-int v2, p3, p4

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    goto :goto_0

    .line 467
    :cond_0
    return-void
.end method

.method public static xor([BI[BI[BI)V
    .locals 4
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "y"    # [B
    .param p3, "yOff"    # I
    .param p4, "z"    # [B
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

    .line 442
    const/4 v0, 0x0

    .line 445
    .local v0, "i":I
    :cond_0
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 446
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 447
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 448
    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    .line 450
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 451
    return-void
.end method

.method public static xor([B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 416
    const/4 v0, 0x0

    .line 419
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 420
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 421
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 422
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 424
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 425
    return-void
.end method

.method public static xor([B[BI)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "yOff"
        }
    .end annotation

    .line 429
    const/4 v0, 0x0

    .line 432
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 433
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 434
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 435
    aget-byte v1, p0, v0

    add-int v2, p2, v0

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    .line 437
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 438
    return-void
.end method

.method public static xor([B[BII)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "yOff"    # I
    .param p3, "yLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "yOff",
            "yLen"
        }
    .end annotation

    .line 455
    nop

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-ltz p3, :cond_0

    .line 457
    aget-byte v0, p0, p3

    add-int v1, p2, p3

    aget-byte v1, p1, v1

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p0, p3

    goto :goto_0

    .line 459
    :cond_0
    return-void
.end method

.method public static xor([B[B[B)V
    .locals 3
    .param p0, "x"    # [B
    .param p1, "y"    # [B
    .param p2, "z"    # [B
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

    .line 471
    const/4 v0, 0x0

    .line 474
    .local v0, "i":I
    :cond_0
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 475
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 476
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 477
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 479
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 480
    return-void
.end method

.method public static xor([I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 484
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 485
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 486
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 487
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p0, v0

    .line 488
    return-void
.end method

.method public static xor([I[I[I)V
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

    .line 492
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 493
    const/4 v0, 0x1

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 494
    const/4 v0, 0x2

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 495
    const/4 v0, 0x3

    aget v1, p0, v0

    aget v2, p1, v0

    xor-int/2addr v1, v2

    aput v1, p2, v0

    .line 496
    return-void
.end method

.method public static xor([J[J)V
    .locals 5
    .param p0, "x"    # [J
    .param p1, "y"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 500
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 501
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 502
    return-void
.end method

.method public static xor([J[J[J)V
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

    .line 506
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 507
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 508
    return-void
.end method

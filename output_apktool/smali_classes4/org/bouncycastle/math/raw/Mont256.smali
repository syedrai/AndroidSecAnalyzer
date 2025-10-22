.class public abstract Lorg/bouncycastle/math/raw/Mont256;
.super Ljava/lang/Object;
.source "Mont256.java"


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inverse32(I)I
    .locals 2
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 10
    move v0, p0

    .line 11
    .local v0, "z":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 12
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 13
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 14
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, v0, v1

    .line 16
    return v0
.end method

.method public static multAdd([I[I[I[II)V
    .locals 30
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "m"    # [I
    .param p4, "mInv32"    # I
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
            "y",
            "z",
            "m",
            "mInv32"
        }
    .end annotation

    .line 21
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 22
    .local v2, "z_8":I
    const/4 v3, 0x0

    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 24
    .local v4, "y_0":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 26
    aget v10, v0, v3

    int-to-long v10, v10

    and-long/2addr v10, v6

    .line 27
    .local v10, "z_0":J
    aget v12, p0, v8

    int-to-long v12, v12

    and-long/2addr v12, v6

    .line 29
    .local v12, "x_i":J
    mul-long v14, v12, v4

    .line 30
    .local v14, "prod1":J
    and-long v16, v14, v6

    move-wide/from16 v19, v4

    const/16 v18, 0x0

    .end local v4    # "y_0":J
    .local v19, "y_0":J
    add-long v3, v16, v10

    .line 32
    .local v3, "carry":J
    long-to-int v5, v3

    mul-int v5, v5, p4

    move-wide/from16 v16, v6

    int-to-long v6, v5

    and-long v6, v6, v16

    .line 34
    .local v6, "t":J
    aget v5, v1, v18

    move-wide/from16 v22, v10

    .end local v10    # "z_0":J
    .local v22, "z_0":J
    int-to-long v9, v5

    and-long v9, v9, v16

    mul-long v9, v9, v6

    .line 35
    .local v9, "prod2":J
    and-long v24, v9, v16

    add-long v3, v3, v24

    .line 37
    const/16 v5, 0x20

    ushr-long v24, v3, v5

    ushr-long v26, v14, v5

    add-long v24, v24, v26

    ushr-long v26, v9, v5

    add-long v24, v24, v26

    .line 39
    .end local v3    # "carry":J
    .local v24, "carry":J
    const/4 v3, 0x1

    .local v3, "j":I
    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    .line 41
    aget v11, p1, v3

    const/16 v21, 0x20

    int-to-long v4, v11

    and-long v4, v4, v16

    mul-long v14, v12, v4

    .line 42
    aget v4, v1, v3

    int-to-long v4, v4

    and-long v4, v4, v16

    mul-long v9, v6, v4

    .line 44
    and-long v4, v14, v16

    and-long v27, v9, v16

    add-long v4, v4, v27

    aget v11, v0, v3

    move/from16 v27, v3

    move-wide/from16 v28, v4

    .end local v3    # "j":I
    .local v27, "j":I
    int-to-long v3, v11

    and-long v3, v3, v16

    add-long v3, v28, v3

    add-long v3, v24, v3

    .line 45
    .end local v24    # "carry":J
    .local v3, "carry":J
    add-int/lit8 v5, v27, -0x1

    long-to-int v11, v3

    aput v11, v0, v5

    .line 46
    ushr-long v24, v3, v21

    ushr-long v28, v14, v21

    add-long v24, v24, v28

    ushr-long v28, v9, v21

    add-long v24, v24, v28

    .line 39
    .end local v3    # "carry":J
    .restart local v24    # "carry":J
    add-int/lit8 v3, v27, 0x1

    const/16 v5, 0x20

    .end local v27    # "j":I
    .local v3, "j":I
    goto :goto_1

    :cond_0
    move/from16 v27, v3

    const/16 v21, 0x20

    .line 49
    .end local v3    # "j":I
    int-to-long v3, v2

    and-long v3, v3, v16

    add-long v3, v24, v3

    .line 50
    .end local v24    # "carry":J
    .local v3, "carry":J
    const/4 v5, 0x7

    long-to-int v11, v3

    aput v11, v0, v5

    .line 51
    move v5, v2

    move-wide/from16 v24, v3

    .end local v2    # "z_8":I
    .end local v3    # "carry":J
    .local v5, "z_8":I
    .restart local v24    # "carry":J
    ushr-long v2, v24, v21

    long-to-int v2, v2

    .line 24
    .end local v5    # "z_8":I
    .end local v6    # "t":J
    .end local v9    # "prod2":J
    .end local v12    # "x_i":J
    .end local v14    # "prod1":J
    .end local v22    # "z_0":J
    .end local v24    # "carry":J
    .restart local v2    # "z_8":I
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v16

    move-wide/from16 v4, v19

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v19    # "y_0":J
    .restart local v4    # "y_0":J
    :cond_1
    move-wide/from16 v19, v4

    move v5, v2

    .line 54
    .end local v2    # "z_8":I
    .end local v4    # "y_0":J
    .end local v8    # "i":I
    .restart local v5    # "z_8":I
    .restart local v19    # "y_0":J
    if-nez v5, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 56
    :cond_2
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 58
    :cond_3
    return-void
.end method

.method public static multAddXF([I[I[I[I)V
    .locals 27
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I
    .param p3, "m"    # [I
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
            "z",
            "m"
        }
    .end annotation

    .line 64
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 65
    .local v2, "z_8":I
    const/4 v3, 0x0

    aget v4, p1, v3

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 67
    .local v4, "y_0":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/16 v9, 0x8

    if-ge v8, v9, :cond_1

    .line 69
    aget v10, p0, v8

    int-to-long v10, v10

    and-long/2addr v10, v6

    .line 71
    .local v10, "x_i":J
    mul-long v12, v10, v4

    aget v14, v0, v3

    int-to-long v14, v14

    and-long/2addr v14, v6

    add-long/2addr v12, v14

    .line 72
    .local v12, "carry":J
    and-long v14, v12, v6

    .line 73
    .local v14, "t":J
    const/16 v16, 0x20

    ushr-long v17, v12, v16

    add-long v17, v17, v14

    .line 75
    .end local v12    # "carry":J
    .local v17, "carry":J
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_1
    if-ge v12, v9, :cond_0

    .line 77
    aget v13, p1, v12

    move-wide/from16 v19, v4

    .end local v4    # "y_0":J
    .local v19, "y_0":J
    int-to-long v3, v13

    and-long/2addr v3, v6

    mul-long v3, v3, v10

    .line 78
    .local v3, "prod1":J
    aget v5, v1, v12

    move-wide/from16 v21, v6

    int-to-long v6, v5

    and-long v6, v6, v21

    mul-long v6, v6, v14

    .line 80
    .local v6, "prod2":J
    and-long v23, v3, v21

    and-long v25, v6, v21

    add-long v23, v23, v25

    aget v5, v0, v12

    move-wide/from16 v25, v10

    .end local v10    # "x_i":J
    .local v25, "x_i":J
    int-to-long v9, v5

    and-long v9, v9, v21

    add-long v23, v23, v9

    add-long v9, v17, v23

    .line 81
    .end local v17    # "carry":J
    .local v9, "carry":J
    add-int/lit8 v5, v12, -0x1

    long-to-int v11, v9

    aput v11, v0, v5

    .line 82
    ushr-long v17, v9, v16

    ushr-long v23, v3, v16

    add-long v17, v17, v23

    ushr-long v23, v6, v16

    add-long v17, v17, v23

    .line 75
    .end local v3    # "prod1":J
    .end local v6    # "prod2":J
    .end local v9    # "carry":J
    .restart local v17    # "carry":J
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    move-wide/from16 v10, v25

    const/4 v3, 0x0

    const/16 v9, 0x8

    goto :goto_1

    .end local v19    # "y_0":J
    .end local v25    # "x_i":J
    .restart local v4    # "y_0":J
    .restart local v10    # "x_i":J
    :cond_0
    move-wide/from16 v19, v4

    move-wide/from16 v21, v6

    move-wide/from16 v25, v10

    .line 85
    .end local v4    # "y_0":J
    .end local v10    # "x_i":J
    .end local v12    # "j":I
    .restart local v19    # "y_0":J
    .restart local v25    # "x_i":J
    int-to-long v3, v2

    and-long v3, v3, v21

    add-long v3, v17, v3

    .line 86
    .end local v17    # "carry":J
    .local v3, "carry":J
    const/4 v5, 0x7

    long-to-int v6, v3

    aput v6, v0, v5

    .line 87
    ushr-long v5, v3, v16

    long-to-int v2, v5

    .line 67
    .end local v3    # "carry":J
    .end local v14    # "t":J
    .end local v25    # "x_i":J
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v4, v19

    move-wide/from16 v6, v21

    const/4 v3, 0x0

    goto :goto_0

    .end local v19    # "y_0":J
    .restart local v4    # "y_0":J
    :cond_1
    move-wide/from16 v19, v4

    .line 90
    .end local v4    # "y_0":J
    .end local v8    # "i":I
    .restart local v19    # "y_0":J
    if-nez v2, :cond_2

    invoke-static/range {p2 .. p3}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    :cond_2
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 94
    :cond_3
    return-void
.end method

.method public static reduce([I[II)V
    .locals 17
    .param p0, "z"    # [I
    .param p1, "m"    # [I
    .param p2, "mInv32"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "z",
            "m",
            "mInv32"
        }
    .end annotation

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 100
    const/4 v4, 0x0

    aget v5, v0, v4

    .line 102
    .local v5, "z_0":I
    mul-int v6, v5, p2

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    .line 104
    .local v6, "t":J
    aget v4, v1, v4

    int-to-long v10, v4

    and-long/2addr v10, v8

    mul-long v10, v10, v6

    int-to-long v12, v5

    and-long/2addr v12, v8

    add-long/2addr v10, v12

    .line 106
    .local v10, "carry":J
    const/16 v4, 0x20

    ushr-long/2addr v10, v4

    .line 108
    const/4 v12, 0x1

    .local v12, "j":I
    :goto_1
    if-ge v12, v3, :cond_0

    .line 110
    aget v13, v1, v12

    int-to-long v13, v13

    and-long/2addr v13, v8

    mul-long v13, v13, v6

    aget v15, v0, v12

    const/16 v16, 0x20

    int-to-long v3, v15

    and-long/2addr v3, v8

    add-long/2addr v13, v3

    add-long/2addr v10, v13

    .line 111
    add-int/lit8 v3, v12, -0x1

    long-to-int v4, v10

    aput v4, v0, v3

    .line 112
    ushr-long v10, v10, v16

    .line 108
    add-int/lit8 v12, v12, 0x1

    const/16 v3, 0x8

    const/16 v4, 0x20

    goto :goto_1

    .line 115
    .end local v12    # "j":I
    :cond_0
    const/4 v3, 0x7

    long-to-int v4, v10

    aput v4, v0, v3

    .line 98
    .end local v5    # "z_0":I
    .end local v6    # "t":J
    .end local v10    # "carry":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "i":I
    :cond_1
    invoke-static/range {p0 .. p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 123
    :cond_2
    return-void
.end method

.method public static reduceXF([I[I)V
    .locals 14
    .param p0, "z"    # [I
    .param p1, "m"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "m"
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 131
    const/4 v2, 0x0

    aget v2, p0, v2

    .line 133
    .local v2, "z_0":I
    int-to-long v3, v2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    .line 134
    .local v3, "t":J
    move-wide v7, v3

    .line 136
    .local v7, "carry":J
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_1
    if-ge v9, v1, :cond_0

    .line 138
    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v5

    mul-long v10, v10, v3

    aget v12, p0, v9

    int-to-long v12, v12

    and-long/2addr v12, v5

    add-long/2addr v10, v12

    add-long/2addr v7, v10

    .line 139
    add-int/lit8 v10, v9, -0x1

    long-to-int v11, v7

    aput v11, p0, v10

    .line 140
    const/16 v10, 0x20

    ushr-long/2addr v7, v10

    .line 136
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 143
    .end local v9    # "j":I
    :cond_0
    const/4 v1, 0x7

    long-to-int v5, v7

    aput v5, p0, v1

    .line 129
    .end local v2    # "z_0":I
    .end local v3    # "t":J
    .end local v7    # "carry":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    .end local v0    # "i":I
    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 149
    invoke-static {p0, p1, p0}, Lorg/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 151
    :cond_2
    return-void
.end method

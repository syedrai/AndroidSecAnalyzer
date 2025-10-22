.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;
.super Ljava/lang/Object;
.source "KGCMUtil_128.java"


# static fields
.field public static final SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
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

    .line 24
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 25
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 26
    return-void
.end method

.method public static equal([J[J)Z
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

    .line 30
    const-wide/16 v0, 0x0

    .line 31
    .local v0, "d":J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 32
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 33
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static multiply([J[J[J)V
    .locals 29
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

    .line 38
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 39
    .local v4, "x1":J
    aget-wide v6, p1, v0

    .local v6, "y0":J
    aget-wide v8, p1, v3

    .line 40
    .local v8, "y1":J
    const-wide/16 v10, 0x0

    .local v10, "z0":J
    const-wide/16 v12, 0x0

    .local v12, "z1":J
    const-wide/16 v14, 0x0

    .line 42
    .local v14, "z2":J
    const/16 v16, 0x0

    move/from16 v0, v16

    const/16 v16, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v17, 0x1

    const/16 v3, 0x40

    const/16 v18, 0x3f

    if-ge v0, v3, :cond_0

    .line 44
    const-wide/16 v19, 0x1

    move-wide/from16 v21, v1

    .end local v1    # "x0":J
    .local v21, "x0":J
    and-long v1, v21, v19

    neg-long v1, v1

    .local v1, "m0":J
    ushr-long v21, v21, v17

    .line 45
    and-long v23, v6, v1

    xor-long v10, v10, v23

    .line 46
    and-long v23, v8, v1

    xor-long v12, v12, v23

    .line 48
    move v3, v0

    move-wide/from16 v23, v1

    .end local v0    # "j":I
    .end local v1    # "m0":J
    .local v3, "j":I
    .local v23, "m0":J
    and-long v0, v4, v19

    neg-long v0, v0

    .local v0, "m1":J
    ushr-long v4, v4, v17

    .line 49
    and-long v19, v6, v0

    xor-long v12, v12, v19

    .line 50
    and-long v19, v8, v0

    xor-long v14, v14, v19

    .line 52
    shr-long v19, v8, v18

    .line 53
    .local v19, "c":J
    shl-long v25, v8, v17

    ushr-long v27, v6, v18

    or-long v8, v25, v27

    .line 54
    shl-long v25, v6, v17

    const-wide/16 v27, 0x87

    and-long v27, v19, v27

    xor-long v6, v25, v27

    .line 42
    .end local v0    # "m1":J
    .end local v19    # "c":J
    .end local v23    # "m0":J
    add-int/lit8 v0, v3, 0x1

    move-wide/from16 v1, v21

    const/4 v3, 0x1

    .end local v3    # "j":I
    .local v0, "j":I
    goto :goto_0

    .end local v21    # "x0":J
    .local v1, "x0":J
    :cond_0
    move v3, v0

    .line 57
    .end local v0    # "j":I
    shl-long v0, v14, v17

    xor-long/2addr v0, v14

    const/4 v2, 0x2

    shl-long v2, v14, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    shl-long v2, v14, v2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v10

    .line 58
    .end local v10    # "z0":J
    .local v0, "z0":J
    ushr-long v2, v14, v18

    const/16 v10, 0x3e

    ushr-long v10, v14, v10

    xor-long/2addr v2, v10

    const/16 v10, 0x39

    ushr-long v10, v14, v10

    xor-long/2addr v2, v10

    xor-long/2addr v2, v12

    .line 60
    .end local v12    # "z1":J
    .local v2, "z1":J
    aput-wide v0, p2, v16

    aput-wide v2, p2, v17

    .line 61
    return-void
.end method

.method public static multiplyX([J[J)V
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

    .line 65
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 66
    .local v4, "x1":J
    const/16 v6, 0x3f

    shr-long v7, v4, v6

    .line 67
    .local v7, "m":J
    shl-long v9, v1, v3

    const-wide/16 v11, 0x87

    and-long/2addr v11, v7

    xor-long/2addr v9, v11

    aput-wide v9, p1, v0

    .line 68
    shl-long v9, v4, v3

    ushr-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 69
    return-void
.end method

.method public static multiplyX8([J[J)V
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

    .line 73
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "x0":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .line 74
    .local v4, "x1":J
    const/16 v6, 0x38

    ushr-long v7, v4, v6

    .line 75
    .local v7, "c":J
    const/16 v9, 0x8

    shl-long v10, v1, v9

    xor-long/2addr v10, v7

    shl-long v12, v7, v3

    xor-long/2addr v10, v12

    const/4 v12, 0x2

    shl-long v12, v7, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    shl-long v12, v7, v12

    xor-long/2addr v10, v12

    aput-wide v10, p1, v0

    .line 76
    shl-long v9, v4, v9

    ushr-long v11, v1, v6

    or-long/2addr v9, v11

    aput-wide v9, p1, v3

    .line 77
    return-void
.end method

.method public static one([J)V
    .locals 3
    .param p0, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    aput-wide v1, p0, v0

    .line 82
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 83
    return-void
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

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 88
    .local v0, "t":[J
    const/4 v1, 0x0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 89
    const/4 v2, 0x1

    aget-wide v3, p0, v2

    const/4 v5, 0x2

    invoke-static {v3, v4, v0, v5}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 91
    aget-wide v3, v0, v1

    .local v3, "z0":J
    aget-wide v6, v0, v2

    .local v6, "z1":J
    aget-wide v8, v0, v5

    .local v8, "z2":J
    const/4 v10, 0x3

    aget-wide v10, v0, v10

    .line 93
    .local v10, "z3":J
    shl-long v12, v10, v2

    xor-long/2addr v12, v10

    shl-long v14, v10, v5

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    shl-long v15, v10, v14

    xor-long/2addr v12, v15

    xor-long/2addr v6, v12

    .line 94
    const/16 v12, 0x3f

    ushr-long v15, v10, v12

    const/16 v13, 0x3e

    ushr-long v17, v10, v13

    xor-long v15, v15, v17

    const/16 v17, 0x39

    ushr-long v18, v10, v17

    xor-long v15, v15, v18

    xor-long/2addr v8, v15

    .line 96
    shl-long v15, v8, v2

    xor-long/2addr v15, v8

    shl-long v18, v8, v5

    xor-long v15, v15, v18

    shl-long v18, v8, v14

    xor-long v15, v15, v18

    xor-long/2addr v3, v15

    .line 97
    ushr-long v14, v8, v12

    ushr-long v12, v8, v13

    xor-long/2addr v12, v14

    ushr-long v14, v8, v17

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    .line 99
    aput-wide v3, p1, v1

    .line 100
    aput-wide v6, p1, v2

    .line 101
    return-void
.end method

.method public static x([J)V
    .locals 3
    .param p0, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 105
    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    aput-wide v1, p0, v0

    .line 106
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 107
    return-void
.end method

.method public static zero([J)V
    .locals 3
    .param p0, "z"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 112
    const/4 v0, 0x1

    aput-wide v1, p0, v0

    .line 113
    return-void
.end method

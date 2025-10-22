.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_256;
.super Ljava/lang/Object;
.source "KGCMUtil_256.java"


# static fields
.field public static final SIZE:I = 0x4


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
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 21
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 22
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

    .line 26
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 27
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 28
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 29
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 30
    return-void
.end method

.method public static equal([J[J)Z
    .locals 9
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

    .line 34
    const-wide/16 v0, 0x0

    .line 35
    .local v0, "d":J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 36
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 37
    const/4 v4, 0x2

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 38
    const/4 v4, 0x3

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 39
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static multiply([J[J[J)V
    .locals 55
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

    .line 44
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

    .line 45
    .local v10, "x3":J
    aget-wide v12, p1, v0

    .local v12, "y0":J
    aget-wide v14, p1, v3

    .local v14, "y1":J
    aget-wide v16, p1, v6

    .local v16, "y2":J
    aget-wide v18, p1, v9

    .line 46
    .local v18, "y3":J
    const-wide/16 v20, 0x0

    .local v20, "z0":J
    const-wide/16 v22, 0x0

    .local v22, "z1":J
    const-wide/16 v24, 0x0

    .local v24, "z2":J
    const-wide/16 v26, 0x0

    .local v26, "z3":J
    const-wide/16 v28, 0x0

    .line 48
    .local v28, "z4":J
    const/16 v30, 0x0

    move/from16 v0, v30

    const/16 v30, 0x0

    .local v0, "j":I
    :goto_0
    const-wide/16 v31, 0x425

    const/16 v33, 0x1

    const/16 v3, 0x40

    const-wide/16 v34, 0x1

    const/16 v36, 0x3f

    if-ge v0, v3, :cond_0

    .line 50
    move-wide/from16 v38, v7

    const/16 v37, 0x2

    .end local v7    # "x2":J
    .local v38, "x2":J
    and-long v6, v1, v34

    neg-long v6, v6

    .local v6, "m0":J
    ushr-long v1, v1, v33

    .line 51
    and-long v40, v12, v6

    xor-long v20, v20, v40

    .line 52
    and-long v40, v14, v6

    xor-long v22, v22, v40

    .line 53
    and-long v40, v16, v6

    xor-long v24, v24, v40

    .line 54
    and-long v40, v18, v6

    xor-long v26, v26, v40

    .line 56
    move-wide/from16 v40, v10

    const/4 v8, 0x3

    .end local v10    # "x3":J
    .local v40, "x3":J
    and-long v9, v4, v34

    neg-long v9, v9

    .local v9, "m1":J
    ushr-long v4, v4, v33

    .line 57
    and-long v34, v12, v9

    xor-long v22, v22, v34

    .line 58
    and-long v34, v14, v9

    xor-long v24, v24, v34

    .line 59
    and-long v34, v16, v9

    xor-long v26, v26, v34

    .line 60
    and-long v34, v18, v9

    xor-long v28, v28, v34

    .line 62
    shr-long v34, v18, v36

    .line 63
    .local v34, "c":J
    shl-long v42, v18, v33

    ushr-long v44, v16, v36

    or-long v18, v42, v44

    .line 64
    shl-long v42, v16, v33

    ushr-long v44, v14, v36

    or-long v16, v42, v44

    .line 65
    shl-long v42, v14, v33

    ushr-long v44, v12, v36

    or-long v14, v42, v44

    .line 66
    shl-long v42, v12, v33

    and-long v31, v34, v31

    xor-long v12, v42, v31

    .line 48
    .end local v6    # "m0":J
    .end local v9    # "m1":J
    .end local v34    # "c":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v7, v38

    move-wide/from16 v10, v40

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto :goto_0

    .end local v38    # "x2":J
    .end local v40    # "x3":J
    .restart local v7    # "x2":J
    .restart local v10    # "x3":J
    :cond_0
    move-wide/from16 v38, v7

    move-wide/from16 v40, v10

    const/4 v8, 0x3

    const/16 v37, 0x2

    .line 69
    .end local v0    # "j":I
    .end local v7    # "x2":J
    .end local v10    # "x3":J
    .restart local v38    # "x2":J
    .restart local v40    # "x3":J
    move-wide/from16 v6, v18

    .line 70
    .local v6, "y4":J
    move-wide/from16 v9, v16

    .line 71
    .end local v18    # "y3":J
    .local v9, "y3":J
    move-wide/from16 v16, v14

    .line 72
    const/16 v0, 0x3e

    ushr-long v18, v6, v0

    xor-long v18, v12, v18

    const/16 v11, 0x3b

    ushr-long v42, v6, v11

    xor-long v18, v18, v42

    const/16 v42, 0x36

    ushr-long v43, v6, v42

    xor-long v14, v18, v43

    .line 73
    shl-long v18, v6, v37

    xor-long v18, v6, v18

    const/16 v43, 0x5

    shl-long v44, v6, v43

    xor-long v18, v18, v44

    const/16 v44, 0xa

    shl-long v45, v6, v44

    xor-long v12, v18, v45

    .line 75
    const/16 v18, 0x0

    move/from16 v0, v18

    const/16 v18, 0x3e

    .restart local v0    # "j":I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 77
    move-wide/from16 v45, v4

    .end local v4    # "x1":J
    .local v45, "x1":J
    and-long v3, v38, v34

    neg-long v3, v3

    .local v3, "m2":J
    ushr-long v38, v38, v33

    .line 78
    and-long v47, v12, v3

    xor-long v20, v20, v47

    .line 79
    and-long v47, v14, v3

    xor-long v22, v22, v47

    .line 80
    and-long v47, v16, v3

    xor-long v24, v24, v47

    .line 81
    and-long v47, v9, v3

    xor-long v26, v26, v47

    .line 83
    move-wide/from16 v47, v9

    const/4 v5, 0x3

    .end local v9    # "y3":J
    .local v47, "y3":J
    and-long v8, v40, v34

    neg-long v8, v8

    .local v8, "m3":J
    ushr-long v40, v40, v33

    .line 84
    and-long v49, v12, v8

    xor-long v22, v22, v49

    .line 85
    and-long v49, v14, v8

    xor-long v24, v24, v49

    .line 86
    and-long v49, v16, v8

    xor-long v26, v26, v49

    .line 87
    and-long v49, v47, v8

    xor-long v28, v28, v49

    .line 89
    shr-long v49, v47, v36

    .line 90
    .local v49, "c":J
    shl-long v51, v47, v33

    ushr-long v53, v16, v36

    or-long v47, v51, v53

    .line 91
    shl-long v51, v16, v33

    ushr-long v53, v14, v36

    or-long v16, v51, v53

    .line 92
    shl-long v51, v14, v33

    ushr-long v53, v12, v36

    or-long v14, v51, v53

    .line 93
    shl-long v51, v12, v33

    and-long v53, v49, v31

    xor-long v12, v51, v53

    .line 75
    .end local v3    # "m2":J
    .end local v8    # "m3":J
    .end local v49    # "c":J
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v4, v45

    move-wide/from16 v9, v47

    const/16 v3, 0x40

    const/4 v8, 0x3

    goto :goto_1

    .end local v45    # "x1":J
    .end local v47    # "y3":J
    .restart local v4    # "x1":J
    .restart local v9    # "y3":J
    :cond_1
    const/4 v5, 0x3

    .line 96
    .end local v0    # "j":I
    shl-long v3, v28, v37

    xor-long v3, v28, v3

    shl-long v8, v28, v43

    xor-long/2addr v3, v8

    shl-long v8, v28, v44

    xor-long/2addr v3, v8

    xor-long v3, v20, v3

    .line 97
    .end local v20    # "z0":J
    .local v3, "z0":J
    ushr-long v8, v28, v18

    ushr-long v10, v28, v11

    xor-long/2addr v8, v10

    ushr-long v10, v28, v42

    xor-long/2addr v8, v10

    xor-long v8, v22, v8

    .line 99
    .end local v22    # "z1":J
    .local v8, "z1":J
    aput-wide v3, p2, v30

    aput-wide v8, p2, v33

    aput-wide v24, p2, v37

    aput-wide v26, p2, v5

    .line 100
    return-void
.end method

.method public static multiplyX([J[J)V
    .locals 19
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

    .line 104
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

    .line 105
    .local v10, "x3":J
    const/16 v12, 0x3f

    shr-long v13, v10, v12

    .line 106
    .local v13, "m":J
    shl-long v15, v1, v3

    const-wide/16 v17, 0x425

    and-long v17, v13, v17

    xor-long v15, v15, v17

    aput-wide v15, p1, v0

    .line 107
    shl-long v15, v4, v3

    ushr-long v17, v1, v12

    or-long v15, v15, v17

    aput-wide v15, p1, v3

    .line 108
    shl-long v15, v7, v3

    ushr-long v17, v4, v12

    or-long v15, v15, v17

    aput-wide v15, p1, v6

    .line 109
    shl-long v15, v10, v3

    ushr-long v17, v7, v12

    or-long v15, v15, v17

    aput-wide v15, p1, v9

    .line 110
    return-void
.end method

.method public static multiplyX8([J[J)V
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

    .line 114
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

    .line 115
    .local v10, "x3":J
    const/16 v12, 0x38

    ushr-long v13, v10, v12

    .line 116
    .local v13, "c":J
    const/16 v15, 0x8

    shl-long v16, v1, v15

    xor-long v16, v16, v13

    shl-long v18, v13, v6

    xor-long v16, v16, v18

    const/16 v18, 0x5

    shl-long v18, v13, v18

    xor-long v16, v16, v18

    const/16 v18, 0xa

    shl-long v18, v13, v18

    xor-long v16, v16, v18

    aput-wide v16, p1, v0

    .line 117
    shl-long v16, v4, v15

    ushr-long v18, v1, v12

    or-long v16, v16, v18

    aput-wide v16, p1, v3

    .line 118
    shl-long v16, v7, v15

    ushr-long v18, v4, v12

    or-long v16, v16, v18

    aput-wide v16, p1, v6

    .line 119
    shl-long v15, v10, v15

    ushr-long v17, v7, v12

    or-long v15, v15, v17

    aput-wide v15, p1, v9

    .line 120
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

    .line 124
    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    aput-wide v1, p0, v0

    .line 125
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 126
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 127
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 128
    return-void
.end method

.method public static square([J[J)V
    .locals 12
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

    .line 132
    const/16 v0, 0x8

    new-array v0, v0, [J

    .line 133
    .local v0, "t":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 135
    aget-wide v2, p0, v1

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 133
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x8

    .line 139
    .local v1, "j":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_1

    .line 141
    aget-wide v3, v0, v1

    .line 142
    .local v3, "n":J
    add-int/lit8 v5, v1, -0x4

    aget-wide v6, v0, v5

    const/4 v8, 0x2

    shl-long v8, v3, v8

    xor-long/2addr v8, v3

    const/4 v10, 0x5

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    const/16 v10, 0xa

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 143
    add-int/lit8 v5, v1, -0x4

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v0, v5

    const/16 v8, 0x3e

    ushr-long v8, v3, v8

    const/16 v10, 0x3b

    ushr-long v10, v3, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x36

    ushr-long v10, v3, v10

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 144
    .end local v3    # "n":J
    goto :goto_1

    .line 146
    :cond_1
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_256;->copy([J[J)V

    .line 147
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

    .line 151
    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    aput-wide v1, p0, v0

    .line 152
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 153
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 154
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 155
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

    .line 159
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 160
    const/4 v0, 0x1

    aput-wide v1, p0, v0

    .line 161
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 162
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 163
    return-void
.end method

.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;
.super Ljava/lang/Object;
.source "KGCMUtil_512.java"


# static fields
.field public static final SIZE:I = 0x8


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
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 23
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 24
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 25
    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    xor-long/2addr v1, v3

    aput-wide v1, p2, v0

    .line 26
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

    .line 30
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 31
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 32
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 33
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 34
    const/4 v0, 0x4

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 35
    const/4 v0, 0x5

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 36
    const/4 v0, 0x6

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 37
    const/4 v0, 0x7

    aget-wide v1, p0, v0

    aput-wide v1, p1, v0

    .line 38
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

    .line 42
    const-wide/16 v0, 0x0

    .line 43
    .local v0, "d":J
    const/4 v2, 0x0

    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    xor-long/2addr v3, v5

    or-long/2addr v0, v3

    .line 44
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 45
    const/4 v4, 0x2

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 46
    const/4 v4, 0x3

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 47
    const/4 v4, 0x4

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 48
    const/4 v4, 0x5

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 49
    const/4 v4, 0x6

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 50
    const/4 v4, 0x7

    aget-wide v5, p0, v4

    aget-wide v7, p1, v4

    xor-long/2addr v5, v7

    or-long/2addr v0, v5

    .line 51
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static multiply([J[J[J)V
    .locals 64
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

    .line 56
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    .local v1, "y0":J
    const/4 v3, 0x1

    aget-wide v4, p1, v3

    .local v4, "y1":J
    const/4 v6, 0x2

    aget-wide v7, p1, v6

    .local v7, "y2":J
    const/4 v9, 0x3

    aget-wide v10, p1, v9

    .line 57
    .local v10, "y3":J
    const/4 v12, 0x4

    aget-wide v13, p1, v12

    .local v13, "y4":J
    const/4 v15, 0x5

    aget-wide v16, p1, v15

    .local v16, "y5":J
    const/16 v18, 0x6

    aget-wide v19, p1, v18

    .local v19, "y6":J
    const/16 v21, 0x7

    aget-wide v22, p1, v21

    .line 58
    .local v22, "y7":J
    const-wide/16 v24, 0x0

    .local v24, "z0":J
    const-wide/16 v26, 0x0

    .local v26, "z1":J
    const-wide/16 v28, 0x0

    .local v28, "z2":J
    const-wide/16 v30, 0x0

    .line 59
    .local v30, "z3":J
    const-wide/16 v32, 0x0

    .local v32, "z4":J
    const-wide/16 v34, 0x0

    .local v34, "z5":J
    const-wide/16 v36, 0x0

    .local v36, "z6":J
    const-wide/16 v38, 0x0

    .line 60
    .local v38, "z7":J
    const-wide/16 v40, 0x0

    .line 62
    .local v40, "z8":J
    const/16 v42, 0x0

    move/from16 v0, v42

    const/16 v42, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v43, 0x38

    const/16 v44, 0x3b

    const/16 v45, 0x3e

    const/16 v46, 0x1

    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 64
    aget-wide v47, p0, v0

    .local v47, "x0":J
    add-int/lit8 v49, v0, 0x1

    aget-wide v49, p0, v49

    .line 66
    .local v49, "x1":J
    const/16 v51, 0x0

    move/from16 v3, v51

    const/16 v51, 0x8

    .local v3, "j":I
    :goto_1
    const/16 v52, 0x2

    const/16 v6, 0x40

    if-ge v3, v6, :cond_0

    .line 68
    const-wide/16 v53, 0x1

    move-wide/from16 v55, v10

    const/4 v6, 0x3

    .end local v10    # "y3":J
    .local v55, "y3":J
    and-long v9, v47, v53

    neg-long v9, v9

    .local v9, "m0":J
    ushr-long v47, v47, v46

    .line 69
    and-long v57, v1, v9

    xor-long v24, v24, v57

    .line 70
    and-long v57, v4, v9

    xor-long v26, v26, v57

    .line 71
    and-long v57, v7, v9

    xor-long v28, v28, v57

    .line 72
    and-long v57, v55, v9

    xor-long v30, v30, v57

    .line 73
    and-long v57, v13, v9

    xor-long v32, v32, v57

    .line 74
    and-long v57, v16, v9

    xor-long v34, v34, v57

    .line 75
    and-long v57, v19, v9

    xor-long v36, v36, v57

    .line 76
    and-long v57, v22, v9

    xor-long v38, v38, v57

    .line 78
    move-wide/from16 v57, v7

    const/16 v59, 0x3

    .end local v7    # "y2":J
    .local v57, "y2":J
    and-long v6, v49, v53

    neg-long v6, v6

    .local v6, "m1":J
    ushr-long v49, v49, v46

    .line 79
    and-long v53, v1, v6

    xor-long v26, v26, v53

    .line 80
    and-long v53, v4, v6

    xor-long v28, v28, v53

    .line 81
    and-long v53, v57, v6

    xor-long v30, v30, v53

    .line 82
    and-long v53, v55, v6

    xor-long v32, v32, v53

    .line 83
    and-long v53, v13, v6

    xor-long v34, v34, v53

    .line 84
    and-long v53, v16, v6

    xor-long v36, v36, v53

    .line 85
    and-long v53, v19, v6

    xor-long v38, v38, v53

    .line 86
    and-long v53, v22, v6

    xor-long v40, v40, v53

    .line 88
    const/16 v8, 0x3f

    shr-long v53, v22, v8

    .line 89
    .local v53, "c":J
    shl-long v60, v22, v46

    ushr-long v62, v19, v8

    or-long v22, v60, v62

    .line 90
    shl-long v60, v19, v46

    ushr-long v62, v16, v8

    or-long v19, v60, v62

    .line 91
    shl-long v60, v16, v46

    ushr-long v62, v13, v8

    or-long v16, v60, v62

    .line 92
    shl-long v60, v13, v46

    ushr-long v62, v55, v8

    or-long v13, v60, v62

    .line 93
    shl-long v60, v55, v46

    ushr-long v62, v57, v8

    or-long v55, v60, v62

    .line 94
    shl-long v60, v57, v46

    ushr-long v62, v4, v8

    or-long v57, v60, v62

    .line 95
    shl-long v60, v4, v46

    ushr-long v62, v1, v8

    or-long v4, v60, v62

    .line 96
    shl-long v60, v1, v46

    const-wide/16 v62, 0x125

    and-long v62, v53, v62

    xor-long v1, v60, v62

    .line 66
    .end local v6    # "m1":J
    .end local v9    # "m0":J
    .end local v53    # "c":J
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v10, v55

    move-wide/from16 v7, v57

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto/16 :goto_1

    .end local v55    # "y3":J
    .end local v57    # "y2":J
    .restart local v7    # "y2":J
    .restart local v10    # "y3":J
    :cond_0
    move-wide/from16 v57, v7

    move-wide/from16 v55, v10

    const/16 v59, 0x3

    .line 99
    .end local v3    # "j":I
    .end local v7    # "y2":J
    .end local v10    # "y3":J
    .restart local v55    # "y3":J
    .restart local v57    # "y2":J
    move-wide/from16 v6, v22

    .line 100
    .local v6, "y8":J
    move-wide/from16 v22, v19

    .line 101
    move-wide/from16 v19, v16

    .line 102
    move-wide/from16 v16, v13

    .line 103
    move-wide/from16 v13, v55

    .line 104
    move-wide/from16 v10, v57

    .line 105
    .end local v55    # "y3":J
    .restart local v10    # "y3":J
    move-wide v8, v4

    .line 106
    .end local v57    # "y2":J
    .local v8, "y2":J
    ushr-long v53, v6, v45

    xor-long v53, v1, v53

    ushr-long v44, v6, v44

    xor-long v44, v53, v44

    ushr-long v53, v6, v43

    xor-long v4, v44, v53

    .line 107
    shl-long v43, v6, v52

    xor-long v43, v6, v43

    shl-long v53, v6, v15

    xor-long v43, v43, v53

    shl-long v53, v6, v51

    xor-long v1, v43, v53

    .line 62
    .end local v6    # "y8":J
    .end local v47    # "x0":J
    .end local v49    # "x1":J
    add-int/lit8 v0, v0, 0x2

    move-wide v7, v8

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v9, 0x3

    goto/16 :goto_0

    .end local v8    # "y2":J
    .restart local v7    # "y2":J
    :cond_1
    const/16 v51, 0x8

    const/16 v52, 0x2

    const/16 v59, 0x3

    .line 110
    .end local v0    # "i":I
    shl-long v47, v40, v52

    xor-long v47, v40, v47

    shl-long v49, v40, v15

    xor-long v47, v47, v49

    shl-long v49, v40, v51

    xor-long v47, v47, v49

    xor-long v24, v24, v47

    .line 111
    ushr-long v47, v40, v45

    ushr-long v44, v40, v44

    xor-long v44, v47, v44

    ushr-long v47, v40, v43

    xor-long v44, v44, v47

    xor-long v26, v26, v44

    .line 113
    aput-wide v24, p2, v42

    aput-wide v26, p2, v46

    aput-wide v28, p2, v52

    aput-wide v30, p2, v59

    .line 114
    aput-wide v32, p2, v12

    aput-wide v34, p2, v15

    aput-wide v36, p2, v18

    aput-wide v38, p2, v21

    .line 115
    return-void
.end method

.method public static multiplyX([J[J)V
    .locals 31
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

    .line 119
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

    .line 120
    .local v10, "x3":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .local v13, "x4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "x5":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "x6":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .line 121
    .local v22, "x7":J
    const/16 v24, 0x3f

    shr-long v25, v22, v24

    .line 122
    .local v25, "m":J
    shl-long v27, v1, v3

    const-wide/16 v29, 0x125

    and-long v29, v25, v29

    xor-long v27, v27, v29

    aput-wide v27, p1, v0

    .line 123
    shl-long v27, v4, v3

    ushr-long v29, v1, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v3

    .line 124
    shl-long v27, v7, v3

    ushr-long v29, v4, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v6

    .line 125
    shl-long v27, v10, v3

    ushr-long v29, v7, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v9

    .line 126
    shl-long v27, v13, v3

    ushr-long v29, v10, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v12

    .line 127
    shl-long v27, v16, v3

    ushr-long v29, v13, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v15

    .line 128
    shl-long v27, v19, v3

    ushr-long v29, v16, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v18

    .line 129
    shl-long v27, v22, v3

    ushr-long v29, v19, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v21

    .line 130
    return-void
.end method

.method public static multiplyX8([J[J)V
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

    .line 134
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

    .line 135
    .local v10, "x3":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .local v13, "x4":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "x5":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "x6":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .line 136
    .local v22, "x7":J
    const/16 v24, 0x38

    ushr-long v25, v22, v24

    .line 137
    .local v25, "c":J
    const/16 v27, 0x8

    shl-long v28, v1, v27

    xor-long v28, v28, v25

    shl-long v30, v25, v6

    xor-long v28, v28, v30

    shl-long v30, v25, v15

    xor-long v28, v28, v30

    shl-long v30, v25, v27

    xor-long v28, v28, v30

    aput-wide v28, p1, v0

    .line 138
    shl-long v28, v4, v27

    ushr-long v30, v1, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v3

    .line 139
    shl-long v28, v7, v27

    ushr-long v30, v4, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v6

    .line 140
    shl-long v28, v10, v27

    ushr-long v30, v7, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v9

    .line 141
    shl-long v28, v13, v27

    ushr-long v30, v10, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v12

    .line 142
    shl-long v28, v16, v27

    ushr-long v30, v13, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v15

    .line 143
    shl-long v28, v19, v27

    ushr-long v30, v16, v24

    or-long v28, v28, v30

    aput-wide v28, p1, v18

    .line 144
    shl-long v27, v22, v27

    ushr-long v29, v19, v24

    or-long v27, v27, v29

    aput-wide v27, p1, v21

    .line 145
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

    .line 149
    const/4 v0, 0x0

    const-wide/16 v1, 0x1

    aput-wide v1, p0, v0

    .line 150
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 151
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 152
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 153
    const/4 v0, 0x4

    aput-wide v1, p0, v0

    .line 154
    const/4 v0, 0x5

    aput-wide v1, p0, v0

    .line 155
    const/4 v0, 0x6

    aput-wide v1, p0, v0

    .line 156
    const/4 v0, 0x7

    aput-wide v1, p0, v0

    .line 157
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

    .line 161
    const/16 v0, 0x10

    new-array v0, v0, [J

    .line 162
    .local v0, "t":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 164
    aget-wide v2, p0, v1

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x10

    .line 168
    .local v1, "j":I
    :goto_1
    add-int/lit8 v1, v1, -0x1

    if-lt v1, v2, :cond_1

    .line 170
    aget-wide v3, v0, v1

    .line 171
    .local v3, "n":J
    add-int/lit8 v5, v1, -0x8

    aget-wide v6, v0, v5

    const/4 v8, 0x2

    shl-long v8, v3, v8

    xor-long/2addr v8, v3

    const/4 v10, 0x5

    shl-long v10, v3, v10

    xor-long/2addr v8, v10

    shl-long v10, v3, v2

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 172
    add-int/lit8 v5, v1, -0x8

    add-int/lit8 v5, v5, 0x1

    aget-wide v6, v0, v5

    const/16 v8, 0x3e

    ushr-long v8, v3, v8

    const/16 v10, 0x3b

    ushr-long v10, v3, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x38

    ushr-long v10, v3, v10

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v0, v5

    .line 173
    .end local v3    # "n":J
    goto :goto_1

    .line 175
    :cond_1
    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->copy([J[J)V

    .line 176
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

    .line 180
    const/4 v0, 0x0

    const-wide/16 v1, 0x2

    aput-wide v1, p0, v0

    .line 181
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 182
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 183
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 184
    const/4 v0, 0x4

    aput-wide v1, p0, v0

    .line 185
    const/4 v0, 0x5

    aput-wide v1, p0, v0

    .line 186
    const/4 v0, 0x6

    aput-wide v1, p0, v0

    .line 187
    const/4 v0, 0x7

    aput-wide v1, p0, v0

    .line 188
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

    .line 192
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, p0, v0

    .line 193
    const/4 v0, 0x1

    aput-wide v1, p0, v0

    .line 194
    const/4 v0, 0x2

    aput-wide v1, p0, v0

    .line 195
    const/4 v0, 0x3

    aput-wide v1, p0, v0

    .line 196
    const/4 v0, 0x4

    aput-wide v1, p0, v0

    .line 197
    const/4 v0, 0x5

    aput-wide v1, p0, v0

    .line 198
    const/4 v0, 0x6

    aput-wide v1, p0, v0

    .line 199
    const/4 v0, 0x7

    aput-wide v1, p0, v0

    .line 200
    return-void
.end method

.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X448Field;
.super Ljava/lang/Object;
.source "X448Field.java"


# static fields
.field private static final M28:I = 0xfffffff

.field private static final P32:[I

.field public static final SIZE:I = 0x10

.field private static final U32:J = 0xffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
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

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 21
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static addOne([I)V
    .locals 2
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 27
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 28
    return-void
.end method

.method public static addOne([II)V
    .locals 1
    .param p0, "z"    # [I
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

    .line 32
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    .line 33
    return-void
.end method

.method public static areEqual([I[I)I
    .locals 4
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

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 50
    aget v2, p0, v1

    aget v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 48
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 53
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static areEqualVar([I[I)Z
    .locals 1
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

    .line 58
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->areEqual([I[I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static carry([I)V
    .locals 35
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "z0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .local v3, "z1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .local v5, "z2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .local v7, "z3":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .local v9, "z4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .local v11, "z5":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .local v13, "z6":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 64
    .local v15, "z7":I
    const/16 v16, 0x8

    aget v17, p0, v16

    .local v17, "z8":I
    const/16 v18, 0x9

    aget v19, p0, v18

    .local v19, "z9":I
    const/16 v20, 0xa

    aget v21, p0, v20

    .local v21, "z10":I
    const/16 v22, 0xb

    aget v23, p0, v22

    .local v23, "z11":I
    const/16 v24, 0xc

    aget v25, p0, v24

    .local v25, "z12":I
    const/16 v26, 0xd

    aget v27, p0, v26

    .local v27, "z13":I
    const/16 v28, 0xe

    aget v29, p0, v28

    .local v29, "z14":I
    const/16 v30, 0xf

    aget v31, p0, v30

    .line 66
    .local v31, "z15":I
    ushr-int/lit8 v32, v1, 0x1c

    add-int v3, v3, v32

    const v32, 0xfffffff

    and-int v1, v1, v32

    .line 67
    ushr-int/lit8 v33, v9, 0x1c

    add-int v11, v11, v33

    and-int v9, v9, v32

    .line 68
    ushr-int/lit8 v33, v17, 0x1c

    add-int v19, v19, v33

    and-int v17, v17, v32

    .line 69
    ushr-int/lit8 v33, v25, 0x1c

    add-int v27, v27, v33

    and-int v25, v25, v32

    .line 71
    ushr-int/lit8 v33, v3, 0x1c

    add-int v5, v5, v33

    and-int v3, v3, v32

    .line 72
    ushr-int/lit8 v33, v11, 0x1c

    add-int v13, v13, v33

    and-int v11, v11, v32

    .line 73
    ushr-int/lit8 v33, v19, 0x1c

    add-int v21, v21, v33

    and-int v19, v19, v32

    .line 74
    ushr-int/lit8 v33, v27, 0x1c

    add-int v29, v29, v33

    and-int v27, v27, v32

    .line 76
    ushr-int/lit8 v33, v5, 0x1c

    add-int v7, v7, v33

    and-int v5, v5, v32

    .line 77
    ushr-int/lit8 v33, v13, 0x1c

    add-int v15, v15, v33

    and-int v13, v13, v32

    .line 78
    ushr-int/lit8 v33, v21, 0x1c

    add-int v23, v23, v33

    and-int v21, v21, v32

    .line 79
    ushr-int/lit8 v33, v29, 0x1c

    add-int v31, v31, v33

    and-int v29, v29, v32

    .line 81
    ushr-int/lit8 v33, v31, 0x1c

    .local v33, "t":I
    and-int v31, v31, v32

    .line 82
    add-int v1, v1, v33

    .line 83
    add-int v17, v17, v33

    .line 85
    ushr-int/lit8 v34, v7, 0x1c

    add-int v9, v9, v34

    and-int v7, v7, v32

    .line 86
    ushr-int/lit8 v34, v15, 0x1c

    add-int v17, v17, v34

    and-int v15, v15, v32

    .line 87
    ushr-int/lit8 v34, v23, 0x1c

    add-int v25, v25, v34

    and-int v23, v23, v32

    .line 89
    ushr-int/lit8 v34, v1, 0x1c

    add-int v3, v3, v34

    and-int v1, v1, v32

    .line 90
    ushr-int/lit8 v34, v9, 0x1c

    add-int v11, v11, v34

    and-int v9, v9, v32

    .line 91
    ushr-int/lit8 v34, v17, 0x1c

    add-int v19, v19, v34

    and-int v17, v17, v32

    .line 92
    ushr-int/lit8 v34, v25, 0x1c

    add-int v27, v27, v34

    and-int v25, v25, v32

    .line 94
    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    aput v7, p0, v6

    aput v9, p0, v8

    aput v11, p0, v10

    aput v13, p0, v12

    aput v15, p0, v14

    .line 95
    aput v17, p0, v16

    aput v19, p0, v18

    aput v21, p0, v20

    aput v23, p0, v22

    aput v25, p0, v24

    aput v27, p0, v26

    aput v29, p0, v28

    aput v31, p0, v30

    .line 96
    return-void
.end method

.method public static cmov(I[II[II)V
    .locals 4
    .param p0, "cond"    # I
    .param p1, "x"    # [I
    .param p2, "xOff"    # I
    .param p3, "z"    # [I
    .param p4, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cond",
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 104
    add-int v1, p4, v0

    aget v1, p3, v1

    .local v1, "z_i":I
    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v2, v1

    .line 105
    .local v2, "diff":I
    and-int v3, v2, p0

    xor-int/2addr v1, v3

    .line 106
    add-int v3, p4, v0

    aput v1, p3, v3

    .line 102
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static cnegate(I[I)V
    .locals 3
    .param p0, "negate"    # I
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "negate",
            "z"
        }
    .end annotation

    .line 114
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 115
    .local v0, "t":[I
    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    .line 117
    neg-int v1, p0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->cmov(I[II[II)V

    .line 118
    return-void
.end method

.method public static copy([II[II)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 124
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 130
    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createTable(I)[I
    .locals 1
    .param p0, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 135
    mul-int/lit8 v0, p0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static cswap(I[I[I)V
    .locals 6
    .param p0, "swap"    # I
    .param p1, "a"    # [I
    .param p2, "b"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "swap",
            "a",
            "b"
        }
    .end annotation

    .line 143
    rsub-int/lit8 v0, p0, 0x0

    .line 144
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 146
    aget v2, p1, v1

    .local v2, "ai":I
    aget v3, p2, v1

    .line 147
    .local v3, "bi":I
    xor-int v4, v2, v3

    and-int/2addr v4, v0

    .line 148
    .local v4, "dummy":I
    xor-int v5, v2, v4

    aput v5, p1, v1

    .line 149
    xor-int v5, v3, v4

    aput v5, p2, v1

    .line 144
    .end local v2    # "ai":I
    .end local v3    # "bi":I
    .end local v4    # "dummy":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static decode([BI[I)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z"
        }
    .end annotation

    .line 173
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 174
    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 175
    add-int/lit8 v0, p1, 0xe

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 176
    add-int/lit8 v0, p1, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 177
    add-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 178
    add-int/lit8 v0, p1, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 179
    add-int/lit8 v0, p1, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 180
    add-int/lit8 v0, p1, 0x31

    const/16 v1, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 181
    return-void
.end method

.method public static decode([BI[II)V
    .locals 2
    .param p0, "x"    # [B
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 185
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 186
    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 187
    add-int/lit8 v0, p1, 0xe

    add-int/lit8 v1, p3, 0x4

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 188
    add-int/lit8 v0, p1, 0x15

    add-int/lit8 v1, p3, 0x6

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 189
    add-int/lit8 v0, p1, 0x1c

    add-int/lit8 v1, p3, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 190
    add-int/lit8 v0, p1, 0x23

    add-int/lit8 v1, p3, 0xa

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 191
    add-int/lit8 v0, p1, 0x2a

    add-int/lit8 v1, p3, 0xc

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 192
    add-int/lit8 v0, p1, 0x31

    add-int/lit8 v1, p3, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 193
    return-void
.end method

.method public static decode([B[I)V
    .locals 3
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

    .line 161
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 162
    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 163
    const/4 v0, 0x4

    const/16 v1, 0xe

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 164
    const/16 v0, 0x15

    const/4 v2, 0x6

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 165
    const/16 v0, 0x1c

    const/16 v2, 0x8

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 166
    const/16 v0, 0x23

    const/16 v2, 0xa

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 167
    const/16 v0, 0x2a

    const/16 v2, 0xc

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 168
    const/16 v0, 0x31

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    .line 169
    return-void
.end method

.method public static decode([II[I)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z"
        }
    .end annotation

    .line 155
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode224([II[II)V

    .line 156
    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode224([II[II)V

    .line 157
    return-void
.end method

.method private static decode224([II[II)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 197
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    .local v0, "x0":I
    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    .local v1, "x1":I
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    .local v2, "x2":I
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    .line 198
    .local v3, "x3":I
    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    .local v4, "x4":I
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    .local v5, "x5":I
    add-int/lit8 v6, p1, 0x6

    aget v6, p0, v6

    .line 200
    .local v6, "x6":I
    add-int/lit8 v7, p3, 0x0

    const v8, 0xfffffff

    and-int v9, v0, v8

    aput v9, p2, v7

    .line 201
    add-int/lit8 v7, p3, 0x1

    ushr-int/lit8 v9, v0, 0x1c

    shl-int/lit8 v10, v1, 0x4

    or-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, p2, v7

    .line 202
    add-int/lit8 v7, p3, 0x2

    ushr-int/lit8 v9, v1, 0x18

    shl-int/lit8 v10, v2, 0x8

    or-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, p2, v7

    .line 203
    add-int/lit8 v7, p3, 0x3

    ushr-int/lit8 v9, v2, 0x14

    shl-int/lit8 v10, v3, 0xc

    or-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, p2, v7

    .line 204
    add-int/lit8 v7, p3, 0x4

    ushr-int/lit8 v9, v3, 0x10

    shl-int/lit8 v10, v4, 0x10

    or-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, p2, v7

    .line 205
    add-int/lit8 v7, p3, 0x5

    ushr-int/lit8 v9, v4, 0xc

    shl-int/lit8 v10, v5, 0x14

    or-int/2addr v9, v10

    and-int/2addr v9, v8

    aput v9, p2, v7

    .line 206
    add-int/lit8 v7, p3, 0x6

    ushr-int/lit8 v9, v5, 0x8

    shl-int/lit8 v10, v6, 0x18

    or-int/2addr v9, v10

    and-int/2addr v8, v9

    aput v8, p2, v7

    .line 207
    add-int/lit8 v7, p3, 0x7

    ushr-int/lit8 v8, v6, 0x4

    aput v8, p2, v7

    .line 208
    return-void
.end method

.method private static decode24([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 212
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 213
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 214
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 215
    return v0
.end method

.method private static decode32([BI)I
    .locals 2
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bs",
            "off"
        }
    .end annotation

    .line 220
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 221
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 222
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 223
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 224
    return v0
.end method

.method private static decode56([BI[II)V
    .locals 5
    .param p0, "bs"    # [B
    .param p1, "off"    # I
    .param p2, "z"    # [I
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bs",
            "off",
            "z",
            "zOff"
        }
    .end annotation

    .line 229
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode32([BI)I

    move-result v0

    .line 230
    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode24([BI)I

    move-result v1

    .line 231
    .local v1, "hi":I
    const v2, 0xfffffff

    and-int/2addr v2, v0

    aput v2, p2, p3

    .line 232
    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v3, v0, 0x1c

    shl-int/lit8 v4, v1, 0x4

    or-int/2addr v3, v4

    aput v3, p2, v2

    .line 233
    return-void
.end method

.method public static encode([II[BI)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "z"    # [B
    .param p3, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "z",
            "zOff"
        }
    .end annotation

    .line 267
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 268
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x7

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 269
    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p3, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 270
    add-int/lit8 v0, p1, 0x6

    add-int/lit8 v1, p3, 0x15

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 271
    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1c

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 272
    add-int/lit8 v0, p1, 0xa

    add-int/lit8 v1, p3, 0x23

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 273
    add-int/lit8 v0, p1, 0xc

    add-int/lit8 v1, p3, 0x2a

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 274
    add-int/lit8 v0, p1, 0xe

    add-int/lit8 v1, p3, 0x31

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 275
    return-void
.end method

.method public static encode([I[B)V
    .locals 3
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

    .line 243
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 244
    const/4 v0, 0x2

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 245
    const/4 v0, 0x4

    const/16 v1, 0xe

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 246
    const/4 v0, 0x6

    const/16 v2, 0x15

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 247
    const/16 v0, 0x8

    const/16 v2, 0x1c

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 248
    const/16 v0, 0xa

    const/16 v2, 0x23

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 249
    const/16 v0, 0xc

    const/16 v2, 0x2a

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 250
    const/16 v0, 0x31

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 251
    return-void
.end method

.method public static encode([I[BI)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [B
    .param p2, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 256
    add-int/lit8 v0, p2, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 257
    add-int/lit8 v0, p2, 0xe

    const/4 v1, 0x4

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 258
    add-int/lit8 v0, p2, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 259
    add-int/lit8 v0, p2, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 260
    add-int/lit8 v0, p2, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 261
    add-int/lit8 v0, p2, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 262
    add-int/lit8 v0, p2, 0x31

    const/16 v1, 0xe

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    .line 263
    return-void
.end method

.method public static encode([I[II)V
    .locals 2
    .param p0, "x"    # [I
    .param p1, "z"    # [I
    .param p2, "zOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "z",
            "zOff"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode224([II[II)V

    .line 238
    add-int/lit8 v0, p2, 0x7

    const/16 v1, 0x8

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode224([II[II)V

    .line 239
    return-void
.end method

.method private static encode224([II[II)V
    .locals 11
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "is"    # [I
    .param p3, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "is",
            "off"
        }
    .end annotation

    .line 279
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    .local v0, "x0":I
    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    .local v1, "x1":I
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    .local v2, "x2":I
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    .line 280
    .local v3, "x3":I
    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    .local v4, "x4":I
    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    .local v5, "x5":I
    add-int/lit8 v6, p1, 0x6

    aget v6, p0, v6

    .local v6, "x6":I
    add-int/lit8 v7, p1, 0x7

    aget v7, p0, v7

    .line 282
    .local v7, "x7":I
    add-int/lit8 v8, p3, 0x0

    shl-int/lit8 v9, v1, 0x1c

    or-int/2addr v9, v0

    aput v9, p2, v8

    .line 283
    add-int/lit8 v8, p3, 0x1

    ushr-int/lit8 v9, v1, 0x4

    shl-int/lit8 v10, v2, 0x18

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 284
    add-int/lit8 v8, p3, 0x2

    ushr-int/lit8 v9, v2, 0x8

    shl-int/lit8 v10, v3, 0x14

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 285
    add-int/lit8 v8, p3, 0x3

    ushr-int/lit8 v9, v3, 0xc

    shl-int/lit8 v10, v4, 0x10

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 286
    add-int/lit8 v8, p3, 0x4

    ushr-int/lit8 v9, v4, 0x10

    shl-int/lit8 v10, v5, 0xc

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 287
    add-int/lit8 v8, p3, 0x5

    ushr-int/lit8 v9, v5, 0x14

    shl-int/lit8 v10, v6, 0x8

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 288
    add-int/lit8 v8, p3, 0x6

    ushr-int/lit8 v9, v6, 0x18

    shl-int/lit8 v10, v7, 0x4

    or-int/2addr v9, v10

    aput v9, p2, v8

    .line 289
    return-void
.end method

.method private static encode24(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 293
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 294
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 295
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 296
    return-void
.end method

.method private static encode32(I[BI)V
    .locals 1
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off"
        }
    .end annotation

    .line 300
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 301
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 302
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 303
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 304
    return-void
.end method

.method private static encode56([II[BI)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "xOff"    # I
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "xOff",
            "bs",
            "off"
        }
    .end annotation

    .line 308
    aget v0, p0, p1

    .local v0, "lo":I
    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    .line 309
    .local v1, "hi":I
    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v2, v0

    invoke-static {v2, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode32(I[BI)V

    .line 310
    ushr-int/lit8 v2, v1, 0x4

    add-int/lit8 v3, p3, 0x4

    invoke-static {v2, p2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode24(I[BI)V

    .line 311
    return-void
.end method

.method public static inv([I[I)V
    .locals 4
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

    .line 320
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 321
    .local v0, "t":[I
    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 323
    .local v1, "u":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    .line 324
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    .line 325
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode([I[II)V

    .line 327
    sget-object v3, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    .line 329
    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode([II[I)V

    .line 330
    return-void
.end method

.method public static invVar([I[I)V
    .locals 4
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

    .line 334
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 335
    .local v0, "t":[I
    const/16 v1, 0xe

    new-array v1, v1, [I

    .line 337
    .local v1, "u":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    .line 338
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    .line 339
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode([I[II)V

    .line 341
    sget-object v3, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    .line 343
    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode([II[I)V

    .line 344
    return-void
.end method

.method public static isOne([I)I
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

    .line 348
    const/4 v0, 0x0

    aget v0, p0, v0

    xor-int/lit8 v0, v0, 0x1

    .line 349
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 351
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 354
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static isOneVar([I)Z
    .locals 1
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 359
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isOne([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isZero([I)I
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

    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    .line 367
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 370
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static isZeroVar([I)Z
    .locals 1
    .param p0, "x"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 375
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static mul([II[I)V
    .locals 52
    .param p0, "x"    # [I
    .param p1, "y"    # I
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

    .line 380
    move/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p0, v1

    .local v2, "x0":I
    const/4 v3, 0x1

    aget v4, p0, v3

    .local v4, "x1":I
    const/4 v5, 0x2

    aget v6, p0, v5

    .local v6, "x2":I
    const/4 v7, 0x3

    aget v8, p0, v7

    .local v8, "x3":I
    const/4 v9, 0x4

    aget v10, p0, v9

    .local v10, "x4":I
    const/4 v11, 0x5

    aget v12, p0, v11

    .local v12, "x5":I
    const/4 v13, 0x6

    aget v14, p0, v13

    .local v14, "x6":I
    const/4 v15, 0x7

    const/16 v16, 0x0

    aget v1, p0, v15

    .line 381
    .local v1, "x7":I
    const/16 v17, 0x8

    const/16 v18, 0x1

    aget v3, p0, v17

    .local v3, "x8":I
    const/16 v19, 0x9

    const/16 v20, 0x2

    aget v5, p0, v19

    .local v5, "x9":I
    const/16 v21, 0xa

    const/16 v22, 0x3

    aget v7, p0, v21

    .local v7, "x10":I
    const/16 v23, 0xb

    const/16 v24, 0x4

    aget v9, p0, v23

    .local v9, "x11":I
    const/16 v25, 0xc

    const/16 v26, 0x5

    aget v11, p0, v25

    .local v11, "x12":I
    const/16 v27, 0xd

    const/16 v28, 0x6

    aget v13, p0, v27

    .local v13, "x13":I
    const/16 v29, 0xe

    const/16 v30, 0x7

    aget v15, p0, v29

    .local v15, "x14":I
    const/16 v31, 0xf

    move/from16 v32, v2

    .end local v2    # "x0":I
    .local v32, "x0":I
    aget v2, p0, v31

    .line 386
    .local v2, "x15":I
    move/from16 v33, v10

    move/from16 v34, v11

    .end local v10    # "x4":I
    .end local v11    # "x12":I
    .local v33, "x4":I
    .local v34, "x12":I
    int-to-long v10, v4

    move-wide/from16 v35, v10

    int-to-long v10, v0

    mul-long v10, v10, v35

    .line 387
    .local v10, "c":J
    move/from16 v35, v4

    .end local v4    # "x1":I
    .local v35, "x1":I
    long-to-int v4, v10

    const v36, 0xfffffff

    and-int v4, v4, v36

    .local v4, "z1":I
    const/16 v37, 0x1c

    ushr-long v10, v10, v37

    .line 388
    move-wide/from16 v38, v10

    .end local v10    # "c":J
    .local v38, "c":J
    int-to-long v10, v12

    move-wide/from16 v40, v10

    int-to-long v10, v0

    mul-long v10, v10, v40

    .line 389
    .local v10, "d":J
    move/from16 v40, v4

    .end local v4    # "z1":I
    .local v40, "z1":I
    long-to-int v4, v10

    and-int v4, v4, v36

    .local v4, "z5":I
    ushr-long v10, v10, v37

    .line 390
    move-wide/from16 v41, v10

    .end local v10    # "d":J
    .local v41, "d":J
    int-to-long v10, v5

    move/from16 v44, v4

    move/from16 v43, v5

    .end local v4    # "z5":I
    .end local v5    # "x9":I
    .local v43, "x9":I
    .local v44, "z5":I
    int-to-long v4, v0

    mul-long v10, v10, v4

    .line 391
    .local v10, "e":J
    long-to-int v4, v10

    and-int v4, v4, v36

    .local v4, "z9":I
    ushr-long v10, v10, v37

    .line 392
    move/from16 v45, v4

    .end local v4    # "z9":I
    .local v45, "z9":I
    int-to-long v4, v13

    move-wide/from16 v46, v4

    int-to-long v4, v0

    mul-long v4, v4, v46

    .line 393
    .local v4, "f":J
    move-wide/from16 v46, v10

    .end local v10    # "e":J
    .local v46, "e":J
    long-to-int v10, v4

    and-int v10, v10, v36

    .local v10, "z13":I
    ushr-long v4, v4, v37

    .line 395
    move-wide/from16 v48, v4

    .end local v4    # "f":J
    .local v48, "f":J
    int-to-long v4, v6

    move-wide/from16 v50, v4

    int-to-long v4, v0

    mul-long v4, v4, v50

    add-long v4, v38, v4

    .line 396
    .end local v38    # "c":J
    .local v4, "c":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v20

    ushr-long v4, v4, v37

    .line 397
    move-wide/from16 v38, v4

    .end local v4    # "c":J
    .restart local v38    # "c":J
    int-to-long v4, v14

    move-wide/from16 v50, v4

    int-to-long v4, v0

    mul-long v4, v4, v50

    add-long v4, v41, v4

    .line 398
    .end local v41    # "d":J
    .local v4, "d":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v28

    ushr-long v4, v4, v37

    .line 399
    move-wide/from16 v41, v4

    .end local v4    # "d":J
    .restart local v41    # "d":J
    int-to-long v4, v7

    move-wide/from16 v50, v4

    int-to-long v4, v0

    mul-long v4, v4, v50

    add-long v4, v46, v4

    .line 400
    .end local v46    # "e":J
    .local v4, "e":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v21

    ushr-long v4, v4, v37

    .line 401
    move-wide/from16 v20, v4

    .end local v4    # "e":J
    .local v20, "e":J
    int-to-long v4, v15

    move-wide/from16 v46, v4

    int-to-long v4, v0

    mul-long v4, v4, v46

    add-long v4, v48, v4

    .line 402
    .end local v48    # "f":J
    .local v4, "f":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v29

    ushr-long v4, v4, v37

    .line 404
    move-wide/from16 v28, v4

    .end local v4    # "f":J
    .local v28, "f":J
    int-to-long v4, v8

    move-wide/from16 v46, v4

    int-to-long v4, v0

    mul-long v4, v4, v46

    add-long v4, v38, v4

    .line 405
    .end local v38    # "c":J
    .local v4, "c":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v22

    ushr-long v4, v4, v37

    .line 406
    move-wide/from16 v38, v4

    .end local v4    # "c":J
    .restart local v38    # "c":J
    int-to-long v4, v1

    move-wide/from16 v46, v4

    int-to-long v4, v0

    mul-long v4, v4, v46

    add-long v4, v41, v4

    .line 407
    .end local v41    # "d":J
    .local v4, "d":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v30

    ushr-long v4, v4, v37

    .line 408
    move-wide/from16 v41, v4

    .end local v4    # "d":J
    .restart local v41    # "d":J
    int-to-long v4, v9

    move-wide/from16 v46, v4

    int-to-long v4, v0

    mul-long v4, v4, v46

    add-long v4, v20, v4

    .line 409
    .end local v20    # "e":J
    .local v4, "e":J
    long-to-int v11, v4

    and-int v11, v11, v36

    aput v11, p2, v23

    ushr-long v4, v4, v37

    .line 410
    move-wide/from16 v20, v4

    .end local v4    # "e":J
    .restart local v20    # "e":J
    int-to-long v4, v2

    move v11, v1

    move/from16 v22, v2

    .end local v1    # "x7":I
    .end local v2    # "x15":I
    .local v11, "x7":I
    .local v22, "x15":I
    int-to-long v1, v0

    mul-long v4, v4, v1

    add-long v4, v28, v4

    .line 411
    .end local v28    # "f":J
    .local v4, "f":J
    long-to-int v1, v4

    and-int v1, v1, v36

    aput v1, p2, v31

    ushr-long v1, v4, v37

    .line 413
    .end local v4    # "f":J
    .local v1, "f":J
    add-long v4, v41, v1

    .line 415
    .end local v41    # "d":J
    .local v4, "d":J
    move-wide/from16 v28, v1

    move-wide/from16 v30, v4

    move/from16 v1, v33

    .end local v4    # "d":J
    .end local v33    # "x4":I
    .local v1, "x4":I
    .restart local v28    # "f":J
    .local v30, "d":J
    int-to-long v4, v1

    .end local v1    # "x4":I
    .restart local v33    # "x4":I
    int-to-long v1, v0

    mul-long v4, v4, v1

    add-long v4, v38, v4

    .line 416
    .end local v38    # "c":J
    .local v4, "c":J
    long-to-int v1, v4

    and-int v1, v1, v36

    aput v1, p2, v24

    ushr-long v1, v4, v37

    .line 417
    .end local v4    # "c":J
    .local v1, "c":J
    int-to-long v4, v3

    move/from16 v23, v3

    move-wide/from16 v38, v4

    .end local v3    # "x8":I
    .local v23, "x8":I
    int-to-long v3, v0

    mul-long v4, v38, v3

    add-long v4, v30, v4

    .line 418
    .end local v30    # "d":J
    .local v4, "d":J
    long-to-int v3, v4

    and-int v3, v3, v36

    aput v3, p2, v17

    ushr-long v3, v4, v37

    .line 419
    .end local v4    # "d":J
    .local v3, "d":J
    move/from16 v17, v6

    move/from16 v24, v7

    move/from16 v5, v34

    .end local v6    # "x2":I
    .end local v7    # "x10":I
    .end local v34    # "x12":I
    .local v5, "x12":I
    .local v17, "x2":I
    .local v24, "x10":I
    int-to-long v6, v5

    move-wide/from16 v30, v6

    .end local v5    # "x12":I
    .restart local v34    # "x12":I
    int-to-long v5, v0

    mul-long v6, v30, v5

    add-long v6, v20, v6

    .line 420
    .end local v20    # "e":J
    .local v6, "e":J
    long-to-int v5, v6

    and-int v5, v5, v36

    aput v5, p2, v25

    ushr-long v5, v6, v37

    .line 421
    .end local v6    # "e":J
    .local v5, "e":J
    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v7, v32

    .end local v8    # "x3":I
    .end local v9    # "x11":I
    .end local v32    # "x0":I
    .local v7, "x0":I
    .local v20, "x3":I
    .local v21, "x11":I
    int-to-long v8, v7

    move-wide/from16 v30, v8

    .end local v7    # "x0":I
    .restart local v32    # "x0":I
    int-to-long v7, v0

    mul-long v8, v30, v7

    add-long v8, v28, v8

    .line 422
    .end local v28    # "f":J
    .local v8, "f":J
    long-to-int v7, v8

    and-int v7, v7, v36

    aput v7, p2, v16

    ushr-long v7, v8, v37

    .line 424
    .end local v8    # "f":J
    .local v7, "f":J
    long-to-int v9, v7

    add-int v9, v40, v9

    aput v9, p2, v18

    .line 425
    long-to-int v9, v1

    add-int v9, v44, v9

    aput v9, p2, v26

    .line 426
    long-to-int v9, v3

    add-int v9, v45, v9

    aput v9, p2, v19

    .line 427
    long-to-int v9, v5

    add-int/2addr v9, v10

    aput v9, p2, v27

    .line 428
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 179
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

    .line 432
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 433
    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 434
    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 435
    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 436
    .local v7, "x3":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 437
    .local v9, "x4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 438
    .local v11, "x5":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 439
    .local v13, "x6":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 441
    .local v15, "x7":I
    const/16 v16, 0x8

    const/16 v17, 0x0

    aget v0, p0, v16

    .line 442
    .local v0, "u0":I
    const/16 v18, 0x9

    const/16 v19, 0x1

    aget v2, p0, v18

    .line 443
    .local v2, "u1":I
    const/16 v20, 0xa

    const/16 v21, 0x2

    aget v4, p0, v20

    .line 444
    .local v4, "u2":I
    const/16 v22, 0xb

    const/16 v23, 0x3

    aget v6, p0, v22

    .line 445
    .local v6, "u3":I
    const/16 v24, 0xc

    const/16 v25, 0x4

    aget v8, p0, v24

    .line 446
    .local v8, "u4":I
    const/16 v26, 0xd

    const/16 v27, 0x5

    aget v10, p0, v26

    .line 447
    .local v10, "u5":I
    const/16 v28, 0xe

    const/16 v29, 0x6

    aget v12, p0, v28

    .line 448
    .local v12, "u6":I
    const/16 v30, 0xf

    const/16 v31, 0x7

    aget v14, p0, v30

    .line 450
    .local v14, "u7":I
    move/from16 v32, v2

    .end local v2    # "u1":I
    .local v32, "u1":I
    aget v2, p1, v17

    .line 451
    .local v2, "y0":I
    move/from16 v33, v4

    .end local v4    # "u2":I
    .local v33, "u2":I
    aget v4, p1, v19

    .line 452
    .local v4, "y1":I
    move/from16 v34, v6

    .end local v6    # "u3":I
    .local v34, "u3":I
    aget v6, p1, v21

    .line 453
    .local v6, "y2":I
    move/from16 v35, v8

    .end local v8    # "u4":I
    .local v35, "u4":I
    aget v8, p1, v23

    .line 454
    .local v8, "y3":I
    move/from16 v36, v10

    .end local v10    # "u5":I
    .local v36, "u5":I
    aget v10, p1, v25

    .line 455
    .local v10, "y4":I
    move/from16 v37, v12

    .end local v12    # "u6":I
    .local v37, "u6":I
    aget v12, p1, v27

    .line 456
    .local v12, "y5":I
    move/from16 v38, v14

    .end local v14    # "u7":I
    .local v38, "u7":I
    aget v14, p1, v29

    .line 457
    .local v14, "y6":I
    move/from16 v39, v0

    .end local v0    # "u0":I
    .local v39, "u0":I
    aget v0, p1, v31

    .line 459
    .local v0, "y7":I
    move/from16 v40, v0

    .end local v0    # "y7":I
    .local v40, "y7":I
    aget v0, p1, v16

    .line 460
    .local v0, "v0":I
    move/from16 v41, v0

    .end local v0    # "v0":I
    .local v41, "v0":I
    aget v0, p1, v18

    .line 461
    .local v0, "v1":I
    move/from16 v42, v0

    .end local v0    # "v1":I
    .local v42, "v1":I
    aget v0, p1, v20

    .line 462
    .local v0, "v2":I
    move/from16 v43, v0

    .end local v0    # "v2":I
    .local v43, "v2":I
    aget v0, p1, v22

    .line 463
    .local v0, "v3":I
    move/from16 v44, v0

    .end local v0    # "v3":I
    .local v44, "v3":I
    aget v0, p1, v24

    .line 464
    .local v0, "v4":I
    move/from16 v45, v0

    .end local v0    # "v4":I
    .local v45, "v4":I
    aget v0, p1, v26

    .line 465
    .local v0, "v5":I
    move/from16 v46, v0

    .end local v0    # "v5":I
    .local v46, "v5":I
    aget v0, p1, v28

    .line 466
    .local v0, "v6":I
    move/from16 v47, v0

    .end local v0    # "v6":I
    .local v47, "v6":I
    aget v0, p1, v30

    .line 468
    .local v0, "v7":I
    move/from16 v48, v0

    .end local v0    # "v7":I
    .local v48, "v7":I
    add-int v0, v1, v39

    .line 469
    .local v0, "s0":I
    move/from16 v49, v0

    .end local v0    # "s0":I
    .local v49, "s0":I
    add-int v0, v3, v32

    .line 470
    .local v0, "s1":I
    move/from16 v50, v0

    .end local v0    # "s1":I
    .local v50, "s1":I
    add-int v0, v5, v33

    .line 471
    .local v0, "s2":I
    move/from16 v51, v0

    .end local v0    # "s2":I
    .local v51, "s2":I
    add-int v0, v7, v34

    .line 472
    .local v0, "s3":I
    move/from16 v52, v0

    .end local v0    # "s3":I
    .local v52, "s3":I
    add-int v0, v9, v35

    .line 473
    .local v0, "s4":I
    move/from16 v53, v0

    .end local v0    # "s4":I
    .local v53, "s4":I
    add-int v0, v11, v36

    .line 474
    .local v0, "s5":I
    move/from16 v54, v0

    .end local v0    # "s5":I
    .local v54, "s5":I
    add-int v0, v13, v37

    .line 475
    .local v0, "s6":I
    move/from16 v55, v0

    .end local v0    # "s6":I
    .local v55, "s6":I
    add-int v0, v15, v38

    .line 477
    .local v0, "s7":I
    move/from16 v56, v0

    .end local v0    # "s7":I
    .local v56, "s7":I
    add-int v0, v2, v41

    .line 478
    .local v0, "t0":I
    move/from16 v57, v0

    .end local v0    # "t0":I
    .local v57, "t0":I
    add-int v0, v4, v42

    .line 479
    .local v0, "t1":I
    move/from16 v58, v0

    .end local v0    # "t1":I
    .local v58, "t1":I
    add-int v0, v6, v43

    .line 480
    .local v0, "t2":I
    move/from16 v59, v0

    .end local v0    # "t2":I
    .local v59, "t2":I
    add-int v0, v8, v44

    .line 481
    .local v0, "t3":I
    move/from16 v60, v0

    .end local v0    # "t3":I
    .local v60, "t3":I
    add-int v0, v10, v45

    .line 482
    .local v0, "t4":I
    move/from16 v61, v0

    .end local v0    # "t4":I
    .local v61, "t4":I
    add-int v0, v12, v46

    .line 483
    .local v0, "t5":I
    move/from16 v62, v0

    .end local v0    # "t5":I
    .local v62, "t5":I
    add-int v0, v14, v47

    .line 484
    .local v0, "t6":I
    move/from16 v63, v0

    .end local v0    # "t6":I
    .local v63, "t6":I
    add-int v0, v40, v48

    .line 489
    .local v0, "t7":I
    move/from16 v64, v9

    move/from16 v65, v10

    .end local v9    # "x4":I
    .end local v10    # "y4":I
    .local v64, "x4":I
    .local v65, "y4":I
    int-to-long v9, v1

    move-wide/from16 v66, v9

    int-to-long v9, v2

    mul-long v9, v9, v66

    .line 490
    .local v9, "f0":J
    move-wide/from16 v66, v9

    .end local v9    # "f0":J
    .local v66, "f0":J
    int-to-long v9, v15

    move-wide/from16 v68, v9

    int-to-long v9, v4

    mul-long v9, v9, v68

    move-wide/from16 v68, v9

    int-to-long v9, v13

    move-wide/from16 v70, v9

    int-to-long v9, v6

    mul-long v9, v9, v70

    add-long v9, v68, v9

    move-wide/from16 v68, v9

    int-to-long v9, v11

    move-wide/from16 v70, v9

    int-to-long v9, v8

    mul-long v9, v9, v70

    add-long v9, v68, v9

    move-wide/from16 v68, v9

    move/from16 v9, v64

    move/from16 v64, v11

    .end local v11    # "x5":I
    .local v9, "x4":I
    .local v64, "x5":I
    int-to-long v10, v9

    move-wide/from16 v70, v10

    move/from16 v10, v65

    move v11, v8

    move/from16 v65, v9

    .end local v8    # "y3":I
    .end local v9    # "x4":I
    .restart local v10    # "y4":I
    .local v11, "y3":I
    .local v65, "x4":I
    int-to-long v8, v10

    mul-long v8, v8, v70

    add-long v8, v68, v8

    move-wide/from16 v68, v8

    int-to-long v8, v7

    move-wide/from16 v70, v8

    int-to-long v8, v12

    mul-long v8, v8, v70

    add-long v8, v68, v8

    move-wide/from16 v68, v8

    int-to-long v8, v5

    move-wide/from16 v70, v8

    int-to-long v8, v14

    mul-long v8, v8, v70

    add-long v8, v68, v8

    move-wide/from16 v68, v8

    int-to-long v8, v3

    move-wide/from16 v70, v8

    move v9, v12

    move/from16 v8, v40

    move/from16 v40, v11

    .end local v11    # "y3":I
    .end local v12    # "y5":I
    .local v8, "y7":I
    .local v9, "y5":I
    .local v40, "y3":I
    int-to-long v11, v8

    mul-long v11, v11, v70

    add-long v11, v68, v11

    .line 497
    .local v11, "f8":J
    move/from16 v68, v9

    move-wide/from16 v69, v11

    move/from16 v9, v39

    .end local v11    # "f8":J
    .end local v39    # "u0":I
    .local v9, "u0":I
    .local v68, "y5":I
    .local v69, "f8":J
    int-to-long v11, v9

    move-wide/from16 v71, v11

    move/from16 v11, v41

    move v12, v8

    .end local v8    # "y7":I
    .end local v9    # "u0":I
    .end local v41    # "v0":I
    .local v11, "v0":I
    .local v12, "y7":I
    .restart local v39    # "u0":I
    int-to-long v8, v11

    mul-long v8, v8, v71

    .line 498
    .local v8, "g0":J
    move-wide/from16 v71, v8

    move v9, v12

    move/from16 v8, v38

    .end local v11    # "v0":I
    .end local v12    # "y7":I
    .end local v38    # "u7":I
    .local v8, "u7":I
    .local v9, "y7":I
    .restart local v41    # "v0":I
    .local v71, "g0":J
    int-to-long v11, v8

    move/from16 v38, v9

    move-wide/from16 v73, v11

    move/from16 v9, v42

    .end local v42    # "v1":I
    .local v9, "v1":I
    .local v38, "y7":I
    int-to-long v11, v9

    mul-long v11, v11, v73

    move-wide/from16 v73, v11

    move/from16 v11, v37

    move v12, v8

    .end local v8    # "u7":I
    .end local v9    # "v1":I
    .end local v37    # "u6":I
    .local v11, "u6":I
    .local v12, "u7":I
    .restart local v42    # "v1":I
    int-to-long v8, v11

    move-wide/from16 v75, v8

    move v9, v12

    move/from16 v8, v43

    .end local v11    # "u6":I
    .end local v12    # "u7":I
    .end local v43    # "v2":I
    .local v8, "v2":I
    .local v9, "u7":I
    .restart local v37    # "u6":I
    int-to-long v11, v8

    mul-long v11, v11, v75

    add-long v11, v73, v11

    move/from16 v43, v9

    move-wide/from16 v73, v11

    move/from16 v9, v36

    .end local v36    # "u5":I
    .local v9, "u5":I
    .local v43, "u7":I
    int-to-long v11, v9

    move-wide/from16 v75, v11

    move/from16 v11, v44

    move v12, v8

    .end local v8    # "v2":I
    .end local v9    # "u5":I
    .end local v44    # "v3":I
    .local v11, "v3":I
    .local v12, "v2":I
    .restart local v36    # "u5":I
    int-to-long v8, v11

    mul-long v8, v8, v75

    add-long v8, v73, v8

    move-wide/from16 v73, v8

    move v9, v12

    move/from16 v8, v35

    .end local v11    # "v3":I
    .end local v12    # "v2":I
    .end local v35    # "u4":I
    .local v8, "u4":I
    .local v9, "v2":I
    .restart local v44    # "v3":I
    int-to-long v11, v8

    move/from16 v35, v9

    move-wide/from16 v75, v11

    move/from16 v9, v45

    .end local v45    # "v4":I
    .local v9, "v4":I
    .local v35, "v2":I
    int-to-long v11, v9

    mul-long v11, v11, v75

    add-long v11, v73, v11

    move-wide/from16 v73, v11

    move/from16 v11, v34

    move v12, v8

    .end local v8    # "u4":I
    .end local v9    # "v4":I
    .end local v34    # "u3":I
    .local v11, "u3":I
    .local v12, "u4":I
    .restart local v45    # "v4":I
    int-to-long v8, v11

    move-wide/from16 v75, v8

    move v9, v12

    move/from16 v8, v46

    .end local v11    # "u3":I
    .end local v12    # "u4":I
    .end local v46    # "v5":I
    .local v8, "v5":I
    .local v9, "u4":I
    .restart local v34    # "u3":I
    int-to-long v11, v8

    mul-long v11, v11, v75

    add-long v11, v73, v11

    move/from16 v46, v9

    move-wide/from16 v73, v11

    move/from16 v9, v33

    .end local v33    # "u2":I
    .local v9, "u2":I
    .local v46, "u4":I
    int-to-long v11, v9

    move-wide/from16 v75, v11

    move/from16 v11, v47

    move v12, v8

    .end local v8    # "v5":I
    .end local v9    # "u2":I
    .end local v47    # "v6":I
    .local v11, "v6":I
    .local v12, "v5":I
    .restart local v33    # "u2":I
    int-to-long v8, v11

    mul-long v8, v8, v75

    add-long v8, v73, v8

    move-wide/from16 v73, v8

    move v9, v12

    move/from16 v8, v32

    .end local v11    # "v6":I
    .end local v12    # "v5":I
    .end local v32    # "u1":I
    .local v8, "u1":I
    .local v9, "v5":I
    .restart local v47    # "v6":I
    int-to-long v11, v8

    move/from16 v32, v9

    move-wide/from16 v75, v11

    move/from16 v9, v48

    .end local v48    # "v7":I
    .local v9, "v7":I
    .local v32, "v5":I
    int-to-long v11, v9

    mul-long v11, v11, v75

    add-long v11, v73, v11

    .line 505
    .local v11, "g8":J
    move-wide/from16 v73, v11

    move/from16 v11, v49

    move v12, v8

    .end local v8    # "u1":I
    .end local v9    # "v7":I
    .end local v49    # "s0":I
    .local v11, "s0":I
    .local v12, "u1":I
    .restart local v48    # "v7":I
    .local v73, "g8":J
    int-to-long v8, v11

    move-wide/from16 v75, v8

    move v9, v12

    move/from16 v8, v57

    .end local v11    # "s0":I
    .end local v12    # "u1":I
    .end local v57    # "t0":I
    .local v8, "t0":I
    .local v9, "u1":I
    .restart local v49    # "s0":I
    int-to-long v11, v8

    mul-long v11, v11, v75

    .line 506
    .local v11, "h0":J
    move/from16 v57, v9

    move-wide/from16 v75, v11

    move/from16 v9, v56

    .end local v11    # "h0":J
    .end local v56    # "s7":I
    .local v9, "s7":I
    .local v57, "u1":I
    .local v75, "h0":J
    int-to-long v11, v9

    move-wide/from16 v77, v11

    move/from16 v11, v58

    move v12, v8

    .end local v8    # "t0":I
    .end local v9    # "s7":I
    .end local v58    # "t1":I
    .local v11, "t1":I
    .local v12, "t0":I
    .restart local v56    # "s7":I
    int-to-long v8, v11

    mul-long v8, v8, v77

    move-wide/from16 v77, v8

    move v9, v12

    move/from16 v8, v55

    .end local v11    # "t1":I
    .end local v12    # "t0":I
    .end local v55    # "s6":I
    .local v8, "s6":I
    .local v9, "t0":I
    .restart local v58    # "t1":I
    int-to-long v11, v8

    move/from16 v55, v9

    move-wide/from16 v79, v11

    move/from16 v9, v59

    .end local v59    # "t2":I
    .local v9, "t2":I
    .local v55, "t0":I
    int-to-long v11, v9

    mul-long v11, v11, v79

    add-long v11, v77, v11

    move-wide/from16 v77, v11

    move/from16 v11, v54

    move v12, v8

    .end local v8    # "s6":I
    .end local v9    # "t2":I
    .end local v54    # "s5":I
    .local v11, "s5":I
    .local v12, "s6":I
    .restart local v59    # "t2":I
    int-to-long v8, v11

    move-wide/from16 v79, v8

    move v9, v12

    move/from16 v8, v60

    .end local v11    # "s5":I
    .end local v12    # "s6":I
    .end local v60    # "t3":I
    .local v8, "t3":I
    .local v9, "s6":I
    .restart local v54    # "s5":I
    int-to-long v11, v8

    mul-long v11, v11, v79

    add-long v11, v77, v11

    move/from16 v60, v9

    move-wide/from16 v77, v11

    move/from16 v9, v53

    .end local v53    # "s4":I
    .local v9, "s4":I
    .local v60, "s6":I
    int-to-long v11, v9

    move-wide/from16 v79, v11

    move/from16 v11, v61

    move v12, v8

    .end local v8    # "t3":I
    .end local v9    # "s4":I
    .end local v61    # "t4":I
    .local v11, "t4":I
    .local v12, "t3":I
    .restart local v53    # "s4":I
    int-to-long v8, v11

    mul-long v8, v8, v79

    add-long v8, v77, v8

    move-wide/from16 v77, v8

    move v9, v12

    move/from16 v8, v52

    .end local v11    # "t4":I
    .end local v12    # "t3":I
    .end local v52    # "s3":I
    .local v8, "s3":I
    .local v9, "t3":I
    .restart local v61    # "t4":I
    int-to-long v11, v8

    move/from16 v52, v9

    move-wide/from16 v79, v11

    move/from16 v9, v62

    .end local v62    # "t5":I
    .local v9, "t5":I
    .local v52, "t3":I
    int-to-long v11, v9

    mul-long v11, v11, v79

    add-long v11, v77, v11

    move-wide/from16 v77, v11

    move/from16 v11, v51

    move v12, v8

    .end local v8    # "s3":I
    .end local v9    # "t5":I
    .end local v51    # "s2":I
    .local v11, "s2":I
    .local v12, "s3":I
    .restart local v62    # "t5":I
    int-to-long v8, v11

    move-wide/from16 v79, v8

    move v9, v12

    move/from16 v8, v63

    .end local v11    # "s2":I
    .end local v12    # "s3":I
    .end local v63    # "t6":I
    .local v8, "t6":I
    .local v9, "s3":I
    .restart local v51    # "s2":I
    int-to-long v11, v8

    mul-long v11, v11, v79

    add-long v11, v77, v11

    move/from16 v63, v9

    move-wide/from16 v77, v11

    move/from16 v9, v50

    .end local v50    # "s1":I
    .local v9, "s1":I
    .local v63, "s3":I
    int-to-long v11, v9

    move-wide/from16 v79, v11

    int-to-long v11, v0

    mul-long v11, v11, v79

    add-long v11, v77, v11

    .line 514
    .local v11, "h8":J
    add-long v77, v66, v71

    add-long v77, v77, v11

    move-wide/from16 v79, v11

    .end local v11    # "h8":J
    .local v79, "h8":J
    sub-long v11, v77, v69

    .line 515
    .local v11, "c":J
    move/from16 v50, v0

    .end local v0    # "t7":I
    .local v50, "t7":I
    long-to-int v0, v11

    const v77, 0xfffffff

    and-int v0, v0, v77

    .local v0, "z0":I
    const/16 v78, 0x1c

    ushr-long v11, v11, v78

    .line 516
    add-long v81, v73, v75

    sub-long v81, v81, v66

    move-wide/from16 v83, v11

    .end local v11    # "c":J
    .local v83, "c":J
    add-long v11, v81, v79

    .line 517
    .local v11, "d":J
    move/from16 v81, v0

    .end local v0    # "z0":I
    .local v81, "z0":I
    long-to-int v0, v11

    and-int v0, v0, v77

    .local v0, "z8":I
    ushr-long v11, v11, v78

    .line 519
    move-wide/from16 v85, v11

    .end local v11    # "d":J
    .local v85, "d":J
    int-to-long v11, v3

    move-wide/from16 v87, v11

    int-to-long v11, v2

    mul-long v11, v11, v87

    move-wide/from16 v87, v11

    int-to-long v11, v1

    move-wide/from16 v89, v11

    int-to-long v11, v4

    mul-long v11, v11, v89

    add-long v11, v87, v11

    .line 521
    .local v11, "f1":J
    move-wide/from16 v87, v11

    .end local v11    # "f1":J
    .local v87, "f1":J
    int-to-long v11, v15

    move-wide/from16 v89, v11

    int-to-long v11, v6

    mul-long v11, v11, v89

    move-wide/from16 v89, v11

    int-to-long v11, v13

    move-wide/from16 v91, v11

    move/from16 v11, v40

    move/from16 v40, v13

    .end local v13    # "x6":I
    .local v11, "y3":I
    .local v40, "x6":I
    int-to-long v12, v11

    mul-long v12, v12, v91

    add-long v12, v89, v12

    move-wide/from16 v89, v12

    move/from16 v12, v64

    move/from16 v64, v0

    move v13, v1

    .end local v0    # "z8":I
    .end local v1    # "x0":I
    .local v12, "x5":I
    .local v13, "x0":I
    .local v64, "z8":I
    int-to-long v0, v12

    move-wide/from16 v91, v0

    int-to-long v0, v10

    mul-long v0, v0, v91

    add-long v0, v89, v0

    move-wide/from16 v89, v0

    move v1, v12

    move/from16 v0, v65

    move/from16 v65, v13

    .end local v12    # "x5":I
    .end local v13    # "x0":I
    .local v0, "x4":I
    .local v1, "x5":I
    .local v65, "x0":I
    int-to-long v12, v0

    move/from16 v82, v1

    move-wide/from16 v91, v12

    move/from16 v1, v68

    .end local v68    # "y5":I
    .local v1, "y5":I
    .local v82, "x5":I
    int-to-long v12, v1

    mul-long v12, v12, v91

    add-long v12, v89, v12

    move-wide/from16 v89, v12

    int-to-long v12, v7

    move-wide/from16 v91, v12

    int-to-long v12, v14

    mul-long v12, v12, v91

    add-long v12, v89, v12

    move-wide/from16 v89, v12

    int-to-long v12, v5

    move-wide/from16 v91, v12

    move/from16 v12, v38

    move/from16 v38, v14

    .end local v14    # "y6":I
    .local v12, "y7":I
    .local v38, "y6":I
    int-to-long v13, v12

    mul-long v13, v13, v91

    add-long v13, v89, v13

    .line 527
    .local v13, "f9":J
    move-wide/from16 v89, v13

    move/from16 v13, v57

    move v14, v0

    .end local v0    # "x4":I
    .end local v1    # "y5":I
    .end local v57    # "u1":I
    .local v13, "u1":I
    .local v14, "x4":I
    .restart local v68    # "y5":I
    .local v89, "f9":J
    int-to-long v0, v13

    move-wide/from16 v91, v0

    move v1, v14

    move/from16 v0, v41

    .end local v13    # "u1":I
    .end local v14    # "x4":I
    .end local v41    # "v0":I
    .local v0, "v0":I
    .local v1, "x4":I
    .restart local v57    # "u1":I
    int-to-long v13, v0

    mul-long v13, v13, v91

    move/from16 v41, v1

    move-wide/from16 v91, v13

    move/from16 v1, v39

    .end local v39    # "u0":I
    .local v1, "u0":I
    .local v41, "x4":I
    int-to-long v13, v1

    move-wide/from16 v93, v13

    move/from16 v13, v42

    move v14, v0

    .end local v0    # "v0":I
    .end local v1    # "u0":I
    .end local v42    # "v1":I
    .local v13, "v1":I
    .local v14, "v0":I
    .restart local v39    # "u0":I
    int-to-long v0, v13

    mul-long v0, v0, v93

    add-long v0, v91, v0

    .line 529
    .local v0, "g1":J
    move-wide/from16 v91, v0

    move v1, v14

    move/from16 v0, v43

    .end local v13    # "v1":I
    .end local v14    # "v0":I
    .end local v43    # "u7":I
    .local v0, "u7":I
    .local v1, "v0":I
    .restart local v42    # "v1":I
    .local v91, "g1":J
    int-to-long v13, v0

    move/from16 v43, v1

    move-wide/from16 v93, v13

    move/from16 v1, v35

    .end local v35    # "v2":I
    .local v1, "v2":I
    .local v43, "v0":I
    int-to-long v13, v1

    mul-long v13, v13, v93

    move-wide/from16 v93, v13

    move/from16 v13, v37

    move v14, v0

    .end local v0    # "u7":I
    .end local v1    # "v2":I
    .end local v37    # "u6":I
    .local v13, "u6":I
    .local v14, "u7":I
    .restart local v35    # "v2":I
    int-to-long v0, v13

    move-wide/from16 v95, v0

    move v1, v14

    move/from16 v0, v44

    .end local v13    # "u6":I
    .end local v14    # "u7":I
    .end local v44    # "v3":I
    .local v0, "v3":I
    .local v1, "u7":I
    .restart local v37    # "u6":I
    int-to-long v13, v0

    mul-long v13, v13, v95

    add-long v13, v93, v13

    move/from16 v44, v1

    move-wide/from16 v93, v13

    move/from16 v1, v36

    .end local v36    # "u5":I
    .local v1, "u5":I
    .local v44, "u7":I
    int-to-long v13, v1

    move-wide/from16 v95, v13

    move/from16 v13, v45

    move v14, v0

    .end local v0    # "v3":I
    .end local v1    # "u5":I
    .end local v45    # "v4":I
    .local v13, "v4":I
    .local v14, "v3":I
    .restart local v36    # "u5":I
    int-to-long v0, v13

    mul-long v0, v0, v95

    add-long v0, v93, v0

    move-wide/from16 v93, v0

    move v1, v14

    move/from16 v0, v46

    .end local v13    # "v4":I
    .end local v14    # "v3":I
    .end local v46    # "u4":I
    .local v0, "u4":I
    .local v1, "v3":I
    .restart local v45    # "v4":I
    int-to-long v13, v0

    move/from16 v46, v1

    move-wide/from16 v95, v13

    move/from16 v1, v32

    .end local v32    # "v5":I
    .local v1, "v5":I
    .local v46, "v3":I
    int-to-long v13, v1

    mul-long v13, v13, v95

    add-long v13, v93, v13

    move-wide/from16 v93, v13

    move/from16 v13, v34

    move v14, v0

    .end local v0    # "u4":I
    .end local v1    # "v5":I
    .end local v34    # "u3":I
    .local v13, "u3":I
    .local v14, "u4":I
    .restart local v32    # "v5":I
    int-to-long v0, v13

    move-wide/from16 v95, v0

    move v1, v14

    move/from16 v0, v47

    .end local v13    # "u3":I
    .end local v14    # "u4":I
    .end local v47    # "v6":I
    .local v0, "v6":I
    .local v1, "u4":I
    .restart local v34    # "u3":I
    int-to-long v13, v0

    mul-long v13, v13, v95

    add-long v13, v93, v13

    move/from16 v47, v1

    move-wide/from16 v93, v13

    move/from16 v1, v33

    .end local v33    # "u2":I
    .local v1, "u2":I
    .local v47, "u4":I
    int-to-long v13, v1

    move-wide/from16 v95, v13

    move/from16 v13, v48

    move v14, v0

    .end local v0    # "v6":I
    .end local v1    # "u2":I
    .end local v48    # "v7":I
    .local v13, "v7":I
    .local v14, "v6":I
    .restart local v33    # "u2":I
    int-to-long v0, v13

    mul-long v0, v0, v95

    add-long v0, v93, v0

    .line 535
    .local v0, "g9":J
    move-wide/from16 v93, v0

    .end local v0    # "g9":J
    .local v93, "g9":J
    int-to-long v0, v9

    move-wide/from16 v95, v0

    move v1, v14

    move/from16 v0, v55

    .end local v13    # "v7":I
    .end local v14    # "v6":I
    .end local v55    # "t0":I
    .local v0, "t0":I
    .local v1, "v6":I
    .restart local v48    # "v7":I
    int-to-long v13, v0

    mul-long v13, v13, v95

    move/from16 v55, v1

    move-wide/from16 v95, v13

    move/from16 v1, v49

    .end local v49    # "s0":I
    .local v1, "s0":I
    .local v55, "v6":I
    int-to-long v13, v1

    move-wide/from16 v97, v13

    move/from16 v13, v58

    move v14, v0

    .end local v0    # "t0":I
    .end local v1    # "s0":I
    .end local v58    # "t1":I
    .local v13, "t1":I
    .local v14, "t0":I
    .restart local v49    # "s0":I
    int-to-long v0, v13

    mul-long v0, v0, v97

    add-long v0, v95, v0

    .line 537
    .local v0, "h1":J
    move-wide/from16 v95, v0

    move v1, v14

    move/from16 v0, v56

    .end local v13    # "t1":I
    .end local v14    # "t0":I
    .end local v56    # "s7":I
    .local v0, "s7":I
    .local v1, "t0":I
    .restart local v58    # "t1":I
    .local v95, "h1":J
    int-to-long v13, v0

    move/from16 v56, v1

    move-wide/from16 v97, v13

    move/from16 v1, v59

    .end local v59    # "t2":I
    .local v1, "t2":I
    .local v56, "t0":I
    int-to-long v13, v1

    mul-long v13, v13, v97

    move-wide/from16 v97, v13

    move/from16 v13, v60

    move v14, v0

    .end local v0    # "s7":I
    .end local v1    # "t2":I
    .end local v60    # "s6":I
    .local v13, "s6":I
    .local v14, "s7":I
    .restart local v59    # "t2":I
    int-to-long v0, v13

    move-wide/from16 v99, v0

    move v1, v14

    move/from16 v0, v52

    .end local v13    # "s6":I
    .end local v14    # "s7":I
    .end local v52    # "t3":I
    .local v0, "t3":I
    .local v1, "s7":I
    .restart local v60    # "s6":I
    int-to-long v13, v0

    mul-long v13, v13, v99

    add-long v13, v97, v13

    move/from16 v52, v1

    move-wide/from16 v97, v13

    move/from16 v1, v54

    .end local v54    # "s5":I
    .local v1, "s5":I
    .local v52, "s7":I
    int-to-long v13, v1

    move-wide/from16 v99, v13

    move/from16 v13, v61

    move v14, v0

    .end local v0    # "t3":I
    .end local v1    # "s5":I
    .end local v61    # "t4":I
    .local v13, "t4":I
    .local v14, "t3":I
    .restart local v54    # "s5":I
    int-to-long v0, v13

    mul-long v0, v0, v99

    add-long v0, v97, v0

    move-wide/from16 v97, v0

    move v1, v14

    move/from16 v0, v53

    .end local v13    # "t4":I
    .end local v14    # "t3":I
    .end local v53    # "s4":I
    .local v0, "s4":I
    .local v1, "t3":I
    .restart local v61    # "t4":I
    int-to-long v13, v0

    move/from16 v53, v1

    move-wide/from16 v99, v13

    move/from16 v1, v62

    .end local v62    # "t5":I
    .local v1, "t5":I
    .local v53, "t3":I
    int-to-long v13, v1

    mul-long v13, v13, v99

    add-long v13, v97, v13

    move-wide/from16 v97, v13

    move/from16 v13, v63

    move v14, v0

    .end local v0    # "s4":I
    .end local v1    # "t5":I
    .end local v63    # "s3":I
    .local v13, "s3":I
    .local v14, "s4":I
    .restart local v62    # "t5":I
    int-to-long v0, v13

    move-wide/from16 v99, v0

    int-to-long v0, v8

    mul-long v0, v0, v99

    add-long v0, v97, v0

    move-wide/from16 v97, v0

    move v1, v14

    move/from16 v0, v51

    .end local v13    # "s3":I
    .end local v14    # "s4":I
    .end local v51    # "s2":I
    .local v0, "s2":I
    .local v1, "s4":I
    .restart local v63    # "s3":I
    int-to-long v13, v0

    move/from16 v51, v1

    move-wide/from16 v99, v13

    move/from16 v1, v50

    .end local v50    # "t7":I
    .local v1, "t7":I
    .local v51, "s4":I
    int-to-long v13, v1

    mul-long v13, v13, v99

    add-long v13, v97, v13

    .line 544
    .local v13, "h9":J
    add-long v97, v87, v91

    add-long v97, v97, v13

    sub-long v97, v97, v89

    move-wide/from16 v99, v13

    .end local v13    # "h9":J
    .local v99, "h9":J
    add-long v13, v83, v97

    .line 545
    .end local v83    # "c":J
    .local v13, "c":J
    nop

    .end local v1    # "t7":I
    .restart local v50    # "t7":I
    long-to-int v1, v13

    and-int v1, v1, v77

    .local v1, "z1":I
    ushr-long v13, v13, v78

    .line 546
    add-long v83, v93, v95

    sub-long v83, v83, v87

    add-long v83, v83, v99

    move-wide/from16 v97, v13

    .end local v13    # "c":J
    .local v97, "c":J
    add-long v13, v85, v83

    .line 547
    .end local v85    # "d":J
    .local v13, "d":J
    move/from16 v83, v1

    .end local v1    # "z1":I
    .local v83, "z1":I
    long-to-int v1, v13

    and-int v1, v1, v77

    .local v1, "z9":I
    ushr-long v13, v13, v78

    .line 549
    move-wide/from16 v84, v13

    .end local v13    # "d":J
    .local v84, "d":J
    int-to-long v13, v5

    move-wide/from16 v101, v13

    int-to-long v13, v2

    mul-long v13, v13, v101

    move-wide/from16 v101, v13

    int-to-long v13, v3

    move-wide/from16 v103, v13

    int-to-long v13, v4

    mul-long v13, v13, v103

    add-long v13, v101, v13

    move/from16 v86, v1

    move-wide/from16 v101, v13

    move/from16 v1, v65

    .end local v65    # "x0":I
    .local v1, "x0":I
    .local v86, "z9":I
    int-to-long v13, v1

    move-wide/from16 v103, v13

    int-to-long v13, v6

    mul-long v13, v13, v103

    add-long v13, v101, v13

    .line 552
    .local v13, "f2":J
    move-wide/from16 v101, v13

    .end local v13    # "f2":J
    .local v101, "f2":J
    int-to-long v13, v15

    move-wide/from16 v103, v13

    int-to-long v13, v11

    mul-long v13, v13, v103

    move-wide/from16 v103, v13

    move/from16 v13, v40

    move/from16 v40, v15

    .end local v15    # "x7":I
    .local v13, "x6":I
    .local v40, "x7":I
    int-to-long v14, v13

    move-wide/from16 v105, v14

    int-to-long v14, v10

    mul-long v14, v14, v105

    add-long v14, v103, v14

    move/from16 v65, v10

    move-wide/from16 v103, v14

    move/from16 v14, v82

    move v15, v11

    .end local v10    # "y4":I
    .end local v11    # "y3":I
    .end local v82    # "x5":I
    .local v14, "x5":I
    .local v15, "y3":I
    .local v65, "y4":I
    int-to-long v10, v14

    move-wide/from16 v105, v10

    move v11, v15

    move/from16 v10, v68

    .end local v14    # "x5":I
    .end local v15    # "y3":I
    .end local v68    # "y5":I
    .local v10, "y5":I
    .restart local v11    # "y3":I
    .restart local v82    # "x5":I
    int-to-long v14, v10

    mul-long v14, v14, v105

    add-long v14, v103, v14

    move/from16 v68, v11

    move-wide/from16 v103, v14

    move/from16 v11, v41

    .end local v41    # "x4":I
    .local v11, "x4":I
    .local v68, "y3":I
    int-to-long v14, v11

    move-wide/from16 v105, v14

    move/from16 v14, v38

    move v15, v10

    .end local v10    # "y5":I
    .end local v11    # "x4":I
    .end local v38    # "y6":I
    .local v14, "y6":I
    .local v15, "y5":I
    .restart local v41    # "x4":I
    int-to-long v10, v14

    mul-long v10, v10, v105

    add-long v10, v103, v10

    move-wide/from16 v103, v10

    int-to-long v10, v7

    move-wide/from16 v105, v10

    int-to-long v10, v12

    mul-long v10, v10, v105

    add-long v10, v103, v10

    .line 557
    .local v10, "f10":J
    move-wide/from16 v103, v10

    move/from16 v38, v12

    move/from16 v10, v33

    .end local v12    # "y7":I
    .end local v33    # "u2":I
    .local v10, "u2":I
    .local v38, "y7":I
    .local v103, "f10":J
    int-to-long v11, v10

    move-wide/from16 v105, v11

    move v12, v14

    move/from16 v33, v15

    move/from16 v11, v43

    .end local v14    # "y6":I
    .end local v15    # "y5":I
    .end local v43    # "v0":I
    .local v11, "v0":I
    .local v12, "y6":I
    .local v33, "y5":I
    int-to-long v14, v11

    mul-long v14, v14, v105

    move/from16 v43, v12

    move-wide/from16 v105, v14

    move/from16 v12, v57

    .end local v57    # "u1":I
    .local v12, "u1":I
    .local v43, "y6":I
    int-to-long v14, v12

    move-wide/from16 v107, v14

    move/from16 v14, v42

    move v15, v10

    move/from16 v42, v11

    .end local v10    # "u2":I
    .end local v11    # "v0":I
    .local v14, "v1":I
    .local v15, "u2":I
    .local v42, "v0":I
    int-to-long v10, v14

    mul-long v10, v10, v107

    add-long v10, v105, v10

    move-wide/from16 v105, v10

    move/from16 v10, v39

    .end local v12    # "u1":I
    .end local v39    # "u0":I
    .local v10, "u0":I
    .restart local v57    # "u1":I
    int-to-long v11, v10

    move-wide/from16 v107, v11

    move v12, v14

    move/from16 v11, v35

    move/from16 v35, v15

    .end local v14    # "v1":I
    .end local v15    # "u2":I
    .local v11, "v2":I
    .local v12, "v1":I
    .local v35, "u2":I
    int-to-long v14, v11

    mul-long v14, v14, v107

    add-long v14, v105, v14

    .line 560
    .local v14, "g2":J
    move/from16 v39, v12

    move-wide/from16 v105, v14

    move/from16 v12, v44

    .end local v14    # "g2":J
    .end local v44    # "u7":I
    .local v12, "u7":I
    .local v39, "v1":I
    .local v105, "g2":J
    int-to-long v14, v12

    move/from16 v44, v11

    move-wide/from16 v107, v14

    move/from16 v14, v46

    move v15, v10

    .end local v10    # "u0":I
    .end local v11    # "v2":I
    .end local v46    # "v3":I
    .local v14, "v3":I
    .local v15, "u0":I
    .local v44, "v2":I
    int-to-long v10, v14

    mul-long v10, v10, v107

    move-wide/from16 v107, v10

    move/from16 v10, v37

    move/from16 v37, v12

    .end local v12    # "u7":I
    .local v10, "u6":I
    .local v37, "u7":I
    int-to-long v11, v10

    move-wide/from16 v109, v11

    move v12, v15

    move/from16 v11, v45

    .end local v14    # "v3":I
    .end local v15    # "u0":I
    .end local v45    # "v4":I
    .local v11, "v4":I
    .local v12, "u0":I
    .restart local v46    # "v3":I
    int-to-long v14, v11

    mul-long v14, v14, v109

    add-long v14, v107, v14

    move/from16 v45, v12

    move-wide/from16 v107, v14

    move/from16 v12, v36

    .end local v36    # "u5":I
    .local v12, "u5":I
    .local v45, "u0":I
    int-to-long v14, v12

    move-wide/from16 v109, v14

    move/from16 v14, v32

    move v15, v10

    move/from16 v32, v11

    .end local v10    # "u6":I
    .end local v11    # "v4":I
    .local v14, "v5":I
    .local v15, "u6":I
    .local v32, "v4":I
    int-to-long v10, v14

    mul-long v10, v10, v109

    add-long v10, v107, v10

    move-wide/from16 v107, v10

    move/from16 v10, v47

    .end local v12    # "u5":I
    .end local v47    # "u4":I
    .local v10, "u4":I
    .restart local v36    # "u5":I
    int-to-long v11, v10

    move-wide/from16 v109, v11

    move v12, v14

    move/from16 v47, v15

    move/from16 v11, v55

    .end local v14    # "v5":I
    .end local v15    # "u6":I
    .end local v55    # "v6":I
    .local v11, "v6":I
    .local v12, "v5":I
    .local v47, "u6":I
    int-to-long v14, v11

    mul-long v14, v14, v109

    add-long v14, v107, v14

    move/from16 v55, v12

    move-wide/from16 v107, v14

    move/from16 v12, v34

    .end local v34    # "u3":I
    .local v12, "u3":I
    .local v55, "v5":I
    int-to-long v14, v12

    move/from16 v34, v11

    move-wide/from16 v109, v14

    move/from16 v14, v48

    move v15, v10

    .end local v10    # "u4":I
    .end local v11    # "v6":I
    .end local v48    # "v7":I
    .local v14, "v7":I
    .local v15, "u4":I
    .local v34, "v6":I
    int-to-long v10, v14

    mul-long v10, v10, v109

    add-long v10, v107, v10

    .line 565
    .local v10, "g10":J
    move-wide/from16 v107, v10

    .end local v10    # "g10":J
    .local v107, "g10":J
    int-to-long v10, v0

    move-wide/from16 v109, v10

    move v11, v15

    move/from16 v10, v56

    .end local v14    # "v7":I
    .end local v15    # "u4":I
    .end local v56    # "t0":I
    .local v10, "t0":I
    .local v11, "u4":I
    .restart local v48    # "v7":I
    int-to-long v14, v10

    mul-long v14, v14, v109

    move-wide/from16 v109, v14

    int-to-long v14, v9

    move/from16 v56, v11

    move-wide/from16 v111, v14

    move/from16 v11, v58

    .end local v58    # "t1":I
    .local v11, "t1":I
    .local v56, "u4":I
    int-to-long v14, v11

    mul-long v14, v14, v111

    add-long v14, v109, v14

    move-wide/from16 v109, v14

    move/from16 v14, v49

    move v15, v9

    move/from16 v49, v10

    .end local v9    # "s1":I
    .end local v10    # "t0":I
    .local v14, "s0":I
    .local v15, "s1":I
    .local v49, "t0":I
    int-to-long v9, v14

    move-wide/from16 v111, v9

    move v10, v14

    move/from16 v58, v15

    move/from16 v9, v59

    .end local v14    # "s0":I
    .end local v15    # "s1":I
    .end local v59    # "t2":I
    .local v9, "t2":I
    .local v10, "s0":I
    .local v58, "s1":I
    int-to-long v14, v9

    mul-long v14, v14, v111

    add-long v14, v109, v14

    .line 568
    .local v14, "h2":J
    move/from16 v59, v10

    move-wide/from16 v109, v14

    move/from16 v10, v52

    .end local v14    # "h2":J
    .end local v52    # "s7":I
    .local v10, "s7":I
    .local v59, "s0":I
    .local v109, "h2":J
    int-to-long v14, v10

    move-wide/from16 v111, v14

    move/from16 v14, v53

    move v15, v9

    .end local v9    # "t2":I
    .end local v10    # "s7":I
    .end local v53    # "t3":I
    .local v14, "t3":I
    .local v15, "t2":I
    .restart local v52    # "s7":I
    int-to-long v9, v14

    mul-long v9, v9, v111

    move-wide/from16 v111, v9

    move v10, v15

    move/from16 v9, v60

    move/from16 v60, v14

    .end local v14    # "t3":I
    .end local v15    # "t2":I
    .local v9, "s6":I
    .local v10, "t2":I
    .local v60, "t3":I
    int-to-long v14, v9

    move/from16 v53, v10

    move-wide/from16 v113, v14

    move/from16 v10, v61

    .end local v61    # "t4":I
    .local v10, "t4":I
    .local v53, "t2":I
    int-to-long v14, v10

    mul-long v14, v14, v113

    add-long v14, v111, v14

    move-wide/from16 v111, v14

    move/from16 v14, v54

    move v15, v9

    .end local v9    # "s6":I
    .end local v10    # "t4":I
    .end local v54    # "s5":I
    .local v14, "s5":I
    .local v15, "s6":I
    .restart local v61    # "t4":I
    int-to-long v9, v14

    move-wide/from16 v113, v9

    move v10, v15

    move/from16 v9, v62

    .end local v14    # "s5":I
    .end local v15    # "s6":I
    .end local v62    # "t5":I
    .local v9, "t5":I
    .local v10, "s6":I
    .restart local v54    # "s5":I
    int-to-long v14, v9

    mul-long v14, v14, v113

    add-long v14, v111, v14

    move/from16 v62, v10

    move-wide/from16 v111, v14

    move/from16 v10, v51

    .end local v51    # "s4":I
    .local v10, "s4":I
    .local v62, "s6":I
    int-to-long v14, v10

    move-wide/from16 v113, v14

    int-to-long v14, v8

    mul-long v14, v14, v113

    add-long v14, v111, v14

    move-wide/from16 v111, v14

    move/from16 v14, v63

    move/from16 v63, v8

    move v15, v9

    .end local v8    # "t6":I
    .end local v9    # "t5":I
    .local v14, "s3":I
    .local v15, "t5":I
    .local v63, "t6":I
    int-to-long v8, v14

    move-wide/from16 v113, v8

    move/from16 v8, v50

    .end local v10    # "s4":I
    .end local v50    # "t7":I
    .local v8, "t7":I
    .restart local v51    # "s4":I
    int-to-long v9, v8

    mul-long v9, v9, v113

    add-long v9, v111, v9

    .line 574
    .local v9, "h10":J
    add-long v111, v101, v105

    add-long v111, v111, v9

    sub-long v111, v111, v103

    move-wide/from16 v113, v9

    .end local v9    # "h10":J
    .local v113, "h10":J
    add-long v9, v97, v111

    .line 575
    .end local v97    # "c":J
    .local v9, "c":J
    move/from16 v50, v15

    .end local v15    # "t5":I
    .local v50, "t5":I
    long-to-int v15, v9

    and-int v15, v15, v77

    .local v15, "z2":I
    ushr-long v9, v9, v78

    .line 576
    add-long v97, v107, v109

    sub-long v97, v97, v101

    add-long v97, v97, v113

    move-wide/from16 v111, v9

    .end local v9    # "c":J
    .local v111, "c":J
    add-long v9, v84, v97

    .line 577
    .end local v84    # "d":J
    .local v9, "d":J
    move/from16 v84, v15

    .end local v15    # "z2":I
    .local v84, "z2":I
    long-to-int v15, v9

    and-int v15, v15, v77

    .local v15, "z10":I
    ushr-long v9, v9, v78

    .line 579
    move-wide/from16 v97, v9

    .end local v9    # "d":J
    .local v97, "d":J
    int-to-long v9, v7

    move-wide/from16 v115, v9

    int-to-long v9, v2

    mul-long v9, v9, v115

    move-wide/from16 v115, v9

    int-to-long v9, v5

    move-wide/from16 v117, v9

    int-to-long v9, v4

    mul-long v9, v9, v117

    add-long v9, v115, v9

    move-wide/from16 v115, v9

    int-to-long v9, v3

    move-wide/from16 v117, v9

    int-to-long v9, v6

    mul-long v9, v9, v117

    add-long v9, v115, v9

    move-wide/from16 v115, v9

    int-to-long v9, v1

    move-wide/from16 v117, v9

    move/from16 v9, v68

    move v10, v5

    move/from16 v68, v6

    .end local v5    # "x2":I
    .end local v6    # "y2":I
    .local v9, "y3":I
    .local v10, "x2":I
    .local v68, "y2":I
    int-to-long v5, v9

    mul-long v5, v5, v117

    add-long v5, v115, v5

    .line 583
    .local v5, "f3":J
    move-wide/from16 v115, v5

    move v6, v10

    move/from16 v5, v40

    move/from16 v40, v9

    .end local v9    # "y3":I
    .end local v10    # "x2":I
    .local v5, "x7":I
    .local v6, "x2":I
    .local v40, "y3":I
    .local v115, "f3":J
    int-to-long v9, v5

    move/from16 v85, v6

    move-wide/from16 v117, v9

    move/from16 v6, v65

    .end local v65    # "y4":I
    .local v6, "y4":I
    .local v85, "x2":I
    int-to-long v9, v6

    mul-long v9, v9, v117

    move-wide/from16 v117, v9

    int-to-long v9, v13

    move-wide/from16 v119, v9

    move/from16 v9, v33

    move v10, v5

    .end local v5    # "x7":I
    .end local v6    # "y4":I
    .end local v33    # "y5":I
    .local v9, "y5":I
    .local v10, "x7":I
    .restart local v65    # "y4":I
    int-to-long v5, v9

    mul-long v5, v5, v119

    add-long v5, v117, v5

    move-wide/from16 v117, v5

    move v6, v10

    move/from16 v5, v82

    .end local v9    # "y5":I
    .end local v10    # "x7":I
    .end local v82    # "x5":I
    .local v5, "x5":I
    .local v6, "x7":I
    .restart local v33    # "y5":I
    int-to-long v9, v5

    move/from16 v82, v6

    move-wide/from16 v119, v9

    move/from16 v6, v43

    .end local v43    # "y6":I
    .local v6, "y6":I
    .local v82, "x7":I
    int-to-long v9, v6

    mul-long v9, v9, v119

    add-long v9, v117, v9

    move-wide/from16 v117, v9

    move/from16 v9, v41

    move v10, v5

    .end local v5    # "x5":I
    .end local v6    # "y6":I
    .end local v41    # "x4":I
    .local v9, "x4":I
    .local v10, "x5":I
    .restart local v43    # "y6":I
    int-to-long v5, v9

    move-wide/from16 v119, v5

    move/from16 v5, v38

    move v6, v3

    move/from16 v38, v4

    .end local v3    # "x1":I
    .end local v4    # "y1":I
    .local v5, "y7":I
    .local v6, "x1":I
    .local v38, "y1":I
    int-to-long v3, v5

    mul-long v3, v3, v119

    add-long v3, v117, v3

    .line 587
    .local v3, "f11":J
    move-wide/from16 v117, v3

    .end local v3    # "f11":J
    .local v117, "f11":J
    int-to-long v3, v12

    move-wide/from16 v119, v3

    move/from16 v41, v5

    move/from16 v3, v42

    .end local v5    # "y7":I
    .end local v42    # "v0":I
    .local v3, "v0":I
    .local v41, "y7":I
    int-to-long v4, v3

    mul-long v4, v4, v119

    move-wide/from16 v119, v4

    move/from16 v4, v35

    move/from16 v35, v6

    .end local v6    # "x1":I
    .local v4, "u2":I
    .local v35, "x1":I
    int-to-long v5, v4

    move-wide/from16 v121, v5

    move/from16 v5, v39

    move v6, v4

    .end local v3    # "v0":I
    .end local v4    # "u2":I
    .end local v39    # "v1":I
    .local v5, "v1":I
    .local v6, "u2":I
    .restart local v42    # "v0":I
    int-to-long v3, v5

    mul-long v3, v3, v121

    add-long v3, v119, v3

    move-wide/from16 v119, v3

    move/from16 v3, v57

    .end local v5    # "v1":I
    .end local v57    # "u1":I
    .local v3, "u1":I
    .restart local v39    # "v1":I
    int-to-long v4, v3

    move-wide/from16 v121, v4

    move/from16 v4, v44

    move/from16 v44, v6

    .end local v6    # "u2":I
    .local v4, "v2":I
    .local v44, "u2":I
    int-to-long v5, v4

    mul-long v5, v5, v121

    add-long v5, v119, v5

    move-wide/from16 v119, v5

    move/from16 v5, v45

    move v6, v4

    .end local v3    # "u1":I
    .end local v4    # "v2":I
    .end local v45    # "u0":I
    .local v5, "u0":I
    .local v6, "v2":I
    .restart local v57    # "u1":I
    int-to-long v3, v5

    move-wide/from16 v121, v3

    move/from16 v3, v46

    .end local v5    # "u0":I
    .end local v46    # "v3":I
    .local v3, "v3":I
    .restart local v45    # "u0":I
    int-to-long v4, v3

    mul-long v4, v4, v121

    add-long v4, v119, v4

    .line 591
    .local v4, "g3":J
    move-wide/from16 v119, v4

    move/from16 v4, v37

    move/from16 v37, v6

    .end local v6    # "v2":I
    .local v4, "u7":I
    .local v37, "v2":I
    .local v119, "g3":J
    int-to-long v5, v4

    move-wide/from16 v121, v5

    move/from16 v5, v32

    move v6, v4

    .end local v3    # "v3":I
    .end local v4    # "u7":I
    .end local v32    # "v4":I
    .local v5, "v4":I
    .local v6, "u7":I
    .restart local v46    # "v3":I
    int-to-long v3, v5

    mul-long v3, v3, v121

    move-wide/from16 v121, v3

    move/from16 v3, v47

    .end local v5    # "v4":I
    .end local v47    # "u6":I
    .local v3, "u6":I
    .restart local v32    # "v4":I
    int-to-long v4, v3

    move-wide/from16 v123, v4

    move/from16 v47, v6

    move/from16 v4, v55

    .end local v6    # "u7":I
    .end local v55    # "v5":I
    .local v4, "v5":I
    .local v47, "u7":I
    int-to-long v5, v4

    mul-long v5, v5, v123

    add-long v5, v121, v5

    move-wide/from16 v121, v5

    move/from16 v5, v36

    move v6, v3

    .end local v3    # "u6":I
    .end local v4    # "v5":I
    .end local v36    # "u5":I
    .local v5, "u5":I
    .local v6, "u6":I
    .restart local v55    # "v5":I
    int-to-long v3, v5

    move-wide/from16 v123, v3

    move/from16 v3, v34

    .end local v5    # "u5":I
    .end local v34    # "v6":I
    .local v3, "v6":I
    .restart local v36    # "u5":I
    int-to-long v4, v3

    mul-long v4, v4, v123

    add-long v4, v121, v4

    move-wide/from16 v121, v4

    move/from16 v34, v6

    move/from16 v4, v56

    .end local v6    # "u6":I
    .end local v56    # "u4":I
    .local v4, "u4":I
    .local v34, "u6":I
    int-to-long v5, v4

    move-wide/from16 v123, v5

    move/from16 v5, v48

    move v6, v3

    .end local v3    # "v6":I
    .end local v4    # "u4":I
    .end local v48    # "v7":I
    .local v5, "v7":I
    .local v6, "v6":I
    .restart local v56    # "u4":I
    int-to-long v3, v5

    mul-long v3, v3, v123

    add-long v3, v121, v3

    .line 595
    .local v3, "g11":J
    move-wide/from16 v121, v3

    .end local v3    # "g11":J
    .local v121, "g11":J
    int-to-long v3, v14

    move-wide/from16 v123, v3

    move v4, v14

    move/from16 v48, v15

    move/from16 v3, v49

    .end local v14    # "s3":I
    .end local v15    # "z10":I
    .end local v49    # "t0":I
    .local v3, "t0":I
    .local v4, "s3":I
    .local v48, "z10":I
    int-to-long v14, v3

    mul-long v14, v14, v123

    move-wide/from16 v123, v14

    int-to-long v14, v0

    move-wide/from16 v125, v14

    int-to-long v14, v11

    mul-long v14, v14, v125

    add-long v14, v123, v14

    move/from16 v49, v4

    move-wide/from16 v123, v14

    move/from16 v4, v58

    .end local v58    # "s1":I
    .local v4, "s1":I
    .local v49, "s3":I
    int-to-long v14, v4

    move/from16 v58, v6

    move-wide/from16 v125, v14

    move/from16 v6, v53

    .end local v53    # "t2":I
    .local v6, "t2":I
    .local v58, "v6":I
    int-to-long v14, v6

    mul-long v14, v14, v125

    add-long v14, v123, v14

    move/from16 v53, v10

    move-wide/from16 v123, v14

    move/from16 v10, v59

    .end local v59    # "s0":I
    .local v10, "s0":I
    .local v53, "x5":I
    int-to-long v14, v10

    move-wide/from16 v125, v14

    move/from16 v14, v60

    move v15, v11

    .end local v10    # "s0":I
    .end local v11    # "t1":I
    .end local v60    # "t3":I
    .local v14, "t3":I
    .local v15, "t1":I
    .restart local v59    # "s0":I
    int-to-long v10, v14

    mul-long v10, v10, v125

    add-long v10, v123, v10

    .line 599
    .local v10, "h3":J
    move-wide/from16 v123, v10

    move v11, v15

    move/from16 v10, v52

    .end local v14    # "t3":I
    .end local v15    # "t1":I
    .end local v52    # "s7":I
    .local v10, "s7":I
    .restart local v11    # "t1":I
    .restart local v60    # "t3":I
    .local v123, "h3":J
    int-to-long v14, v10

    move/from16 v52, v11

    move-wide/from16 v125, v14

    move/from16 v11, v61

    .end local v61    # "t4":I
    .local v11, "t4":I
    .local v52, "t1":I
    int-to-long v14, v11

    mul-long v14, v14, v125

    move-wide/from16 v125, v14

    move/from16 v14, v62

    move v15, v10

    .end local v10    # "s7":I
    .end local v11    # "t4":I
    .end local v62    # "s6":I
    .local v14, "s6":I
    .local v15, "s7":I
    .restart local v61    # "t4":I
    int-to-long v10, v14

    move-wide/from16 v127, v10

    move v11, v15

    move/from16 v10, v50

    .end local v14    # "s6":I
    .end local v15    # "s7":I
    .end local v50    # "t5":I
    .local v10, "t5":I
    .local v11, "s7":I
    .restart local v62    # "s6":I
    int-to-long v14, v10

    mul-long v14, v14, v127

    add-long v14, v125, v14

    move/from16 v50, v11

    move-wide/from16 v125, v14

    move/from16 v11, v54

    .end local v54    # "s5":I
    .local v11, "s5":I
    .local v50, "s7":I
    int-to-long v14, v11

    move-wide/from16 v127, v14

    move/from16 v14, v63

    move v15, v10

    .end local v10    # "t5":I
    .end local v11    # "s5":I
    .end local v63    # "t6":I
    .local v14, "t6":I
    .local v15, "t5":I
    .restart local v54    # "s5":I
    int-to-long v10, v14

    mul-long v10, v10, v127

    add-long v10, v125, v10

    move-wide/from16 v125, v10

    move v11, v15

    move/from16 v10, v51

    .end local v14    # "t6":I
    .end local v15    # "t5":I
    .end local v51    # "s4":I
    .local v10, "s4":I
    .local v11, "t5":I
    .restart local v63    # "t6":I
    int-to-long v14, v10

    move-wide/from16 v127, v14

    int-to-long v14, v8

    mul-long v14, v14, v127

    add-long v14, v125, v14

    .line 604
    .local v14, "h11":J
    add-long v125, v115, v119

    add-long v125, v125, v14

    sub-long v125, v125, v117

    move-wide/from16 v127, v14

    .end local v14    # "h11":J
    .local v127, "h11":J
    add-long v14, v111, v125

    .line 605
    .end local v111    # "c":J
    .local v14, "c":J
    move/from16 v51, v11

    .end local v11    # "t5":I
    .local v51, "t5":I
    long-to-int v11, v14

    and-int v11, v11, v77

    .local v11, "z3":I
    ushr-long v14, v14, v78

    .line 606
    add-long v111, v121, v123

    sub-long v111, v111, v115

    add-long v111, v111, v127

    move-wide/from16 v125, v14

    .end local v14    # "c":J
    .local v125, "c":J
    add-long v14, v97, v111

    .line 607
    .end local v97    # "d":J
    .local v14, "d":J
    move/from16 v97, v11

    .end local v11    # "z3":I
    .local v97, "z3":I
    long-to-int v11, v14

    and-int v11, v11, v77

    .local v11, "z11":I
    ushr-long v14, v14, v78

    .line 609
    move-wide/from16 v111, v14

    .end local v14    # "d":J
    .local v111, "d":J
    int-to-long v14, v9

    move-wide/from16 v129, v14

    int-to-long v14, v2

    mul-long v14, v14, v129

    move-wide/from16 v129, v14

    int-to-long v14, v7

    move/from16 v98, v11

    move-wide/from16 v131, v14

    move/from16 v11, v38

    .end local v38    # "y1":I
    .local v11, "y1":I
    .local v98, "z11":I
    int-to-long v14, v11

    mul-long v14, v14, v131

    add-long v14, v129, v14

    move/from16 v38, v8

    move-wide/from16 v129, v14

    move/from16 v14, v85

    move v15, v7

    .end local v7    # "x3":I
    .end local v8    # "t7":I
    .end local v85    # "x2":I
    .local v14, "x2":I
    .local v15, "x3":I
    .local v38, "t7":I
    int-to-long v7, v14

    move-wide/from16 v131, v7

    move v8, v15

    move/from16 v7, v68

    .end local v14    # "x2":I
    .end local v15    # "x3":I
    .end local v68    # "y2":I
    .local v7, "y2":I
    .local v8, "x3":I
    .restart local v85    # "x2":I
    int-to-long v14, v7

    mul-long v14, v14, v131

    add-long v14, v129, v14

    move/from16 v68, v8

    move-wide/from16 v129, v14

    move/from16 v8, v35

    .end local v35    # "x1":I
    .local v8, "x1":I
    .local v68, "x3":I
    int-to-long v14, v8

    move-wide/from16 v131, v14

    move/from16 v14, v40

    move v15, v7

    .end local v7    # "y2":I
    .end local v8    # "x1":I
    .end local v40    # "y3":I
    .local v14, "y3":I
    .local v15, "y2":I
    .restart local v35    # "x1":I
    int-to-long v7, v14

    mul-long v7, v7, v131

    add-long v7, v129, v7

    move-wide/from16 v129, v7

    int-to-long v7, v1

    move-wide/from16 v131, v7

    move v8, v15

    move/from16 v7, v65

    .end local v14    # "y3":I
    .end local v15    # "y2":I
    .end local v65    # "y4":I
    .local v7, "y4":I
    .local v8, "y2":I
    .restart local v40    # "y3":I
    int-to-long v14, v7

    mul-long v14, v14, v131

    add-long v14, v129, v14

    .line 614
    .local v14, "f4":J
    move/from16 v65, v8

    move-wide/from16 v129, v14

    move/from16 v8, v82

    .end local v14    # "f4":J
    .end local v82    # "x7":I
    .local v8, "x7":I
    .local v65, "y2":I
    .local v129, "f4":J
    int-to-long v14, v8

    move-wide/from16 v131, v14

    move/from16 v14, v33

    move v15, v7

    .end local v7    # "y4":I
    .end local v8    # "x7":I
    .end local v33    # "y5":I
    .local v14, "y5":I
    .local v15, "y4":I
    .restart local v82    # "x7":I
    int-to-long v7, v14

    mul-long v7, v7, v131

    move-wide/from16 v131, v7

    int-to-long v7, v13

    move-wide/from16 v133, v7

    move v8, v13

    move/from16 v7, v43

    .end local v13    # "x6":I
    .end local v14    # "y5":I
    .end local v43    # "y6":I
    .local v7, "y6":I
    .local v8, "x6":I
    .restart local v33    # "y5":I
    int-to-long v13, v7

    mul-long v13, v13, v133

    add-long v13, v131, v13

    move/from16 v43, v8

    move-wide/from16 v131, v13

    move/from16 v8, v53

    .end local v53    # "x5":I
    .local v8, "x5":I
    .local v43, "x6":I
    int-to-long v13, v8

    move-wide/from16 v133, v13

    move/from16 v13, v41

    move/from16 v41, v15

    .end local v15    # "y4":I
    .local v13, "y7":I
    .local v41, "y4":I
    int-to-long v14, v13

    mul-long v14, v14, v133

    add-long v14, v131, v14

    .line 617
    .local v14, "f12":J
    move/from16 v53, v1

    move-wide/from16 v131, v14

    move/from16 v14, v56

    move v15, v2

    .end local v1    # "x0":I
    .end local v2    # "y0":I
    .end local v56    # "u4":I
    .local v14, "u4":I
    .local v15, "y0":I
    .local v53, "x0":I
    .local v131, "f12":J
    int-to-long v1, v14

    move-wide/from16 v133, v1

    move v2, v15

    move/from16 v1, v42

    .end local v14    # "u4":I
    .end local v15    # "y0":I
    .end local v42    # "v0":I
    .local v1, "v0":I
    .restart local v2    # "y0":I
    .restart local v56    # "u4":I
    int-to-long v14, v1

    mul-long v14, v14, v133

    move-wide/from16 v133, v14

    int-to-long v14, v12

    move/from16 v42, v2

    move-wide/from16 v135, v14

    move/from16 v2, v39

    .end local v39    # "v1":I
    .local v2, "v1":I
    .local v42, "y0":I
    int-to-long v14, v2

    mul-long v14, v14, v135

    add-long v14, v133, v14

    move-wide/from16 v133, v14

    move/from16 v14, v44

    move v15, v1

    .end local v1    # "v0":I
    .end local v2    # "v1":I
    .end local v44    # "u2":I
    .local v14, "u2":I
    .local v15, "v0":I
    .restart local v39    # "v1":I
    int-to-long v1, v14

    move-wide/from16 v135, v1

    move v2, v15

    move/from16 v1, v37

    .end local v14    # "u2":I
    .end local v15    # "v0":I
    .end local v37    # "v2":I
    .local v1, "v2":I
    .local v2, "v0":I
    .restart local v44    # "u2":I
    int-to-long v14, v1

    mul-long v14, v14, v135

    add-long v14, v133, v14

    move/from16 v37, v2

    move-wide/from16 v133, v14

    move/from16 v2, v57

    .end local v57    # "u1":I
    .local v2, "u1":I
    .local v37, "v0":I
    int-to-long v14, v2

    move-wide/from16 v135, v14

    move/from16 v14, v46

    move v15, v1

    .end local v1    # "v2":I
    .end local v2    # "u1":I
    .end local v46    # "v3":I
    .local v14, "v3":I
    .local v15, "v2":I
    .restart local v57    # "u1":I
    int-to-long v1, v14

    mul-long v1, v1, v135

    add-long v1, v133, v1

    move-wide/from16 v133, v1

    move v2, v15

    move/from16 v1, v45

    .end local v14    # "v3":I
    .end local v15    # "v2":I
    .end local v45    # "u0":I
    .local v1, "u0":I
    .local v2, "v2":I
    .restart local v46    # "v3":I
    int-to-long v14, v1

    move/from16 v45, v2

    move-wide/from16 v135, v14

    move/from16 v2, v32

    .end local v32    # "v4":I
    .local v2, "v4":I
    .local v45, "v2":I
    int-to-long v14, v2

    mul-long v14, v14, v135

    add-long v14, v133, v14

    .line 622
    .local v14, "g4":J
    move-wide/from16 v133, v14

    move/from16 v14, v47

    move v15, v1

    .end local v1    # "u0":I
    .end local v2    # "v4":I
    .end local v47    # "u7":I
    .local v14, "u7":I
    .local v15, "u0":I
    .restart local v32    # "v4":I
    .local v133, "g4":J
    int-to-long v1, v14

    move-wide/from16 v135, v1

    move v2, v15

    move/from16 v1, v55

    .end local v14    # "u7":I
    .end local v15    # "u0":I
    .end local v55    # "v5":I
    .local v1, "v5":I
    .local v2, "u0":I
    .restart local v47    # "u7":I
    int-to-long v14, v1

    mul-long v14, v14, v135

    move/from16 v55, v2

    move-wide/from16 v135, v14

    move/from16 v2, v34

    .end local v34    # "u6":I
    .local v2, "u6":I
    .local v55, "u0":I
    int-to-long v14, v2

    move-wide/from16 v137, v14

    move/from16 v14, v58

    move v15, v1

    .end local v1    # "v5":I
    .end local v2    # "u6":I
    .end local v58    # "v6":I
    .local v14, "v6":I
    .local v15, "v5":I
    .restart local v34    # "u6":I
    int-to-long v1, v14

    mul-long v1, v1, v137

    add-long v1, v135, v1

    move-wide/from16 v135, v1

    move v2, v15

    move/from16 v1, v36

    .end local v14    # "v6":I
    .end local v15    # "v5":I
    .end local v36    # "u5":I
    .local v1, "u5":I
    .local v2, "v5":I
    .restart local v58    # "v6":I
    int-to-long v14, v1

    move-wide/from16 v137, v14

    int-to-long v14, v5

    mul-long v14, v14, v137

    add-long v14, v135, v14

    .line 625
    .local v14, "g12":J
    move-wide/from16 v135, v14

    .end local v14    # "g12":J
    .local v135, "g12":J
    int-to-long v14, v10

    move-wide/from16 v137, v14

    int-to-long v14, v3

    mul-long v14, v14, v137

    move/from16 v36, v2

    move-wide/from16 v137, v14

    move/from16 v2, v49

    .end local v49    # "s3":I
    .local v2, "s3":I
    .local v36, "v5":I
    int-to-long v14, v2

    move/from16 v49, v3

    move-wide/from16 v139, v14

    move/from16 v14, v52

    move/from16 v52, v2

    .end local v2    # "s3":I
    .end local v3    # "t0":I
    .local v14, "t1":I
    .local v49, "t0":I
    .local v52, "s3":I
    int-to-long v2, v14

    mul-long v2, v2, v139

    add-long v2, v137, v2

    move-wide/from16 v137, v2

    int-to-long v2, v0

    move-wide/from16 v139, v2

    int-to-long v2, v6

    mul-long v2, v2, v139

    add-long v2, v137, v2

    move-wide/from16 v137, v2

    int-to-long v2, v4

    move-wide/from16 v139, v2

    move/from16 v15, v60

    .end local v60    # "t3":I
    .local v15, "t3":I
    int-to-long v2, v15

    mul-long v2, v2, v139

    add-long v2, v137, v2

    move-wide/from16 v137, v2

    move/from16 v2, v59

    move/from16 v59, v4

    .end local v4    # "s1":I
    .local v2, "s0":I
    .local v59, "s1":I
    int-to-long v3, v2

    move-wide/from16 v139, v3

    move v4, v14

    move/from16 v3, v61

    .end local v14    # "t1":I
    .end local v15    # "t3":I
    .end local v61    # "t4":I
    .local v3, "t4":I
    .local v4, "t1":I
    .restart local v60    # "t3":I
    int-to-long v14, v3

    mul-long v14, v14, v139

    add-long v14, v137, v14

    .line 630
    .local v14, "h4":J
    move/from16 v61, v4

    move-wide/from16 v137, v14

    move/from16 v4, v50

    .end local v14    # "h4":J
    .end local v50    # "s7":I
    .local v4, "s7":I
    .local v61, "t1":I
    .local v137, "h4":J
    int-to-long v14, v4

    move/from16 v50, v3

    move-wide/from16 v139, v14

    move/from16 v14, v51

    move v15, v2

    .end local v2    # "s0":I
    .end local v3    # "t4":I
    .end local v51    # "t5":I
    .local v14, "t5":I
    .local v15, "s0":I
    .local v50, "t4":I
    int-to-long v2, v14

    mul-long v2, v2, v139

    move-wide/from16 v139, v2

    move/from16 v51, v4

    move/from16 v2, v62

    .end local v4    # "s7":I
    .end local v62    # "s6":I
    .local v2, "s6":I
    .local v51, "s7":I
    int-to-long v3, v2

    move-wide/from16 v141, v3

    move/from16 v62, v14

    move v4, v15

    move/from16 v3, v63

    .end local v14    # "t5":I
    .end local v15    # "s0":I
    .end local v63    # "t6":I
    .local v3, "t6":I
    .local v4, "s0":I
    .local v62, "t5":I
    int-to-long v14, v3

    mul-long v14, v14, v141

    add-long v14, v139, v14

    move/from16 v63, v4

    move-wide/from16 v139, v14

    move/from16 v4, v54

    .end local v54    # "s5":I
    .local v4, "s5":I
    .local v63, "s0":I
    int-to-long v14, v4

    move-wide/from16 v141, v14

    move/from16 v14, v38

    move v15, v2

    move/from16 v38, v3

    .end local v2    # "s6":I
    .end local v3    # "t6":I
    .local v14, "t7":I
    .local v15, "s6":I
    .local v38, "t6":I
    int-to-long v2, v14

    mul-long v2, v2, v141

    add-long v2, v139, v2

    .line 634
    .local v2, "h12":J
    add-long v139, v129, v133

    add-long v139, v139, v2

    sub-long v139, v139, v131

    move-wide/from16 v141, v2

    .end local v2    # "h12":J
    .local v141, "h12":J
    add-long v2, v125, v139

    .line 635
    .end local v125    # "c":J
    .local v2, "c":J
    move/from16 v54, v15

    .end local v15    # "s6":I
    .local v54, "s6":I
    long-to-int v15, v2

    and-int v15, v15, v77

    .local v15, "z4":I
    ushr-long v2, v2, v78

    .line 636
    add-long v125, v135, v137

    sub-long v125, v125, v129

    add-long v125, v125, v141

    move-wide/from16 v139, v2

    .end local v2    # "c":J
    .local v139, "c":J
    add-long v2, v111, v125

    .line 637
    .end local v111    # "d":J
    .local v2, "d":J
    move/from16 v111, v15

    .end local v15    # "z4":I
    .local v111, "z4":I
    long-to-int v15, v2

    and-int v15, v15, v77

    .local v15, "z12":I
    ushr-long v2, v2, v78

    .line 639
    move-wide/from16 v125, v2

    .end local v2    # "d":J
    .local v125, "d":J
    int-to-long v2, v8

    move-wide/from16 v143, v2

    move v3, v14

    move/from16 v2, v42

    move/from16 v42, v15

    .end local v14    # "t7":I
    .end local v15    # "z12":I
    .local v2, "y0":I
    .local v3, "t7":I
    .local v42, "z12":I
    int-to-long v14, v2

    mul-long v14, v14, v143

    move-wide/from16 v143, v14

    int-to-long v14, v9

    move-wide/from16 v145, v14

    int-to-long v14, v11

    mul-long v14, v14, v145

    add-long v14, v143, v14

    move/from16 v112, v3

    move-wide/from16 v143, v14

    move/from16 v3, v68

    .end local v68    # "x3":I
    .local v3, "x3":I
    .local v112, "t7":I
    int-to-long v14, v3

    move-wide/from16 v145, v14

    move/from16 v14, v65

    move v15, v8

    move/from16 v65, v9

    .end local v8    # "x5":I
    .end local v9    # "x4":I
    .local v14, "y2":I
    .local v15, "x5":I
    .local v65, "x4":I
    int-to-long v8, v14

    mul-long v8, v8, v145

    add-long v8, v143, v8

    move-wide/from16 v143, v8

    move/from16 v68, v14

    move v9, v15

    move/from16 v8, v85

    .end local v14    # "y2":I
    .end local v15    # "x5":I
    .end local v85    # "x2":I
    .local v8, "x2":I
    .local v9, "x5":I
    .local v68, "y2":I
    int-to-long v14, v8

    move/from16 v85, v9

    move-wide/from16 v145, v14

    move/from16 v9, v40

    .end local v40    # "y3":I
    .local v9, "y3":I
    .local v85, "x5":I
    int-to-long v14, v9

    mul-long v14, v14, v145

    add-long v14, v143, v14

    move-wide/from16 v143, v14

    move/from16 v14, v35

    move v15, v8

    .end local v8    # "x2":I
    .end local v9    # "y3":I
    .end local v35    # "x1":I
    .local v14, "x1":I
    .local v15, "x2":I
    .restart local v40    # "y3":I
    int-to-long v8, v14

    move-wide/from16 v145, v8

    move v9, v15

    move/from16 v8, v41

    .end local v14    # "x1":I
    .end local v15    # "x2":I
    .end local v41    # "y4":I
    .local v8, "y4":I
    .local v9, "x2":I
    .restart local v35    # "x1":I
    int-to-long v14, v8

    mul-long v14, v14, v145

    add-long v14, v143, v14

    move/from16 v41, v9

    move-wide/from16 v143, v14

    move/from16 v9, v53

    .end local v53    # "x0":I
    .local v9, "x0":I
    .local v41, "x2":I
    int-to-long v14, v9

    move-wide/from16 v145, v14

    move/from16 v14, v33

    move v15, v8

    .end local v8    # "y4":I
    .end local v9    # "x0":I
    .end local v33    # "y5":I
    .local v14, "y5":I
    .local v15, "y4":I
    .restart local v53    # "x0":I
    int-to-long v8, v14

    mul-long v8, v8, v145

    add-long v8, v143, v8

    .line 645
    .local v8, "f5":J
    move-wide/from16 v143, v8

    move v9, v14

    move/from16 v33, v15

    move/from16 v8, v82

    .end local v14    # "y5":I
    .end local v15    # "y4":I
    .end local v82    # "x7":I
    .local v8, "x7":I
    .local v9, "y5":I
    .local v33, "y4":I
    .local v143, "f5":J
    int-to-long v14, v8

    move-wide/from16 v145, v14

    int-to-long v14, v7

    mul-long v14, v14, v145

    move/from16 v82, v9

    move-wide/from16 v145, v14

    move/from16 v9, v43

    .end local v43    # "x6":I
    .local v9, "x6":I
    .local v82, "y5":I
    int-to-long v14, v9

    move-wide/from16 v147, v14

    int-to-long v14, v13

    mul-long v14, v14, v147

    add-long v14, v145, v14

    .line 647
    .local v14, "f13":J
    move-wide/from16 v145, v14

    .end local v14    # "f13":J
    .local v145, "f13":J
    int-to-long v14, v1

    move/from16 v43, v7

    move-wide/from16 v147, v14

    move/from16 v14, v37

    move v15, v8

    .end local v7    # "y6":I
    .end local v8    # "x7":I
    .end local v37    # "v0":I
    .local v14, "v0":I
    .local v15, "x7":I
    .local v43, "y6":I
    int-to-long v7, v14

    mul-long v7, v7, v147

    move-wide/from16 v147, v7

    move v8, v15

    move/from16 v7, v56

    .end local v14    # "v0":I
    .end local v15    # "x7":I
    .end local v56    # "u4":I
    .local v7, "u4":I
    .restart local v8    # "x7":I
    .restart local v37    # "v0":I
    int-to-long v14, v7

    move/from16 v56, v8

    move-wide/from16 v149, v14

    move/from16 v8, v39

    .end local v39    # "v1":I
    .local v8, "v1":I
    .local v56, "x7":I
    int-to-long v14, v8

    mul-long v14, v14, v149

    add-long v14, v147, v14

    move-wide/from16 v147, v14

    int-to-long v14, v12

    move-wide/from16 v149, v14

    move/from16 v14, v45

    move v15, v7

    .end local v7    # "u4":I
    .end local v8    # "v1":I
    .end local v45    # "v2":I
    .local v14, "v2":I
    .local v15, "u4":I
    .restart local v39    # "v1":I
    int-to-long v7, v14

    mul-long v7, v7, v149

    add-long v7, v147, v7

    move-wide/from16 v147, v7

    move v8, v14

    move/from16 v7, v44

    move/from16 v44, v15

    .end local v14    # "v2":I
    .end local v15    # "u4":I
    .local v7, "u2":I
    .local v8, "v2":I
    .local v44, "u4":I
    int-to-long v14, v7

    move/from16 v45, v8

    move-wide/from16 v149, v14

    move/from16 v8, v46

    .end local v46    # "v3":I
    .local v8, "v3":I
    .restart local v45    # "v2":I
    int-to-long v14, v8

    mul-long v14, v14, v149

    add-long v14, v147, v14

    move-wide/from16 v147, v14

    move/from16 v14, v57

    move v15, v7

    .end local v7    # "u2":I
    .end local v8    # "v3":I
    .end local v57    # "u1":I
    .local v14, "u1":I
    .local v15, "u2":I
    .restart local v46    # "v3":I
    int-to-long v7, v14

    move-wide/from16 v149, v7

    move v8, v15

    move/from16 v7, v32

    move/from16 v32, v14

    .end local v14    # "u1":I
    .end local v15    # "u2":I
    .local v7, "v4":I
    .local v8, "u2":I
    .local v32, "u1":I
    int-to-long v14, v7

    mul-long v14, v14, v149

    add-long v14, v147, v14

    move/from16 v57, v8

    move-wide/from16 v147, v14

    move/from16 v8, v55

    .end local v55    # "u0":I
    .local v8, "u0":I
    .local v57, "u2":I
    int-to-long v14, v8

    move-wide/from16 v149, v14

    move/from16 v14, v36

    move v15, v7

    .end local v7    # "v4":I
    .end local v8    # "u0":I
    .end local v36    # "v5":I
    .local v14, "v5":I
    .local v15, "v4":I
    .restart local v55    # "u0":I
    int-to-long v7, v14

    mul-long v7, v7, v149

    add-long v7, v147, v7

    .line 653
    .local v7, "g5":J
    move-wide/from16 v147, v7

    move v8, v14

    move/from16 v36, v15

    move/from16 v7, v47

    .end local v14    # "v5":I
    .end local v15    # "v4":I
    .end local v47    # "u7":I
    .local v7, "u7":I
    .local v8, "v5":I
    .local v36, "v4":I
    .local v147, "g5":J
    int-to-long v14, v7

    move/from16 v47, v8

    move-wide/from16 v149, v14

    move/from16 v8, v58

    .end local v58    # "v6":I
    .local v8, "v6":I
    .local v47, "v5":I
    int-to-long v14, v8

    mul-long v14, v14, v149

    move-wide/from16 v149, v14

    move/from16 v14, v34

    move v15, v7

    move/from16 v34, v8

    .end local v7    # "u7":I
    .end local v8    # "v6":I
    .local v14, "u6":I
    .local v15, "u7":I
    .local v34, "v6":I
    int-to-long v7, v14

    move-wide/from16 v151, v7

    int-to-long v7, v5

    mul-long v7, v7, v151

    add-long v7, v149, v7

    .line 655
    .local v7, "g13":J
    move-wide/from16 v149, v7

    .end local v7    # "g13":J
    .local v149, "g13":J
    int-to-long v7, v4

    move-wide/from16 v151, v7

    move/from16 v7, v49

    move/from16 v49, v4

    move v8, v5

    .end local v4    # "s5":I
    .end local v5    # "v7":I
    .local v7, "t0":I
    .local v8, "v7":I
    .local v49, "s5":I
    int-to-long v4, v7

    mul-long v4, v4, v151

    move-wide/from16 v151, v4

    int-to-long v4, v10

    move-wide/from16 v153, v4

    move v5, v7

    move/from16 v58, v8

    move/from16 v4, v61

    .end local v7    # "t0":I
    .end local v8    # "v7":I
    .end local v61    # "t1":I
    .local v4, "t1":I
    .local v5, "t0":I
    .local v58, "v7":I
    int-to-long v7, v4

    mul-long v7, v7, v153

    add-long v7, v151, v7

    move/from16 v61, v5

    move-wide/from16 v151, v7

    move/from16 v5, v52

    .end local v52    # "s3":I
    .local v5, "s3":I
    .local v61, "t0":I
    int-to-long v7, v5

    move-wide/from16 v153, v7

    int-to-long v7, v6

    mul-long v7, v7, v153

    add-long v7, v151, v7

    move-wide/from16 v151, v7

    int-to-long v7, v0

    move-wide/from16 v153, v7

    move/from16 v7, v60

    move v8, v6

    .end local v5    # "s3":I
    .end local v6    # "t2":I
    .end local v60    # "t3":I
    .local v7, "t3":I
    .local v8, "t2":I
    .restart local v52    # "s3":I
    int-to-long v5, v7

    mul-long v5, v5, v153

    add-long v5, v151, v5

    move-wide/from16 v151, v5

    move/from16 v5, v59

    .end local v7    # "t3":I
    .end local v59    # "s1":I
    .local v5, "s1":I
    .restart local v60    # "t3":I
    int-to-long v6, v5

    move-wide/from16 v153, v6

    move/from16 v59, v8

    move/from16 v6, v50

    .end local v8    # "t2":I
    .end local v50    # "t4":I
    .local v6, "t4":I
    .local v59, "t2":I
    int-to-long v7, v6

    mul-long v7, v7, v153

    add-long v7, v151, v7

    move/from16 v50, v5

    move-wide/from16 v151, v7

    move/from16 v7, v63

    move v8, v6

    .end local v5    # "s1":I
    .end local v6    # "t4":I
    .end local v63    # "s0":I
    .local v7, "s0":I
    .local v8, "t4":I
    .local v50, "s1":I
    int-to-long v5, v7

    move-wide/from16 v153, v5

    move/from16 v5, v62

    .end local v7    # "s0":I
    .end local v62    # "t5":I
    .local v5, "t5":I
    .restart local v63    # "s0":I
    int-to-long v6, v5

    mul-long v6, v6, v153

    add-long v6, v151, v6

    .line 661
    .local v6, "h5":J
    move-wide/from16 v151, v6

    move/from16 v6, v51

    move/from16 v51, v8

    .end local v8    # "t4":I
    .local v6, "s7":I
    .local v51, "t4":I
    .local v151, "h5":J
    int-to-long v7, v6

    move-wide/from16 v153, v7

    move/from16 v7, v38

    move v8, v6

    .end local v5    # "t5":I
    .end local v6    # "s7":I
    .end local v38    # "t6":I
    .local v7, "t6":I
    .local v8, "s7":I
    .restart local v62    # "t5":I
    int-to-long v5, v7

    mul-long v5, v5, v153

    move-wide/from16 v153, v5

    move/from16 v5, v54

    .end local v7    # "t6":I
    .end local v54    # "s6":I
    .local v5, "s6":I
    .restart local v38    # "t6":I
    int-to-long v6, v5

    move-wide/from16 v155, v6

    move/from16 v54, v8

    move/from16 v6, v112

    .end local v8    # "s7":I
    .end local v112    # "t7":I
    .local v6, "t7":I
    .local v54, "s7":I
    int-to-long v7, v6

    mul-long v7, v7, v155

    add-long v7, v153, v7

    .line 664
    .local v7, "h13":J
    add-long v153, v143, v147

    add-long v153, v153, v7

    sub-long v153, v153, v145

    move-wide/from16 v155, v7

    .end local v7    # "h13":J
    .local v155, "h13":J
    add-long v7, v139, v153

    .line 665
    .end local v139    # "c":J
    .local v7, "c":J
    move/from16 v112, v15

    .end local v15    # "u7":I
    .local v112, "u7":I
    long-to-int v15, v7

    and-int v15, v15, v77

    .local v15, "z5":I
    ushr-long v7, v7, v78

    .line 666
    add-long v139, v149, v151

    sub-long v139, v139, v143

    add-long v139, v139, v155

    move-wide/from16 v153, v7

    .end local v7    # "c":J
    .local v153, "c":J
    add-long v7, v125, v139

    .line 667
    .end local v125    # "d":J
    .local v7, "d":J
    move/from16 v125, v15

    .end local v15    # "z5":I
    .local v125, "z5":I
    long-to-int v15, v7

    and-int v15, v15, v77

    .local v15, "z13":I
    ushr-long v7, v7, v78

    .line 669
    move-wide/from16 v139, v7

    .end local v7    # "d":J
    .local v139, "d":J
    int-to-long v7, v9

    move-wide/from16 v157, v7

    int-to-long v7, v2

    mul-long v7, v7, v157

    move-wide/from16 v157, v7

    move/from16 v7, v85

    move/from16 v85, v9

    .end local v9    # "x6":I
    .local v7, "x5":I
    .local v85, "x6":I
    int-to-long v8, v7

    move-wide/from16 v159, v8

    int-to-long v8, v11

    mul-long v8, v8, v159

    add-long v8, v157, v8

    move-wide/from16 v157, v8

    move/from16 v8, v65

    move v9, v6

    move/from16 v65, v7

    .end local v6    # "t7":I
    .end local v7    # "x5":I
    .local v8, "x4":I
    .local v9, "t7":I
    .local v65, "x5":I
    int-to-long v6, v8

    move-wide/from16 v159, v6

    move/from16 v6, v68

    move/from16 v68, v8

    .end local v8    # "x4":I
    .local v6, "y2":I
    .local v68, "x4":I
    int-to-long v7, v6

    mul-long v7, v7, v159

    add-long v7, v157, v7

    move-wide/from16 v157, v7

    int-to-long v7, v3

    move-wide/from16 v159, v7

    move/from16 v7, v40

    move/from16 v40, v9

    .end local v9    # "t7":I
    .local v7, "y3":I
    .local v40, "t7":I
    int-to-long v8, v7

    mul-long v8, v8, v159

    add-long v8, v157, v8

    move-wide/from16 v157, v8

    move/from16 v8, v41

    move v9, v6

    move/from16 v41, v7

    .end local v6    # "y2":I
    .end local v7    # "y3":I
    .local v8, "x2":I
    .local v9, "y2":I
    .local v41, "y3":I
    int-to-long v6, v8

    move-wide/from16 v159, v6

    move/from16 v6, v33

    move/from16 v33, v8

    .end local v8    # "x2":I
    .local v6, "y4":I
    .local v33, "x2":I
    int-to-long v7, v6

    mul-long v7, v7, v159

    add-long v7, v157, v7

    move-wide/from16 v157, v7

    move/from16 v7, v35

    move/from16 v35, v9

    .end local v9    # "y2":I
    .local v7, "x1":I
    .local v35, "y2":I
    int-to-long v8, v7

    move-wide/from16 v159, v8

    move/from16 v8, v82

    move v9, v6

    move/from16 v82, v7

    .end local v6    # "y4":I
    .end local v7    # "x1":I
    .local v8, "y5":I
    .local v9, "y4":I
    .local v82, "x1":I
    int-to-long v6, v8

    mul-long v6, v6, v159

    add-long v6, v157, v6

    move-wide/from16 v157, v6

    move/from16 v6, v53

    move/from16 v53, v8

    .end local v8    # "y5":I
    .local v6, "x0":I
    .local v53, "y5":I
    int-to-long v7, v6

    move-wide/from16 v159, v7

    move/from16 v7, v43

    move/from16 v43, v9

    .end local v9    # "y4":I
    .local v7, "y6":I
    .local v43, "y4":I
    int-to-long v8, v7

    mul-long v8, v8, v159

    add-long v8, v157, v8

    .line 676
    .local v8, "f6":J
    move-wide/from16 v157, v8

    move/from16 v8, v56

    move v9, v6

    move/from16 v56, v7

    .end local v6    # "x0":I
    .end local v7    # "y6":I
    .local v8, "x7":I
    .local v9, "x0":I
    .local v56, "y6":I
    .local v157, "f6":J
    int-to-long v6, v8

    move-wide/from16 v159, v6

    int-to-long v6, v13

    mul-long v6, v6, v159

    .line 677
    .local v6, "f14":J
    move-wide/from16 v159, v6

    .end local v6    # "f14":J
    .local v159, "f14":J
    int-to-long v6, v14

    move-wide/from16 v161, v6

    move v7, v15

    move/from16 v6, v37

    move/from16 v37, v14

    .end local v14    # "u6":I
    .end local v15    # "z13":I
    .local v6, "v0":I
    .local v7, "z13":I
    .local v37, "u6":I
    int-to-long v14, v6

    mul-long v14, v14, v161

    move-wide/from16 v161, v14

    int-to-long v14, v1

    move/from16 v126, v7

    move-wide/from16 v163, v14

    move/from16 v7, v39

    .end local v39    # "v1":I
    .local v7, "v1":I
    .local v126, "z13":I
    int-to-long v14, v7

    mul-long v14, v14, v163

    add-long v14, v161, v14

    move/from16 v39, v9

    move-wide/from16 v161, v14

    move/from16 v9, v44

    .end local v44    # "u4":I
    .local v9, "u4":I
    .local v39, "x0":I
    int-to-long v14, v9

    move/from16 v44, v7

    move-wide/from16 v163, v14

    move/from16 v14, v45

    move v15, v6

    .end local v6    # "v0":I
    .end local v7    # "v1":I
    .end local v45    # "v2":I
    .local v14, "v2":I
    .local v15, "v0":I
    .local v44, "v1":I
    int-to-long v6, v14

    mul-long v6, v6, v163

    add-long v6, v161, v6

    move-wide/from16 v161, v6

    int-to-long v6, v12

    move-wide/from16 v163, v6

    move v7, v15

    move/from16 v6, v46

    .end local v14    # "v2":I
    .end local v15    # "v0":I
    .end local v46    # "v3":I
    .local v6, "v3":I
    .local v7, "v0":I
    .restart local v45    # "v2":I
    int-to-long v14, v6

    mul-long v14, v14, v163

    add-long v14, v161, v14

    move/from16 v46, v7

    move-wide/from16 v161, v14

    move/from16 v7, v57

    .end local v57    # "u2":I
    .local v7, "u2":I
    .local v46, "v0":I
    int-to-long v14, v7

    move-wide/from16 v163, v14

    move/from16 v14, v36

    move v15, v6

    .end local v6    # "v3":I
    .end local v7    # "u2":I
    .end local v36    # "v4":I
    .local v14, "v4":I
    .local v15, "v3":I
    .restart local v57    # "u2":I
    int-to-long v6, v14

    mul-long v6, v6, v163

    add-long v6, v161, v6

    move-wide/from16 v161, v6

    move v7, v15

    move/from16 v6, v32

    move/from16 v32, v14

    .end local v14    # "v4":I
    .end local v15    # "v3":I
    .local v6, "u1":I
    .local v7, "v3":I
    .local v32, "v4":I
    int-to-long v14, v6

    move/from16 v36, v7

    move-wide/from16 v163, v14

    move/from16 v7, v47

    .end local v47    # "v5":I
    .local v7, "v5":I
    .local v36, "v3":I
    int-to-long v14, v7

    mul-long v14, v14, v163

    add-long v14, v161, v14

    move-wide/from16 v161, v14

    move/from16 v14, v55

    move v15, v6

    move/from16 v55, v7

    .end local v6    # "u1":I
    .end local v7    # "v5":I
    .local v14, "u0":I
    .local v15, "u1":I
    .local v55, "v5":I
    int-to-long v6, v14

    move-wide/from16 v163, v6

    move v7, v14

    move/from16 v6, v34

    move/from16 v34, v15

    .end local v14    # "u0":I
    .end local v15    # "u1":I
    .local v6, "v6":I
    .local v7, "u0":I
    .local v34, "u1":I
    int-to-long v14, v6

    mul-long v14, v14, v163

    add-long v14, v161, v14

    .line 684
    .local v14, "g6":J
    move/from16 v47, v7

    move-wide/from16 v161, v14

    move/from16 v7, v112

    .end local v14    # "g6":J
    .end local v112    # "u7":I
    .local v7, "u7":I
    .local v47, "u0":I
    .local v161, "g6":J
    int-to-long v14, v7

    move-wide/from16 v163, v14

    move/from16 v14, v58

    move/from16 v58, v6

    move v15, v7

    .end local v6    # "v6":I
    .end local v7    # "u7":I
    .local v14, "v7":I
    .local v15, "u7":I
    .local v58, "v6":I
    int-to-long v6, v14

    mul-long v6, v6, v163

    .line 685
    .local v6, "g14":J
    move-wide/from16 v163, v6

    .end local v6    # "g14":J
    .local v163, "g14":J
    int-to-long v6, v5

    move-wide/from16 v165, v6

    move v7, v14

    move/from16 v112, v15

    move/from16 v6, v61

    .end local v14    # "v7":I
    .end local v15    # "u7":I
    .end local v61    # "t0":I
    .local v6, "t0":I
    .local v7, "v7":I
    .restart local v112    # "u7":I
    int-to-long v14, v6

    mul-long v14, v14, v165

    move/from16 v61, v7

    move-wide/from16 v165, v14

    move/from16 v7, v49

    .end local v49    # "s5":I
    .local v7, "s5":I
    .local v61, "v7":I
    int-to-long v14, v7

    move-wide/from16 v167, v14

    int-to-long v14, v4

    mul-long v14, v14, v167

    add-long v14, v165, v14

    move-wide/from16 v165, v14

    int-to-long v14, v10

    move/from16 v49, v5

    move-wide/from16 v167, v14

    move/from16 v14, v59

    move v15, v4

    .end local v4    # "t1":I
    .end local v5    # "s6":I
    .end local v59    # "t2":I
    .local v14, "t2":I
    .local v15, "t1":I
    .local v49, "s6":I
    int-to-long v4, v14

    mul-long v4, v4, v167

    add-long v4, v165, v4

    move-wide/from16 v165, v4

    move/from16 v4, v52

    move/from16 v52, v15

    .end local v14    # "t2":I
    .end local v15    # "t1":I
    .local v4, "s3":I
    .local v52, "t1":I
    .restart local v59    # "t2":I
    int-to-long v14, v4

    move-wide/from16 v167, v14

    move/from16 v5, v60

    .end local v60    # "t3":I
    .local v5, "t3":I
    int-to-long v14, v5

    mul-long v14, v14, v167

    add-long v14, v165, v14

    move-wide/from16 v165, v14

    int-to-long v14, v0

    move-wide/from16 v167, v14

    move/from16 v14, v51

    move v15, v4

    .end local v4    # "s3":I
    .end local v5    # "t3":I
    .end local v51    # "t4":I
    .local v14, "t4":I
    .local v15, "s3":I
    .restart local v60    # "t3":I
    int-to-long v4, v14

    mul-long v4, v4, v167

    add-long v4, v165, v4

    move-wide/from16 v165, v4

    move v5, v15

    move/from16 v4, v50

    move/from16 v50, v14

    .end local v14    # "t4":I
    .end local v15    # "s3":I
    .local v4, "s1":I
    .local v5, "s3":I
    .local v50, "t4":I
    int-to-long v14, v4

    move/from16 v51, v5

    move-wide/from16 v167, v14

    move/from16 v5, v62

    .end local v62    # "t5":I
    .local v5, "t5":I
    .local v51, "s3":I
    int-to-long v14, v5

    mul-long v14, v14, v167

    add-long v14, v165, v14

    move-wide/from16 v165, v14

    move/from16 v14, v63

    move v15, v4

    .end local v4    # "s1":I
    .end local v5    # "t5":I
    .end local v63    # "s0":I
    .local v14, "s0":I
    .local v15, "s1":I
    .restart local v62    # "t5":I
    int-to-long v4, v14

    move-wide/from16 v167, v4

    move v5, v15

    move/from16 v4, v38

    .end local v14    # "s0":I
    .end local v15    # "s1":I
    .end local v38    # "t6":I
    .local v4, "t6":I
    .local v5, "s1":I
    .restart local v63    # "s0":I
    int-to-long v14, v4

    mul-long v14, v14, v167

    add-long v14, v165, v14

    .line 692
    .local v14, "h6":J
    move/from16 v38, v5

    move-wide/from16 v165, v14

    move/from16 v5, v54

    .end local v14    # "h6":J
    .end local v54    # "s7":I
    .local v5, "s7":I
    .local v38, "s1":I
    .local v165, "h6":J
    int-to-long v14, v5

    move/from16 v54, v7

    move-wide/from16 v167, v14

    move/from16 v14, v40

    move v15, v6

    .end local v6    # "t0":I
    .end local v7    # "s5":I
    .end local v40    # "t7":I
    .local v14, "t7":I
    .local v15, "t0":I
    .local v54, "s5":I
    int-to-long v6, v14

    mul-long v6, v6, v167

    .line 694
    .local v6, "h14":J
    add-long v167, v157, v161

    add-long v167, v167, v6

    sub-long v167, v167, v159

    move-wide/from16 v169, v6

    .end local v6    # "h14":J
    .local v169, "h14":J
    add-long v6, v153, v167

    .line 695
    .end local v153    # "c":J
    .local v6, "c":J
    move/from16 v40, v15

    .end local v15    # "t0":I
    .local v40, "t0":I
    long-to-int v15, v6

    and-int v15, v15, v77

    .local v15, "z6":I
    ushr-long v6, v6, v78

    .line 696
    add-long v153, v163, v165

    sub-long v153, v153, v157

    add-long v153, v153, v169

    move-wide/from16 v167, v6

    .end local v6    # "c":J
    .local v167, "c":J
    add-long v6, v139, v153

    .line 697
    .end local v139    # "d":J
    .local v6, "d":J
    move/from16 v139, v15

    .end local v15    # "z6":I
    .local v139, "z6":I
    long-to-int v15, v6

    and-int v15, v15, v77

    .local v15, "z14":I
    ushr-long v6, v6, v78

    .line 699
    move-wide/from16 v153, v6

    .end local v6    # "d":J
    .local v153, "d":J
    int-to-long v6, v8

    move-wide/from16 v171, v6

    int-to-long v6, v2

    mul-long v6, v6, v171

    move/from16 v140, v2

    move-wide/from16 v171, v6

    move/from16 v2, v85

    .end local v85    # "x6":I
    .local v2, "x6":I
    .local v140, "y0":I
    int-to-long v6, v2

    move-wide/from16 v173, v6

    int-to-long v6, v11

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    move/from16 v2, v65

    .end local v65    # "x5":I
    .local v2, "x5":I
    .restart local v85    # "x6":I
    int-to-long v6, v2

    move-wide/from16 v173, v6

    move/from16 v2, v35

    .end local v35    # "y2":I
    .local v2, "y2":I
    .restart local v65    # "x5":I
    int-to-long v6, v2

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    move/from16 v2, v68

    .end local v68    # "x4":I
    .local v2, "x4":I
    .restart local v35    # "y2":I
    int-to-long v6, v2

    move-wide/from16 v173, v6

    move/from16 v2, v41

    .end local v41    # "y3":I
    .local v2, "y3":I
    .restart local v68    # "x4":I
    int-to-long v6, v2

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    int-to-long v6, v3

    move-wide/from16 v173, v6

    move/from16 v2, v43

    .end local v43    # "y4":I
    .local v2, "y4":I
    .restart local v41    # "y3":I
    int-to-long v6, v2

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    move/from16 v2, v33

    .end local v33    # "x2":I
    .local v2, "x2":I
    .restart local v43    # "y4":I
    int-to-long v6, v2

    move-wide/from16 v173, v6

    move/from16 v2, v53

    .end local v53    # "y5":I
    .local v2, "y5":I
    .restart local v33    # "x2":I
    int-to-long v6, v2

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    move/from16 v2, v82

    .end local v82    # "x1":I
    .local v2, "x1":I
    .restart local v53    # "y5":I
    int-to-long v6, v2

    move-wide/from16 v173, v6

    move/from16 v2, v56

    .end local v56    # "y6":I
    .local v2, "y6":I
    .restart local v82    # "x1":I
    int-to-long v6, v2

    mul-long v6, v6, v173

    add-long v6, v171, v6

    move-wide/from16 v171, v6

    move/from16 v2, v39

    .end local v39    # "x0":I
    .local v2, "x0":I
    .restart local v56    # "y6":I
    int-to-long v6, v2

    move/from16 v173, v2

    move/from16 v39, v3

    .end local v2    # "x0":I
    .end local v3    # "x3":I
    .local v39, "x3":I
    .local v173, "x0":I
    int-to-long v2, v13

    mul-long v6, v6, v2

    add-long v6, v171, v6

    .line 707
    .local v6, "f7":J
    move-wide/from16 v171, v6

    move/from16 v2, v112

    .end local v6    # "f7":J
    .end local v112    # "u7":I
    .local v2, "u7":I
    .local v171, "f7":J
    int-to-long v6, v2

    move-wide/from16 v174, v6

    move/from16 v3, v46

    .end local v46    # "v0":I
    .local v3, "v0":I
    int-to-long v6, v3

    mul-long v6, v6, v174

    move-wide/from16 v174, v6

    move/from16 v2, v37

    .end local v37    # "u6":I
    .local v2, "u6":I
    .restart local v112    # "u7":I
    int-to-long v6, v2

    move-wide/from16 v176, v6

    move/from16 v2, v44

    .end local v44    # "v1":I
    .local v2, "v1":I
    .restart local v37    # "u6":I
    int-to-long v6, v2

    mul-long v6, v6, v176

    add-long v6, v174, v6

    .end local v2    # "v1":I
    .end local v3    # "v0":I
    .restart local v44    # "v1":I
    .restart local v46    # "v0":I
    int-to-long v2, v1

    move/from16 v174, v1

    move-wide/from16 v175, v2

    move/from16 v1, v45

    .end local v45    # "v2":I
    .local v1, "v2":I
    .local v174, "u5":I
    int-to-long v2, v1

    mul-long v2, v2, v175

    add-long/2addr v6, v2

    int-to-long v2, v9

    move-wide/from16 v175, v2

    move/from16 v1, v36

    .end local v36    # "v3":I
    .local v1, "v3":I
    .restart local v45    # "v2":I
    int-to-long v2, v1

    mul-long v2, v2, v175

    add-long/2addr v6, v2

    int-to-long v2, v12

    move-wide/from16 v175, v2

    move/from16 v1, v32

    .end local v32    # "v4":I
    .local v1, "v4":I
    .restart local v36    # "v3":I
    int-to-long v2, v1

    mul-long v2, v2, v175

    add-long/2addr v6, v2

    move-wide/from16 v175, v6

    move/from16 v2, v57

    .end local v57    # "u2":I
    .local v2, "u2":I
    int-to-long v6, v2

    move/from16 v3, v55

    .end local v1    # "v4":I
    .end local v2    # "u2":I
    .end local v55    # "v5":I
    .local v3, "v5":I
    .restart local v32    # "v4":I
    .restart local v57    # "u2":I
    int-to-long v1, v3

    mul-long v6, v6, v1

    add-long v6, v175, v6

    move-wide/from16 v175, v6

    move/from16 v2, v34

    .end local v34    # "u1":I
    .local v2, "u1":I
    int-to-long v6, v2

    move/from16 v1, v58

    .end local v2    # "u1":I
    .end local v3    # "v5":I
    .end local v58    # "v6":I
    .local v1, "v6":I
    .restart local v34    # "u1":I
    .restart local v55    # "v5":I
    int-to-long v2, v1

    mul-long v6, v6, v2

    add-long v6, v175, v6

    move-wide/from16 v175, v6

    move/from16 v2, v47

    .end local v47    # "u0":I
    .local v2, "u0":I
    int-to-long v6, v2

    move/from16 v47, v1

    move/from16 v58, v2

    move/from16 v3, v61

    .end local v1    # "v6":I
    .end local v2    # "u0":I
    .end local v61    # "v7":I
    .local v3, "v7":I
    .local v47, "v6":I
    .local v58, "u0":I
    int-to-long v1, v3

    mul-long v6, v6, v1

    add-long v6, v175, v6

    .line 715
    .local v6, "g7":J
    int-to-long v1, v5

    move-wide/from16 v175, v1

    move/from16 v1, v40

    .end local v3    # "v7":I
    .end local v40    # "t0":I
    .local v1, "t0":I
    .restart local v61    # "v7":I
    int-to-long v2, v1

    mul-long v2, v2, v175

    move-wide/from16 v175, v2

    move/from16 v1, v49

    .end local v49    # "s6":I
    .local v1, "s6":I
    .restart local v40    # "t0":I
    int-to-long v2, v1

    move-wide/from16 v177, v2

    move/from16 v1, v52

    .end local v52    # "t1":I
    .local v1, "t1":I
    .restart local v49    # "s6":I
    int-to-long v2, v1

    mul-long v2, v2, v177

    add-long v2, v175, v2

    move-wide/from16 v175, v2

    move/from16 v1, v54

    .end local v54    # "s5":I
    .local v1, "s5":I
    .restart local v52    # "t1":I
    int-to-long v2, v1

    move-wide/from16 v177, v2

    move/from16 v1, v59

    .end local v59    # "t2":I
    .local v1, "t2":I
    .restart local v54    # "s5":I
    int-to-long v2, v1

    mul-long v2, v2, v177

    add-long v2, v175, v2

    move-wide/from16 v175, v2

    .end local v1    # "t2":I
    .restart local v59    # "t2":I
    int-to-long v1, v10

    move-wide/from16 v177, v1

    move/from16 v3, v60

    .end local v60    # "t3":I
    .local v3, "t3":I
    int-to-long v1, v3

    mul-long v1, v1, v177

    add-long v1, v175, v1

    move-wide/from16 v175, v1

    move/from16 v1, v51

    .end local v3    # "t3":I
    .end local v51    # "s3":I
    .local v1, "s3":I
    .restart local v60    # "t3":I
    int-to-long v2, v1

    move-wide/from16 v177, v2

    move/from16 v1, v50

    .end local v50    # "t4":I
    .local v1, "t4":I
    .restart local v51    # "s3":I
    int-to-long v2, v1

    mul-long v2, v2, v177

    add-long v2, v175, v2

    move-wide/from16 v175, v2

    .end local v1    # "t4":I
    .restart local v50    # "t4":I
    int-to-long v1, v0

    move-wide/from16 v177, v1

    move/from16 v3, v62

    move/from16 v62, v0

    .end local v0    # "s2":I
    .local v3, "t5":I
    .local v62, "s2":I
    int-to-long v0, v3

    mul-long v1, v177, v0

    add-long v1, v175, v1

    move-wide/from16 v175, v1

    move/from16 v0, v38

    .end local v38    # "s1":I
    .local v0, "s1":I
    int-to-long v1, v0

    move-wide/from16 v177, v1

    .end local v0    # "s1":I
    .restart local v38    # "s1":I
    int-to-long v0, v4

    mul-long v1, v177, v0

    add-long v1, v175, v1

    move-wide/from16 v175, v1

    move/from16 v0, v63

    .end local v63    # "s0":I
    .local v0, "s0":I
    int-to-long v1, v0

    move-wide/from16 v177, v1

    .end local v0    # "s0":I
    .restart local v63    # "s0":I
    int-to-long v0, v14

    mul-long v1, v177, v0

    add-long v1, v175, v1

    .line 724
    .local v1, "h7":J
    add-long v175, v171, v6

    move-wide/from16 v177, v1

    .end local v1    # "h7":J
    .local v177, "h7":J
    add-long v0, v167, v175

    .line 725
    .end local v167    # "c":J
    .local v0, "c":J
    long-to-int v2, v0

    and-int v2, v2, v77

    .local v2, "z7":I
    ushr-long v0, v0, v78

    .line 726
    sub-long v167, v177, v171

    move-wide/from16 v175, v0

    .end local v0    # "c":J
    .local v175, "c":J
    add-long v0, v153, v167

    .line 727
    .end local v153    # "d":J
    .local v0, "d":J
    move/from16 v153, v2

    .end local v2    # "z7":I
    .local v153, "z7":I
    long-to-int v2, v0

    and-int v2, v2, v77

    .local v2, "z15":I
    ushr-long v0, v0, v78

    .line 729
    add-long v167, v175, v0

    .line 731
    .end local v175    # "c":J
    .restart local v167    # "c":J
    move-wide/from16 v175, v0

    move/from16 v0, v64

    move/from16 v64, v2

    .end local v2    # "z15":I
    .local v0, "z8":I
    .local v64, "z15":I
    .local v175, "d":J
    int-to-long v1, v0

    add-long v1, v167, v1

    .line 732
    .end local v167    # "c":J
    .local v1, "c":J
    move/from16 v154, v0

    .end local v0    # "z8":I
    .local v154, "z8":I
    long-to-int v0, v1

    and-int v0, v0, v77

    .end local v154    # "z8":I
    .restart local v0    # "z8":I
    ushr-long v1, v1, v78

    .line 733
    move/from16 v154, v0

    move/from16 v167, v3

    move/from16 v0, v81

    move/from16 v81, v4

    .end local v3    # "t5":I
    .end local v4    # "t6":I
    .local v0, "z0":I
    .local v81, "t6":I
    .restart local v154    # "z8":I
    .local v167, "t5":I
    int-to-long v3, v0

    add-long v3, v175, v3

    .line 734
    .end local v175    # "d":J
    .local v3, "d":J
    move/from16 v168, v0

    .end local v0    # "z0":I
    .local v168, "z0":I
    long-to-int v0, v3

    and-int v0, v0, v77

    .end local v168    # "z0":I
    .restart local v0    # "z0":I
    ushr-long v3, v3, v78

    .line 735
    move/from16 v77, v0

    .end local v0    # "z0":I
    .local v77, "z0":I
    long-to-int v0, v1

    add-int v0, v86, v0

    .line 736
    .end local v86    # "z9":I
    .local v0, "z9":I
    move/from16 v78, v0

    .end local v0    # "z9":I
    .local v78, "z9":I
    long-to-int v0, v3

    add-int v0, v83, v0

    .line 738
    .end local v83    # "z1":I
    .local v0, "z1":I
    aput v77, p2, v17

    .line 739
    aput v0, p2, v19

    .line 740
    aput v84, p2, v21

    .line 741
    aput v97, p2, v23

    .line 742
    aput v111, p2, v25

    .line 743
    aput v125, p2, v27

    .line 744
    aput v139, p2, v29

    .line 745
    aput v153, p2, v31

    .line 746
    aput v154, p2, v16

    .line 747
    aput v78, p2, v18

    .line 748
    aput v48, p2, v20

    .line 749
    aput v98, p2, v22

    .line 750
    aput v42, p2, v24

    .line 751
    aput v126, p2, v26

    .line 752
    aput v15, p2, v28

    .line 753
    aput v64, p2, v30

    .line 754
    return-void
.end method

.method public static negate([I[I)V
    .locals 1
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

    .line 758
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 759
    .local v0, "zero":[I
    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    .line 760
    return-void
.end method

.method public static normalize([I)V
    .locals 1
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 765
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    .line 766
    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    .line 768
    return-void
.end method

.method public static one([I)V
    .locals 3
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 772
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 773
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 775
    aput v1, p0, v0

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static powPm3d4([I[I)V
    .locals 13
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

    .line 784
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .local v0, "x2":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 785
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    .local v1, "x3":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 786
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    .local v2, "x6":[I
    const/4 v3, 0x3

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 787
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v4

    .local v4, "x9":[I
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v4, v4}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 788
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v3

    .local v3, "x18":[I
    const/16 v5, 0x9

    invoke-static {v4, v5, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v4, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 789
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v5

    .local v5, "x19":[I
    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v5, v5}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 790
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v6

    .local v6, "x37":[I
    const/16 v7, 0x12

    invoke-static {v5, v7, v6}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v3, v6, v6}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 791
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v7

    .local v7, "x74":[I
    const/16 v8, 0x25

    invoke-static {v6, v8, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v6, v7, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 792
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v9

    .local v9, "x111":[I
    invoke-static {v7, v8, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v6, v9, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 793
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v8

    .local v8, "x222":[I
    const/16 v10, 0x6f

    invoke-static {v9, v10, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v9, v8, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 794
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v10

    .local v10, "x223":[I
    invoke-static {v8, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v10, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 796
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v11

    .line 797
    .local v11, "t":[I
    const/16 v12, 0xdf

    invoke-static {v10, v12, v11}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    .line 798
    invoke-static {v11, v8, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 799
    return-void
.end method

.method private static reduce([II)V
    .locals 13
    .param p0, "z"    # [I
    .param p1, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "z",
            "x"
        }
    .end annotation

    .line 803
    const/16 v0, 0xf

    aget v1, p0, v0

    .local v1, "t":I
    const v2, 0xfffffff

    and-int v3, v1, v2

    .line 804
    .local v3, "z15":I
    ushr-int/lit8 v4, v1, 0x1c

    add-int/2addr v4, p1

    .line 806
    .end local v1    # "t":I
    .local v4, "t":I
    int-to-long v5, v4

    .line 807
    .local v5, "cc":J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v7, 0x8

    const-wide v8, 0xffffffffL

    const/16 v10, 0x1c

    if-ge v1, v7, :cond_0

    .line 809
    aget v7, p0, v1

    int-to-long v11, v7

    and-long/2addr v8, v11

    add-long/2addr v5, v8

    long-to-int v7, v5

    and-int/2addr v7, v2

    aput v7, p0, v1

    shr-long/2addr v5, v10

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 811
    .end local v1    # "i":I
    :cond_0
    int-to-long v11, v4

    add-long/2addr v5, v11

    .line 812
    const/16 v1, 0x8

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 814
    aget v7, p0, v1

    int-to-long v11, v7

    and-long/2addr v11, v8

    add-long/2addr v5, v11

    long-to-int v7, v5

    and-int/2addr v7, v2

    aput v7, p0, v1

    shr-long/2addr v5, v10

    .line 812
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 816
    .end local v1    # "i":I
    :cond_1
    long-to-int v1, v5

    add-int/2addr v1, v3

    aput v1, p0, v0

    .line 817
    return-void
.end method

.method public static sqr([II[I)V
    .locals 0
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I
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

    .line 1068
    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    .line 1070
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 1072
    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    goto :goto_0

    .line 1074
    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 178
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

    .line 821
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 822
    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 823
    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 824
    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 825
    .local v7, "x3":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 826
    .local v9, "x4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 827
    .local v11, "x5":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 828
    .local v13, "x6":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 830
    .local v15, "x7":I
    const/16 v16, 0x8

    const/16 v17, 0x0

    aget v0, p0, v16

    .line 831
    .local v0, "u0":I
    const/16 v18, 0x9

    const/16 v19, 0x1

    aget v2, p0, v18

    .line 832
    .local v2, "u1":I
    const/16 v20, 0xa

    const/16 v21, 0x2

    aget v4, p0, v20

    .line 833
    .local v4, "u2":I
    const/16 v22, 0xb

    const/16 v23, 0x3

    aget v6, p0, v22

    .line 834
    .local v6, "u3":I
    const/16 v24, 0xc

    const/16 v25, 0x4

    aget v8, p0, v24

    .line 835
    .local v8, "u4":I
    const/16 v26, 0xd

    const/16 v27, 0x5

    aget v10, p0, v26

    .line 836
    .local v10, "u5":I
    const/16 v28, 0xe

    const/16 v29, 0x6

    aget v12, p0, v28

    .line 837
    .local v12, "u6":I
    const/16 v30, 0xf

    const/16 v31, 0x7

    aget v14, p0, v30

    .line 839
    .local v14, "u7":I
    move/from16 v32, v6

    .end local v6    # "u3":I
    .local v32, "u3":I
    mul-int/lit8 v6, v1, 0x2

    .line 840
    .local v6, "x0_2":I
    move/from16 v33, v7

    .end local v7    # "x3":I
    .local v33, "x3":I
    mul-int/lit8 v7, v3, 0x2

    .line 841
    .local v7, "x1_2":I
    move/from16 v34, v4

    .end local v4    # "u2":I
    .local v34, "u2":I
    mul-int/lit8 v4, v5, 0x2

    .line 842
    .local v4, "x2_2":I
    move/from16 v35, v5

    .end local v5    # "x2":I
    .local v35, "x2":I
    mul-int/lit8 v5, v33, 0x2

    .line 843
    .local v5, "x3_2":I
    move/from16 v36, v2

    .end local v2    # "u1":I
    .local v36, "u1":I
    mul-int/lit8 v2, v9, 0x2

    .line 844
    .local v2, "x4_2":I
    move/from16 v37, v2

    .end local v2    # "x4_2":I
    .local v37, "x4_2":I
    mul-int/lit8 v2, v11, 0x2

    .line 845
    .local v2, "x5_2":I
    move/from16 v38, v2

    .end local v2    # "x5_2":I
    .local v38, "x5_2":I
    mul-int/lit8 v2, v13, 0x2

    .line 847
    .local v2, "x6_2":I
    move/from16 v39, v2

    .end local v2    # "x6_2":I
    .local v39, "x6_2":I
    mul-int/lit8 v2, v0, 0x2

    .line 848
    .local v2, "u0_2":I
    move/from16 v40, v2

    .end local v2    # "u0_2":I
    .local v40, "u0_2":I
    mul-int/lit8 v2, v36, 0x2

    .line 849
    .local v2, "u1_2":I
    move/from16 v41, v6

    .end local v6    # "x0_2":I
    .local v41, "x0_2":I
    mul-int/lit8 v6, v34, 0x2

    .line 850
    .local v6, "u2_2":I
    move/from16 v42, v3

    .end local v3    # "x1":I
    .local v42, "x1":I
    mul-int/lit8 v3, v32, 0x2

    .line 851
    .local v3, "u3_2":I
    move/from16 v43, v8

    .end local v8    # "u4":I
    .local v43, "u4":I
    mul-int/lit8 v8, v43, 0x2

    .line 852
    .local v8, "u4_2":I
    move/from16 v44, v8

    .end local v8    # "u4_2":I
    .local v44, "u4_2":I
    mul-int/lit8 v8, v10, 0x2

    .line 853
    .local v8, "u5_2":I
    move/from16 v45, v8

    .end local v8    # "u5_2":I
    .local v45, "u5_2":I
    mul-int/lit8 v8, v12, 0x2

    .line 855
    .local v8, "u6_2":I
    move/from16 v46, v8

    .end local v8    # "u6_2":I
    .local v46, "u6_2":I
    add-int v8, v1, v0

    .line 856
    .local v8, "s0":I
    move/from16 v47, v8

    .end local v8    # "s0":I
    .local v47, "s0":I
    add-int v8, v42, v36

    .line 857
    .local v8, "s1":I
    move/from16 v48, v8

    .end local v8    # "s1":I
    .local v48, "s1":I
    add-int v8, v35, v34

    .line 858
    .local v8, "s2":I
    move/from16 v49, v8

    .end local v8    # "s2":I
    .local v49, "s2":I
    add-int v8, v33, v32

    .line 859
    .local v8, "s3":I
    move/from16 v50, v8

    .end local v8    # "s3":I
    .local v50, "s3":I
    add-int v8, v9, v43

    .line 860
    .local v8, "s4":I
    move/from16 v51, v8

    .end local v8    # "s4":I
    .local v51, "s4":I
    add-int v8, v11, v10

    .line 861
    .local v8, "s5":I
    move/from16 v52, v8

    .end local v8    # "s5":I
    .local v52, "s5":I
    add-int v8, v13, v12

    .line 862
    .local v8, "s6":I
    move/from16 v53, v8

    .end local v8    # "s6":I
    .local v53, "s6":I
    add-int v8, v15, v14

    .line 870
    .local v8, "s7":I
    move/from16 v54, v8

    .end local v8    # "s7":I
    .local v54, "s7":I
    mul-int/lit8 v8, v47, 0x2

    .line 871
    .local v8, "s0_2":I
    move/from16 v55, v8

    .end local v8    # "s0_2":I
    .local v55, "s0_2":I
    mul-int/lit8 v8, v48, 0x2

    .line 872
    .local v8, "s1_2":I
    move/from16 v56, v8

    .end local v8    # "s1_2":I
    .local v56, "s1_2":I
    mul-int/lit8 v8, v49, 0x2

    .line 873
    .local v8, "s2_2":I
    move/from16 v57, v8

    .end local v8    # "s2_2":I
    .local v57, "s2_2":I
    mul-int/lit8 v8, v50, 0x2

    .line 874
    .local v8, "s3_2":I
    move/from16 v58, v8

    .end local v8    # "s3_2":I
    .local v58, "s3_2":I
    mul-int/lit8 v8, v51, 0x2

    .line 875
    .local v8, "s4_2":I
    move/from16 v59, v8

    .end local v8    # "s4_2":I
    .local v59, "s4_2":I
    mul-int/lit8 v8, v52, 0x2

    .line 876
    .local v8, "s5_2":I
    move/from16 v60, v8

    .end local v8    # "s5_2":I
    .local v60, "s5_2":I
    mul-int/lit8 v8, v53, 0x2

    .line 881
    .local v8, "s6_2":I
    move/from16 v61, v2

    move/from16 v62, v3

    .end local v2    # "u1_2":I
    .end local v3    # "u3_2":I
    .local v61, "u1_2":I
    .local v62, "u3_2":I
    int-to-long v2, v1

    move-wide/from16 v63, v2

    int-to-long v2, v1

    mul-long v2, v2, v63

    .line 882
    .local v2, "f0":J
    move/from16 v63, v1

    move-wide/from16 v64, v2

    .end local v1    # "x0":I
    .end local v2    # "f0":J
    .local v63, "x0":I
    .local v64, "f0":J
    int-to-long v1, v15

    move-wide/from16 v66, v1

    int-to-long v1, v7

    mul-long v1, v1, v66

    move-wide/from16 v66, v1

    int-to-long v1, v13

    move-wide/from16 v68, v1

    int-to-long v1, v4

    mul-long v1, v1, v68

    add-long v1, v66, v1

    move-wide/from16 v66, v1

    int-to-long v1, v11

    move-wide/from16 v68, v1

    int-to-long v1, v5

    mul-long v1, v1, v68

    add-long v1, v66, v1

    move-wide/from16 v66, v1

    int-to-long v1, v9

    move-wide/from16 v68, v1

    int-to-long v1, v9

    mul-long v1, v1, v68

    add-long v1, v66, v1

    .line 886
    .local v1, "f8":J
    move-wide/from16 v66, v1

    .end local v1    # "f8":J
    .local v66, "f8":J
    int-to-long v1, v0

    move-wide/from16 v68, v1

    int-to-long v1, v0

    mul-long v1, v1, v68

    .line 887
    .local v1, "g0":J
    move v3, v0

    move-wide/from16 v68, v1

    .end local v0    # "u0":I
    .end local v1    # "g0":J
    .local v3, "u0":I
    .local v68, "g0":J
    int-to-long v0, v14

    move-wide/from16 v70, v0

    move/from16 v2, v61

    .end local v61    # "u1_2":I
    .local v2, "u1_2":I
    int-to-long v0, v2

    mul-long v0, v0, v70

    move-wide/from16 v70, v0

    int-to-long v0, v12

    move-wide/from16 v72, v0

    int-to-long v0, v6

    mul-long v0, v0, v72

    add-long v0, v70, v0

    move-wide/from16 v70, v0

    int-to-long v0, v10

    move-wide/from16 v72, v0

    move/from16 v61, v8

    move v1, v9

    move/from16 v0, v62

    .end local v8    # "s6_2":I
    .end local v9    # "x4":I
    .end local v62    # "u3_2":I
    .local v0, "u3_2":I
    .local v1, "x4":I
    .local v61, "s6_2":I
    int-to-long v8, v0

    mul-long v8, v8, v72

    add-long v8, v70, v8

    move/from16 v62, v1

    move-wide/from16 v70, v8

    move/from16 v1, v43

    .end local v43    # "u4":I
    .local v1, "u4":I
    .local v62, "x4":I
    int-to-long v8, v1

    move-wide/from16 v72, v8

    int-to-long v8, v1

    mul-long v8, v8, v72

    add-long v8, v70, v8

    .line 891
    .local v8, "g8":J
    move/from16 v43, v3

    move-wide/from16 v70, v8

    move/from16 v3, v47

    .end local v8    # "g8":J
    .end local v47    # "s0":I
    .local v3, "s0":I
    .local v43, "u0":I
    .local v70, "g8":J
    int-to-long v8, v3

    move-wide/from16 v72, v8

    int-to-long v8, v3

    mul-long v8, v8, v72

    .line 892
    .local v8, "h0":J
    move-wide/from16 v72, v8

    move/from16 v3, v54

    .end local v8    # "h0":J
    .end local v54    # "s7":I
    .local v3, "s7":I
    .restart local v47    # "s0":I
    .local v72, "h0":J
    int-to-long v8, v3

    move/from16 v54, v1

    move-wide/from16 v74, v8

    move/from16 v8, v56

    move v9, v2

    .end local v1    # "u4":I
    .end local v2    # "u1_2":I
    .end local v56    # "s1_2":I
    .local v8, "s1_2":I
    .local v9, "u1_2":I
    .local v54, "u4":I
    int-to-long v1, v8

    const-wide v76, 0xffffffffL

    and-long v1, v1, v76

    mul-long v1, v1, v74

    move-wide/from16 v74, v1

    move v2, v9

    move/from16 v1, v53

    .end local v8    # "s1_2":I
    .end local v9    # "u1_2":I
    .end local v53    # "s6":I
    .local v1, "s6":I
    .restart local v2    # "u1_2":I
    .restart local v56    # "s1_2":I
    int-to-long v8, v1

    move/from16 v53, v2

    move-wide/from16 v78, v8

    move/from16 v2, v57

    .end local v57    # "s2_2":I
    .local v2, "s2_2":I
    .local v53, "u1_2":I
    int-to-long v8, v2

    and-long v8, v8, v76

    mul-long v8, v8, v78

    add-long v8, v74, v8

    move-wide/from16 v74, v8

    move/from16 v8, v52

    move v9, v1

    .end local v1    # "s6":I
    .end local v2    # "s2_2":I
    .end local v52    # "s5":I
    .local v8, "s5":I
    .local v9, "s6":I
    .restart local v57    # "s2_2":I
    int-to-long v1, v8

    move-wide/from16 v78, v1

    move v2, v7

    move/from16 v1, v58

    .end local v7    # "x1_2":I
    .end local v8    # "s5":I
    .end local v58    # "s3_2":I
    .local v1, "s3_2":I
    .local v2, "x1_2":I
    .restart local v52    # "s5":I
    int-to-long v7, v1

    and-long v7, v7, v76

    mul-long v7, v7, v78

    add-long v7, v74, v7

    move/from16 v58, v2

    move-wide/from16 v74, v7

    move/from16 v2, v51

    .end local v51    # "s4":I
    .local v2, "s4":I
    .local v58, "x1_2":I
    int-to-long v7, v2

    move-wide/from16 v78, v7

    int-to-long v7, v2

    mul-long v7, v7, v78

    add-long v7, v74, v7

    .line 897
    .local v7, "h8":J
    add-long v74, v64, v68

    add-long v74, v74, v7

    move-wide/from16 v78, v7

    .end local v7    # "h8":J
    .local v78, "h8":J
    sub-long v7, v74, v66

    .line 898
    .local v7, "c":J
    move/from16 v51, v9

    .end local v9    # "s6":I
    .local v51, "s6":I
    long-to-int v9, v7

    const v74, 0xfffffff

    and-int v9, v9, v74

    .local v9, "z0":I
    const/16 v75, 0x1c

    ushr-long v7, v7, v75

    .line 899
    add-long v80, v70, v72

    sub-long v80, v80, v64

    move-wide/from16 v82, v7

    .end local v7    # "c":J
    .local v82, "c":J
    add-long v7, v80, v78

    .line 900
    .local v7, "d":J
    move/from16 v80, v9

    .end local v9    # "z0":I
    .local v80, "z0":I
    long-to-int v9, v7

    and-int v9, v9, v74

    .local v9, "z8":I
    ushr-long v7, v7, v75

    .line 902
    move-wide/from16 v84, v7

    move/from16 v7, v42

    move/from16 v42, v9

    .end local v9    # "z8":I
    .local v7, "x1":I
    .local v42, "z8":I
    .local v84, "d":J
    int-to-long v8, v7

    move-wide/from16 v86, v8

    move/from16 v8, v41

    move v9, v1

    move/from16 v41, v2

    .end local v1    # "s3_2":I
    .end local v2    # "s4":I
    .local v8, "x0_2":I
    .local v9, "s3_2":I
    .local v41, "s4":I
    int-to-long v1, v8

    mul-long v1, v1, v86

    .line 903
    .local v1, "f1":J
    move-wide/from16 v86, v1

    .end local v1    # "f1":J
    .local v86, "f1":J
    int-to-long v1, v15

    move-wide/from16 v88, v1

    int-to-long v1, v4

    mul-long v1, v1, v88

    move-wide/from16 v88, v1

    int-to-long v1, v13

    move-wide/from16 v90, v1

    int-to-long v1, v5

    mul-long v1, v1, v90

    add-long v1, v88, v1

    move-wide/from16 v88, v1

    int-to-long v1, v11

    move-wide/from16 v90, v1

    move v2, v4

    move/from16 v1, v37

    move/from16 v37, v5

    .end local v4    # "x2_2":I
    .end local v5    # "x3_2":I
    .local v1, "x4_2":I
    .local v2, "x2_2":I
    .local v37, "x3_2":I
    int-to-long v4, v1

    mul-long v4, v4, v90

    add-long v4, v88, v4

    .line 906
    .local v4, "f9":J
    move/from16 v81, v2

    move-wide/from16 v88, v4

    move/from16 v2, v36

    .end local v4    # "f9":J
    .end local v36    # "u1":I
    .local v2, "u1":I
    .local v81, "x2_2":I
    .local v88, "f9":J
    int-to-long v4, v2

    move-wide/from16 v90, v4

    move/from16 v4, v40

    move v5, v1

    .end local v1    # "x4_2":I
    .end local v2    # "u1":I
    .end local v40    # "u0_2":I
    .local v4, "u0_2":I
    .local v5, "x4_2":I
    .restart local v36    # "u1":I
    int-to-long v1, v4

    mul-long v1, v1, v90

    .line 907
    .local v1, "g1":J
    move-wide/from16 v90, v1

    .end local v1    # "g1":J
    .local v90, "g1":J
    int-to-long v1, v14

    move-wide/from16 v92, v1

    int-to-long v1, v6

    mul-long v1, v1, v92

    move-wide/from16 v92, v1

    int-to-long v1, v12

    move-wide/from16 v94, v1

    int-to-long v1, v0

    mul-long v1, v1, v94

    add-long v1, v92, v1

    move-wide/from16 v92, v1

    int-to-long v1, v10

    move-wide/from16 v94, v1

    move/from16 v40, v5

    move v2, v6

    move/from16 v1, v44

    .end local v5    # "x4_2":I
    .end local v6    # "u2_2":I
    .end local v44    # "u4_2":I
    .local v1, "u4_2":I
    .local v2, "u2_2":I
    .local v40, "x4_2":I
    int-to-long v5, v1

    mul-long v5, v5, v94

    add-long v5, v92, v5

    .line 910
    .local v5, "g9":J
    move/from16 v44, v2

    move-wide/from16 v92, v5

    move/from16 v2, v48

    .end local v5    # "g9":J
    .end local v48    # "s1":I
    .local v2, "s1":I
    .local v44, "u2_2":I
    .local v92, "g9":J
    int-to-long v5, v2

    move-wide/from16 v94, v5

    move/from16 v48, v9

    move v6, v10

    move/from16 v5, v55

    .end local v9    # "s3_2":I
    .end local v10    # "u5":I
    .end local v55    # "s0_2":I
    .local v5, "s0_2":I
    .local v6, "u5":I
    .local v48, "s3_2":I
    int-to-long v9, v5

    and-long v9, v9, v76

    mul-long v9, v9, v94

    .line 911
    .local v9, "h1":J
    move-wide/from16 v94, v9

    .end local v9    # "h1":J
    .local v94, "h1":J
    int-to-long v9, v3

    move/from16 v55, v6

    move-wide/from16 v96, v9

    move/from16 v6, v57

    .end local v57    # "s2_2":I
    .local v6, "s2_2":I
    .local v55, "u5":I
    int-to-long v9, v6

    and-long v9, v9, v76

    mul-long v9, v9, v96

    move-wide/from16 v96, v9

    move/from16 v9, v51

    move/from16 v51, v2

    move v10, v3

    .end local v2    # "s1":I
    .end local v3    # "s7":I
    .local v9, "s6":I
    .local v10, "s7":I
    .local v51, "s1":I
    int-to-long v2, v9

    move-wide/from16 v98, v2

    move v3, v9

    move/from16 v2, v48

    move/from16 v48, v10

    .end local v9    # "s6":I
    .end local v10    # "s7":I
    .local v2, "s3_2":I
    .local v3, "s6":I
    .local v48, "s7":I
    int-to-long v9, v2

    and-long v9, v9, v76

    mul-long v9, v9, v98

    add-long v9, v96, v9

    move/from16 v57, v3

    move-wide/from16 v96, v9

    move/from16 v3, v52

    .end local v52    # "s5":I
    .local v3, "s5":I
    .local v57, "s6":I
    int-to-long v9, v3

    move-wide/from16 v98, v9

    move/from16 v9, v59

    move v10, v2

    .end local v2    # "s3_2":I
    .end local v3    # "s5":I
    .end local v59    # "s4_2":I
    .local v9, "s4_2":I
    .local v10, "s3_2":I
    .restart local v52    # "s5":I
    int-to-long v2, v9

    and-long v2, v2, v76

    mul-long v2, v2, v98

    add-long v2, v96, v2

    .line 915
    .local v2, "h9":J
    add-long v96, v86, v90

    add-long v96, v96, v2

    sub-long v96, v96, v88

    move-wide/from16 v98, v2

    .end local v2    # "h9":J
    .local v98, "h9":J
    add-long v2, v82, v96

    .line 916
    .end local v82    # "c":J
    .local v2, "c":J
    move/from16 v59, v10

    .end local v10    # "s3_2":I
    .local v59, "s3_2":I
    long-to-int v10, v2

    and-int v10, v10, v74

    .local v10, "z1":I
    ushr-long v2, v2, v75

    .line 917
    add-long v82, v92, v94

    sub-long v82, v82, v86

    add-long v82, v82, v98

    move-wide/from16 v96, v2

    .end local v2    # "c":J
    .local v96, "c":J
    add-long v2, v84, v82

    .line 918
    .end local v84    # "d":J
    .local v2, "d":J
    move/from16 v82, v10

    .end local v10    # "z1":I
    .local v82, "z1":I
    long-to-int v10, v2

    and-int v10, v10, v74

    .local v10, "z9":I
    ushr-long v2, v2, v75

    .line 920
    move-wide/from16 v83, v2

    move v3, v9

    move/from16 v2, v35

    move/from16 v35, v10

    .end local v9    # "s4_2":I
    .end local v10    # "z9":I
    .local v2, "x2":I
    .local v3, "s4_2":I
    .local v35, "z9":I
    .local v83, "d":J
    int-to-long v9, v2

    move-wide/from16 v100, v9

    int-to-long v9, v8

    mul-long v9, v9, v100

    move-wide/from16 v100, v9

    int-to-long v9, v7

    move-wide/from16 v102, v9

    int-to-long v9, v7

    mul-long v9, v9, v102

    add-long v9, v100, v9

    .line 922
    .local v9, "f2":J
    move-wide/from16 v100, v9

    .end local v9    # "f2":J
    .local v100, "f2":J
    int-to-long v9, v15

    move/from16 v85, v3

    move-wide/from16 v102, v9

    move/from16 v3, v37

    .end local v37    # "x3_2":I
    .local v3, "x3_2":I
    .local v85, "s4_2":I
    int-to-long v9, v3

    mul-long v9, v9, v102

    move-wide/from16 v102, v9

    int-to-long v9, v13

    move/from16 v37, v7

    move-wide/from16 v104, v9

    move/from16 v7, v40

    .end local v40    # "x4_2":I
    .local v7, "x4_2":I
    .local v37, "x1":I
    int-to-long v9, v7

    mul-long v9, v9, v104

    add-long v9, v102, v9

    move-wide/from16 v102, v9

    int-to-long v9, v11

    move-wide/from16 v104, v9

    int-to-long v9, v11

    mul-long v9, v9, v104

    add-long v9, v102, v9

    .line 925
    .local v9, "f10":J
    move-wide/from16 v102, v9

    move/from16 v9, v34

    move/from16 v34, v11

    .end local v11    # "x5":I
    .local v9, "u2":I
    .local v34, "x5":I
    .local v102, "f10":J
    int-to-long v10, v9

    move-wide/from16 v104, v10

    int-to-long v10, v4

    mul-long v10, v10, v104

    move/from16 v40, v4

    move-wide/from16 v104, v10

    move/from16 v10, v36

    move v11, v3

    .end local v3    # "x3_2":I
    .end local v4    # "u0_2":I
    .end local v36    # "u1":I
    .local v10, "u1":I
    .local v11, "x3_2":I
    .local v40, "u0_2":I
    int-to-long v3, v10

    move-wide/from16 v106, v3

    int-to-long v3, v10

    mul-long v3, v3, v106

    add-long v3, v104, v3

    .line 927
    .local v3, "g2":J
    move-wide/from16 v104, v3

    .end local v3    # "g2":J
    .local v104, "g2":J
    int-to-long v3, v14

    move-wide/from16 v106, v3

    int-to-long v3, v0

    mul-long v3, v3, v106

    move-wide/from16 v106, v3

    int-to-long v3, v12

    move-wide/from16 v108, v3

    int-to-long v3, v1

    mul-long v3, v3, v108

    add-long v3, v106, v3

    move-wide/from16 v106, v3

    move v4, v11

    move/from16 v3, v55

    .end local v10    # "u1":I
    .end local v11    # "x3_2":I
    .end local v55    # "u5":I
    .local v3, "u5":I
    .local v4, "x3_2":I
    .restart local v36    # "u1":I
    int-to-long v10, v3

    move-wide/from16 v108, v10

    int-to-long v10, v3

    mul-long v10, v10, v108

    add-long v10, v106, v10

    .line 930
    .local v10, "g10":J
    move/from16 v55, v4

    move-wide/from16 v106, v10

    move/from16 v4, v49

    .end local v10    # "g10":J
    .end local v49    # "s2":I
    .local v4, "s2":I
    .local v55, "x3_2":I
    .local v106, "g10":J
    int-to-long v10, v4

    move-wide/from16 v108, v10

    int-to-long v10, v5

    and-long v10, v10, v76

    mul-long v10, v10, v108

    move-wide/from16 v108, v10

    move/from16 v10, v51

    move v11, v3

    .end local v3    # "u5":I
    .end local v4    # "s2":I
    .end local v51    # "s1":I
    .local v10, "s1":I
    .local v11, "u5":I
    .restart local v49    # "s2":I
    int-to-long v3, v10

    move-wide/from16 v110, v3

    int-to-long v3, v10

    mul-long v3, v3, v110

    add-long v3, v108, v3

    .line 932
    .local v3, "h2":J
    move-wide/from16 v108, v3

    move v4, v11

    move/from16 v3, v48

    move/from16 v48, v10

    .end local v10    # "s1":I
    .end local v11    # "u5":I
    .local v3, "s7":I
    .local v4, "u5":I
    .local v48, "s1":I
    .local v108, "h2":J
    int-to-long v10, v3

    move/from16 v51, v4

    move-wide/from16 v110, v10

    move/from16 v4, v59

    .end local v59    # "s3_2":I
    .local v4, "s3_2":I
    .local v51, "u5":I
    int-to-long v10, v4

    and-long v10, v10, v76

    mul-long v10, v10, v110

    move-wide/from16 v110, v10

    move/from16 v10, v57

    move v11, v3

    .end local v3    # "s7":I
    .end local v4    # "s3_2":I
    .end local v57    # "s6":I
    .local v10, "s6":I
    .local v11, "s7":I
    .restart local v59    # "s3_2":I
    int-to-long v3, v10

    move-wide/from16 v112, v3

    move v4, v11

    move/from16 v3, v85

    .end local v10    # "s6":I
    .end local v11    # "s7":I
    .end local v85    # "s4_2":I
    .local v3, "s4_2":I
    .local v4, "s7":I
    .restart local v57    # "s6":I
    int-to-long v10, v3

    and-long v10, v10, v76

    mul-long v10, v10, v112

    add-long v10, v110, v10

    move/from16 v85, v4

    move-wide/from16 v110, v10

    move/from16 v4, v52

    .end local v52    # "s5":I
    .local v4, "s5":I
    .local v85, "s7":I
    int-to-long v10, v4

    move-wide/from16 v112, v10

    int-to-long v10, v4

    mul-long v10, v10, v112

    add-long v10, v110, v10

    .line 936
    .local v10, "h10":J
    add-long v110, v100, v104

    add-long v110, v110, v10

    sub-long v110, v110, v102

    move-wide/from16 v112, v10

    .end local v10    # "h10":J
    .local v112, "h10":J
    add-long v10, v96, v110

    .line 937
    .end local v96    # "c":J
    .local v10, "c":J
    move/from16 v52, v0

    .end local v0    # "u3_2":I
    .local v52, "u3_2":I
    long-to-int v0, v10

    and-int v0, v0, v74

    .local v0, "z2":I
    ushr-long v10, v10, v75

    .line 938
    add-long v96, v106, v108

    sub-long v96, v96, v100

    add-long v96, v96, v112

    move-wide/from16 v110, v10

    .end local v10    # "c":J
    .local v110, "c":J
    add-long v10, v83, v96

    .line 939
    .end local v83    # "d":J
    .local v10, "d":J
    move/from16 v83, v0

    .end local v0    # "z2":I
    .local v83, "z2":I
    long-to-int v0, v10

    and-int v0, v0, v74

    .local v0, "z10":I
    ushr-long v10, v10, v75

    .line 941
    move/from16 v84, v0

    move-wide/from16 v96, v10

    move/from16 v0, v33

    .end local v10    # "d":J
    .end local v33    # "x3":I
    .local v0, "x3":I
    .local v84, "z10":I
    .local v96, "d":J
    int-to-long v10, v0

    move-wide/from16 v114, v10

    int-to-long v10, v8

    mul-long v10, v10, v114

    move-wide/from16 v114, v10

    int-to-long v10, v2

    move/from16 v33, v3

    move-wide/from16 v116, v10

    move/from16 v10, v58

    move v11, v2

    .end local v2    # "x2":I
    .end local v3    # "s4_2":I
    .end local v58    # "x1_2":I
    .local v10, "x1_2":I
    .local v11, "x2":I
    .local v33, "s4_2":I
    int-to-long v2, v10

    mul-long v2, v2, v116

    add-long v2, v114, v2

    .line 943
    .local v2, "f3":J
    move-wide/from16 v114, v2

    .end local v2    # "f3":J
    .local v114, "f3":J
    int-to-long v2, v15

    move-wide/from16 v116, v2

    int-to-long v2, v7

    mul-long v2, v2, v116

    move-wide/from16 v116, v2

    int-to-long v2, v13

    move-wide/from16 v118, v2

    move v3, v6

    move/from16 v2, v38

    move/from16 v38, v7

    .end local v6    # "s2_2":I
    .end local v7    # "x4_2":I
    .local v2, "x5_2":I
    .local v3, "s2_2":I
    .local v38, "x4_2":I
    int-to-long v6, v2

    mul-long v6, v6, v118

    add-long v6, v116, v6

    .line 945
    .local v6, "f11":J
    move/from16 v58, v3

    move-wide/from16 v116, v6

    move/from16 v3, v32

    .end local v6    # "f11":J
    .end local v32    # "u3":I
    .local v3, "u3":I
    .local v58, "s2_2":I
    .local v116, "f11":J
    int-to-long v6, v3

    move-wide/from16 v118, v6

    move/from16 v6, v40

    move v7, v4

    .end local v3    # "u3":I
    .end local v4    # "s5":I
    .end local v40    # "u0_2":I
    .local v6, "u0_2":I
    .local v7, "s5":I
    .restart local v32    # "u3":I
    int-to-long v3, v6

    mul-long v3, v3, v118

    move-wide/from16 v118, v3

    int-to-long v3, v9

    move-wide/from16 v120, v3

    move v4, v7

    move/from16 v3, v53

    .end local v6    # "u0_2":I
    .end local v7    # "s5":I
    .end local v53    # "u1_2":I
    .local v3, "u1_2":I
    .restart local v4    # "s5":I
    .restart local v40    # "u0_2":I
    int-to-long v6, v3

    mul-long v6, v6, v120

    add-long v6, v118, v6

    .line 947
    .local v6, "g3":J
    move-wide/from16 v118, v6

    .end local v6    # "g3":J
    .local v118, "g3":J
    int-to-long v6, v14

    move-wide/from16 v120, v6

    int-to-long v6, v1

    mul-long v6, v6, v120

    move-wide/from16 v120, v6

    int-to-long v6, v12

    move/from16 v53, v1

    move-wide/from16 v122, v6

    move/from16 v1, v45

    .end local v45    # "u5_2":I
    .local v1, "u5_2":I
    .local v53, "u4_2":I
    int-to-long v6, v1

    mul-long v6, v6, v122

    add-long v6, v120, v6

    .line 949
    .local v6, "g11":J
    move/from16 v45, v4

    move-wide/from16 v120, v6

    move/from16 v4, v50

    .end local v6    # "g11":J
    .end local v50    # "s3":I
    .local v4, "s3":I
    .local v45, "s5":I
    .local v120, "g11":J
    int-to-long v6, v4

    move-wide/from16 v122, v6

    int-to-long v6, v5

    and-long v6, v6, v76

    mul-long v6, v6, v122

    move-wide/from16 v122, v6

    move/from16 v6, v49

    move v7, v5

    .end local v4    # "s3":I
    .end local v5    # "s0_2":I
    .end local v49    # "s2":I
    .local v6, "s2":I
    .local v7, "s0_2":I
    .restart local v50    # "s3":I
    int-to-long v4, v6

    move-wide/from16 v124, v4

    move/from16 v4, v56

    .end local v6    # "s2":I
    .end local v56    # "s1_2":I
    .local v4, "s1_2":I
    .restart local v49    # "s2":I
    int-to-long v5, v4

    and-long v5, v5, v76

    mul-long v5, v5, v124

    add-long v5, v122, v5

    .line 951
    .local v5, "h3":J
    move-wide/from16 v122, v5

    move/from16 v56, v7

    move/from16 v5, v85

    .end local v7    # "s0_2":I
    .end local v85    # "s7":I
    .local v5, "s7":I
    .local v56, "s0_2":I
    .local v122, "h3":J
    int-to-long v6, v5

    move-wide/from16 v124, v6

    move/from16 v6, v33

    move v7, v4

    .end local v4    # "s1_2":I
    .end local v5    # "s7":I
    .end local v33    # "s4_2":I
    .local v6, "s4_2":I
    .local v7, "s1_2":I
    .restart local v85    # "s7":I
    int-to-long v4, v6

    and-long v4, v4, v76

    mul-long v4, v4, v124

    move-wide/from16 v124, v4

    move/from16 v4, v57

    .end local v6    # "s4_2":I
    .end local v57    # "s6":I
    .local v4, "s6":I
    .restart local v33    # "s4_2":I
    int-to-long v5, v4

    move-wide/from16 v126, v5

    move/from16 v57, v7

    move/from16 v5, v60

    .end local v7    # "s1_2":I
    .end local v60    # "s5_2":I
    .local v5, "s5_2":I
    .local v57, "s1_2":I
    int-to-long v6, v5

    and-long v6, v6, v76

    mul-long v6, v6, v126

    add-long v6, v124, v6

    .line 954
    .local v6, "h11":J
    add-long v124, v114, v118

    add-long v124, v124, v6

    sub-long v124, v124, v116

    move-wide/from16 v126, v6

    .end local v6    # "h11":J
    .local v126, "h11":J
    add-long v6, v110, v124

    .line 955
    .end local v110    # "c":J
    .local v6, "c":J
    move/from16 v60, v11

    .end local v11    # "x2":I
    .local v60, "x2":I
    long-to-int v11, v6

    and-int v11, v11, v74

    .local v11, "z3":I
    ushr-long v6, v6, v75

    .line 956
    add-long v110, v120, v122

    sub-long v110, v110, v114

    add-long v110, v110, v126

    move-wide/from16 v124, v6

    .end local v6    # "c":J
    .local v124, "c":J
    add-long v6, v96, v110

    .line 957
    .end local v96    # "d":J
    .local v6, "d":J
    move/from16 v96, v11

    .end local v11    # "z3":I
    .local v96, "z3":I
    long-to-int v11, v6

    and-int v11, v11, v74

    .local v11, "z11":I
    ushr-long v6, v6, v75

    .line 959
    move-wide/from16 v110, v6

    move/from16 v6, v62

    move v7, v4

    move/from16 v62, v5

    .end local v4    # "s6":I
    .end local v5    # "s5_2":I
    .local v6, "x4":I
    .local v7, "s6":I
    .local v62, "s5_2":I
    .local v110, "d":J
    int-to-long v4, v6

    move-wide/from16 v128, v4

    int-to-long v4, v8

    mul-long v4, v4, v128

    move-wide/from16 v128, v4

    int-to-long v4, v0

    move-wide/from16 v130, v4

    int-to-long v4, v10

    mul-long v4, v4, v130

    add-long v4, v128, v4

    move-wide/from16 v128, v4

    move v5, v10

    move/from16 v4, v60

    move/from16 v60, v11

    .end local v10    # "x1_2":I
    .end local v11    # "z11":I
    .local v4, "x2":I
    .local v5, "x1_2":I
    .local v60, "z11":I
    int-to-long v10, v4

    move-wide/from16 v130, v10

    int-to-long v10, v4

    mul-long v10, v10, v130

    add-long v10, v128, v10

    .line 962
    .local v10, "f4":J
    move/from16 v97, v4

    move/from16 v128, v5

    .end local v4    # "x2":I
    .end local v5    # "x1_2":I
    .local v97, "x2":I
    .local v128, "x1_2":I
    int-to-long v4, v15

    move-wide/from16 v129, v4

    int-to-long v4, v2

    mul-long v4, v4, v129

    move-wide/from16 v129, v4

    int-to-long v4, v13

    move-wide/from16 v131, v4

    int-to-long v4, v13

    mul-long v4, v4, v131

    add-long v4, v129, v4

    .line 964
    .local v4, "f12":J
    move/from16 v129, v2

    move-wide/from16 v130, v4

    move/from16 v2, v54

    .end local v4    # "f12":J
    .end local v54    # "u4":I
    .local v2, "u4":I
    .local v129, "x5_2":I
    .local v130, "f12":J
    int-to-long v4, v2

    move-wide/from16 v132, v4

    move-wide/from16 v134, v10

    move/from16 v4, v40

    .end local v10    # "f4":J
    .end local v40    # "u0_2":I
    .local v4, "u0_2":I
    .local v134, "f4":J
    int-to-long v10, v4

    mul-long v10, v10, v132

    move-wide/from16 v132, v10

    move/from16 v5, v32

    .end local v32    # "u3":I
    .local v5, "u3":I
    int-to-long v10, v5

    move-wide/from16 v136, v10

    int-to-long v10, v3

    mul-long v10, v10, v136

    add-long v10, v132, v10

    move-wide/from16 v132, v10

    int-to-long v10, v9

    move-wide/from16 v136, v10

    int-to-long v10, v9

    mul-long v10, v10, v136

    add-long v10, v132, v10

    .line 967
    .local v10, "g4":J
    move/from16 v32, v9

    move-wide/from16 v132, v10

    .end local v9    # "u2":I
    .end local v10    # "g4":J
    .local v32, "u2":I
    .local v132, "g4":J
    int-to-long v9, v14

    move-wide/from16 v136, v9

    int-to-long v9, v1

    mul-long v9, v9, v136

    move-wide/from16 v136, v9

    int-to-long v9, v12

    move-wide/from16 v138, v9

    int-to-long v9, v12

    mul-long v9, v9, v138

    add-long v9, v136, v9

    .line 969
    .local v9, "g12":J
    move/from16 v11, v41

    move-wide/from16 v40, v9

    .end local v9    # "g12":J
    .end local v41    # "s4":I
    .local v11, "s4":I
    .local v40, "g12":J
    int-to-long v9, v11

    move/from16 v54, v1

    move-wide/from16 v136, v9

    move/from16 v1, v56

    .end local v56    # "s0_2":I
    .local v1, "s0_2":I
    .local v54, "u5_2":I
    int-to-long v9, v1

    and-long v9, v9, v76

    mul-long v9, v9, v136

    move/from16 v56, v7

    move-wide/from16 v136, v9

    move/from16 v7, v50

    .end local v50    # "s3":I
    .local v7, "s3":I
    .local v56, "s6":I
    int-to-long v9, v7

    move-wide/from16 v138, v9

    move/from16 v50, v12

    move v10, v13

    move/from16 v9, v57

    .end local v12    # "u6":I
    .end local v13    # "x6":I
    .end local v57    # "s1_2":I
    .local v9, "s1_2":I
    .local v10, "x6":I
    .local v50, "u6":I
    int-to-long v12, v9

    and-long v12, v12, v76

    mul-long v12, v12, v138

    add-long v12, v136, v12

    move/from16 v57, v10

    move-wide/from16 v136, v12

    move/from16 v10, v49

    .end local v49    # "s2":I
    .local v10, "s2":I
    .local v57, "x6":I
    int-to-long v12, v10

    move-wide/from16 v138, v12

    int-to-long v12, v10

    mul-long v12, v12, v138

    add-long v12, v136, v12

    .line 972
    .local v12, "h4":J
    move-wide/from16 v136, v12

    move/from16 v10, v85

    .end local v12    # "h4":J
    .end local v85    # "s7":I
    .local v10, "s7":I
    .restart local v49    # "s2":I
    .local v136, "h4":J
    int-to-long v12, v10

    move-wide/from16 v138, v12

    move/from16 v12, v62

    move v13, v9

    .end local v9    # "s1_2":I
    .end local v10    # "s7":I
    .end local v62    # "s5_2":I
    .local v12, "s5_2":I
    .local v13, "s1_2":I
    .restart local v85    # "s7":I
    int-to-long v9, v12

    and-long v9, v9, v76

    mul-long v9, v9, v138

    move-wide/from16 v138, v9

    move/from16 v9, v56

    move/from16 v56, v13

    .end local v12    # "s5_2":I
    .end local v13    # "s1_2":I
    .local v9, "s6":I
    .local v56, "s1_2":I
    .restart local v62    # "s5_2":I
    int-to-long v12, v9

    move-wide/from16 v140, v12

    int-to-long v12, v9

    mul-long v12, v12, v140

    add-long v12, v138, v12

    .line 975
    .local v12, "h12":J
    add-long v138, v134, v132

    add-long v138, v138, v12

    sub-long v138, v138, v130

    move-wide/from16 v140, v12

    .end local v12    # "h12":J
    .local v140, "h12":J
    add-long v12, v124, v138

    .line 976
    .end local v124    # "c":J
    .local v12, "c":J
    long-to-int v10, v12

    and-int v10, v10, v74

    .local v10, "z4":I
    ushr-long v12, v12, v75

    .line 977
    add-long v124, v40, v136

    sub-long v124, v124, v134

    add-long v124, v124, v140

    move-wide/from16 v138, v12

    .end local v12    # "c":J
    .local v138, "c":J
    add-long v12, v110, v124

    .line 978
    .end local v110    # "d":J
    .local v12, "d":J
    move/from16 v110, v10

    .end local v10    # "z4":I
    .local v110, "z4":I
    long-to-int v10, v12

    and-int v10, v10, v74

    .local v10, "z12":I
    ushr-long v12, v12, v75

    .line 980
    move/from16 v111, v10

    move-wide/from16 v124, v12

    move/from16 v10, v34

    .end local v12    # "d":J
    .end local v34    # "x5":I
    .local v10, "x5":I
    .local v111, "z12":I
    .local v124, "d":J
    int-to-long v12, v10

    move-wide/from16 v142, v12

    int-to-long v12, v8

    mul-long v12, v12, v142

    move-wide/from16 v142, v12

    int-to-long v12, v6

    move-wide/from16 v144, v12

    move/from16 v12, v128

    move v13, v9

    .end local v9    # "s6":I
    .end local v10    # "x5":I
    .end local v128    # "x1_2":I
    .local v12, "x1_2":I
    .local v13, "s6":I
    .restart local v34    # "x5":I
    int-to-long v9, v12

    mul-long v9, v9, v144

    add-long v9, v142, v9

    move-wide/from16 v142, v9

    int-to-long v9, v0

    move-wide/from16 v144, v9

    move v10, v12

    move/from16 v9, v81

    move/from16 v81, v13

    .end local v12    # "x1_2":I
    .end local v13    # "s6":I
    .local v9, "x2_2":I
    .local v10, "x1_2":I
    .local v81, "s6":I
    int-to-long v12, v9

    mul-long v12, v12, v144

    add-long v12, v142, v12

    .line 983
    .local v12, "f5":J
    move-wide/from16 v142, v12

    .end local v12    # "f5":J
    .local v142, "f5":J
    int-to-long v12, v15

    move/from16 v128, v10

    move-wide/from16 v144, v12

    move/from16 v10, v39

    .end local v39    # "x6_2":I
    .local v10, "x6_2":I
    .restart local v128    # "x1_2":I
    int-to-long v12, v10

    mul-long v12, v12, v144

    .line 984
    .local v12, "f13":J
    move-wide/from16 v144, v12

    move/from16 v10, v51

    .end local v12    # "f13":J
    .end local v51    # "u5":I
    .local v10, "u5":I
    .restart local v39    # "x6_2":I
    .local v144, "f13":J
    int-to-long v12, v10

    move-wide/from16 v146, v12

    int-to-long v12, v4

    mul-long v12, v12, v146

    move-wide/from16 v146, v12

    int-to-long v12, v2

    move-wide/from16 v148, v12

    int-to-long v12, v3

    mul-long v12, v12, v148

    add-long v12, v146, v12

    move-wide/from16 v146, v12

    int-to-long v12, v5

    move-wide/from16 v148, v12

    move/from16 v12, v44

    move/from16 v44, v2

    move v13, v3

    .end local v2    # "u4":I
    .end local v3    # "u1_2":I
    .local v12, "u2_2":I
    .local v13, "u1_2":I
    .local v44, "u4":I
    int-to-long v2, v12

    mul-long v2, v2, v148

    add-long v2, v146, v2

    .line 987
    .local v2, "g5":J
    move-wide/from16 v146, v2

    .end local v2    # "g5":J
    .local v146, "g5":J
    int-to-long v2, v14

    move-wide/from16 v148, v2

    move v3, v14

    move/from16 v2, v46

    move/from16 v46, v13

    .end local v13    # "u1_2":I
    .end local v14    # "u7":I
    .local v2, "u6_2":I
    .local v3, "u7":I
    .local v46, "u1_2":I
    int-to-long v13, v2

    mul-long v13, v13, v148

    .line 988
    .local v13, "g13":J
    move/from16 v51, v2

    move-wide/from16 v148, v13

    move/from16 v2, v45

    .end local v13    # "g13":J
    .end local v45    # "s5":I
    .local v2, "s5":I
    .local v51, "u6_2":I
    .local v148, "g13":J
    int-to-long v13, v2

    move-wide/from16 v150, v13

    int-to-long v13, v1

    and-long v13, v13, v76

    mul-long v13, v13, v150

    move-wide/from16 v150, v13

    int-to-long v13, v11

    move/from16 v45, v3

    move-wide/from16 v152, v13

    move/from16 v3, v56

    .end local v56    # "s1_2":I
    .local v3, "s1_2":I
    .local v45, "u7":I
    int-to-long v13, v3

    and-long v13, v13, v76

    mul-long v13, v13, v152

    add-long v13, v150, v13

    move-wide/from16 v150, v13

    int-to-long v13, v7

    move-wide/from16 v152, v13

    move/from16 v13, v58

    move v14, v2

    .end local v2    # "s5":I
    .end local v3    # "s1_2":I
    .end local v58    # "s2_2":I
    .local v13, "s2_2":I
    .local v14, "s5":I
    .restart local v56    # "s1_2":I
    int-to-long v2, v13

    and-long v2, v2, v76

    mul-long v2, v2, v152

    add-long v2, v150, v2

    .line 991
    .local v2, "h5":J
    move-wide/from16 v150, v2

    move v3, v13

    move/from16 v58, v14

    move/from16 v2, v85

    .end local v13    # "s2_2":I
    .end local v14    # "s5":I
    .end local v85    # "s7":I
    .local v2, "s7":I
    .local v3, "s2_2":I
    .local v58, "s5":I
    .local v150, "h5":J
    int-to-long v13, v2

    move/from16 v85, v3

    move-wide/from16 v152, v13

    move/from16 v3, v61

    .end local v61    # "s6_2":I
    .local v3, "s6_2":I
    .local v85, "s2_2":I
    int-to-long v13, v3

    and-long v13, v13, v76

    mul-long v13, v13, v152

    .line 993
    .local v13, "h13":J
    add-long v152, v142, v146

    add-long v152, v152, v13

    sub-long v152, v152, v144

    move-wide/from16 v154, v13

    .end local v13    # "h13":J
    .local v154, "h13":J
    add-long v13, v138, v152

    .line 994
    .end local v138    # "c":J
    .local v13, "c":J
    nop

    .end local v3    # "s6_2":I
    .restart local v61    # "s6_2":I
    long-to-int v3, v13

    and-int v3, v3, v74

    .local v3, "z5":I
    ushr-long v13, v13, v75

    .line 995
    add-long v138, v148, v150

    sub-long v138, v138, v142

    add-long v138, v138, v154

    move-wide/from16 v152, v13

    .end local v13    # "c":J
    .local v152, "c":J
    add-long v13, v124, v138

    .line 996
    .end local v124    # "d":J
    .local v13, "d":J
    move/from16 v124, v3

    .end local v3    # "z5":I
    .local v124, "z5":I
    long-to-int v3, v13

    and-int v3, v3, v74

    .local v3, "z13":I
    ushr-long v13, v13, v75

    .line 998
    move/from16 v125, v3

    move-wide/from16 v138, v13

    move/from16 v3, v57

    .end local v13    # "d":J
    .end local v57    # "x6":I
    .local v3, "x6":I
    .local v125, "z13":I
    .local v138, "d":J
    int-to-long v13, v3

    move-wide/from16 v156, v13

    int-to-long v13, v8

    mul-long v13, v13, v156

    move-wide/from16 v156, v13

    move/from16 v13, v34

    move v14, v2

    .end local v2    # "s7":I
    .end local v3    # "x6":I
    .end local v34    # "x5":I
    .local v13, "x5":I
    .local v14, "s7":I
    .restart local v57    # "x6":I
    int-to-long v2, v13

    move-wide/from16 v158, v2

    move v3, v14

    move/from16 v2, v128

    .end local v13    # "x5":I
    .end local v14    # "s7":I
    .end local v128    # "x1_2":I
    .local v2, "x1_2":I
    .local v3, "s7":I
    .restart local v34    # "x5":I
    int-to-long v13, v2

    mul-long v13, v13, v158

    add-long v13, v156, v13

    move-wide/from16 v156, v13

    int-to-long v13, v6

    move-wide/from16 v158, v13

    int-to-long v13, v9

    mul-long v13, v13, v158

    add-long v13, v156, v13

    move-wide/from16 v156, v13

    int-to-long v13, v0

    move-wide/from16 v158, v13

    int-to-long v13, v0

    mul-long v13, v13, v158

    add-long v13, v156, v13

    .line 1002
    .local v13, "f6":J
    move-wide/from16 v156, v13

    .end local v13    # "f6":J
    .local v156, "f6":J
    int-to-long v13, v15

    move-wide/from16 v158, v13

    int-to-long v13, v15

    mul-long v13, v13, v158

    .line 1003
    .local v13, "f14":J
    move/from16 v128, v0

    move-wide/from16 v158, v13

    move/from16 v0, v50

    .end local v13    # "f14":J
    .end local v50    # "u6":I
    .local v0, "u6":I
    .local v128, "x3":I
    .local v158, "f14":J
    int-to-long v13, v0

    move-wide/from16 v160, v13

    int-to-long v13, v4

    mul-long v13, v13, v160

    move-wide/from16 v160, v13

    int-to-long v13, v10

    move/from16 v50, v3

    move-wide/from16 v162, v13

    move/from16 v3, v46

    .end local v46    # "u1_2":I
    .local v3, "u1_2":I
    .local v50, "s7":I
    int-to-long v13, v3

    mul-long v13, v13, v162

    add-long v13, v160, v13

    move-wide/from16 v160, v13

    move/from16 v13, v44

    move v14, v4

    .end local v3    # "u1_2":I
    .end local v4    # "u0_2":I
    .end local v44    # "u4":I
    .local v13, "u4":I
    .local v14, "u0_2":I
    .restart local v46    # "u1_2":I
    int-to-long v3, v13

    move-wide/from16 v162, v3

    int-to-long v3, v12

    mul-long v3, v3, v162

    add-long v3, v160, v3

    move-wide/from16 v160, v3

    int-to-long v3, v5

    move-wide/from16 v162, v3

    int-to-long v3, v5

    mul-long v3, v3, v162

    add-long v3, v160, v3

    .line 1007
    .local v3, "g6":J
    move-wide/from16 v160, v3

    move/from16 v44, v5

    move/from16 v3, v45

    .end local v5    # "u3":I
    .end local v45    # "u7":I
    .local v3, "u7":I
    .local v44, "u3":I
    .local v160, "g6":J
    int-to-long v4, v3

    move-wide/from16 v162, v4

    int-to-long v4, v3

    mul-long v4, v4, v162

    .line 1008
    .local v4, "g14":J
    move-wide/from16 v162, v4

    move v5, v13

    move/from16 v45, v14

    move/from16 v4, v81

    .end local v13    # "u4":I
    .end local v14    # "u0_2":I
    .end local v81    # "s6":I
    .local v4, "s6":I
    .local v5, "u4":I
    .local v45, "u0_2":I
    .local v162, "g14":J
    int-to-long v13, v4

    move-wide/from16 v164, v13

    int-to-long v13, v1

    and-long v13, v13, v76

    mul-long v13, v13, v164

    move/from16 v81, v5

    move-wide/from16 v164, v13

    move/from16 v5, v58

    .end local v58    # "s5":I
    .local v5, "s5":I
    .local v81, "u4":I
    int-to-long v13, v5

    move-wide/from16 v166, v13

    move/from16 v13, v56

    move/from16 v56, v4

    move v14, v5

    .end local v4    # "s6":I
    .end local v5    # "s5":I
    .local v13, "s1_2":I
    .local v14, "s5":I
    .local v56, "s6":I
    int-to-long v4, v13

    and-long v4, v4, v76

    mul-long v4, v4, v166

    add-long v4, v164, v4

    move-wide/from16 v164, v4

    int-to-long v4, v11

    move-wide/from16 v166, v4

    move v5, v13

    move/from16 v58, v14

    move/from16 v4, v85

    .end local v13    # "s1_2":I
    .end local v14    # "s5":I
    .end local v85    # "s2_2":I
    .local v4, "s2_2":I
    .local v5, "s1_2":I
    .restart local v58    # "s5":I
    int-to-long v13, v4

    and-long v13, v13, v76

    mul-long v13, v13, v166

    add-long v13, v164, v13

    move-wide/from16 v164, v13

    int-to-long v13, v7

    move-wide/from16 v166, v13

    int-to-long v13, v7

    mul-long v13, v13, v166

    add-long v13, v164, v13

    .line 1012
    .local v13, "h6":J
    move/from16 v85, v5

    move-wide/from16 v164, v13

    move/from16 v5, v50

    .end local v13    # "h6":J
    .end local v50    # "s7":I
    .local v5, "s7":I
    .local v85, "s1_2":I
    .local v164, "h6":J
    int-to-long v13, v5

    move-wide/from16 v166, v13

    int-to-long v13, v5

    mul-long v13, v13, v166

    .line 1014
    .local v13, "h14":J
    add-long v166, v156, v160

    add-long v166, v166, v13

    sub-long v166, v166, v158

    move-wide/from16 v168, v13

    .end local v13    # "h14":J
    .local v168, "h14":J
    add-long v13, v152, v166

    .line 1015
    .end local v152    # "c":J
    .local v13, "c":J
    move/from16 v50, v7

    .end local v7    # "s3":I
    .local v50, "s3":I
    long-to-int v7, v13

    and-int v7, v7, v74

    .local v7, "z6":I
    ushr-long v13, v13, v75

    .line 1016
    add-long v152, v162, v164

    sub-long v152, v152, v156

    add-long v152, v152, v168

    move-wide/from16 v166, v13

    .end local v13    # "c":J
    .local v166, "c":J
    add-long v13, v138, v152

    .line 1017
    .end local v138    # "d":J
    .local v13, "d":J
    move/from16 v138, v7

    .end local v7    # "z6":I
    .local v138, "z6":I
    long-to-int v7, v13

    and-int v7, v7, v74

    .local v7, "z14":I
    ushr-long v13, v13, v75

    .line 1019
    move-wide/from16 v152, v13

    .end local v13    # "d":J
    .local v152, "d":J
    int-to-long v13, v15

    move-wide/from16 v170, v13

    int-to-long v13, v8

    mul-long v13, v13, v170

    move/from16 v139, v7

    move-wide/from16 v170, v13

    move/from16 v7, v57

    .end local v57    # "x6":I
    .local v7, "x6":I
    .local v139, "z14":I
    int-to-long v13, v7

    move/from16 v172, v7

    move/from16 v57, v8

    .end local v7    # "x6":I
    .end local v8    # "x0_2":I
    .local v57, "x0_2":I
    .local v172, "x6":I
    int-to-long v7, v2

    mul-long v13, v13, v7

    add-long v13, v170, v13

    move-wide/from16 v170, v13

    move/from16 v7, v34

    .end local v34    # "x5":I
    .local v7, "x5":I
    int-to-long v13, v7

    .end local v7    # "x5":I
    .restart local v34    # "x5":I
    int-to-long v7, v9

    mul-long v13, v13, v7

    add-long v13, v170, v13

    int-to-long v7, v6

    move/from16 v170, v2

    move-wide/from16 v173, v7

    move/from16 v2, v55

    move/from16 v55, v6

    .end local v6    # "x4":I
    .local v2, "x3_2":I
    .local v55, "x4":I
    .local v170, "x1_2":I
    int-to-long v6, v2

    mul-long v7, v173, v6

    add-long/2addr v13, v7

    .line 1023
    .local v13, "f7":J
    int-to-long v6, v3

    move/from16 v171, v2

    move/from16 v8, v45

    move/from16 v45, v3

    .end local v2    # "x3_2":I
    .end local v3    # "u7":I
    .local v8, "u0_2":I
    .local v45, "u7":I
    .local v171, "x3_2":I
    int-to-long v2, v8

    mul-long v6, v6, v2

    int-to-long v2, v0

    move/from16 v173, v0

    move-wide/from16 v174, v2

    move/from16 v0, v46

    .end local v46    # "u1_2":I
    .local v0, "u1_2":I
    .local v173, "u6":I
    int-to-long v2, v0

    mul-long v2, v2, v174

    add-long/2addr v6, v2

    int-to-long v2, v10

    move-wide/from16 v174, v2

    int-to-long v2, v12

    mul-long v2, v2, v174

    add-long/2addr v6, v2

    move-wide/from16 v174, v6

    move/from16 v2, v81

    .end local v81    # "u4":I
    .local v2, "u4":I
    int-to-long v6, v2

    move-wide/from16 v176, v6

    move/from16 v3, v52

    .end local v52    # "u3_2":I
    .local v3, "u3_2":I
    int-to-long v6, v3

    mul-long v6, v6, v176

    add-long v6, v174, v6

    .line 1027
    .local v6, "g7":J
    nop

    .end local v2    # "u4":I
    .end local v3    # "u3_2":I
    .restart local v52    # "u3_2":I
    .restart local v81    # "u4":I
    int-to-long v2, v5

    move-wide/from16 v174, v2

    int-to-long v2, v1

    and-long v2, v2, v76

    mul-long v2, v2, v174

    move-wide/from16 v174, v2

    move/from16 v0, v56

    move/from16 v56, v1

    .end local v1    # "s0_2":I
    .local v0, "s6":I
    .restart local v46    # "u1_2":I
    .local v56, "s0_2":I
    int-to-long v1, v0

    move-wide/from16 v176, v1

    move/from16 v3, v85

    move/from16 v85, v0

    .end local v0    # "s6":I
    .local v3, "s1_2":I
    .local v85, "s6":I
    int-to-long v0, v3

    and-long v0, v0, v76

    mul-long v1, v176, v0

    add-long v1, v174, v1

    move-wide/from16 v174, v1

    move/from16 v0, v58

    .end local v58    # "s5":I
    .local v0, "s5":I
    int-to-long v1, v0

    move-wide/from16 v176, v1

    .end local v0    # "s5":I
    .restart local v58    # "s5":I
    int-to-long v0, v4

    and-long v0, v0, v76

    mul-long v1, v176, v0

    add-long v1, v174, v1

    move-wide/from16 v174, v1

    int-to-long v0, v11

    move-wide/from16 v176, v0

    move/from16 v2, v59

    .end local v59    # "s3_2":I
    .local v2, "s3_2":I
    int-to-long v0, v2

    and-long v0, v0, v76

    mul-long v0, v0, v176

    add-long v0, v174, v0

    .line 1032
    .local v0, "h7":J
    add-long v76, v13, v6

    move-wide/from16 v174, v0

    .end local v0    # "h7":J
    .local v174, "h7":J
    add-long v0, v166, v76

    .line 1033
    .end local v166    # "c":J
    .local v0, "c":J
    nop

    .end local v2    # "s3_2":I
    .restart local v59    # "s3_2":I
    long-to-int v2, v0

    and-int v2, v2, v74

    .local v2, "z7":I
    ushr-long v0, v0, v75

    .line 1034
    sub-long v76, v174, v13

    move-wide/from16 v166, v0

    .end local v0    # "c":J
    .restart local v166    # "c":J
    add-long v0, v152, v76

    .line 1035
    .end local v152    # "d":J
    .local v0, "d":J
    move/from16 v76, v2

    .end local v2    # "z7":I
    .local v76, "z7":I
    long-to-int v2, v0

    and-int v2, v2, v74

    .local v2, "z15":I
    ushr-long v0, v0, v75

    .line 1037
    add-long v152, v166, v0

    .line 1039
    .end local v166    # "c":J
    .local v152, "c":J
    move-wide/from16 v166, v0

    move/from16 v0, v42

    move/from16 v42, v2

    .end local v2    # "z15":I
    .local v0, "z8":I
    .local v42, "z15":I
    .local v166, "d":J
    int-to-long v1, v0

    add-long v1, v152, v1

    .line 1040
    .end local v152    # "c":J
    .local v1, "c":J
    move/from16 v77, v0

    .end local v0    # "z8":I
    .local v77, "z8":I
    long-to-int v0, v1

    and-int v0, v0, v74

    .end local v77    # "z8":I
    .restart local v0    # "z8":I
    ushr-long v1, v1, v75

    .line 1041
    move/from16 v77, v0

    move/from16 v152, v3

    move/from16 v0, v80

    move/from16 v80, v4

    .end local v3    # "s1_2":I
    .end local v4    # "s2_2":I
    .local v0, "z0":I
    .restart local v77    # "z8":I
    .local v80, "s2_2":I
    .local v152, "s1_2":I
    int-to-long v3, v0

    add-long v3, v166, v3

    .line 1042
    .end local v166    # "d":J
    .local v3, "d":J
    move/from16 v153, v0

    .end local v0    # "z0":I
    .local v153, "z0":I
    long-to-int v0, v3

    and-int v0, v0, v74

    .end local v153    # "z0":I
    .restart local v0    # "z0":I
    ushr-long v3, v3, v75

    .line 1043
    move/from16 v74, v0

    .end local v0    # "z0":I
    .local v74, "z0":I
    long-to-int v0, v1

    add-int v0, v35, v0

    .line 1044
    .end local v35    # "z9":I
    .local v0, "z9":I
    move/from16 v35, v0

    .end local v0    # "z9":I
    .restart local v35    # "z9":I
    long-to-int v0, v3

    add-int v0, v82, v0

    .line 1046
    .end local v82    # "z1":I
    .local v0, "z1":I
    aput v74, p1, v17

    .line 1047
    aput v0, p1, v19

    .line 1048
    aput v83, p1, v21

    .line 1049
    aput v96, p1, v23

    .line 1050
    aput v110, p1, v25

    .line 1051
    aput v124, p1, v27

    .line 1052
    aput v138, p1, v29

    .line 1053
    aput v76, p1, v31

    .line 1054
    aput v77, p1, v16

    .line 1055
    aput v35, p1, v18

    .line 1056
    aput v84, p1, v20

    .line 1057
    aput v60, p1, v22

    .line 1058
    aput v111, p1, v24

    .line 1059
    aput v125, p1, v26

    .line 1060
    aput v139, p1, v28

    .line 1061
    aput v42, p1, v30

    .line 1062
    return-void
.end method

.method public static sqrtRatioVar([I[I[I)Z
    .locals 6
    .param p0, "u"    # [I
    .param p1, "v"    # [I
    .param p2, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "z"
        }
    .end annotation

    .line 1078
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 1079
    .local v0, "u3v":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    .line 1081
    .local v1, "u5v3":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    .line 1082
    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1083
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    .line 1084
    invoke-static {v0, p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1085
    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1086
    invoke-static {v1, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1088
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    .line 1089
    .local v2, "x":[I
    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->powPm3d4([I[I)V

    .line 1090
    invoke-static {v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1092
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v3

    .line 1093
    .local v3, "t":[I
    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    .line 1094
    invoke-static {v3, p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    .line 1096
    invoke-static {p0, v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    .line 1097
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    .line 1099
    invoke-static {v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isZeroVar([I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 1101
    invoke-static {v2, v5, p2, v5}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    .line 1102
    const/4 v4, 0x1

    return v4

    .line 1105
    :cond_0
    return v5
.end method

.method public static sub([I[I[I)V
    .locals 67
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

    .line 1110
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

    .local v7, "x3":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .local v9, "x4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .local v11, "x5":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .local v13, "x6":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 1111
    .local v15, "x7":I
    const/16 v16, 0x8

    aget v17, p0, v16

    .local v17, "x8":I
    const/16 v18, 0x9

    aget v19, p0, v18

    .local v19, "x9":I
    const/16 v20, 0xa

    aget v21, p0, v20

    .local v21, "x10":I
    const/16 v22, 0xb

    aget v23, p0, v22

    .local v23, "x11":I
    const/16 v24, 0xc

    aget v25, p0, v24

    .local v25, "x12":I
    const/16 v26, 0xd

    aget v27, p0, v26

    .local v27, "x13":I
    const/16 v28, 0xe

    aget v29, p0, v28

    .local v29, "x14":I
    const/16 v30, 0xf

    aget v31, p0, v30

    .line 1112
    .local v31, "x15":I
    aget v32, p1, v0

    .local v32, "y0":I
    aget v33, p1, v2

    .local v33, "y1":I
    aget v34, p1, v4

    .local v34, "y2":I
    aget v35, p1, v6

    .local v35, "y3":I
    aget v36, p1, v8

    .local v36, "y4":I
    aget v37, p1, v10

    .local v37, "y5":I
    aget v38, p1, v12

    .local v38, "y6":I
    aget v39, p1, v14

    .line 1113
    .local v39, "y7":I
    aget v40, p1, v16

    .local v40, "y8":I
    aget v41, p1, v18

    .local v41, "y9":I
    aget v42, p1, v20

    .local v42, "y10":I
    aget v43, p1, v22

    .local v43, "y11":I
    aget v44, p1, v24

    .local v44, "y12":I
    aget v45, p1, v26

    .local v45, "y13":I
    aget v46, p1, v28

    .local v46, "y14":I
    aget v47, p1, v30

    .line 1115
    .local v47, "y15":I
    const v48, 0x1ffffffe

    add-int v49, v1, v48

    sub-int v49, v49, v32

    .line 1116
    .local v49, "z0":I
    add-int v50, v3, v48

    sub-int v50, v50, v33

    .line 1117
    .local v50, "z1":I
    add-int v51, v5, v48

    sub-int v51, v51, v34

    .line 1118
    .local v51, "z2":I
    add-int v52, v7, v48

    sub-int v52, v52, v35

    .line 1119
    .local v52, "z3":I
    add-int v53, v9, v48

    sub-int v53, v53, v36

    .line 1120
    .local v53, "z4":I
    add-int v54, v11, v48

    sub-int v54, v54, v37

    .line 1121
    .local v54, "z5":I
    add-int v55, v13, v48

    sub-int v55, v55, v38

    .line 1122
    .local v55, "z6":I
    add-int v56, v15, v48

    sub-int v56, v56, v39

    .line 1123
    .local v56, "z7":I
    const v57, 0x1ffffffc

    add-int v57, v17, v57

    sub-int v57, v57, v40

    .line 1124
    .local v57, "z8":I
    add-int v58, v19, v48

    sub-int v58, v58, v41

    .line 1125
    .local v58, "z9":I
    add-int v59, v21, v48

    sub-int v59, v59, v42

    .line 1126
    .local v59, "z10":I
    add-int v60, v23, v48

    sub-int v60, v60, v43

    .line 1127
    .local v60, "z11":I
    add-int v61, v25, v48

    sub-int v61, v61, v44

    .line 1128
    .local v61, "z12":I
    add-int v62, v27, v48

    sub-int v62, v62, v45

    .line 1129
    .local v62, "z13":I
    add-int v63, v29, v48

    sub-int v63, v63, v46

    .line 1130
    .local v63, "z14":I
    add-int v48, v31, v48

    sub-int v48, v48, v47

    .line 1132
    .local v48, "z15":I
    ushr-int/lit8 v64, v50, 0x1c

    add-int v51, v51, v64

    const v64, 0xfffffff

    and-int v50, v50, v64

    .line 1133
    ushr-int/lit8 v65, v54, 0x1c

    add-int v55, v55, v65

    and-int v54, v54, v64

    .line 1134
    ushr-int/lit8 v65, v58, 0x1c

    add-int v59, v59, v65

    and-int v58, v58, v64

    .line 1135
    ushr-int/lit8 v65, v62, 0x1c

    add-int v63, v63, v65

    and-int v62, v62, v64

    .line 1137
    ushr-int/lit8 v65, v51, 0x1c

    add-int v52, v52, v65

    and-int v51, v51, v64

    .line 1138
    ushr-int/lit8 v65, v55, 0x1c

    add-int v56, v56, v65

    and-int v55, v55, v64

    .line 1139
    ushr-int/lit8 v65, v59, 0x1c

    add-int v60, v60, v65

    and-int v59, v59, v64

    .line 1140
    ushr-int/lit8 v65, v63, 0x1c

    add-int v48, v48, v65

    and-int v63, v63, v64

    .line 1142
    ushr-int/lit8 v65, v48, 0x1c

    .local v65, "t":I
    and-int v48, v48, v64

    .line 1143
    add-int v49, v49, v65

    .line 1144
    add-int v57, v57, v65

    .line 1146
    ushr-int/lit8 v66, v52, 0x1c

    add-int v53, v53, v66

    and-int v52, v52, v64

    .line 1147
    ushr-int/lit8 v66, v56, 0x1c

    add-int v57, v57, v66

    and-int v56, v56, v64

    .line 1148
    ushr-int/lit8 v66, v60, 0x1c

    add-int v61, v61, v66

    and-int v60, v60, v64

    .line 1150
    ushr-int/lit8 v66, v49, 0x1c

    add-int v50, v50, v66

    and-int v49, v49, v64

    .line 1151
    ushr-int/lit8 v66, v53, 0x1c

    add-int v54, v54, v66

    and-int v53, v53, v64

    .line 1152
    ushr-int/lit8 v66, v57, 0x1c

    add-int v58, v58, v66

    and-int v57, v57, v64

    .line 1153
    ushr-int/lit8 v66, v61, 0x1c

    add-int v62, v62, v66

    and-int v61, v61, v64

    .line 1155
    aput v49, p2, v0

    .line 1156
    aput v50, p2, v2

    .line 1157
    aput v51, p2, v4

    .line 1158
    aput v52, p2, v6

    .line 1159
    aput v53, p2, v8

    .line 1160
    aput v54, p2, v10

    .line 1161
    aput v55, p2, v12

    .line 1162
    aput v56, p2, v14

    .line 1163
    aput v57, p2, v16

    .line 1164
    aput v58, p2, v18

    .line 1165
    aput v59, p2, v20

    .line 1166
    aput v60, p2, v22

    .line 1167
    aput v61, p2, v24

    .line 1168
    aput v62, p2, v26

    .line 1169
    aput v63, p2, v28

    .line 1170
    aput v48, p2, v30

    .line 1171
    return-void
.end method

.method public static subOne([I)V
    .locals 3
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 1175
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    .line 1176
    .local v0, "one":[I
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    .line 1178
    invoke-static {p0, v0, p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    .line 1179
    return-void
.end method

.method public static zero([I)V
    .locals 2
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 1183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1185
    const/4 v1, 0x0

    aput v1, p0, v0

    .line 1183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1187
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

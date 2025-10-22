.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519Field;
.super Ljava/lang/Object;
.source "X25519Field.java"


# static fields
.field private static final M24:I = 0xffffff

.field private static final M25:I = 0x1ffffff

.field private static final M26:I = 0x3ffffff

.field private static final P32:[I

.field private static final ROOT_NEG_ONE:[I

.field public static final SIZE:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->ROOT_NEG_ONE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x1f15f50
        -0x79362d
        0x478c4f
        0x35697f
        0x5e8630
        0x1fbd7a7
        -0xbfd9b1
        -0xf4d4b
        0x27e0f
        0x570649
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    .line 18
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

    .line 22
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 24
    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 26
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

    .line 30
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 31
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

    .line 35
    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    .line 36
    return-void
.end method

.method public static apm([I[I[I[I)V
    .locals 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zp"    # [I
    .param p3, "zm"    # [I
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
            "zp",
            "zm"
        }
    .end annotation

    .line 40
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 42
    aget v1, p0, v0

    .local v1, "xi":I
    aget v2, p1, v0

    .line 43
    .local v2, "yi":I
    add-int v3, v1, v2

    aput v3, p2, v0

    .line 44
    sub-int v3, v1, v2

    aput v3, p3, v0

    .line 40
    .end local v1    # "xi":I
    .end local v2    # "yi":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "i":I
    :cond_0
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

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 53
    aget v2, p0, v1

    aget v3, p1, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 56
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

    .line 61
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->areEqual([I[I)I

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
    .locals 23
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 66
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

    .line 67
    .local v9, "z4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .local v11, "z5":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .local v13, "z6":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .local v15, "z7":I
    const/16 v16, 0x8

    aget v17, p0, v16

    .local v17, "z8":I
    const/16 v18, 0x9

    aget v19, p0, v18

    .line 69
    .local v19, "z9":I
    shr-int/lit8 v20, v3, 0x1a

    add-int v5, v5, v20

    const v20, 0x3ffffff

    and-int v3, v3, v20

    .line 70
    shr-int/lit8 v21, v7, 0x1a

    add-int v9, v9, v21

    and-int v7, v7, v20

    .line 71
    shr-int/lit8 v21, v13, 0x1a

    add-int v15, v15, v21

    and-int v13, v13, v20

    .line 72
    shr-int/lit8 v21, v17, 0x1a

    add-int v19, v19, v21

    and-int v17, v17, v20

    .line 74
    shr-int/lit8 v21, v5, 0x19

    add-int v7, v7, v21

    const v21, 0x1ffffff

    and-int v5, v5, v21

    .line 75
    shr-int/lit8 v22, v9, 0x19

    add-int v11, v11, v22

    and-int v9, v9, v21

    .line 76
    shr-int/lit8 v22, v15, 0x19

    add-int v17, v17, v22

    and-int v15, v15, v21

    .line 78
    shr-int/lit8 v22, v19, 0x19

    mul-int/lit8 v22, v22, 0x26

    add-int v1, v1, v22

    and-int v19, v19, v21

    .line 80
    shr-int/lit8 v21, v1, 0x1a

    add-int v3, v3, v21

    and-int v1, v1, v20

    .line 81
    shr-int/lit8 v21, v11, 0x1a

    add-int v13, v13, v21

    and-int v11, v11, v20

    .line 83
    shr-int/lit8 v21, v3, 0x1a

    add-int v5, v5, v21

    and-int v3, v3, v20

    .line 84
    shr-int/lit8 v21, v7, 0x1a

    add-int v9, v9, v21

    and-int v7, v7, v20

    .line 85
    shr-int/lit8 v21, v13, 0x1a

    add-int v15, v15, v21

    and-int v13, v13, v20

    .line 86
    shr-int/lit8 v21, v17, 0x1a

    add-int v19, v19, v21

    and-int v17, v17, v20

    .line 88
    aput v1, p0, v0

    aput v3, p0, v2

    aput v5, p0, v4

    aput v7, p0, v6

    aput v9, p0, v8

    .line 89
    aput v11, p0, v10

    aput v13, p0, v12

    aput v15, p0, v14

    aput v17, p0, v16

    aput v19, p0, v18

    .line 90
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

    .line 96
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 98
    add-int v1, p4, v0

    aget v1, p3, v1

    .local v1, "z_i":I
    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v2, v1

    .line 99
    .local v2, "diff":I
    and-int v3, v2, p0

    xor-int/2addr v1, v3

    .line 100
    add-int v3, p4, v0

    aput v1, p3, v3

    .line 96
    .end local v1    # "z_i":I
    .end local v2    # "diff":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
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

    .line 108
    rsub-int/lit8 v0, p0, 0x0

    .line 109
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 111
    aget v2, p1, v1

    xor-int/2addr v2, v0

    sub-int/2addr v2, v0

    aput v2, p1, v1

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
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

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 119
    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static create()[I
    .locals 1

    .line 125
    const/16 v0, 0xa

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

    .line 130
    mul-int/lit8 v0, p0, 0xa

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

    .line 138
    rsub-int/lit8 v0, p0, 0x0

    .line 139
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 141
    aget v2, p1, v1

    .local v2, "ai":I
    aget v3, p2, v1

    .line 142
    .local v3, "bi":I
    xor-int v4, v2, v3

    and-int/2addr v4, v0

    .line 143
    .local v4, "dummy":I
    xor-int v5, v2, v4

    aput v5, p1, v1

    .line 144
    xor-int v5, v3, v4

    aput v5, p2, v1

    .line 139
    .end local v2    # "ai":I
    .end local v3    # "bi":I
    .end local v4    # "dummy":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static decode([BI[I)V
    .locals 3
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

    .line 164
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 165
    add-int/lit8 v0, p1, 0x10

    const/4 v1, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 166
    const/16 v0, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    .line 167
    return-void
.end method

.method public static decode([BI[II)V
    .locals 3
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

    .line 171
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 172
    add-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p3, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 173
    add-int/lit8 v0, p3, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    .line 174
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

    .line 157
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 158
    const/16 v0, 0x10

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    .line 159
    const/16 v0, 0x9

    aget v1, p1, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p1, v0

    .line 160
    return-void
.end method

.method public static decode([II[I)V
    .locals 3
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

    .line 150
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([II[II)V

    .line 151
    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([II[II)V

    .line 152
    const/16 v0, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    .line 153
    return-void
.end method

.method private static decode128([BI[II)V
    .locals 8
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

    .line 189
    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v0

    .line 190
    .local v0, "t0":I
    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v1

    .line 191
    .local v1, "t1":I
    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v2

    .line 192
    .local v2, "t2":I
    add-int/lit8 v3, p1, 0xc

    invoke-static {p0, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v3

    .line 194
    .local v3, "t3":I
    add-int/lit8 v4, p3, 0x0

    const v5, 0x3ffffff

    and-int v6, v0, v5

    aput v6, p2, v4

    .line 195
    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v7, v0, 0x1a

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, p2, v4

    .line 196
    add-int/lit8 v4, p3, 0x2

    shl-int/lit8 v6, v2, 0xc

    ushr-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    const v7, 0x1ffffff

    and-int/2addr v6, v7

    aput v6, p2, v4

    .line 197
    add-int/lit8 v4, p3, 0x3

    shl-int/lit8 v6, v3, 0x13

    ushr-int/lit8 v7, v2, 0xd

    or-int/2addr v6, v7

    and-int/2addr v5, v6

    aput v5, p2, v4

    .line 198
    add-int/lit8 v4, p3, 0x4

    ushr-int/lit8 v5, v3, 0x7

    aput v5, p2, v4

    .line 199
    return-void
.end method

.method private static decode128([II[II)V
    .locals 8
    .param p0, "is"    # [I
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
            "is",
            "off",
            "z",
            "zOff"
        }
    .end annotation

    .line 178
    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    .local v0, "t0":I
    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    .local v1, "t1":I
    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    .local v2, "t2":I
    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    .line 180
    .local v3, "t3":I
    add-int/lit8 v4, p3, 0x0

    const v5, 0x3ffffff

    and-int v6, v0, v5

    aput v6, p2, v4

    .line 181
    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v6, v1, 0x6

    ushr-int/lit8 v7, v0, 0x1a

    or-int/2addr v6, v7

    and-int/2addr v6, v5

    aput v6, p2, v4

    .line 182
    add-int/lit8 v4, p3, 0x2

    shl-int/lit8 v6, v2, 0xc

    ushr-int/lit8 v7, v1, 0x14

    or-int/2addr v6, v7

    const v7, 0x1ffffff

    and-int/2addr v6, v7

    aput v6, p2, v4

    .line 183
    add-int/lit8 v4, p3, 0x3

    shl-int/lit8 v6, v3, 0x13

    ushr-int/lit8 v7, v2, 0xd

    or-int/2addr v6, v7

    and-int/2addr v5, v6

    aput v5, p2, v4

    .line 184
    add-int/lit8 v4, p3, 0x4

    ushr-int/lit8 v5, v3, 0x7

    aput v5, p2, v4

    .line 185
    return-void
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

    .line 203
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 204
    .local v0, "n":I
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 205
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 206
    add-int/lit8 p1, p1, 0x1

    aget-byte v1, p0, p1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    .line 207
    return v0
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

    .line 230
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 231
    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, p3, 0x10

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 232
    return-void
.end method

.method public static encode([I[B)V
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

    .line 218
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 219
    const/4 v0, 0x5

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 220
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

    .line 224
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 225
    add-int/lit8 v0, p2, 0x10

    const/4 v1, 0x5

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    .line 226
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

    .line 212
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[II)V

    .line 213
    add-int/lit8 v0, p2, 0x4

    const/4 v1, 0x5

    invoke-static {p0, v1, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[II)V

    .line 214
    return-void
.end method

.method private static encode128([II[BI)V
    .locals 10
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

    .line 246
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

    .local v3, "x3":I
    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    .line 248
    .local v4, "x4":I
    shl-int/lit8 v5, v1, 0x1a

    or-int/2addr v5, v0

    .local v5, "t0":I
    add-int/lit8 v6, p3, 0x0

    invoke-static {v5, p2, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    .line 249
    ushr-int/lit8 v6, v1, 0x6

    shl-int/lit8 v7, v2, 0x14

    or-int/2addr v6, v7

    .local v6, "t1":I
    add-int/lit8 v7, p3, 0x4

    invoke-static {v6, p2, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    .line 250
    ushr-int/lit8 v7, v2, 0xc

    shl-int/lit8 v8, v3, 0xd

    or-int/2addr v7, v8

    .local v7, "t2":I
    add-int/lit8 v8, p3, 0x8

    invoke-static {v7, p2, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    .line 251
    ushr-int/lit8 v8, v3, 0x13

    shl-int/lit8 v9, v4, 0x7

    or-int/2addr v8, v9

    .local v8, "t3":I
    add-int/lit8 v9, p3, 0xc

    invoke-static {v8, p2, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    .line 252
    return-void
.end method

.method private static encode128([II[II)V
    .locals 8
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

    .line 236
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

    .local v3, "x3":I
    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    .line 238
    .local v4, "x4":I
    add-int/lit8 v5, p3, 0x0

    shl-int/lit8 v6, v1, 0x1a

    or-int/2addr v6, v0

    aput v6, p2, v5

    .line 239
    add-int/lit8 v5, p3, 0x1

    ushr-int/lit8 v6, v1, 0x6

    shl-int/lit8 v7, v2, 0x14

    or-int/2addr v6, v7

    aput v6, p2, v5

    .line 240
    add-int/lit8 v5, p3, 0x2

    ushr-int/lit8 v6, v2, 0xc

    shl-int/lit8 v7, v3, 0xd

    or-int/2addr v6, v7

    aput v6, p2, v5

    .line 241
    add-int/lit8 v5, p3, 0x3

    ushr-int/lit8 v6, v3, 0x13

    shl-int/lit8 v7, v4, 0x7

    or-int/2addr v6, v7

    aput v6, p2, v5

    .line 242
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

    .line 256
    int-to-byte v0, p0

    aput-byte v0, p1, p2

    .line 257
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 258
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x10

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 259
    add-int/lit8 p2, p2, 0x1

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 260
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

    .line 270
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 271
    .local v0, "t":[I
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 273
    .local v1, "u":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 274
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 275
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[II)V

    .line 277
    sget-object v3, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    .line 279
    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([II[I)V

    .line 280
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

    .line 284
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 285
    .local v0, "t":[I
    const/16 v1, 0x8

    new-array v1, v1, [I

    .line 287
    .local v1, "u":[I
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 288
    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 289
    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[II)V

    .line 291
    sget-object v3, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    invoke-static {v3, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    .line 293
    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([II[I)V

    .line 294
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

    .line 298
    const/4 v0, 0x0

    aget v0, p0, v0

    xor-int/lit8 v0, v0, 0x1

    .line 299
    .local v0, "d":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 301
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 299
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 304
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

    .line 309
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isOne([I)I

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

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 317
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 315
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 320
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

    .line 325
    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZero([I)I

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
    .locals 35
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

    .line 330
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

    .line 331
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

    .local v1, "x7":I
    const/16 v17, 0x8

    const/16 v18, 0x1

    aget v3, p0, v17

    .local v3, "x8":I
    const/16 v19, 0x9

    const/16 v20, 0x2

    aget v5, p0, v19

    .line 334
    .local v5, "x9":I
    move/from16 v22, v14

    const/16 v21, 0x6

    .end local v14    # "x6":I
    .local v22, "x6":I
    int-to-long v13, v6

    move/from16 v24, v8

    const/16 v23, 0x3

    .end local v8    # "x3":I
    .local v24, "x3":I
    int-to-long v7, v0

    mul-long v13, v13, v7

    .local v13, "c0":J
    long-to-int v7, v13

    const v8, 0x1ffffff

    and-int v6, v7, v8

    const/16 v7, 0x19

    shr-long/2addr v13, v7

    .line 335
    const v25, 0x1ffffff

    const/16 v26, 0x19

    int-to-long v7, v10

    move/from16 v28, v10

    const/16 v27, 0x4

    .end local v10    # "x4":I
    .local v28, "x4":I
    int-to-long v9, v0

    mul-long v7, v7, v9

    .local v7, "c1":J
    long-to-int v9, v7

    and-int v9, v9, v25

    .end local v28    # "x4":I
    .local v9, "x4":I
    shr-long v7, v7, v26

    .line 336
    move/from16 v28, v12

    const/4 v10, 0x5

    .end local v12    # "x5":I
    .local v28, "x5":I
    int-to-long v11, v1

    move-wide/from16 v30, v11

    const/16 v29, 0x5

    int-to-long v10, v0

    mul-long v11, v30, v10

    .local v11, "c2":J
    long-to-int v10, v11

    and-int v1, v10, v25

    shr-long v10, v11, v26

    .line 339
    .end local v11    # "c2":J
    .local v10, "c2":J
    move v12, v6

    move-wide/from16 v30, v7

    .end local v6    # "x2":I
    .end local v7    # "c1":J
    .local v12, "x2":I
    .local v30, "c1":J
    int-to-long v6, v5

    move v8, v5

    move-wide/from16 v32, v6

    .end local v5    # "x9":I
    .local v8, "x9":I
    int-to-long v5, v0

    mul-long v6, v32, v5

    .local v6, "c3":J
    long-to-int v5, v6

    and-int v5, v5, v25

    .end local v8    # "x9":I
    .restart local v5    # "x9":I
    shr-long v6, v6, v26

    .line 340
    const-wide/16 v25, 0x26

    mul-long v6, v6, v25

    .line 342
    move v8, v5

    move-wide/from16 v25, v6

    .end local v5    # "x9":I
    .end local v6    # "c3":J
    .restart local v8    # "x9":I
    .local v25, "c3":J
    int-to-long v5, v2

    move/from16 v32, v1

    move v7, v2

    .end local v1    # "x7":I
    .end local v2    # "x0":I
    .local v7, "x0":I
    .local v32, "x7":I
    int-to-long v1, v0

    mul-long v5, v5, v1

    add-long v1, v25, v5

    .end local v25    # "c3":J
    .local v1, "c3":J
    long-to-int v5, v1

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v16

    const/16 v5, 0x1a

    shr-long/2addr v1, v5

    .line 343
    move/from16 v25, v7

    move/from16 v5, v28

    const/16 v16, 0x1a

    const v26, 0x3ffffff

    .end local v7    # "x0":I
    .end local v28    # "x5":I
    .local v5, "x5":I
    .local v25, "x0":I
    int-to-long v6, v5

    move-wide/from16 v33, v1

    .end local v1    # "c3":J
    .local v33, "c3":J
    int-to-long v1, v0

    mul-long v6, v6, v1

    add-long v1, v30, v6

    .end local v30    # "c1":J
    .local v1, "c1":J
    long-to-int v6, v1

    and-int v6, v6, v26

    aput v6, p2, v29

    shr-long v1, v1, v16

    .line 345
    int-to-long v6, v4

    move-wide/from16 v28, v1

    .end local v1    # "c1":J
    .local v28, "c1":J
    int-to-long v1, v0

    mul-long v6, v6, v1

    add-long v1, v33, v6

    .end local v33    # "c3":J
    .local v1, "c3":J
    long-to-int v6, v1

    and-int v6, v6, v26

    aput v6, p2, v18

    shr-long v1, v1, v16

    .line 346
    move v7, v4

    move/from16 v18, v5

    move/from16 v6, v24

    .end local v4    # "x1":I
    .end local v5    # "x5":I
    .end local v24    # "x3":I
    .local v6, "x3":I
    .local v7, "x1":I
    .local v18, "x5":I
    int-to-long v4, v6

    move-wide/from16 v30, v4

    int-to-long v4, v0

    mul-long v4, v4, v30

    add-long/2addr v13, v4

    long-to-int v4, v13

    and-int v4, v4, v26

    aput v4, p2, v23

    shr-long v4, v13, v16

    .line 347
    .end local v13    # "c0":J
    .local v4, "c0":J
    move v14, v7

    move/from16 v13, v22

    .end local v6    # "x3":I
    .end local v7    # "x1":I
    .end local v22    # "x6":I
    .local v13, "x6":I
    .local v14, "x1":I
    .restart local v24    # "x3":I
    int-to-long v6, v13

    move-wide/from16 v22, v6

    int-to-long v6, v0

    mul-long v6, v6, v22

    add-long v6, v28, v6

    const/16 v22, 0x7

    .end local v28    # "c1":J
    .local v6, "c1":J
    long-to-int v15, v6

    and-int v15, v15, v26

    aput v15, p2, v21

    shr-long v6, v6, v16

    .line 348
    move/from16 v21, v8

    move v15, v9

    .end local v8    # "x9":I
    .end local v9    # "x4":I
    .local v15, "x4":I
    .local v21, "x9":I
    int-to-long v8, v3

    move-wide/from16 v28, v8

    int-to-long v8, v0

    mul-long v8, v8, v28

    add-long/2addr v10, v8

    long-to-int v8, v10

    and-int v8, v8, v26

    aput v8, p2, v17

    shr-long v8, v10, v16

    .line 350
    .end local v10    # "c2":J
    .local v8, "c2":J
    long-to-int v10, v1

    add-int/2addr v10, v12

    aput v10, p2, v20

    .line 351
    long-to-int v10, v4

    add-int/2addr v10, v15

    aput v10, p2, v27

    .line 352
    long-to-int v10, v6

    add-int v10, v32, v10

    aput v10, p2, v22

    .line 353
    long-to-int v10, v8

    add-int v10, v21, v10

    aput v10, p2, v19

    .line 354
    return-void
.end method

.method public static mul([I[I[I)V
    .locals 97
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

    .line 358
    const/4 v0, 0x0

    aget v1, p0, v0

    .local v1, "x0":I
    aget v2, p1, v0

    .line 359
    .local v2, "y0":I
    const/4 v3, 0x1

    aget v4, p0, v3

    .local v4, "x1":I
    aget v5, p1, v3

    .line 360
    .local v5, "y1":I
    const/4 v6, 0x2

    aget v7, p0, v6

    .local v7, "x2":I
    aget v8, p1, v6

    .line 361
    .local v8, "y2":I
    const/4 v9, 0x3

    aget v10, p0, v9

    .local v10, "x3":I
    aget v11, p1, v9

    .line 362
    .local v11, "y3":I
    const/4 v12, 0x4

    aget v13, p0, v12

    .local v13, "x4":I
    aget v14, p1, v12

    .line 364
    .local v14, "y4":I
    const/4 v15, 0x5

    const/16 v16, 0x0

    aget v0, p0, v15

    const/16 v17, 0x1

    .local v0, "u0":I
    aget v3, p1, v15

    .line 365
    .local v3, "v0":I
    const/16 v18, 0x6

    const/16 v19, 0x2

    aget v6, p0, v18

    const/16 v20, 0x3

    .local v6, "u1":I
    aget v9, p1, v18

    .line 366
    .local v9, "v1":I
    const/16 v21, 0x7

    const/16 v22, 0x4

    aget v12, p0, v21

    const/16 v23, 0x5

    .local v12, "u2":I
    aget v15, p1, v21

    .line 367
    .local v15, "v2":I
    const/16 v24, 0x8

    move/from16 v25, v12

    .end local v12    # "u2":I
    .local v25, "u2":I
    aget v12, p0, v24

    move/from16 v26, v12

    .local v26, "u3":I
    aget v12, p1, v24

    .line 368
    .local v12, "v3":I
    const/16 v27, 0x9

    move/from16 v28, v12

    .end local v12    # "v3":I
    .local v28, "v3":I
    aget v12, p0, v27

    move/from16 v29, v12

    .local v29, "u4":I
    aget v12, p1, v27

    .line 370
    .local v12, "v4":I
    move/from16 v31, v12

    move/from16 v30, v13

    .end local v12    # "v4":I
    .end local v13    # "x4":I
    .local v30, "x4":I
    .local v31, "v4":I
    int-to-long v12, v1

    move-wide/from16 v32, v12

    int-to-long v12, v2

    mul-long v12, v12, v32

    .line 371
    .local v12, "a0":J
    move-wide/from16 v32, v12

    .end local v12    # "a0":J
    .local v32, "a0":J
    int-to-long v12, v1

    move-wide/from16 v34, v12

    int-to-long v12, v5

    mul-long v12, v12, v34

    move-wide/from16 v34, v12

    int-to-long v12, v4

    move-wide/from16 v36, v12

    int-to-long v12, v2

    mul-long v12, v12, v36

    add-long v12, v34, v12

    .line 373
    .local v12, "a1":J
    move-wide/from16 v34, v12

    .end local v12    # "a1":J
    .local v34, "a1":J
    int-to-long v12, v1

    move-wide/from16 v36, v12

    int-to-long v12, v8

    mul-long v12, v12, v36

    move-wide/from16 v36, v12

    int-to-long v12, v4

    move-wide/from16 v38, v12

    int-to-long v12, v5

    mul-long v12, v12, v38

    add-long v12, v36, v12

    move-wide/from16 v36, v12

    int-to-long v12, v7

    move-wide/from16 v38, v12

    int-to-long v12, v2

    mul-long v12, v12, v38

    add-long v12, v36, v12

    .line 376
    .local v12, "a2":J
    move-wide/from16 v36, v12

    .end local v12    # "a2":J
    .local v36, "a2":J
    int-to-long v12, v4

    move-wide/from16 v38, v12

    int-to-long v12, v8

    mul-long v12, v12, v38

    move-wide/from16 v38, v12

    int-to-long v12, v7

    move-wide/from16 v40, v12

    int-to-long v12, v5

    mul-long v12, v12, v40

    add-long v12, v38, v12

    .line 378
    .local v12, "a3":J
    shl-long v12, v12, v17

    .line 379
    move-wide/from16 v38, v12

    .end local v12    # "a3":J
    .local v38, "a3":J
    int-to-long v12, v1

    move-wide/from16 v40, v12

    int-to-long v12, v11

    mul-long v12, v12, v40

    move-wide/from16 v40, v12

    int-to-long v12, v10

    move-wide/from16 v42, v12

    int-to-long v12, v2

    mul-long v12, v12, v42

    add-long v12, v40, v12

    add-long v12, v38, v12

    .line 381
    .end local v38    # "a3":J
    .restart local v12    # "a3":J
    move-wide/from16 v38, v12

    .end local v12    # "a3":J
    .restart local v38    # "a3":J
    int-to-long v12, v7

    move-wide/from16 v40, v12

    int-to-long v12, v8

    mul-long v12, v12, v40

    .line 382
    .local v12, "a4":J
    shl-long v12, v12, v17

    .line 383
    move-wide/from16 v40, v12

    .end local v12    # "a4":J
    .local v40, "a4":J
    int-to-long v12, v1

    move-wide/from16 v42, v12

    int-to-long v12, v14

    mul-long v12, v12, v42

    move-wide/from16 v42, v12

    int-to-long v12, v4

    move-wide/from16 v44, v12

    int-to-long v12, v11

    mul-long v12, v12, v44

    add-long v12, v42, v12

    move-wide/from16 v42, v12

    int-to-long v12, v10

    move-wide/from16 v44, v12

    int-to-long v12, v5

    mul-long v12, v12, v44

    add-long v12, v42, v12

    move/from16 v42, v1

    move-wide/from16 v43, v12

    move/from16 v1, v30

    .end local v30    # "x4":I
    .local v1, "x4":I
    .local v42, "x0":I
    int-to-long v12, v1

    move-wide/from16 v45, v12

    int-to-long v12, v2

    mul-long v12, v12, v45

    add-long v12, v43, v12

    add-long v12, v40, v12

    .line 387
    .end local v40    # "a4":J
    .restart local v12    # "a4":J
    move-wide/from16 v40, v12

    .end local v12    # "a4":J
    .restart local v40    # "a4":J
    int-to-long v12, v4

    move-wide/from16 v43, v12

    int-to-long v12, v14

    mul-long v12, v12, v43

    move-wide/from16 v43, v12

    int-to-long v12, v7

    move-wide/from16 v45, v12

    int-to-long v12, v11

    mul-long v12, v12, v45

    add-long v12, v43, v12

    move-wide/from16 v43, v12

    int-to-long v12, v10

    move-wide/from16 v45, v12

    int-to-long v12, v8

    mul-long v12, v12, v45

    add-long v12, v43, v12

    move-wide/from16 v43, v12

    int-to-long v12, v1

    move-wide/from16 v45, v12

    int-to-long v12, v5

    mul-long v12, v12, v45

    add-long v12, v43, v12

    .line 391
    .local v12, "a5":J
    shl-long v12, v12, v17

    .line 392
    move/from16 v30, v4

    move/from16 v43, v5

    .end local v4    # "x1":I
    .end local v5    # "y1":I
    .local v30, "x1":I
    .local v43, "y1":I
    int-to-long v4, v7

    move-wide/from16 v44, v4

    int-to-long v4, v14

    mul-long v4, v4, v44

    move-wide/from16 v44, v4

    int-to-long v4, v1

    move-wide/from16 v46, v4

    int-to-long v4, v8

    mul-long v4, v4, v46

    add-long v4, v44, v4

    .line 394
    .local v4, "a6":J
    shl-long v4, v4, v17

    .line 395
    move-wide/from16 v44, v4

    .end local v4    # "a6":J
    .local v44, "a6":J
    int-to-long v4, v10

    move-wide/from16 v46, v4

    int-to-long v4, v11

    mul-long v4, v4, v46

    add-long v4, v44, v4

    .line 396
    .end local v44    # "a6":J
    .restart local v4    # "a6":J
    move-wide/from16 v44, v4

    .end local v4    # "a6":J
    .restart local v44    # "a6":J
    int-to-long v4, v10

    move-wide/from16 v46, v4

    int-to-long v4, v14

    mul-long v4, v4, v46

    move-wide/from16 v46, v4

    int-to-long v4, v1

    move-wide/from16 v48, v4

    int-to-long v4, v11

    mul-long v4, v4, v48

    add-long v4, v46, v4

    .line 398
    .local v4, "a7":J
    move-wide/from16 v46, v4

    .end local v4    # "a7":J
    .local v46, "a7":J
    int-to-long v4, v1

    move/from16 v49, v1

    move/from16 v48, v2

    .end local v1    # "x4":I
    .end local v2    # "y0":I
    .local v48, "y0":I
    .local v49, "x4":I
    int-to-long v1, v14

    mul-long v4, v4, v1

    .line 399
    .local v4, "a8":J
    shl-long v1, v4, v17

    .line 401
    .end local v4    # "a8":J
    .local v1, "a8":J
    int-to-long v4, v0

    move-wide/from16 v50, v1

    .end local v1    # "a8":J
    .local v50, "a8":J
    int-to-long v1, v3

    mul-long v4, v4, v1

    .line 402
    .local v4, "b0":J
    int-to-long v1, v0

    move-wide/from16 v52, v1

    int-to-long v1, v9

    mul-long v1, v1, v52

    move-wide/from16 v52, v1

    int-to-long v1, v6

    move-wide/from16 v54, v1

    int-to-long v1, v3

    mul-long v1, v1, v54

    add-long v1, v52, v1

    .line 404
    .local v1, "b1":J
    move-wide/from16 v52, v1

    .end local v1    # "b1":J
    .local v52, "b1":J
    int-to-long v1, v0

    move-wide/from16 v54, v1

    int-to-long v1, v15

    mul-long v1, v1, v54

    move-wide/from16 v54, v1

    int-to-long v1, v6

    move-wide/from16 v56, v1

    int-to-long v1, v9

    mul-long v1, v1, v56

    add-long v1, v54, v1

    move-wide/from16 v54, v1

    move-wide/from16 v56, v4

    move/from16 v1, v25

    .end local v4    # "b0":J
    .end local v25    # "u2":I
    .local v1, "u2":I
    .local v56, "b0":J
    int-to-long v4, v1

    move-wide/from16 v58, v4

    int-to-long v4, v3

    mul-long v4, v4, v58

    add-long v4, v54, v4

    .line 407
    .local v4, "b2":J
    move-wide/from16 v54, v4

    .end local v4    # "b2":J
    .local v54, "b2":J
    int-to-long v4, v6

    move-wide/from16 v58, v4

    int-to-long v4, v15

    mul-long v4, v4, v58

    move-wide/from16 v58, v4

    int-to-long v4, v1

    move-wide/from16 v60, v4

    int-to-long v4, v9

    mul-long v4, v4, v60

    add-long v4, v58, v4

    .line 409
    .local v4, "b3":J
    shl-long v4, v4, v17

    .line 410
    move-wide/from16 v58, v4

    .end local v4    # "b3":J
    .local v58, "b3":J
    int-to-long v4, v0

    move-wide/from16 v60, v4

    move/from16 v2, v28

    .end local v28    # "v3":I
    .local v2, "v3":I
    int-to-long v4, v2

    mul-long v4, v4, v60

    move-wide/from16 v60, v4

    move v5, v7

    move/from16 v25, v8

    move/from16 v4, v26

    .end local v7    # "x2":I
    .end local v8    # "y2":I
    .end local v26    # "u3":I
    .local v4, "u3":I
    .local v5, "x2":I
    .local v25, "y2":I
    int-to-long v7, v4

    move-wide/from16 v62, v7

    int-to-long v7, v3

    mul-long v7, v7, v62

    add-long v7, v60, v7

    add-long v7, v58, v7

    .line 412
    .end local v58    # "b3":J
    .local v7, "b3":J
    move-wide/from16 v58, v7

    .end local v7    # "b3":J
    .restart local v58    # "b3":J
    int-to-long v7, v1

    move-wide/from16 v60, v7

    int-to-long v7, v15

    mul-long v7, v7, v60

    .line 413
    .local v7, "b4":J
    shl-long v7, v7, v17

    .line 414
    move-wide/from16 v60, v7

    .end local v7    # "b4":J
    .local v60, "b4":J
    int-to-long v7, v0

    move/from16 v26, v0

    move-wide/from16 v62, v7

    move/from16 v0, v31

    .end local v31    # "v4":I
    .local v0, "v4":I
    .local v26, "u0":I
    int-to-long v7, v0

    mul-long v7, v7, v62

    move-wide/from16 v62, v7

    int-to-long v7, v6

    move-wide/from16 v64, v7

    int-to-long v7, v2

    mul-long v7, v7, v64

    add-long v7, v62, v7

    move-wide/from16 v62, v7

    int-to-long v7, v4

    move-wide/from16 v64, v7

    int-to-long v7, v9

    mul-long v7, v7, v64

    add-long v7, v62, v7

    move/from16 v28, v5

    move-wide/from16 v62, v7

    move/from16 v5, v29

    .end local v29    # "u4":I
    .local v5, "u4":I
    .local v28, "x2":I
    int-to-long v7, v5

    move-wide/from16 v64, v7

    int-to-long v7, v3

    mul-long v7, v7, v64

    add-long v7, v62, v7

    add-long v7, v60, v7

    .line 418
    .end local v60    # "b4":J
    .restart local v7    # "b4":J
    move-wide/from16 v60, v7

    .end local v7    # "b4":J
    .restart local v60    # "b4":J
    int-to-long v7, v6

    move/from16 v29, v6

    move-wide/from16 v62, v7

    .end local v6    # "u1":I
    .local v29, "u1":I
    int-to-long v6, v0

    mul-long v7, v62, v6

    move-wide/from16 v62, v7

    int-to-long v6, v1

    move-wide/from16 v64, v6

    int-to-long v6, v2

    mul-long v6, v6, v64

    add-long v6, v62, v6

    move-wide/from16 v62, v6

    int-to-long v6, v4

    move-wide/from16 v64, v6

    int-to-long v6, v15

    mul-long v6, v6, v64

    add-long v6, v62, v6

    move-wide/from16 v62, v6

    int-to-long v6, v5

    move-wide/from16 v64, v6

    int-to-long v6, v9

    mul-long v6, v6, v64

    add-long v6, v62, v6

    .line 423
    .local v6, "b5":J
    move-wide/from16 v62, v6

    .end local v6    # "b5":J
    .local v62, "b5":J
    int-to-long v6, v1

    move-wide/from16 v64, v6

    int-to-long v6, v0

    mul-long v6, v6, v64

    move-wide/from16 v64, v6

    int-to-long v6, v5

    move-wide/from16 v66, v6

    int-to-long v6, v15

    mul-long v6, v6, v66

    add-long v6, v64, v6

    .line 425
    .local v6, "b6":J
    shl-long v6, v6, v17

    .line 426
    move-wide/from16 v64, v6

    .end local v6    # "b6":J
    .local v64, "b6":J
    int-to-long v6, v4

    move-wide/from16 v66, v6

    int-to-long v6, v2

    mul-long v6, v6, v66

    add-long v6, v64, v6

    .line 427
    .end local v64    # "b6":J
    .restart local v6    # "b6":J
    move-wide/from16 v64, v6

    .end local v6    # "b6":J
    .restart local v64    # "b6":J
    int-to-long v6, v4

    move v8, v3

    move/from16 v31, v4

    .end local v3    # "v0":I
    .end local v4    # "u3":I
    .local v8, "v0":I
    .local v31, "u3":I
    int-to-long v3, v0

    mul-long v6, v6, v3

    int-to-long v3, v5

    move-wide/from16 v66, v3

    int-to-long v3, v2

    mul-long v3, v3, v66

    add-long/2addr v6, v3

    .line 429
    .local v6, "b7":J
    int-to-long v3, v5

    move/from16 v66, v1

    move/from16 v67, v2

    .end local v1    # "u2":I
    .end local v2    # "v3":I
    .local v66, "u2":I
    .local v67, "v3":I
    int-to-long v1, v0

    mul-long v3, v3, v1

    .line 432
    .local v3, "b8":J
    const-wide/16 v1, 0x4c

    mul-long v68, v62, v1

    sub-long v32, v32, v68

    .line 433
    const-wide/16 v68, 0x26

    mul-long v70, v64, v68

    sub-long v34, v34, v70

    .line 434
    mul-long v70, v6, v68

    sub-long v36, v36, v70

    .line 435
    mul-long v1, v1, v3

    sub-long v1, v38, v1

    .line 437
    .end local v38    # "a3":J
    .local v1, "a3":J
    sub-long v12, v12, v56

    .line 438
    sub-long v38, v44, v52

    .line 439
    .end local v44    # "a6":J
    .local v38, "a6":J
    sub-long v44, v46, v54

    .line 440
    .end local v46    # "a7":J
    .local v44, "a7":J
    sub-long v46, v50, v58

    .line 443
    .end local v50    # "a8":J
    .local v46, "a8":J
    move/from16 v50, v0

    .end local v0    # "v4":I
    .local v50, "v4":I
    add-int v0, v42, v26

    move-wide/from16 v70, v1

    .end local v1    # "a3":J
    .end local v42    # "x0":I
    .local v0, "x0":I
    .local v70, "a3":J
    add-int v1, v48, v8

    .line 444
    .end local v48    # "y0":I
    .local v1, "y0":I
    add-int v2, v30, v29

    move-wide/from16 v72, v3

    .end local v3    # "b8":J
    .end local v30    # "x1":I
    .local v2, "x1":I
    .local v72, "b8":J
    add-int v3, v43, v9

    .line 445
    .end local v43    # "y1":I
    .local v3, "y1":I
    add-int v4, v28, v66

    move/from16 v28, v5

    .end local v5    # "u4":I
    .local v4, "x2":I
    .local v28, "u4":I
    add-int v5, v25, v15

    .line 446
    .end local v25    # "y2":I
    .local v5, "y2":I
    add-int v10, v10, v31

    add-int v11, v11, v67

    .line 447
    move-wide/from16 v42, v6

    .end local v6    # "b7":J
    .local v42, "b7":J
    add-int v6, v49, v28

    .end local v49    # "x4":I
    .local v6, "x4":I
    add-int v14, v14, v50

    .line 449
    move/from16 v25, v8

    .end local v8    # "v0":I
    .local v25, "v0":I
    int-to-long v7, v0

    move-wide/from16 v48, v7

    int-to-long v7, v1

    mul-long v7, v7, v48

    .line 450
    .local v7, "c0":J
    move-wide/from16 v48, v7

    .end local v7    # "c0":J
    .local v48, "c0":J
    int-to-long v7, v0

    move-wide/from16 v74, v7

    int-to-long v7, v3

    mul-long v7, v7, v74

    move-wide/from16 v74, v7

    int-to-long v7, v2

    move-wide/from16 v76, v7

    int-to-long v7, v1

    mul-long v7, v7, v76

    add-long v7, v74, v7

    .line 452
    .local v7, "c1":J
    move-wide/from16 v74, v7

    .end local v7    # "c1":J
    .local v74, "c1":J
    int-to-long v7, v0

    move-wide/from16 v76, v7

    int-to-long v7, v5

    mul-long v7, v7, v76

    move-wide/from16 v76, v7

    int-to-long v7, v2

    move-wide/from16 v78, v7

    int-to-long v7, v3

    mul-long v7, v7, v78

    add-long v7, v76, v7

    move-wide/from16 v76, v7

    int-to-long v7, v4

    move-wide/from16 v78, v7

    int-to-long v7, v1

    mul-long v7, v7, v78

    add-long v7, v76, v7

    .line 455
    .local v7, "c2":J
    move-wide/from16 v76, v7

    .end local v7    # "c2":J
    .local v76, "c2":J
    int-to-long v7, v2

    move-wide/from16 v78, v7

    int-to-long v7, v5

    mul-long v7, v7, v78

    move-wide/from16 v78, v7

    int-to-long v7, v4

    move-wide/from16 v80, v7

    int-to-long v7, v3

    mul-long v7, v7, v80

    add-long v7, v78, v7

    .line 457
    .local v7, "c3":J
    shl-long v7, v7, v17

    .line 458
    move-wide/from16 v78, v7

    .end local v7    # "c3":J
    .local v78, "c3":J
    int-to-long v7, v0

    move-wide/from16 v80, v7

    int-to-long v7, v11

    mul-long v7, v7, v80

    move-wide/from16 v80, v7

    int-to-long v7, v10

    move-wide/from16 v82, v7

    int-to-long v7, v1

    mul-long v7, v7, v82

    add-long v7, v80, v7

    add-long v7, v78, v7

    .line 460
    .end local v78    # "c3":J
    .restart local v7    # "c3":J
    move-wide/from16 v78, v7

    .end local v7    # "c3":J
    .restart local v78    # "c3":J
    int-to-long v7, v4

    move-wide/from16 v80, v7

    int-to-long v7, v5

    mul-long v7, v7, v80

    .line 461
    .local v7, "c4":J
    shl-long v7, v7, v17

    .line 462
    move-wide/from16 v80, v7

    .end local v7    # "c4":J
    .local v80, "c4":J
    int-to-long v7, v0

    move-wide/from16 v82, v7

    int-to-long v7, v14

    mul-long v7, v7, v82

    move-wide/from16 v82, v7

    int-to-long v7, v2

    move-wide/from16 v84, v7

    int-to-long v7, v11

    mul-long v7, v7, v84

    add-long v7, v82, v7

    move-wide/from16 v82, v7

    int-to-long v7, v10

    move-wide/from16 v84, v7

    int-to-long v7, v3

    mul-long v7, v7, v84

    add-long v7, v82, v7

    move-wide/from16 v82, v7

    int-to-long v7, v6

    move-wide/from16 v84, v7

    int-to-long v7, v1

    mul-long v7, v7, v84

    add-long v7, v82, v7

    add-long v7, v80, v7

    .line 466
    .end local v80    # "c4":J
    .restart local v7    # "c4":J
    move/from16 v30, v0

    move/from16 v51, v1

    .end local v0    # "x0":I
    .end local v1    # "y0":I
    .local v30, "x0":I
    .local v51, "y0":I
    int-to-long v0, v2

    move-wide/from16 v80, v0

    int-to-long v0, v14

    mul-long v0, v0, v80

    move-wide/from16 v80, v0

    int-to-long v0, v4

    move-wide/from16 v82, v0

    int-to-long v0, v11

    mul-long v0, v0, v82

    add-long v0, v80, v0

    move-wide/from16 v80, v0

    int-to-long v0, v10

    move-wide/from16 v82, v0

    int-to-long v0, v5

    mul-long v0, v0, v82

    add-long v0, v80, v0

    move-wide/from16 v80, v0

    int-to-long v0, v6

    move-wide/from16 v82, v0

    int-to-long v0, v3

    mul-long v0, v0, v82

    add-long v0, v80, v0

    .line 470
    .local v0, "c5":J
    shl-long v0, v0, v17

    .line 471
    move-wide/from16 v80, v0

    .end local v0    # "c5":J
    .local v80, "c5":J
    int-to-long v0, v4

    move-wide/from16 v82, v0

    int-to-long v0, v14

    mul-long v0, v0, v82

    move-wide/from16 v82, v0

    int-to-long v0, v6

    move-wide/from16 v84, v0

    int-to-long v0, v5

    mul-long v0, v0, v84

    add-long v0, v82, v0

    .line 473
    .local v0, "c6":J
    shl-long v0, v0, v17

    .line 474
    move-wide/from16 v82, v0

    .end local v0    # "c6":J
    .local v82, "c6":J
    int-to-long v0, v10

    move-wide/from16 v84, v0

    int-to-long v0, v11

    mul-long v0, v0, v84

    add-long v0, v82, v0

    .line 475
    .end local v82    # "c6":J
    .restart local v0    # "c6":J
    move-wide/from16 v82, v0

    .end local v0    # "c6":J
    .restart local v82    # "c6":J
    int-to-long v0, v10

    move-wide/from16 v84, v0

    int-to-long v0, v14

    mul-long v0, v0, v84

    move-wide/from16 v84, v0

    int-to-long v0, v6

    move-wide/from16 v86, v0

    int-to-long v0, v11

    mul-long v0, v0, v86

    add-long v0, v84, v0

    .line 477
    .local v0, "c7":J
    move-wide/from16 v84, v0

    .end local v0    # "c7":J
    .local v84, "c7":J
    int-to-long v0, v6

    move-wide/from16 v86, v0

    int-to-long v0, v14

    mul-long v0, v0, v86

    .line 478
    .local v0, "c8":J
    shl-long v0, v0, v17

    .line 483
    sub-long v86, v78, v70

    move-wide/from16 v88, v0

    .end local v0    # "c8":J
    .local v88, "c8":J
    add-long v0, v46, v86

    .line 484
    .local v0, "t":J
    move/from16 v86, v2

    .end local v2    # "x1":I
    .local v86, "x1":I
    long-to-int v2, v0

    const v87, 0x3ffffff

    and-int v2, v2, v87

    .local v2, "z8":I
    const/16 v90, 0x1a

    shr-long v0, v0, v90

    .line 486
    sub-long v91, v7, v40

    sub-long v91, v91, v60

    add-long v0, v0, v91

    .line 489
    move/from16 v91, v3

    .end local v3    # "y1":I
    .local v91, "y1":I
    long-to-int v3, v0

    const v92, 0x1ffffff

    and-int v3, v3, v92

    .local v3, "z9":I
    const/16 v93, 0x19

    shr-long v0, v0, v93

    .line 490
    add-long v94, v0, v80

    sub-long v94, v94, v12

    mul-long v94, v94, v68

    add-long v0, v32, v94

    .line 491
    move/from16 v94, v3

    .end local v3    # "z9":I
    .local v94, "z9":I
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v16

    shr-long v0, v0, v90

    .line 492
    sub-long v95, v82, v38

    mul-long v95, v95, v68

    add-long v95, v34, v95

    add-long v0, v0, v95

    .line 493
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v17

    shr-long v0, v0, v90

    .line 494
    sub-long v16, v84, v44

    mul-long v16, v16, v68

    add-long v16, v36, v16

    add-long v0, v0, v16

    .line 495
    long-to-int v3, v0

    and-int v3, v3, v92

    aput v3, p2, v19

    shr-long v0, v0, v93

    .line 496
    sub-long v16, v88, v46

    mul-long v16, v16, v68

    add-long v16, v70, v16

    add-long v0, v0, v16

    .line 497
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v20

    shr-long v0, v0, v90

    .line 499
    mul-long v16, v60, v68

    add-long v16, v40, v16

    add-long v0, v0, v16

    .line 500
    long-to-int v3, v0

    and-int v3, v3, v92

    aput v3, p2, v22

    shr-long v0, v0, v93

    .line 501
    sub-long v16, v48, v32

    add-long v16, v12, v16

    add-long v0, v0, v16

    .line 502
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v23

    shr-long v0, v0, v90

    .line 503
    sub-long v16, v74, v34

    add-long v16, v38, v16

    add-long v0, v0, v16

    .line 504
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v18

    shr-long v0, v0, v90

    .line 505
    sub-long v16, v76, v36

    add-long v16, v44, v16

    add-long v0, v0, v16

    .line 506
    long-to-int v3, v0

    and-int v3, v3, v92

    aput v3, p2, v21

    shr-long v0, v0, v93

    .line 507
    move-wide/from16 v16, v0

    .end local v0    # "t":J
    .local v16, "t":J
    int-to-long v0, v2

    add-long v0, v16, v0

    .line 508
    .end local v16    # "t":J
    .restart local v0    # "t":J
    long-to-int v3, v0

    and-int v3, v3, v87

    aput v3, p2, v24

    shr-long v0, v0, v90

    .line 509
    long-to-int v3, v0

    add-int v3, v94, v3

    aput v3, p2, v27

    .line 510
    return-void
.end method

.method public static negate([I[I)V
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

    .line 514
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 516
    aget v1, p0, v0

    neg-int v1, v1

    aput v1, p1, v0

    .line 514
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 518
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static normalize([I)V
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

    .line 522
    const/16 v0, 0x9

    aget v0, p0, v0

    ushr-int/lit8 v0, v0, 0x17

    and-int/lit8 v0, v0, 0x1

    .line 523
    .local v0, "x":I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    .line 524
    neg-int v1, v0

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    .line 526
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

    .line 530
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, p0, v1

    .line 531
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    .line 533
    aput v1, p0, v0

    .line 531
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 535
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static powPm5d8([I[I[I)V
    .locals 12
    .param p0, "x"    # [I
    .param p1, "rx2"    # [I
    .param p2, "rz"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "rx2",
            "rz"
        }
    .end annotation

    .line 543
    move-object v0, p1

    .local v0, "x2":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 544
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .local v1, "x3":[I
    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 545
    move-object v2, v1

    .local v2, "x5":[I
    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 546
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .local v4, "x10":[I
    const/4 v5, 0x5

    invoke-static {v2, v5, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v2, v4, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 547
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v6

    .local v6, "x15":[I
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v2, v6, v6}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 548
    move-object v5, v2

    .local v5, "x25":[I
    const/16 v7, 0xa

    invoke-static {v6, v7, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v4, v5, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 549
    move-object v7, v4

    .local v7, "x50":[I
    const/16 v8, 0x19

    invoke-static {v5, v8, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v5, v7, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 550
    move-object v9, v6

    .local v9, "x75":[I
    invoke-static {v7, v8, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v5, v9, v9}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 551
    move-object v8, v5

    .local v8, "x125":[I
    const/16 v10, 0x32

    invoke-static {v9, v10, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v7, v8, v8}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 552
    move-object v10, v7

    .local v10, "x250":[I
    const/16 v11, 0x7d

    invoke-static {v8, v11, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v8, v10, v10}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 554
    move-object v11, v8

    .line 555
    .local v11, "t":[I
    invoke-static {v10, v3, v11}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    .line 556
    invoke-static {v11, p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 557
    return-void
.end method

.method private static reduce([II)V
    .locals 12
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

    .line 561
    const/16 v0, 0x9

    aget v1, p0, v0

    .local v1, "t":I
    const v2, 0xffffff

    and-int/2addr v2, v1

    .line 562
    .local v2, "z9":I
    shr-int/lit8 v3, v1, 0x18

    add-int/2addr v3, p1

    .line 564
    .end local v1    # "t":I
    .local v3, "t":I
    mul-int/lit8 v1, v3, 0x13

    int-to-long v4, v1

    .line 565
    .local v4, "cc":J
    const/4 v1, 0x0

    aget v6, p0, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    long-to-int v6, v4

    const v7, 0x3ffffff

    and-int/2addr v6, v7

    aput v6, p0, v1

    const/16 v1, 0x1a

    shr-long/2addr v4, v1

    .line 566
    const/4 v6, 0x1

    aget v8, p0, v6

    int-to-long v8, v8

    add-long/2addr v4, v8

    long-to-int v8, v4

    and-int/2addr v8, v7

    aput v8, p0, v6

    shr-long/2addr v4, v1

    .line 567
    const/4 v6, 0x2

    aget v8, p0, v6

    int-to-long v8, v8

    add-long/2addr v4, v8

    long-to-int v8, v4

    const v9, 0x1ffffff

    and-int/2addr v8, v9

    aput v8, p0, v6

    const/16 v6, 0x19

    shr-long/2addr v4, v6

    .line 568
    const/4 v8, 0x3

    aget v10, p0, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-int v10, v4

    and-int/2addr v10, v7

    aput v10, p0, v8

    shr-long/2addr v4, v1

    .line 569
    const/4 v8, 0x4

    aget v10, p0, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-int v10, v4

    and-int/2addr v10, v9

    aput v10, p0, v8

    shr-long/2addr v4, v6

    .line 570
    const/4 v8, 0x5

    aget v10, p0, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-int v10, v4

    and-int/2addr v10, v7

    aput v10, p0, v8

    shr-long/2addr v4, v1

    .line 571
    const/4 v8, 0x6

    aget v10, p0, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-int v10, v4

    and-int/2addr v10, v7

    aput v10, p0, v8

    shr-long/2addr v4, v1

    .line 572
    const/4 v8, 0x7

    aget v10, p0, v8

    int-to-long v10, v10

    add-long/2addr v4, v10

    long-to-int v10, v4

    and-int/2addr v9, v10

    aput v9, p0, v8

    shr-long/2addr v4, v6

    .line 573
    const/16 v6, 0x8

    aget v8, p0, v6

    int-to-long v8, v8

    add-long/2addr v4, v8

    long-to-int v8, v4

    and-int/2addr v7, v8

    aput v7, p0, v6

    shr-long/2addr v4, v1

    .line 574
    long-to-int v1, v4

    add-int/2addr v1, v2

    aput v1, p0, v0

    .line 575
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

    .line 707
    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 709
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 711
    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    goto :goto_0

    .line 713
    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 95
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

    .line 579
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 580
    .local v1, "x0":I
    const/4 v2, 0x1

    aget v3, p0, v2

    .line 581
    .local v3, "x1":I
    const/4 v4, 0x2

    aget v5, p0, v4

    .line 582
    .local v5, "x2":I
    const/4 v6, 0x3

    aget v7, p0, v6

    .line 583
    .local v7, "x3":I
    const/4 v8, 0x4

    aget v9, p0, v8

    .line 585
    .local v9, "x4":I
    const/4 v10, 0x5

    aget v11, p0, v10

    .line 586
    .local v11, "u0":I
    const/4 v12, 0x6

    aget v13, p0, v12

    .line 587
    .local v13, "u1":I
    const/4 v14, 0x7

    aget v15, p0, v14

    .line 588
    .local v15, "u2":I
    const/16 v16, 0x8

    const/16 v17, 0x0

    aget v0, p0, v16

    .line 589
    .local v0, "u3":I
    const/16 v18, 0x9

    const/16 v19, 0x1

    aget v2, p0, v18

    .line 591
    .local v2, "u4":I
    const/16 v20, 0x2

    mul-int/lit8 v4, v3, 0x2

    .line 592
    .local v4, "x1_2":I
    const/16 v21, 0x3

    mul-int/lit8 v6, v5, 0x2

    .line 593
    .local v6, "x2_2":I
    const/16 v22, 0x4

    mul-int/lit8 v8, v7, 0x2

    .line 594
    .local v8, "x3_2":I
    const/16 v23, 0x5

    mul-int/lit8 v10, v9, 0x2

    .line 596
    .local v10, "x4_2":I
    move/from16 v25, v15

    const/16 v24, 0x7

    .end local v15    # "u2":I
    .local v25, "u2":I
    int-to-long v14, v1

    move/from16 v27, v13

    const/16 v26, 0x6

    .end local v13    # "u1":I
    .local v27, "u1":I
    int-to-long v12, v1

    mul-long v14, v14, v12

    .line 597
    .local v14, "a0":J
    int-to-long v12, v1

    move-wide/from16 v28, v12

    int-to-long v12, v4

    mul-long v12, v12, v28

    .line 598
    .local v12, "a1":J
    move-wide/from16 v28, v12

    .end local v12    # "a1":J
    .local v28, "a1":J
    int-to-long v12, v1

    move-wide/from16 v30, v12

    int-to-long v12, v6

    mul-long v12, v12, v30

    move-wide/from16 v30, v12

    int-to-long v12, v3

    move-wide/from16 v32, v12

    int-to-long v12, v3

    mul-long v12, v12, v32

    add-long v12, v30, v12

    .line 600
    .local v12, "a2":J
    move-wide/from16 v30, v12

    .end local v12    # "a2":J
    .local v30, "a2":J
    int-to-long v12, v4

    move-wide/from16 v32, v12

    int-to-long v12, v6

    mul-long v12, v12, v32

    move-wide/from16 v32, v12

    int-to-long v12, v1

    move-wide/from16 v34, v12

    int-to-long v12, v8

    mul-long v12, v12, v34

    add-long v12, v32, v12

    .line 602
    .local v12, "a3":J
    move-wide/from16 v32, v12

    .end local v12    # "a3":J
    .local v32, "a3":J
    int-to-long v12, v5

    move-wide/from16 v34, v12

    int-to-long v12, v6

    mul-long v12, v12, v34

    move-wide/from16 v34, v12

    int-to-long v12, v1

    move-wide/from16 v36, v12

    int-to-long v12, v10

    mul-long v12, v12, v36

    add-long v12, v34, v12

    move-wide/from16 v34, v12

    int-to-long v12, v3

    move-wide/from16 v36, v12

    int-to-long v12, v8

    mul-long v12, v12, v36

    add-long v12, v34, v12

    .line 605
    .local v12, "a4":J
    move-wide/from16 v34, v12

    .end local v12    # "a4":J
    .local v34, "a4":J
    int-to-long v12, v4

    move/from16 v36, v3

    move/from16 v37, v4

    .end local v3    # "x1":I
    .end local v4    # "x1_2":I
    .local v36, "x1":I
    .local v37, "x1_2":I
    int-to-long v3, v10

    mul-long v12, v12, v3

    int-to-long v3, v6

    move-wide/from16 v38, v3

    int-to-long v3, v8

    mul-long v3, v3, v38

    add-long/2addr v12, v3

    .line 607
    .local v12, "a5":J
    int-to-long v3, v6

    move-wide/from16 v38, v3

    int-to-long v3, v10

    mul-long v3, v3, v38

    move-wide/from16 v38, v3

    int-to-long v3, v7

    move-wide/from16 v40, v3

    int-to-long v3, v7

    mul-long v3, v3, v40

    add-long v3, v38, v3

    .line 609
    .local v3, "a6":J
    move-wide/from16 v38, v3

    .end local v3    # "a6":J
    .local v38, "a6":J
    int-to-long v3, v7

    move-wide/from16 v40, v3

    int-to-long v3, v10

    mul-long v3, v3, v40

    .line 610
    .local v3, "a7":J
    move-wide/from16 v40, v3

    .end local v3    # "a7":J
    .local v40, "a7":J
    int-to-long v3, v9

    move-wide/from16 v42, v3

    int-to-long v3, v10

    mul-long v3, v3, v42

    .line 612
    .local v3, "a8":J
    move/from16 v42, v1

    .end local v1    # "x0":I
    .local v42, "x0":I
    mul-int/lit8 v1, v27, 0x2

    .line 613
    .local v1, "u1_2":I
    move-wide/from16 v43, v3

    .end local v3    # "a8":J
    .local v43, "a8":J
    mul-int/lit8 v3, v25, 0x2

    .line 614
    .local v3, "u2_2":I
    mul-int/lit8 v4, v0, 0x2

    .line 615
    .local v4, "u3_2":I
    move/from16 v45, v5

    .end local v5    # "x2":I
    .local v45, "x2":I
    mul-int/lit8 v5, v2, 0x2

    .line 617
    .local v5, "u4_2":I
    move/from16 v47, v6

    move/from16 v46, v7

    .end local v6    # "x2_2":I
    .end local v7    # "x3":I
    .local v46, "x3":I
    .local v47, "x2_2":I
    int-to-long v6, v11

    move-wide/from16 v48, v6

    int-to-long v6, v11

    mul-long v6, v6, v48

    .line 618
    .local v6, "b0":J
    move-wide/from16 v48, v6

    .end local v6    # "b0":J
    .local v48, "b0":J
    int-to-long v6, v11

    move-wide/from16 v50, v6

    int-to-long v6, v1

    mul-long v6, v6, v50

    .line 619
    .local v6, "b1":J
    move-wide/from16 v50, v6

    .end local v6    # "b1":J
    .local v50, "b1":J
    int-to-long v6, v11

    move-wide/from16 v52, v6

    int-to-long v6, v3

    mul-long v6, v6, v52

    move-wide/from16 v52, v6

    move/from16 v6, v27

    move/from16 v27, v8

    .end local v8    # "x3_2":I
    .local v6, "u1":I
    .local v27, "x3_2":I
    int-to-long v7, v6

    move-wide/from16 v54, v7

    int-to-long v7, v6

    mul-long v7, v7, v54

    add-long v7, v52, v7

    .line 621
    .local v7, "b2":J
    move-wide/from16 v52, v7

    .end local v7    # "b2":J
    .local v52, "b2":J
    int-to-long v7, v1

    move-wide/from16 v54, v7

    int-to-long v7, v3

    mul-long v7, v7, v54

    move-wide/from16 v54, v7

    int-to-long v7, v11

    move-wide/from16 v56, v7

    int-to-long v7, v4

    mul-long v7, v7, v56

    add-long v7, v54, v7

    .line 623
    .local v7, "b3":J
    move-wide/from16 v54, v7

    move/from16 v7, v25

    move/from16 v25, v9

    .end local v9    # "x4":I
    .local v7, "u2":I
    .local v25, "x4":I
    .local v54, "b3":J
    int-to-long v8, v7

    move/from16 v56, v7

    move-wide/from16 v57, v8

    .end local v7    # "u2":I
    .local v56, "u2":I
    int-to-long v7, v3

    mul-long v8, v57, v7

    move-wide/from16 v57, v8

    int-to-long v7, v11

    move-wide/from16 v59, v7

    int-to-long v7, v5

    mul-long v7, v7, v59

    add-long v7, v57, v7

    move-wide/from16 v57, v7

    int-to-long v7, v6

    move v9, v6

    move-wide/from16 v59, v7

    .end local v6    # "u1":I
    .local v9, "u1":I
    int-to-long v6, v4

    mul-long v7, v59, v6

    add-long v7, v57, v7

    .line 626
    .local v7, "b4":J
    move-wide/from16 v57, v7

    .end local v7    # "b4":J
    .local v57, "b4":J
    int-to-long v6, v1

    move-wide/from16 v59, v6

    int-to-long v6, v5

    mul-long v6, v6, v59

    move-wide/from16 v59, v6

    int-to-long v6, v3

    move-wide/from16 v61, v6

    int-to-long v6, v4

    mul-long v6, v6, v61

    add-long v6, v59, v6

    .line 628
    .local v6, "b5":J
    move-wide/from16 v59, v6

    .end local v6    # "b5":J
    .local v59, "b5":J
    int-to-long v6, v3

    move v8, v3

    move/from16 v61, v4

    .end local v3    # "u2_2":I
    .end local v4    # "u3_2":I
    .local v8, "u2_2":I
    .local v61, "u3_2":I
    int-to-long v3, v5

    mul-long v6, v6, v3

    int-to-long v3, v0

    move-wide/from16 v62, v3

    int-to-long v3, v0

    mul-long v3, v3, v62

    add-long/2addr v6, v3

    .line 630
    .local v6, "b6":J
    int-to-long v3, v0

    move/from16 v62, v0

    move/from16 v63, v1

    .end local v0    # "u3":I
    .end local v1    # "u1_2":I
    .local v62, "u3":I
    .local v63, "u1_2":I
    int-to-long v0, v5

    mul-long v3, v3, v0

    .line 631
    .local v3, "b7":J
    int-to-long v0, v2

    move-wide/from16 v64, v0

    int-to-long v0, v5

    mul-long v0, v0, v64

    .line 633
    .local v0, "b8":J
    const-wide/16 v64, 0x26

    mul-long v66, v59, v64

    sub-long v14, v14, v66

    .line 634
    mul-long v66, v6, v64

    sub-long v28, v28, v66

    .line 635
    mul-long v66, v3, v64

    sub-long v30, v30, v66

    .line 636
    mul-long v66, v0, v64

    sub-long v32, v32, v66

    .line 638
    sub-long v12, v12, v48

    .line 639
    sub-long v38, v38, v50

    .line 640
    sub-long v40, v40, v52

    .line 641
    sub-long v43, v43, v54

    .line 644
    move-wide/from16 v66, v0

    .end local v0    # "b8":J
    .local v66, "b8":J
    add-int v0, v42, v11

    .line 645
    .end local v42    # "x0":I
    .local v0, "x0":I
    add-int v1, v36, v9

    .line 646
    .end local v36    # "x1":I
    .local v1, "x1":I
    move/from16 v36, v2

    .end local v2    # "u4":I
    .local v36, "u4":I
    add-int v2, v45, v56

    .line 647
    .end local v45    # "x2":I
    .local v2, "x2":I
    move-wide/from16 v68, v3

    .end local v3    # "b7":J
    .local v68, "b7":J
    add-int v3, v46, v62

    .line 648
    .end local v46    # "x3":I
    .local v3, "x3":I
    add-int v4, v25, v36

    .line 650
    .end local v25    # "x4":I
    .local v4, "x4":I
    move/from16 v25, v5

    .end local v5    # "u4_2":I
    .local v25, "u4_2":I
    mul-int/lit8 v5, v1, 0x2

    .line 651
    .end local v37    # "x1_2":I
    .local v5, "x1_2":I
    move-wide/from16 v45, v6

    .end local v6    # "b6":J
    .local v45, "b6":J
    mul-int/lit8 v6, v2, 0x2

    .line 652
    .end local v47    # "x2_2":I
    .local v6, "x2_2":I
    mul-int/lit8 v7, v3, 0x2

    .line 653
    .end local v27    # "x3_2":I
    .local v7, "x3_2":I
    mul-int/lit8 v10, v4, 0x2

    .line 655
    move/from16 v37, v8

    move/from16 v27, v9

    .end local v8    # "u2_2":I
    .end local v9    # "u1":I
    .local v27, "u1":I
    .local v37, "u2_2":I
    int-to-long v8, v0

    move-wide/from16 v70, v8

    int-to-long v8, v0

    mul-long v8, v8, v70

    .line 656
    .local v8, "c0":J
    move-wide/from16 v70, v8

    .end local v8    # "c0":J
    .local v70, "c0":J
    int-to-long v8, v0

    move-wide/from16 v72, v8

    int-to-long v8, v5

    mul-long v8, v8, v72

    .line 657
    .local v8, "c1":J
    move-wide/from16 v72, v8

    .end local v8    # "c1":J
    .local v72, "c1":J
    int-to-long v8, v0

    move-wide/from16 v74, v8

    int-to-long v8, v6

    mul-long v8, v8, v74

    move-wide/from16 v74, v8

    int-to-long v8, v1

    move-wide/from16 v76, v8

    int-to-long v8, v1

    mul-long v8, v8, v76

    add-long v8, v74, v8

    .line 659
    .local v8, "c2":J
    move-wide/from16 v74, v8

    .end local v8    # "c2":J
    .local v74, "c2":J
    int-to-long v8, v5

    move-wide/from16 v76, v8

    int-to-long v8, v6

    mul-long v8, v8, v76

    move-wide/from16 v76, v8

    int-to-long v8, v0

    move-wide/from16 v78, v8

    int-to-long v8, v7

    mul-long v8, v8, v78

    add-long v8, v76, v8

    .line 661
    .local v8, "c3":J
    move-wide/from16 v76, v8

    .end local v8    # "c3":J
    .local v76, "c3":J
    int-to-long v8, v2

    move-wide/from16 v78, v8

    int-to-long v8, v6

    mul-long v8, v8, v78

    move-wide/from16 v78, v8

    int-to-long v8, v0

    move-wide/from16 v80, v8

    int-to-long v8, v10

    mul-long v8, v8, v80

    add-long v8, v78, v8

    move-wide/from16 v78, v8

    int-to-long v8, v1

    move/from16 v42, v0

    move/from16 v47, v1

    .end local v0    # "x0":I
    .end local v1    # "x1":I
    .restart local v42    # "x0":I
    .local v47, "x1":I
    int-to-long v0, v7

    mul-long v8, v8, v0

    add-long v8, v78, v8

    .line 664
    .local v8, "c4":J
    int-to-long v0, v5

    move-wide/from16 v78, v0

    int-to-long v0, v10

    mul-long v0, v0, v78

    move-wide/from16 v78, v0

    int-to-long v0, v6

    move-wide/from16 v80, v0

    int-to-long v0, v7

    mul-long v0, v0, v80

    add-long v0, v78, v0

    .line 666
    .local v0, "c5":J
    move-wide/from16 v78, v0

    .end local v0    # "c5":J
    .local v78, "c5":J
    int-to-long v0, v6

    move-wide/from16 v80, v0

    int-to-long v0, v10

    mul-long v0, v0, v80

    move-wide/from16 v80, v0

    int-to-long v0, v3

    move-wide/from16 v82, v0

    int-to-long v0, v3

    mul-long v0, v0, v82

    add-long v0, v80, v0

    .line 668
    .local v0, "c6":J
    move-wide/from16 v80, v0

    .end local v0    # "c6":J
    .local v80, "c6":J
    int-to-long v0, v3

    move-wide/from16 v82, v0

    int-to-long v0, v10

    mul-long v0, v0, v82

    .line 669
    .local v0, "c7":J
    move-wide/from16 v82, v0

    .end local v0    # "c7":J
    .local v82, "c7":J
    int-to-long v0, v4

    move-wide/from16 v84, v0

    int-to-long v0, v10

    mul-long v0, v0, v84

    .line 674
    .local v0, "c8":J
    sub-long v84, v76, v32

    move-wide/from16 v86, v0

    .end local v0    # "c8":J
    .local v86, "c8":J
    add-long v0, v43, v84

    .line 675
    .local v0, "t":J
    move/from16 v84, v2

    .end local v2    # "x2":I
    .local v84, "x2":I
    long-to-int v2, v0

    const v85, 0x3ffffff

    and-int v2, v2, v85

    .local v2, "z8":I
    const/16 v88, 0x1a

    shr-long v0, v0, v88

    .line 677
    sub-long v89, v8, v34

    sub-long v89, v89, v57

    add-long v0, v0, v89

    .line 680
    move/from16 v89, v3

    .end local v3    # "x3":I
    .local v89, "x3":I
    long-to-int v3, v0

    const v90, 0x1ffffff

    and-int v3, v3, v90

    .local v3, "z9":I
    const/16 v91, 0x19

    shr-long v0, v0, v91

    .line 681
    add-long v92, v0, v78

    sub-long v92, v92, v12

    mul-long v92, v92, v64

    add-long v0, v14, v92

    .line 682
    move/from16 v92, v3

    .end local v3    # "z9":I
    .local v92, "z9":I
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v17

    shr-long v0, v0, v88

    .line 683
    sub-long v93, v80, v38

    mul-long v93, v93, v64

    add-long v93, v28, v93

    add-long v0, v0, v93

    .line 684
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v19

    shr-long v0, v0, v88

    .line 685
    sub-long v93, v82, v40

    mul-long v93, v93, v64

    add-long v93, v30, v93

    add-long v0, v0, v93

    .line 686
    long-to-int v3, v0

    and-int v3, v3, v90

    aput v3, p1, v20

    shr-long v0, v0, v91

    .line 687
    sub-long v19, v86, v43

    mul-long v19, v19, v64

    add-long v19, v32, v19

    add-long v0, v0, v19

    .line 688
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v21

    shr-long v0, v0, v88

    .line 690
    mul-long v19, v57, v64

    add-long v19, v34, v19

    add-long v0, v0, v19

    .line 691
    long-to-int v3, v0

    and-int v3, v3, v90

    aput v3, p1, v22

    shr-long v0, v0, v91

    .line 692
    sub-long v19, v70, v14

    add-long v19, v12, v19

    add-long v0, v0, v19

    .line 693
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v23

    shr-long v0, v0, v88

    .line 694
    sub-long v19, v72, v28

    add-long v19, v38, v19

    add-long v0, v0, v19

    .line 695
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v26

    shr-long v0, v0, v88

    .line 696
    sub-long v19, v74, v30

    add-long v19, v40, v19

    add-long v0, v0, v19

    .line 697
    long-to-int v3, v0

    and-int v3, v3, v90

    aput v3, p1, v24

    shr-long v0, v0, v91

    .line 698
    move-wide/from16 v19, v0

    .end local v0    # "t":J
    .local v19, "t":J
    int-to-long v0, v2

    add-long v0, v19, v0

    .line 699
    .end local v19    # "t":J
    .restart local v0    # "t":J
    long-to-int v3, v0

    and-int v3, v3, v85

    aput v3, p1, v16

    shr-long v0, v0, v88

    .line 700
    long-to-int v3, v0

    add-int v3, v92, v3

    aput v3, p1, v18

    .line 701
    return-void
.end method

.method public static sqrtRatioVar([I[I[I)Z
    .locals 8
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

    .line 717
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    .line 718
    .local v0, "uv3":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    .line 720
    .local v1, "uv7":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 721
    invoke-static {p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 722
    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 723
    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 724
    invoke-static {v1, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 726
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    .line 727
    .local v2, "t":[I
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    .line 728
    .local v3, "x":[I
    invoke-static {v1, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->powPm5d8([I[I[I)V

    .line 729
    invoke-static {v3, v0, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 731
    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    .line 732
    .local v4, "vx2":[I
    invoke-static {v3, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    .line 733
    invoke-static {v4, p1, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 735
    invoke-static {v4, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sub([I[I[I)V

    .line 736
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 737
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZeroVar([I)Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 739
    invoke-static {v3, v7, p2, v7}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    .line 740
    return v6

    .line 743
    :cond_0
    invoke-static {v4, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    .line 744
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    .line 745
    invoke-static {v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZeroVar([I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 747
    sget-object v5, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->ROOT_NEG_ONE:[I

    invoke-static {v3, v5, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    .line 748
    return v6

    .line 751
    :cond_1
    return v7
.end method

.method public static sub([I[I[I)V
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

    .line 756
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 758
    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    .line 756
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 760
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static subOne([I)V
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

    .line 764
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p0, v0

    .line 765
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

    .line 769
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 771
    const/4 v1, 0x0

    aput v1, p0, v0

    .line 769
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

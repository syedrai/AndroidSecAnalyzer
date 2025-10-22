.class public Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;
.super Ljava/lang/Object;
.source "SecP128R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P3s1:I = 0x7ffffffe

.field private static final PExt:[I

.field private static final PExt7s1:I = 0x7ffffffe

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 17
    const/4 v0, -0x1

    const/4 v1, -0x3

    filled-new-array {v0, v0, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    .line 18
    const/16 v0, 0x8

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    .line 20
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x0
        0x0
        0x4
        -0x2
        -0x1
        0x3
        -0x4
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x5
        0x1
        0x0
        -0x4
        0x3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
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

    .line 27
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 32
    :cond_1
    return-void
.end method

.method public static addExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I
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

    .line 36
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 37
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 41
    :cond_1
    return-void
.end method

.method public static addOne([I[I)V
    .locals 3
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

    .line 45
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 46
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 48
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 50
    :cond_1
    return-void
.end method

.method private static addPInvTo([I)V
    .locals 8
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 238
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 239
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 241
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 242
    long-to-int v6, v1

    aput v6, p0, v5

    shr-long/2addr v1, v0

    .line 243
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 244
    long-to-int v6, v1

    aput v6, p0, v5

    shr-long/2addr v1, v0

    .line 246
    :cond_0
    const/4 v0, 0x3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 247
    long-to-int v3, v1

    aput v3, p0, v0

    .line 248
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .locals 3
    .param p0, "x"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 54
    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat128;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 55
    .local v0, "z":[I
    const/4 v1, 0x3

    aget v1, v0, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v1, v0}, Lorg/bouncycastle/math/raw/Nat128;->subFrom([I[I)I

    .line 59
    :cond_0
    return-object v0
.end method

.method public static half([I[I)V
    .locals 3
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

    .line 64
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x4

    if-nez v1, :cond_0

    .line 66
    invoke-static {v2, p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_0

    .line 70
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/raw/Nat128;->add([I[I[I)I

    move-result v0

    .line 71
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 73
    .end local v0    # "c":I
    :goto_0
    return-void
.end method

.method public static inv([I[I)V
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

    .line 77
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Mod;->checkedModOddInverse([I[I[I)V

    .line 78
    return-void
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

    .line 82
    const/4 v0, 0x0

    .line 83
    .local v0, "d":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 85
    aget v2, p0, v1

    or-int/2addr v0, v2

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    ushr-int/lit8 v1, v0, 0x1

    and-int/lit8 v2, v0, 0x1

    or-int v0, v1, v2

    .line 88
    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v1, v1, 0x1f

    return v1
.end method

.method public static multiply([I[I[I)V
    .locals 1
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

    .line 93
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 94
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat128;->mul([I[I[I)V

    .line 95
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 96
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .locals 3
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I
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

    .line 100
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->mulAddTo([I[I[I)I

    move-result v0

    .line 101
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x7

    aget v1, p2, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExt:[I

    invoke-static {p2, v1}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 105
    :cond_1
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

    .line 109
    invoke-static {p0}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat128;->sub([I[I[I)I

    goto :goto_0

    .line 115
    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/raw/Nat128;->sub([I[I[I)I

    .line 117
    :goto_0
    return-void
.end method

.method public static random(Ljava/security/SecureRandom;[I)V
    .locals 3
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "z"
        }
    .end annotation

    .line 121
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 124
    .local v0, "bb":[B
    :cond_0
    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 125
    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 127
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {v2, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->lessThan(I[I[I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    return-void
.end method

.method public static randomMult(Ljava/security/SecureRandom;[I)V
    .locals 1
    .param p0, "r"    # Ljava/security/SecureRandom;
    .param p1, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "r",
            "z"
        }
    .end annotation

    .line 134
    nop

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->random(Ljava/security/SecureRandom;[I)V

    .line 136
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->isZero([I)I

    move-result v0

    if-nez v0, :cond_0

    .line 137
    return-void
.end method

.method public static reduce([I[I)V
    .locals 27
    .param p0, "xx"    # [I
    .param p1, "z"    # [I
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

    .line 141
    move-object/from16 v0, p1

    const/4 v1, 0x0

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "x0":J
    const/4 v6, 0x1

    aget v7, p0, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    .local v7, "x1":J
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v4

    .local v10, "x2":J
    const/4 v12, 0x3

    aget v13, p0, v12

    int-to-long v13, v13

    and-long/2addr v13, v4

    .line 142
    .local v13, "x3":J
    const/4 v15, 0x4

    aget v15, p0, v15

    move-wide/from16 v17, v2

    const/16 v16, 0x0

    .end local v2    # "x0":J
    .local v17, "x0":J
    int-to-long v1, v15

    and-long/2addr v1, v4

    .local v1, "x4":J
    const/4 v3, 0x5

    aget v3, p0, v3

    move-wide/from16 v19, v4

    int-to-long v4, v3

    and-long v4, v4, v19

    .local v4, "x5":J
    const/4 v3, 0x6

    aget v3, p0, v3

    move-wide/from16 v21, v7

    const/4 v15, 0x1

    .end local v7    # "x1":J
    .local v21, "x1":J
    int-to-long v6, v3

    and-long v6, v6, v19

    .local v6, "x6":J
    const/4 v3, 0x7

    aget v3, p0, v3

    move-wide/from16 v23, v10

    const/4 v8, 0x2

    .end local v10    # "x2":J
    .local v23, "x2":J
    int-to-long v9, v3

    and-long v9, v9, v19

    .line 144
    .local v9, "x7":J
    add-long/2addr v13, v9

    shl-long v19, v9, v15

    add-long v6, v6, v19

    .line 145
    add-long v19, v23, v6

    .end local v23    # "x2":J
    .local v19, "x2":J
    shl-long v23, v6, v15

    add-long v4, v4, v23

    .line 146
    add-long v21, v21, v4

    shl-long v23, v4, v15

    add-long v1, v1, v23

    .line 147
    move-wide/from16 v23, v9

    const/4 v3, 0x2

    .end local v9    # "x7":J
    .local v23, "x7":J
    add-long v8, v17, v1

    .end local v17    # "x0":J
    .local v8, "x0":J
    shl-long v10, v1, v15

    add-long/2addr v13, v10

    .line 149
    long-to-int v10, v8

    aput v10, v0, v16

    const/16 v10, 0x20

    ushr-long v16, v8, v10

    move-wide/from16 v25, v4

    const/4 v5, 0x2

    .end local v4    # "x5":J
    .local v25, "x5":J
    add-long v3, v21, v16

    .line 150
    .end local v21    # "x1":J
    .local v3, "x1":J
    long-to-int v11, v3

    aput v11, v0, v15

    ushr-long v15, v3, v10

    move-wide/from16 v17, v6

    const/4 v7, 0x2

    .end local v6    # "x6":J
    .local v17, "x6":J
    add-long v5, v19, v15

    .line 151
    .end local v19    # "x2":J
    .local v5, "x2":J
    long-to-int v11, v5

    aput v11, v0, v7

    ushr-long v15, v5, v10

    add-long/2addr v13, v15

    .line 152
    long-to-int v7, v13

    aput v7, v0, v12

    .line 154
    ushr-long v10, v13, v10

    long-to-int v7, v10

    invoke-static {v7, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce32(I[I)V

    .line 155
    return-void
.end method

.method public static reduce32(I[I)V
    .locals 12
    .param p0, "x"    # I
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

    .line 159
    nop

    :goto_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 161
    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .line 163
    .local v2, "x4":J
    const/4 v6, 0x0

    aget v7, p1, v6

    int-to-long v7, v7

    and-long/2addr v7, v4

    add-long/2addr v7, v2

    .line 164
    .local v7, "c":J
    long-to-int v9, v7

    aput v9, p1, v6

    const/16 v6, 0x20

    shr-long/2addr v7, v6

    .line 165
    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    .line 167
    aget v9, p1, v1

    int-to-long v9, v9

    and-long/2addr v9, v4

    add-long/2addr v7, v9

    .line 168
    long-to-int v9, v7

    aput v9, p1, v1

    shr-long/2addr v7, v6

    .line 169
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v4

    add-long/2addr v7, v10

    .line 170
    long-to-int v10, v7

    aput v10, p1, v9

    shr-long/2addr v7, v6

    .line 172
    :cond_0
    aget v9, p1, v0

    int-to-long v9, v9

    and-long/2addr v4, v9

    shl-long v9, v2, v1

    add-long/2addr v4, v9

    add-long/2addr v7, v4

    .line 173
    long-to-int v1, v7

    aput v1, p1, v0

    shr-long v0, v7, v6

    .line 177
    .end local v7    # "c":J
    .local v0, "c":J
    long-to-int p0, v0

    .line 178
    .end local v0    # "c":J
    .end local v2    # "x4":J
    goto :goto_0

    .line 180
    :cond_1
    aget v0, p1, v0

    ushr-int/2addr v0, v1

    const v1, 0x7ffffffe

    if-lt v0, v1, :cond_2

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 182
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 184
    :cond_2
    return-void
.end method

.method public static square([I[I)V
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

    .line 188
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 189
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    .line 190
    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 191
    return-void
.end method

.method public static squareN([II[I)V
    .locals 1
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

    .line 197
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat128;->createExt()[I

    move-result-object v0

    .line 198
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    .line 199
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    .line 201
    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    .line 203
    invoke-static {p2, v0}, Lorg/bouncycastle/math/raw/Nat128;->square([I[I)V

    .line 204
    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->reduce([I[I)V

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method private static subPInvFrom([I)V
    .locals 8
    .param p0, "z"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "z"
        }
    .end annotation

    .line 252
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 253
    .local v1, "c":J
    long-to-int v5, v1

    aput v5, p0, v0

    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 254
    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-eqz v7, :cond_0

    .line 256
    const/4 v5, 0x1

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 257
    long-to-int v6, v1

    aput v6, p0, v5

    shr-long/2addr v1, v0

    .line 258
    const/4 v5, 0x2

    aget v6, p0, v5

    int-to-long v6, v6

    and-long/2addr v6, v3

    add-long/2addr v1, v6

    .line 259
    long-to-int v6, v1

    aput v6, p0, v5

    shr-long/2addr v1, v0

    .line 261
    :cond_0
    const/4 v0, 0x3

    aget v5, p0, v0

    int-to-long v5, v5

    and-long/2addr v3, v5

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 262
    long-to-int v3, v1

    aput v3, p0, v0

    .line 263
    return-void
.end method

.method public static subtract([I[I[I)V
    .locals 1
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

    .line 210
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat128;->sub([I[I[I)I

    move-result v0

    .line 211
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 213
    invoke-static {p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->subPInvFrom([I)V

    .line 215
    :cond_0
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .locals 3
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I
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

    .line 219
    const/16 v0, 0xa

    invoke-static {v0, p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 220
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 222
    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 224
    :cond_0
    return-void
.end method

.method public static twice([I[I)V
    .locals 3
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

    .line 228
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 229
    .local v0, "c":I
    if-nez v0, :cond_0

    const/4 v1, 0x3

    aget v1, p1, v1

    ushr-int/lit8 v1, v1, 0x1

    const v2, 0x7ffffffe

    if-lt v1, v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->P:[I

    invoke-static {p1, v1}, Lorg/bouncycastle/math/raw/Nat128;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP128R1Field;->addPInvTo([I)V

    .line 233
    :cond_1
    return-void
.end method

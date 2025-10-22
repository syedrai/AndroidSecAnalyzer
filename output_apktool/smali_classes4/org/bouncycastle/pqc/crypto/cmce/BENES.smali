.class abstract Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.super Ljava/lang/Object;
.source "BENES.java"


# static fields
.field private static final TRANSPOSE_MASKS:[J


# instance fields
.field protected final GFBITS:I

.field protected final SYS_N:I

.field protected final SYS_T:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x5555555555555555L    # 1.1945305291614955E103
        0x3333333333333333L    # 4.667261458395856E-62
        0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236
        0xff00ff00ff00ffL
        0xffff0000ffffL
        0xffffffffL
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "t"    # I
    .param p3, "m"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "t",
            "m"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    .line 15
    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    .line 16
    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    .line 17
    return-void
.end method

.method static transpose_64x64([J[J)V
    .locals 1
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "in"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[JI)V

    .line 24
    return-void
.end method

.method static transpose_64x64([J[JI)V
    .locals 38
    .param p0, "out"    # [J
    .param p1, "in"    # [J
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "in",
            "offset"
        }
    .end annotation

    .line 28
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/16 v2, 0x40

    move-object/from16 v3, p1

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 30
    const/4 v2, 0x5

    .line 33
    .local v2, "d":I
    :cond_0
    sget-object v4, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v5, v4, v2

    .line 34
    .local v5, "m":J
    const/4 v4, 0x1

    shl-int v7, v4, v2

    .line 35
    .local v7, "s":I
    move/from16 v8, p2

    .local v8, "i":I
    :goto_0
    add-int/lit8 v9, v1, 0x40

    const/4 v10, 0x2

    if-ge v8, v9, :cond_2

    .line 37
    move v9, v8

    .local v9, "j":I
    :goto_1
    add-int v11, v8, v7

    if-ge v9, v11, :cond_1

    .line 43
    add-int/lit8 v11, v9, 0x0

    aget-wide v11, v0, v11

    .line 44
    .local v11, "lo0":J
    add-int/lit8 v13, v9, 0x1

    aget-wide v13, v0, v13

    .line 45
    .local v13, "lo1":J
    add-int/lit8 v15, v9, 0x2

    aget-wide v15, v0, v15

    .line 46
    .local v15, "lo2":J
    add-int/lit8 v17, v9, 0x3

    aget-wide v17, v0, v17

    .line 47
    .local v17, "lo3":J
    add-int v19, v9, v7

    add-int/lit8 v19, v19, 0x0

    aget-wide v19, v0, v19

    .line 48
    .local v19, "hi0":J
    add-int v21, v9, v7

    add-int/lit8 v21, v21, 0x1

    aget-wide v21, v0, v21

    .line 49
    .local v21, "hi1":J
    add-int v23, v9, v7

    add-int/lit8 v23, v23, 0x2

    aget-wide v23, v0, v23

    .line 50
    .local v23, "hi2":J
    add-int v25, v9, v7

    add-int/lit8 v25, v25, 0x3

    aget-wide v25, v0, v25

    .line 51
    .local v25, "hi3":J
    ushr-long v27, v11, v7

    xor-long v27, v27, v19

    and-long v27, v27, v5

    .line 52
    .local v27, "t0":J
    ushr-long v29, v13, v7

    xor-long v29, v29, v21

    and-long v29, v29, v5

    .line 53
    .local v29, "t1":J
    ushr-long v31, v15, v7

    xor-long v31, v31, v23

    and-long v31, v31, v5

    .line 54
    .local v31, "t2":J
    ushr-long v33, v17, v7

    xor-long v33, v33, v25

    and-long v33, v33, v5

    .line 55
    .local v33, "t3":J
    add-int/lit8 v35, v9, 0x0

    shl-long v36, v27, v7

    xor-long v36, v11, v36

    aput-wide v36, v0, v35

    .line 56
    add-int/lit8 v35, v9, 0x1

    shl-long v36, v29, v7

    xor-long v36, v13, v36

    aput-wide v36, v0, v35

    .line 57
    add-int/lit8 v35, v9, 0x2

    shl-long v36, v31, v7

    xor-long v36, v15, v36

    aput-wide v36, v0, v35

    .line 58
    add-int/lit8 v35, v9, 0x3

    shl-long v36, v33, v7

    xor-long v36, v17, v36

    aput-wide v36, v0, v35

    .line 59
    add-int v35, v9, v7

    add-int/lit8 v35, v35, 0x0

    xor-long v36, v19, v27

    aput-wide v36, v0, v35

    .line 60
    add-int v35, v9, v7

    add-int/lit8 v35, v35, 0x1

    xor-long v36, v21, v29

    aput-wide v36, v0, v35

    .line 61
    add-int v35, v9, v7

    add-int/lit8 v35, v35, 0x2

    xor-long v36, v23, v31

    aput-wide v36, v0, v35

    .line 62
    add-int v35, v9, v7

    add-int/lit8 v35, v35, 0x3

    xor-long v36, v25, v33

    aput-wide v36, v0, v35

    .line 37
    .end local v11    # "lo0":J
    .end local v13    # "lo1":J
    .end local v15    # "lo2":J
    .end local v17    # "lo3":J
    .end local v19    # "hi0":J
    .end local v21    # "hi1":J
    .end local v23    # "hi2":J
    .end local v25    # "hi3":J
    .end local v27    # "t0":J
    .end local v29    # "t1":J
    .end local v31    # "t2":J
    .end local v33    # "t3":J
    add-int/lit8 v9, v9, 0x4

    goto/16 :goto_1

    .line 35
    .end local v9    # "j":I
    :cond_1
    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    goto/16 :goto_0

    .line 66
    .end local v5    # "m":J
    .end local v7    # "s":I
    .end local v8    # "i":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    if-ge v2, v10, :cond_0

    .line 70
    :cond_3
    sget-object v5, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v6, v5, v2

    .line 71
    .local v6, "m":J
    shl-int v5, v4, v2

    .line 72
    .local v5, "s":I
    move/from16 v8, p2

    .restart local v8    # "i":I
    :goto_2
    add-int/lit8 v9, v1, 0x40

    if-ge v8, v9, :cond_5

    .line 74
    move v9, v8

    .restart local v9    # "j":I
    :goto_3
    add-int v10, v8, v5

    if-ge v9, v10, :cond_4

    .line 77
    add-int/lit8 v10, v9, 0x0

    aget-wide v10, v0, v10

    .line 78
    .local v10, "lo":J
    add-int v12, v9, v5

    aget-wide v12, v0, v12

    .line 79
    .local v12, "hi":J
    ushr-long v14, v10, v5

    xor-long/2addr v14, v12

    and-long/2addr v14, v6

    .line 80
    .local v14, "t":J
    add-int/lit8 v16, v9, 0x0

    shl-long v17, v14, v5

    xor-long v17, v10, v17

    aput-wide v17, v0, v16

    .line 81
    add-int v16, v9, v5

    xor-long v17, v12, v14

    aput-wide v17, v0, v16

    .line 74
    .end local v10    # "lo":J
    .end local v12    # "hi":J
    .end local v14    # "t":J
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 72
    .end local v9    # "j":I
    :cond_4
    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    goto :goto_2

    .line 85
    .end local v5    # "s":I
    .end local v6    # "m":J
    .end local v8    # "i":I
    :cond_5
    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_3

    .line 86
    return-void
.end method


# virtual methods
.method protected abstract support_gen([S[B)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "s",
            "c"
        }
    .end annotation
.end method

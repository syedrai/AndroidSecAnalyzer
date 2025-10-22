.class Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
.super Ljava/lang/Object;
.source "KeccakRandomGenerator.java"


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    .line 26
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    .line 18
    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    .line 30
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->init(I)V

    .line 31
    return-void
.end method

.method private init(I)V
    .locals 2
    .param p1, "bitLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 35
    sparse-switch p1, :sswitch_data_0

    .line 46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :sswitch_0
    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->initSponge(I)V

    .line 44
    nop

    .line 48
    return-void

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x120 -> :sswitch_0
        0x180 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private initSponge(I)V
    .locals 3
    .param p1, "rate"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rate"
        }
    .end annotation

    .line 52
    if-lez p1, :cond_0

    const/16 v0, 0x640

    if-ge p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_0

    .line 57
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    .line 58
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 60
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->bitsInQueue:I

    .line 61
    rsub-int v0, p1, 0x640

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->fixedOutputLength:I

    .line 62
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private keccakIncAbsorb([BI)V
    .locals 20
    .param p1, "input"    # [B
    .param p2, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "input",
            "inputLen"
        }
    .end annotation

    .line 215
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 216
    .local v1, "count":I
    iget v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v2, v2, 0x3

    move v3, v1

    move/from16 v1, p2

    .line 217
    .end local p2    # "inputLen":I
    .local v1, "inputLen":I
    .local v2, "rateBytes":I
    .local v3, "count":I
    :goto_0
    int-to-long v4, v1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v7, 0x19

    aget-wide v8, v6, v7

    add-long/2addr v4, v8

    int-to-long v8, v2

    const-wide/16 v12, 0x8

    cmp-long v6, v4, v8

    if-ltz v6, :cond_1

    .line 219
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    int-to-long v5, v4

    int-to-long v8, v2

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v15, v14, v7

    sub-long/2addr v8, v15

    cmp-long v14, v5, v8

    if-gez v14, :cond_0

    .line 221
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, v5, v7

    int-to-long v5, v4

    add-long/2addr v8, v5

    long-to-int v5, v8

    shr-int/lit8 v5, v5, 0x3

    .line 222
    .local v5, "tmp":I
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, v6, v5

    add-int v14, v4, v3

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    invoke-static {v14}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v14

    const/16 p2, 0x19

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v16, v7, p2

    const-wide/16 v18, 0x7

    int-to-long v10, v4

    add-long v16, v16, v10

    and-long v10, v16, v18

    mul-long v10, v10, v12

    long-to-int v7, v10

    shl-long v10, v14, v7

    xor-long/2addr v8, v10

    aput-wide v8, v6, v5

    .line 219
    .end local v5    # "tmp":I
    add-int/lit8 v4, v4, 0x1

    const/16 v7, 0x19

    goto :goto_1

    :cond_0
    const/16 p2, 0x19

    .line 224
    .end local v4    # "i":I
    int-to-long v4, v1

    int-to-long v6, v2

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v9, v8, p2

    sub-long/2addr v6, v9

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 225
    int-to-long v4, v3

    int-to-long v6, v2

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v9, v8, p2

    sub-long/2addr v6, v9

    add-long/2addr v4, v6

    long-to-int v3, v4

    .line 226
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v5, 0x0

    aput-wide v5, v4, p2

    .line 227
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    goto :goto_0

    .line 230
    :cond_1
    const/16 p2, 0x19

    const-wide/16 v18, 0x7

    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v1, :cond_2

    .line 232
    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v6, v5, p2

    int-to-long v8, v4

    add-long/2addr v6, v8

    long-to-int v5, v6

    shr-int/lit8 v5, v5, 0x3

    .line 233
    .restart local v5    # "tmp":I
    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v7, v6, v5

    add-int v9, v4, v3

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v9

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v14, v11, p2

    move-wide/from16 v16, v12

    int-to-long v12, v4

    add-long/2addr v14, v12

    and-long v11, v14, v18

    mul-long v11, v11, v16

    long-to-int v12, v11

    shl-long/2addr v9, v12

    xor-long/2addr v7, v9

    aput-wide v7, v6, v5

    .line 230
    .end local v5    # "tmp":I
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v12, v16

    goto :goto_2

    .line 236
    .end local v4    # "i":I
    :cond_2
    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v5, v4, p2

    int-to-long v7, v1

    add-long/2addr v5, v7

    aput-wide v5, v4, p2

    .line 237
    return-void
.end method

.method private keccakIncFinalize(I)V
    .locals 13
    .param p1, "p"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 241
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v0, v0, 0x3

    .line 243
    .local v0, "rateBytes":I
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v3, 0x19

    aget-wide v4, v2, v3

    long-to-int v2, v4

    shr-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v9, v8, v3

    const-wide/16 v11, 0x7

    and-long/2addr v9, v11

    const-wide/16 v11, 0x8

    mul-long v9, v9, v11

    long-to-int v8, v9

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v1, v2

    .line 244
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v2

    const/16 v6, 0x80

    invoke-static {v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    add-int/lit8 v8, v0, -0x1

    and-int/lit8 v8, v8, 0x7

    mul-int/lit8 v8, v8, 0x8

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v1, v2

    .line 247
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v1, v3

    .line 248
    return-void
.end method

.method private keccakIncSqueeze([BI)V
    .locals 10
    .param p1, "output"    # [B
    .param p2, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outLen"
        }
    .end annotation

    .line 252
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    const/4 v1, 0x3

    shr-int/2addr v0, v1

    .line 254
    .local v0, "rateBytes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x19

    if-ge v2, p2, :cond_0

    int-to-long v4, v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v7, v6, v3

    cmp-long v6, v4, v7

    if-gez v6, :cond_0

    .line 256
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    int-to-long v5, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, v7, v3

    sub-long/2addr v5, v8

    int-to-long v7, v2

    add-long/2addr v5, v7

    shr-long/2addr v5, v1

    long-to-int v6, v5

    aget-wide v5, v4, v6

    int-to-long v7, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v3, v4, v3

    sub-long/2addr v7, v3

    int-to-long v3, v2

    add-long/2addr v7, v3

    const-wide/16 v3, 0x7

    and-long/2addr v3, v7

    const-wide/16 v7, 0x8

    mul-long v3, v3, v7

    long-to-int v4, v3

    shr-long v3, v5, v4

    long-to-int v4, v3

    int-to-byte v3, v4

    aput-byte v3, p1, v2

    .line 254
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 259
    :cond_0
    move v1, v2

    .line 260
    .local v1, "count":I
    sub-int/2addr p2, v2

    .line 261
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v5, v4, v3

    int-to-long v7, v2

    sub-long/2addr v5, v7

    aput-wide v5, v4, v3

    .line 263
    :goto_1
    if-lez p2, :cond_2

    .line 265
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    .line 267
    const/4 v2, 0x0

    :goto_2
    if-ge v2, p2, :cond_1

    if-ge v2, v0, :cond_1

    .line 269
    add-int v4, v1, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    shr-int/lit8 v6, v2, 0x3

    aget-wide v6, v5, v6

    and-int/lit8 v5, v2, 0x7

    mul-int/lit8 v5, v5, 0x8

    shr-long v5, v6, v5

    long-to-int v6, v5

    int-to-byte v5, v6

    aput-byte v5, p1, v4

    .line 267
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    :cond_1
    add-int/2addr v1, v2

    .line 272
    sub-int/2addr p2, v2

    .line 273
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    sub-int v5, v0, v2

    int-to-long v5, v5

    aput-wide v5, v4, v3

    goto :goto_1

    .line 275
    :cond_2
    return-void
.end method

.method private static keccakPermutation([J)V
    .locals 108
    .param p0, "A"    # [J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "A"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    .local v1, "a00":J
    const/4 v3, 0x1

    aget-wide v4, p0, v3

    .local v4, "a01":J
    const/4 v6, 0x2

    aget-wide v7, p0, v6

    .local v7, "a02":J
    const/4 v9, 0x3

    aget-wide v10, p0, v9

    .local v10, "a03":J
    const/4 v12, 0x4

    aget-wide v13, p0, v12

    .line 68
    .local v13, "a04":J
    const/4 v15, 0x5

    aget-wide v16, p0, v15

    .local v16, "a05":J
    const/16 v18, 0x6

    aget-wide v19, p0, v18

    .local v19, "a06":J
    const/16 v21, 0x7

    aget-wide v22, p0, v21

    .local v22, "a07":J
    const/16 v24, 0x8

    aget-wide v25, p0, v24

    .local v25, "a08":J
    const/16 v27, 0x9

    aget-wide v28, p0, v27

    .line 69
    .local v28, "a09":J
    const/16 v30, 0xa

    aget-wide v31, p0, v30

    .local v31, "a10":J
    const/16 v33, 0xb

    aget-wide v34, p0, v33

    .local v34, "a11":J
    const/16 v36, 0xc

    aget-wide v37, p0, v36

    .local v37, "a12":J
    const/16 v39, 0xd

    aget-wide v39, p0, v39

    .local v39, "a13":J
    const/16 v41, 0xe

    aget-wide v42, p0, v41

    .line 70
    .local v42, "a14":J
    const/16 v44, 0xf

    aget-wide v45, p0, v44

    .local v45, "a15":J
    const/16 v47, 0x10

    aget-wide v47, p0, v47

    .local v47, "a16":J
    const/16 v49, 0x11

    aget-wide v49, p0, v49

    .local v49, "a17":J
    const/16 v51, 0x12

    aget-wide v52, p0, v51

    .local v52, "a18":J
    const/16 v54, 0x13

    aget-wide v55, p0, v54

    .line 71
    .local v55, "a19":J
    const/16 v57, 0x14

    aget-wide v58, p0, v57

    .local v58, "a20":J
    const/16 v60, 0x15

    aget-wide v61, p0, v60

    .local v61, "a21":J
    const/16 v63, 0x16

    aget-wide v63, p0, v63

    .local v63, "a22":J
    const/16 v65, 0x17

    aget-wide v66, p0, v65

    const/16 v68, 0x0

    .local v66, "a23":J
    const/16 v0, 0x18

    aget-wide v69, p0, v0

    .line 73
    .local v69, "a24":J
    const/16 v71, 0x0

    move/from16 v3, v71

    const/16 v71, 0x1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 76
    xor-long v72, v1, v16

    xor-long v72, v72, v31

    xor-long v72, v72, v45

    xor-long v72, v72, v58

    .line 77
    .local v72, "c0":J
    xor-long v74, v4, v19

    xor-long v74, v74, v34

    xor-long v74, v74, v47

    xor-long v74, v74, v61

    .line 78
    .local v74, "c1":J
    xor-long v76, v7, v22

    xor-long v76, v76, v37

    xor-long v76, v76, v49

    xor-long v76, v76, v63

    .line 79
    .local v76, "c2":J
    xor-long v78, v10, v25

    xor-long v78, v78, v39

    xor-long v78, v78, v52

    xor-long v78, v78, v66

    .line 80
    .local v78, "c3":J
    xor-long v80, v13, v28

    xor-long v80, v80, v42

    xor-long v80, v80, v55

    xor-long v80, v80, v69

    .line 82
    .local v80, "c4":J
    shl-long v82, v74, v71

    const/16 v84, -0x1

    ushr-long v85, v74, v84

    or-long v82, v82, v85

    xor-long v82, v82, v80

    .line 83
    .local v82, "d1":J
    shl-long v85, v76, v71

    ushr-long v87, v76, v84

    or-long v85, v85, v87

    xor-long v85, v85, v72

    .line 84
    .local v85, "d2":J
    shl-long v87, v78, v71

    ushr-long v89, v78, v84

    or-long v87, v87, v89

    xor-long v87, v87, v74

    .line 85
    .local v87, "d3":J
    shl-long v89, v80, v71

    ushr-long v91, v80, v84

    or-long v89, v89, v91

    xor-long v89, v89, v76

    .line 86
    .local v89, "d4":J
    shl-long v91, v72, v71

    ushr-long v93, v72, v84

    or-long v91, v91, v93

    xor-long v91, v91, v78

    .line 88
    .local v91, "d0":J
    xor-long v1, v1, v82

    .line 89
    xor-long v16, v16, v82

    .line 90
    xor-long v31, v31, v82

    .line 91
    xor-long v45, v45, v82

    .line 92
    xor-long v58, v58, v82

    .line 93
    xor-long v4, v4, v85

    .line 94
    xor-long v19, v19, v85

    .line 95
    xor-long v34, v34, v85

    .line 96
    xor-long v47, v47, v85

    .line 97
    xor-long v61, v61, v85

    .line 98
    xor-long v7, v7, v87

    .line 99
    xor-long v22, v22, v87

    .line 100
    xor-long v37, v37, v87

    .line 101
    xor-long v49, v49, v87

    .line 102
    xor-long v63, v63, v87

    .line 103
    xor-long v10, v10, v89

    .line 104
    xor-long v25, v25, v89

    .line 105
    xor-long v39, v39, v89

    .line 106
    xor-long v52, v52, v89

    .line 107
    xor-long v66, v66, v89

    .line 108
    xor-long v13, v13, v91

    .line 109
    xor-long v28, v28, v91

    .line 110
    xor-long v42, v42, v91

    .line 111
    xor-long v55, v55, v91

    .line 112
    xor-long v69, v69, v91

    .line 115
    shl-long v93, v4, v71

    const/16 v84, 0x3f

    ushr-long v95, v4, v84

    or-long v74, v93, v95

    .line 116
    const/16 v84, 0x2c

    shl-long v93, v19, v84

    ushr-long v95, v19, v57

    or-long v4, v93, v95

    .line 117
    shl-long v93, v28, v57

    ushr-long v95, v28, v84

    move-wide/from16 v97, v7

    const/16 v84, 0x2

    .end local v7    # "a02":J
    .local v97, "a02":J
    or-long v6, v93, v95

    .line 118
    .end local v19    # "a06":J
    .local v6, "a06":J
    const/16 v8, 0x3d

    shl-long v19, v63, v8

    ushr-long v93, v63, v9

    move-wide/from16 v99, v10

    const/16 v95, 0x3

    .end local v10    # "a03":J
    .local v99, "a03":J
    or-long v9, v19, v93

    .line 119
    .end local v28    # "a09":J
    .local v9, "a09":J
    const/16 v8, 0x27

    shl-long v19, v42, v8

    const/16 v8, 0x19

    ushr-long v28, v42, v8

    move-wide/from16 v101, v13

    const/16 v93, 0x4

    .end local v13    # "a04":J
    .local v101, "a04":J
    or-long v12, v19, v28

    .line 120
    .end local v63    # "a22":J
    .local v12, "a22":J
    shl-long v19, v58, v51

    const/16 v8, 0x2e

    ushr-long v28, v58, v8

    move-wide/from16 v103, v1

    const/16 v94, 0x18

    .end local v1    # "a00":J
    .local v103, "a00":J
    or-long v0, v19, v28

    .line 121
    .end local v42    # "a14":J
    .local v0, "a14":J
    const/16 v2, 0x3e

    shl-long v19, v97, v2

    ushr-long v28, v97, v84

    move/from16 v96, v3

    .end local v3    # "i":I
    .local v96, "i":I
    or-long v2, v19, v28

    .line 122
    .end local v58    # "a20":J
    .local v2, "a20":J
    const/16 v8, 0x2b

    shl-long v19, v37, v8

    ushr-long v28, v37, v60

    const/16 v105, 0x5

    or-long v14, v19, v28

    .line 123
    .end local v97    # "a02":J
    .local v14, "a02":J
    const/16 v8, 0x19

    shl-long v19, v39, v8

    const/16 v8, 0x27

    ushr-long v28, v39, v8

    move-wide/from16 v42, v2

    .end local v2    # "a20":J
    .local v42, "a20":J
    or-long v2, v19, v28

    .line 124
    .end local v37    # "a12":J
    .local v2, "a12":J
    shl-long v19, v55, v24

    const/16 v8, 0x38

    ushr-long v28, v55, v8

    move-wide/from16 v37, v12

    .end local v12    # "a22":J
    .local v37, "a22":J
    or-long v11, v19, v28

    .line 125
    .end local v39    # "a13":J
    .local v11, "a13":J
    shl-long v19, v66, v8

    ushr-long v28, v66, v24

    move-wide/from16 v39, v0

    .end local v0    # "a14":J
    .local v39, "a14":J
    or-long v0, v19, v28

    .line 126
    .end local v55    # "a19":J
    .local v0, "a19":J
    const/16 v8, 0x29

    shl-long v19, v45, v8

    ushr-long v28, v45, v65

    move-wide/from16 v55, v0

    .end local v0    # "a19":J
    .restart local v55    # "a19":J
    or-long v0, v19, v28

    .line 127
    .end local v66    # "a23":J
    .local v0, "a23":J
    const/16 v8, 0x1b

    shl-long v19, v101, v8

    const/16 v8, 0x25

    ushr-long v28, v101, v8

    move-wide/from16 v58, v0

    .end local v0    # "a23":J
    .local v58, "a23":J
    or-long v0, v19, v28

    .line 128
    .end local v45    # "a15":J
    .local v0, "a15":J
    shl-long v19, v69, v41

    const/16 v8, 0x32

    ushr-long v28, v69, v8

    move-wide/from16 v45, v0

    .end local v0    # "a15":J
    .restart local v45    # "a15":J
    or-long v0, v19, v28

    .line 129
    .end local v101    # "a04":J
    .local v0, "a04":J
    shl-long v19, v61, v84

    const/16 v8, 0x3e

    ushr-long v28, v61, v8

    move-wide/from16 v63, v11

    .end local v11    # "a13":J
    .local v63, "a13":J
    or-long v11, v19, v28

    .line 130
    .end local v69    # "a24":J
    .local v11, "a24":J
    const/16 v8, 0x37

    shl-long v19, v25, v8

    ushr-long v28, v25, v27

    move-wide/from16 v66, v11

    .end local v11    # "a24":J
    .local v66, "a24":J
    or-long v11, v19, v28

    .line 131
    .end local v61    # "a21":J
    .local v11, "a21":J
    const/16 v8, 0x2d

    shl-long v19, v47, v8

    ushr-long v28, v47, v54

    move-wide/from16 v61, v11

    .end local v11    # "a21":J
    .restart local v61    # "a21":J
    or-long v11, v19, v28

    .line 132
    .end local v25    # "a08":J
    .local v11, "a08":J
    const/16 v8, 0x24

    shl-long v19, v16, v8

    const/16 v8, 0x1c

    ushr-long v25, v16, v8

    move-wide/from16 v28, v2

    .end local v2    # "a12":J
    .local v28, "a12":J
    or-long v2, v19, v25

    .line 133
    .end local v47    # "a16":J
    .local v2, "a16":J
    shl-long v19, v99, v8

    const/16 v8, 0x24

    ushr-long v25, v99, v8

    move-wide/from16 v47, v2

    .end local v2    # "a16":J
    .restart local v47    # "a16":J
    or-long v2, v19, v25

    .line 134
    .end local v16    # "a05":J
    .local v2, "a05":J
    shl-long v16, v52, v60

    const/16 v8, 0x2b

    ushr-long v19, v52, v8

    move-wide/from16 v25, v2

    .end local v2    # "a05":J
    .local v25, "a05":J
    or-long v2, v16, v19

    .line 135
    .end local v99    # "a03":J
    .local v2, "a03":J
    shl-long v16, v49, v44

    const/16 v8, 0x31

    ushr-long v19, v49, v8

    move-wide/from16 v69, v9

    .end local v9    # "a09":J
    .local v69, "a09":J
    or-long v8, v16, v19

    .line 136
    .end local v52    # "a18":J
    .local v8, "a18":J
    shl-long v16, v34, v30

    const/16 v10, 0x36

    ushr-long v19, v34, v10

    move-wide/from16 v52, v8

    .end local v8    # "a18":J
    .restart local v52    # "a18":J
    or-long v8, v16, v19

    .line 137
    .end local v49    # "a17":J
    .local v8, "a17":J
    shl-long v16, v22, v18

    const/16 v10, 0x3a

    ushr-long v19, v22, v10

    move-wide/from16 v49, v8

    .end local v8    # "a17":J
    .restart local v49    # "a17":J
    or-long v8, v16, v19

    .line 138
    .end local v34    # "a11":J
    .local v8, "a11":J
    shl-long v16, v31, v95

    const/16 v10, 0x3d

    ushr-long v19, v31, v10

    move-wide/from16 v34, v8

    .end local v8    # "a11":J
    .restart local v34    # "a11":J
    or-long v8, v16, v19

    .line 139
    .end local v22    # "a07":J
    .local v8, "a07":J
    move-wide/from16 v16, v74

    .line 142
    .end local v31    # "a10":J
    .local v16, "a10":J
    move-wide/from16 v19, v11

    .end local v11    # "a08":J
    .local v19, "a08":J
    not-long v10, v4

    and-long/2addr v10, v14

    xor-long v10, v103, v10

    .line 143
    .end local v72    # "c0":J
    .local v10, "c0":J
    not-long v12, v14

    and-long/2addr v12, v2

    xor-long/2addr v12, v4

    .line 144
    .end local v74    # "c1":J
    .local v12, "c1":J
    move-wide/from16 v22, v4

    .end local v4    # "a01":J
    .local v22, "a01":J
    not-long v4, v2

    and-long/2addr v4, v0

    xor-long/2addr v4, v14

    .line 145
    .end local v14    # "a02":J
    .local v4, "a02":J
    not-long v14, v0

    and-long v14, v14, v103

    xor-long/2addr v2, v14

    .line 146
    move-wide/from16 v31, v0

    move-wide/from16 v14, v103

    .end local v0    # "a04":J
    .end local v103    # "a00":J
    .local v14, "a00":J
    .local v31, "a04":J
    not-long v0, v14

    and-long v0, v0, v22

    xor-long v0, v31, v0

    .line 147
    .end local v31    # "a04":J
    .restart local v0    # "a04":J
    move-wide v14, v10

    .line 148
    move-wide/from16 v22, v12

    .line 150
    move-wide/from16 v31, v0

    .end local v0    # "a04":J
    .restart local v31    # "a04":J
    not-long v0, v6

    and-long/2addr v0, v8

    xor-long v0, v25, v0

    .line 151
    .end local v10    # "c0":J
    .local v0, "c0":J
    not-long v10, v8

    and-long v10, v10, v19

    xor-long/2addr v10, v6

    .line 152
    .end local v12    # "c1":J
    .local v10, "c1":J
    move-wide/from16 v12, v19

    move-wide/from16 v19, v0

    .end local v0    # "c0":J
    .local v12, "a08":J
    .local v19, "c0":J
    not-long v0, v12

    and-long v0, v0, v69

    xor-long/2addr v0, v8

    .line 153
    .end local v8    # "a07":J
    .local v0, "a07":J
    move-wide/from16 v8, v69

    move-wide/from16 v69, v0

    .end local v0    # "a07":J
    .local v8, "a09":J
    .local v69, "a07":J
    not-long v0, v8

    and-long v0, v0, v25

    xor-long/2addr v0, v12

    .line 154
    .end local v12    # "a08":J
    .local v0, "a08":J
    move-wide/from16 v12, v25

    move-wide/from16 v25, v0

    .end local v0    # "a08":J
    .local v12, "a05":J
    .local v25, "a08":J
    not-long v0, v12

    and-long/2addr v0, v6

    xor-long/2addr v0, v8

    .line 155
    .end local v8    # "a09":J
    .local v0, "a09":J
    move-wide/from16 v8, v19

    .line 156
    .end local v12    # "a05":J
    .local v8, "a05":J
    move-wide v6, v10

    .line 158
    move-wide/from16 v12, v34

    move-wide/from16 v34, v0

    .end local v0    # "a09":J
    .local v12, "a11":J
    .local v34, "a09":J
    not-long v0, v12

    and-long v0, v0, v28

    xor-long v0, v16, v0

    .line 159
    .end local v19    # "c0":J
    .local v0, "c0":J
    move-wide/from16 v19, v0

    move-wide/from16 v0, v28

    move-wide/from16 v28, v2

    .end local v2    # "a03":J
    .local v0, "a12":J
    .restart local v19    # "c0":J
    .local v28, "a03":J
    not-long v2, v0

    and-long v2, v2, v63

    xor-long/2addr v2, v12

    .line 160
    .end local v10    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v10, v63

    move-wide/from16 v63, v0

    .end local v0    # "a12":J
    .local v10, "a13":J
    .local v63, "a12":J
    not-long v0, v10

    and-long v0, v0, v39

    xor-long v0, v63, v0

    .line 161
    .end local v63    # "a12":J
    .restart local v0    # "a12":J
    move-wide/from16 v63, v0

    move-wide/from16 v0, v39

    move-wide/from16 v39, v2

    .end local v2    # "c1":J
    .local v0, "a14":J
    .local v39, "c1":J
    .restart local v63    # "a12":J
    not-long v2, v0

    and-long v2, v2, v16

    xor-long/2addr v2, v10

    .line 162
    .end local v10    # "a13":J
    .local v2, "a13":J
    move-wide/from16 v10, v16

    move-wide/from16 v16, v0

    .end local v0    # "a14":J
    .local v10, "a10":J
    .local v16, "a14":J
    not-long v0, v10

    and-long/2addr v0, v12

    xor-long v0, v16, v0

    .line 163
    .end local v16    # "a14":J
    .restart local v0    # "a14":J
    move-wide/from16 v10, v19

    .line 164
    move-wide/from16 v12, v39

    .line 166
    move-wide/from16 v16, v0

    move-wide/from16 v0, v47

    move-wide/from16 v47, v2

    .end local v2    # "a13":J
    .local v0, "a16":J
    .restart local v16    # "a14":J
    .local v47, "a13":J
    not-long v2, v0

    and-long v2, v2, v49

    xor-long v2, v45, v2

    .line 167
    .end local v19    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v19, v0

    move-wide/from16 v0, v49

    move-wide/from16 v49, v2

    .end local v2    # "c0":J
    .local v0, "a17":J
    .local v19, "a16":J
    .local v49, "c0":J
    not-long v2, v0

    and-long v2, v2, v52

    xor-long v2, v19, v2

    .line 168
    .end local v39    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v39, v0

    move-wide/from16 v0, v52

    move-wide/from16 v52, v2

    .end local v2    # "c1":J
    .local v0, "a18":J
    .local v39, "a17":J
    .local v52, "c1":J
    not-long v2, v0

    and-long v2, v2, v55

    xor-long v2, v39, v2

    .line 169
    .end local v39    # "a17":J
    .local v2, "a17":J
    move-wide/from16 v39, v0

    move-wide/from16 v0, v55

    move-wide/from16 v55, v2

    .end local v2    # "a17":J
    .local v0, "a19":J
    .local v39, "a18":J
    .local v55, "a17":J
    not-long v2, v0

    and-long v2, v2, v45

    xor-long v2, v39, v2

    .line 170
    .end local v39    # "a18":J
    .local v2, "a18":J
    move-wide/from16 v39, v0

    move-wide/from16 v0, v45

    move-wide/from16 v45, v2

    .end local v2    # "a18":J
    .local v0, "a15":J
    .local v39, "a19":J
    .local v45, "a18":J
    not-long v2, v0

    and-long v2, v2, v19

    xor-long v2, v39, v2

    .line 171
    .end local v39    # "a19":J
    .local v2, "a19":J
    move-wide/from16 v0, v49

    .line 172
    move-wide/from16 v19, v52

    .line 174
    move-wide/from16 v39, v0

    move-wide/from16 v0, v61

    move-wide/from16 v61, v2

    .end local v2    # "a19":J
    .local v0, "a21":J
    .local v39, "a15":J
    .local v61, "a19":J
    not-long v2, v0

    and-long v2, v2, v37

    xor-long v2, v42, v2

    .line 175
    .end local v49    # "c0":J
    .local v2, "c0":J
    move-wide/from16 v49, v0

    move-wide/from16 v0, v37

    move-wide/from16 v37, v2

    .end local v2    # "c0":J
    .local v0, "a22":J
    .local v37, "c0":J
    .local v49, "a21":J
    not-long v2, v0

    and-long v2, v2, v58

    xor-long v2, v49, v2

    .line 176
    .end local v52    # "c1":J
    .local v2, "c1":J
    move-wide/from16 v52, v0

    move-wide/from16 v0, v58

    move-wide/from16 v58, v2

    .end local v2    # "c1":J
    .local v0, "a23":J
    .local v52, "a22":J
    .local v58, "c1":J
    not-long v2, v0

    and-long v2, v2, v66

    xor-long v2, v52, v2

    .line 177
    .end local v52    # "a22":J
    .local v2, "a22":J
    move-wide/from16 v52, v0

    move-wide/from16 v0, v66

    move-wide/from16 v66, v2

    .end local v2    # "a22":J
    .local v0, "a24":J
    .local v52, "a23":J
    .local v66, "a22":J
    not-long v2, v0

    and-long v2, v2, v42

    xor-long v2, v52, v2

    .line 178
    .end local v52    # "a23":J
    .local v2, "a23":J
    move-wide/from16 v52, v0

    move-wide/from16 v0, v42

    move-wide/from16 v42, v2

    .end local v2    # "a23":J
    .local v0, "a20":J
    .local v42, "a23":J
    .local v52, "a24":J
    not-long v2, v0

    and-long v2, v2, v49

    xor-long v2, v52, v2

    .line 179
    .end local v52    # "a24":J
    .local v2, "a24":J
    move-wide/from16 v0, v37

    .line 180
    move-wide/from16 v49, v58

    .line 183
    sget-object v52, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    aget-wide v72, v52, v96

    xor-long v14, v14, v72

    .line 73
    .end local v37    # "c0":J
    .end local v58    # "c1":J
    .end local v76    # "c2":J
    .end local v78    # "c3":J
    .end local v80    # "c4":J
    .end local v82    # "d1":J
    .end local v85    # "d2":J
    .end local v87    # "d3":J
    .end local v89    # "d4":J
    .end local v91    # "d0":J
    add-int/lit8 v37, v96, 0x1

    move-wide/from16 v52, v61

    move-wide/from16 v61, v49

    move-wide/from16 v49, v55

    move-wide/from16 v55, v52

    move-wide/from16 v58, v0

    move-wide/from16 v52, v45

    const/16 v0, 0x18

    move-wide/from16 v45, v39

    move-wide/from16 v39, v47

    move-wide/from16 v47, v19

    move-wide/from16 v19, v6

    const/4 v6, 0x2

    move-wide/from16 v106, v2

    move/from16 v3, v37

    move-wide v1, v14

    move-wide/from16 v37, v63

    move-wide/from16 v63, v66

    const/4 v15, 0x5

    move-wide/from16 v66, v42

    move-wide/from16 v42, v16

    move-wide/from16 v16, v8

    const/4 v9, 0x3

    move-wide v7, v4

    move-wide/from16 v4, v22

    move-wide/from16 v22, v69

    move-wide/from16 v69, v106

    move-wide/from16 v106, v12

    const/4 v12, 0x4

    move-wide/from16 v13, v31

    move-wide/from16 v31, v10

    move-wide/from16 v10, v28

    move-wide/from16 v28, v34

    move-wide/from16 v34, v106

    .end local v96    # "i":I
    .local v37, "i":I
    goto/16 :goto_0

    .end local v0    # "a20":J
    .end local v2    # "a24":J
    .end local v6    # "a06":J
    .end local v8    # "a05":J
    .end local v12    # "a11":J
    .end local v14    # "a00":J
    .restart local v1    # "a00":J
    .restart local v3    # "i":I
    .local v4, "a01":J
    .restart local v7    # "a02":J
    .local v10, "a03":J
    .restart local v13    # "a04":J
    .local v16, "a05":J
    .local v19, "a06":J
    .local v22, "a07":J
    .local v28, "a09":J
    .local v31, "a10":J
    .local v34, "a11":J
    .local v37, "a12":J
    .local v39, "a13":J
    .local v42, "a14":J
    .local v45, "a15":J
    .local v47, "a16":J
    .local v49, "a17":J
    .local v52, "a18":J
    .local v55, "a19":J
    .local v58, "a20":J
    .local v61, "a21":J
    .local v63, "a22":J
    .local v66, "a23":J
    .local v69, "a24":J
    :cond_0
    const/16 v84, 0x2

    const/16 v93, 0x4

    const/16 v94, 0x18

    const/16 v95, 0x3

    const/16 v105, 0x5

    .line 186
    .end local v3    # "i":I
    aput-wide v1, p0, v68

    .line 187
    aput-wide v4, p0, v71

    .line 188
    aput-wide v7, p0, v84

    .line 189
    aput-wide v10, p0, v95

    .line 190
    aput-wide v13, p0, v93

    .line 191
    aput-wide v16, p0, v105

    .line 192
    aput-wide v19, p0, v18

    .line 193
    aput-wide v22, p0, v21

    .line 194
    aput-wide v25, p0, v24

    .line 195
    aput-wide v28, p0, v27

    .line 196
    aput-wide v31, p0, v30

    .line 197
    aput-wide v34, p0, v33

    .line 198
    aput-wide v37, p0, v36

    .line 199
    const/16 v0, 0xd

    aput-wide v39, p0, v0

    .line 200
    aput-wide v42, p0, v41

    .line 201
    aput-wide v45, p0, v44

    .line 202
    const/16 v0, 0x10

    aput-wide v47, p0, v0

    .line 203
    const/16 v0, 0x11

    aput-wide v49, p0, v0

    .line 204
    aput-wide v52, p0, v51

    .line 205
    aput-wide v55, p0, v54

    .line 206
    aput-wide v58, p0, v57

    .line 207
    aput-wide v61, p0, v60

    .line 208
    const/16 v0, 0x16

    aput-wide v63, p0, v0

    .line 209
    aput-wide v66, p0, v65

    .line 210
    aput-wide v69, p0, v94

    .line 211
    return-void
.end method

.method private static toUnsignedLong(I)J
    .locals 4
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 323
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public SHAKE256_512_ds([B[BI[B)V
    .locals 3
    .param p1, "output"    # [B
    .param p2, "input"    # [B
    .param p3, "inLen"    # I
    .param p4, "domain"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "input",
            "inLen",
            "domain"
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    .line 315
    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 316
    array-length v0, p4

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 317
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    .line 318
    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    .line 319
    return-void
.end method

.method public expandSeed([BI)V
    .locals 4
    .param p1, "output"    # [B
    .param p2, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outLen"
        }
    .end annotation

    .line 301
    and-int/lit8 v0, p2, 0x7

    .line 302
    .local v0, "r":I
    sub-int v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    .line 304
    if-eqz v0, :cond_0

    .line 306
    const/16 v1, 0x8

    new-array v2, v1, [B

    .line 307
    .local v2, "tmp":[B
    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    .line 308
    const/4 v1, 0x0

    sub-int v3, p2, v0

    invoke-static {v2, v1, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    .end local v2    # "tmp":[B
    :cond_0
    return-void
.end method

.method public randomGeneratorInit([B[BII)V
    .locals 3
    .param p1, "entropyInput"    # [B
    .param p2, "personalizationString"    # [B
    .param p3, "entropyLen"    # I
    .param p4, "perLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "entropyInput",
            "personalizationString",
            "entropyLen",
            "perLen"
        }
    .end annotation

    .line 284
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 285
    .local v1, "domain":[B
    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 286
    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 287
    array-length v0, v1

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 288
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    .line 289
    return-void
.end method

.method public seedExpanderInit([BI)V
    .locals 4
    .param p1, "seed"    # [B
    .param p2, "seedLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seed",
            "seedLen"
        }
    .end annotation

    .line 293
    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 294
    .local v1, "domain":[B
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 295
    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    .line 296
    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    .line 297
    return-void
.end method

.method public squeeze([BI)V
    .locals 0
    .param p1, "output"    # [B
    .param p2, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "output",
            "outLen"
        }
    .end annotation

    .line 279
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    .line 280
    return-void
.end method

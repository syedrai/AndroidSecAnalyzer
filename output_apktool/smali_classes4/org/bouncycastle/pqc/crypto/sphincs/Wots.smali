.class Lorg/bouncycastle/pqc/crypto/sphincs/Wots;
.super Ljava/lang/Object;
.source "Wots.java"


# static fields
.field static final WOTS_L:I = 0x43

.field static final WOTS_L1:I = 0x40

.field static final WOTS_LOGW:I = 0x4

.field static final WOTS_LOG_L:I = 0x7

.field static final WOTS_SIGBYTES:I = 0x860

.field static final WOTS_W:I = 0x10


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static clear([BII)V
    .locals 3
    .param p0, "bytes"    # [B
    .param p1, "offSet"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "offSet",
            "length"
        }
    .end annotation

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-eq v0, p2, :cond_0

    .line 26
    add-int v1, v0, p1

    const/4 v2, 0x0

    aput-byte v2, p0, v1

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static expand_seed([BI[BI)V
    .locals 7
    .param p0, "outseeds"    # [B
    .param p1, "outOff"    # I
    .param p2, "inseed"    # [B
    .param p3, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outseeds",
            "outOff",
            "inseed",
            "inOff"
        }
    .end annotation

    .line 17
    const/16 v0, 0x860

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->clear([BII)V

    .line 19
    const-wide/16 v3, 0x860

    move-object v1, p0

    move v2, p1

    move-object v5, p2

    move v6, p3

    .end local p0    # "outseeds":[B
    .end local p1    # "outOff":I
    .end local p2    # "inseed":[B
    .end local p3    # "inOff":I
    .local v1, "outseeds":[B
    .local v2, "outOff":I
    .local v5, "inseed":[B
    .local v6, "inOff":I
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincs/Seed;->prg([BIJ[BI)V

    .line 20
    return-void
.end method

.method static gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V
    .locals 11
    .param p0, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "seed"    # [B
    .param p4, "seedOff"    # I
    .param p5, "masks"    # [B
    .param p6, "masksOff"    # I
    .param p7, "chainlen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "out",
            "outOff",
            "seed",
            "seedOff",
            "masks",
            "masksOff",
            "chainlen"
        }
    .end annotation

    .line 33
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 34
    add-int v1, v0, p2

    add-int v2, v0, p4

    aget-byte v2, p3, v2

    aput-byte v2, p1, v1

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 36
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    move/from16 v2, p7

    if-ge v1, v2, :cond_1

    const/16 v3, 0x10

    if-ge v1, v3, :cond_1

    .line 37
    mul-int/lit8 v3, v1, 0x20

    add-int v10, p6, v3

    move-object v7, p1

    move v8, p2

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;->hash_n_n_mask([BI[BI[BI)I

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method wots_pkgen(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BI)V
    .locals 10
    .param p1, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "pk"    # [B
    .param p3, "pkOff"    # I
    .param p4, "sk"    # [B
    .param p5, "skOff"    # I
    .param p6, "masks"    # [B
    .param p7, "masksOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hs",
            "pk",
            "pkOff",
            "sk",
            "skOff",
            "masks",
            "masksOff"
        }
    .end annotation

    .line 44
    invoke-static/range {p2 .. p5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x43

    if-ge v0, v1, :cond_0

    .line 46
    mul-int/lit8 v1, v0, 0x20

    add-int v4, p3, v1

    mul-int/lit8 v1, v0, 0x20

    add-int v6, p3, v1

    const/16 v9, 0xf

    move-object v5, p2

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method wots_sign(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[B[B[B)V
    .locals 15
    .param p1, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "sig"    # [B
    .param p3, "sigOff"    # I
    .param p4, "msg"    # [B
    .param p5, "sk"    # [B
    .param p6, "masks"    # [B
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
            "hs",
            "sig",
            "sigOff",
            "msg",
            "sk",
            "masks"
        }
    .end annotation

    .line 52
    move/from16 v0, p3

    const/16 v1, 0x43

    new-array v2, v1, [I

    .line 53
    .local v2, "basew":[I
    const/4 v3, 0x0

    .line 55
    .local v3, "c":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    const/16 v5, 0x40

    if-ge v4, v5, :cond_0

    .line 57
    div-int/lit8 v5, v4, 0x2

    aget-byte v5, p4, v5

    and-int/lit8 v5, v5, 0xf

    aput v5, v2, v4

    .line 58
    add-int/lit8 v5, v4, 0x1

    div-int/lit8 v6, v4, 0x2

    aget-byte v6, p4, v6

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v6, v6, 0x4

    aput v6, v2, v5

    .line 59
    aget v5, v2, v4

    rsub-int/lit8 v5, v5, 0xf

    add-int/2addr v3, v5

    .line 60
    add-int/lit8 v5, v4, 0x1

    aget v5, v2, v5

    rsub-int/lit8 v5, v5, 0xf

    add-int/2addr v3, v5

    .line 55
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 63
    :cond_0
    :goto_1
    if-ge v4, v1, :cond_1

    .line 65
    and-int/lit8 v5, v3, 0xf

    aput v5, v2, v4

    .line 66
    ushr-int/lit8 v3, v3, 0x4

    .line 63
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 69
    :cond_1
    const/4 v5, 0x0

    move-object/from16 v7, p2

    move-object/from16 v14, p5

    invoke-static {v7, v0, v14, v5}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->expand_seed([BI[BI)V

    .line 71
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_2

    .line 72
    mul-int/lit8 v5, v4, 0x20

    add-int v8, v0, v5

    mul-int/lit8 v5, v4, 0x20

    add-int v10, v0, v5

    const/4 v12, 0x0

    aget v13, v2, v4

    move-object/from16 v9, p2

    move-object/from16 v6, p1

    move-object/from16 v11, p6

    invoke-static/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 71
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v7, p2

    goto :goto_2

    .line 73
    :cond_2
    return-void
.end method

.method wots_verify(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[B[BI[B[B)V
    .locals 12
    .param p1, "hs"    # Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;
    .param p2, "pk"    # [B
    .param p3, "sig"    # [B
    .param p4, "sigOff"    # I
    .param p5, "msg"    # [B
    .param p6, "masks"    # [B
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
            "hs",
            "pk",
            "sig",
            "sigOff",
            "msg",
            "masks"
        }
    .end annotation

    .line 77
    const/16 v0, 0x43

    new-array v1, v0, [I

    .line 78
    .local v1, "basew":[I
    const/4 v2, 0x0

    .line 80
    .local v2, "c":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    .line 82
    div-int/lit8 v4, v3, 0x2

    aget-byte v4, p5, v4

    and-int/lit8 v4, v4, 0xf

    aput v4, v1, v3

    .line 83
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v5, v3, 0x2

    aget-byte v5, p5, v5

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x4

    aput v5, v1, v4

    .line 84
    aget v4, v1, v3

    rsub-int/lit8 v4, v4, 0xf

    add-int/2addr v2, v4

    .line 85
    add-int/lit8 v4, v3, 0x1

    aget v4, v1, v4

    rsub-int/lit8 v4, v4, 0xf

    add-int/2addr v2, v4

    .line 80
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 88
    :cond_0
    :goto_1
    if-ge v3, v0, :cond_1

    .line 90
    and-int/lit8 v4, v2, 0xf

    aput v4, v1, v3

    .line 91
    ushr-int/lit8 v2, v2, 0x4

    .line 88
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 94
    :cond_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_2

    .line 95
    mul-int/lit8 v6, v3, 0x20

    mul-int/lit8 v4, v3, 0x20

    add-int v8, p4, v4

    aget v4, v1, v3

    mul-int/lit8 v10, v4, 0x20

    aget v4, v1, v3

    rsub-int/lit8 v11, v4, 0xf

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object/from16 v9, p6

    invoke-static/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincs/Wots;->gen_chain(Lorg/bouncycastle/pqc/crypto/sphincs/HashFunctions;[BI[BI[BII)V

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 96
    :cond_2
    return-void
.end method

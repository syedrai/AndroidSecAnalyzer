.class public Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD128Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 34
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 36
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 2
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 45
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    .line 47
    const/16 v0, 0x80

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 49
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    .line 50
    return-void
.end method

.method private F1(IIIIII)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 197
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F2(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 208
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F3(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 219
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private F4(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 230
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF1(IIIIII)I
    .locals 1
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 241
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF2(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF3(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 263
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private FF4(IIIIII)I
    .locals 2
    .param p1, "a"    # I
    .param p2, "b"    # I
    .param p3, "c"    # I
    .param p4, "d"    # I
    .param p5, "x"    # I
    .param p6, "s"    # I
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
            "a",
            "b",
            "c",
            "d",
            "x",
            "s"
        }
    .end annotation

    .line 274
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->RL(II)I

    move-result v0

    return v0
.end method

.method private RL(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "n"
        }
    .end annotation

    .line 138
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 56
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 57
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 58
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 59
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 61
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 63
    return-void
.end method

.method private f1(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
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

    .line 153
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private f2(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
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

    .line 164
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private f3(III)I
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
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

    .line 175
    not-int v0, p2

    or-int/2addr v0, p1

    xor-int/2addr v0, p3

    return v0
.end method

.method private f4(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I
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

    .line 186
    and-int v0, p1, p3

    not-int v1, p3

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 471
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 483
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff"
        }
    .end annotation

    .line 99
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->finish()V

    .line 101
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 102
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 103
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 104
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 106
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->reset()V

    .line 108
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "RIPEMD128"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 72
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 32

    .line 284
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    move v7, v1

    .line 285
    .local v1, "a":I
    .local v7, "aa":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    move v8, v2

    .line 286
    .local v2, "b":I
    .local v8, "bb":I
    iget v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    move v9, v3

    .line 287
    .local v3, "c":I
    .local v9, "cc":I
    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    move v10, v4

    .line 292
    .local v4, "d":I
    .local v10, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v11, 0x0

    aget v5, v5, v11

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 293
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 294
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v13, 0x2

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 295
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v14, 0x3

    aget v5, v5, v14

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 296
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/4 v15, 0x4

    aget v5, v5, v15

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 297
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v16, 0x5

    aget v5, v5, v16

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 298
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v17, 0x6

    aget v5, v5, v17

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 299
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v18, 0x7

    aget v5, v5, v18

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 300
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v19, 0x8

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 301
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v20, 0x9

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 302
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v21, 0xa

    aget v5, v5, v21

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 303
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v22, 0xb

    aget v5, v5, v22

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 304
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v23, 0xc

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 305
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v24, 0xd

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 306
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v25, 0xe

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 307
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v26, 0xf

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F1(IIIIII)I

    move-result v1

    .line 312
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 313
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 314
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 315
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 316
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 317
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 318
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 319
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 320
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 321
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 322
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 323
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 324
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 325
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 326
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 327
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F2(IIIIII)I

    move-result v1

    .line 332
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 333
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 334
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 335
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 336
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 337
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 338
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 339
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 340
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 341
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 342
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 343
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 344
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 345
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 346
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 347
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F3(IIIIII)I

    move-result v1

    .line 352
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 353
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 354
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 355
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 356
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 357
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 358
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 359
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 360
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 361
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 362
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 363
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 364
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 365
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 366
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v1

    .line 367
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->F4(IIIIII)I

    move-result v27

    .line 372
    move/from16 v30, v2

    move/from16 v29, v3

    move/from16 v28, v4

    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v3    # "d":I
    .end local v4    # "a":I
    .local v27, "b":I
    .local v28, "a":I
    .local v29, "d":I
    .local v30, "c":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v1, v16

    const/16 v6, 0x8

    move v1, v7

    move v2, v8

    move v3, v9

    move v4, v10

    .end local v7    # "aa":I
    .end local v8    # "bb":I
    .end local v9    # "cc":I
    .end local v10    # "dd":I
    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 373
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 374
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 375
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 376
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 377
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 378
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 379
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 380
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 381
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 382
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 383
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 384
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 385
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 386
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 387
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF4(IIIIII)I

    move-result v1

    .line 392
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 393
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 394
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 395
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 396
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 397
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 398
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 399
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 400
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 401
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 402
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 403
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 404
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 405
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 406
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 407
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF3(IIIIII)I

    move-result v1

    .line 412
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 413
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 414
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 415
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 416
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 417
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 418
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 419
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 420
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 421
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 422
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 423
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 424
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xd

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 425
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 426
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 427
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF2(IIIIII)I

    move-result v1

    .line 432
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 433
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 434
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 435
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xb

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 436
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 437
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v22

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 438
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 439
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 440
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 441
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 442
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 443
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 444
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 445
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v31, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v31

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 446
    move/from16 v31, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v31

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move/from16 v31, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v31

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 447
    move/from16 v31, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v31

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move/from16 v31, v2

    move v2, v1

    move/from16 v1, v31

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->FF1(IIIIII)I

    move-result v1

    .line 449
    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    add-int v5, v30, v5

    add-int/2addr v3, v5

    .line 454
    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    add-int v5, v5, v29

    add-int/2addr v5, v4

    iput v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 455
    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    add-int v5, v5, v28

    add-int/2addr v5, v1

    iput v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 456
    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    add-int v5, v5, v27

    add-int/2addr v5, v2

    iput v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 457
    iput v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 462
    iput v11, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 463
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 465
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aput v11, v6, v5

    .line 463
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 467
    .end local v5    # "i":I
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 4
    .param p1, "bitLength"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitLength"
        }
    .end annotation

    .line 88
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    .line 93
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    .line 94
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 95
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 79
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 81
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->processBlock()V

    .line 83
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 116
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 118
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H0:I

    .line 119
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H1:I

    .line 120
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H2:I

    .line 121
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->H3:I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->xOff:I

    .line 125
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->X:[I

    aput v0, v2, v1

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 476
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;

    .line 478
    .local v0, "d":Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD128Digest;)V

    .line 479
    return-void
.end method

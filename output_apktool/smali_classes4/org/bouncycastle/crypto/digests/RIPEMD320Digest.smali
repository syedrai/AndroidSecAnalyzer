.class public Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD320Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x28


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private H9:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 31
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

    .line 34
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 36
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 2
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 47
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 22
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    .line 49
    const/16 v0, 0x80

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 51
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    .line 52
    return-void
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

    .line 157
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 57
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 58
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 59
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 60
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 61
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 63
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 64
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 65
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 66
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 68
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 70
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

    .line 172
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

    .line 183
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

    .line 194
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

    .line 205
    and-int v0, p1, p3

    not-int v1, p3

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private f5(III)I
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

    .line 216
    not-int v0, p3

    or-int/2addr v0, p2

    xor-int/2addr v0, p1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 469
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

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

    .line 106
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->finish()V

    .line 108
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 109
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 112
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 113
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 114
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 115
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 116
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/lit8 v1, p2, 0x20

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 117
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/lit8 v1, p2, 0x24

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 119
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->reset()V

    .line 121
    const/16 v0, 0x28

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "RIPEMD320"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 79
    const/16 v0, 0x28

    return v0
.end method

.method protected processBlock()V
    .locals 30

    .line 228
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 229
    .local v1, "a":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 230
    .local v2, "b":I
    iget v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 231
    .local v3, "c":I
    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 232
    .local v4, "d":I
    iget v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 233
    .local v5, "e":I
    iget v6, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 234
    .local v6, "aa":I
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 235
    .local v7, "bb":I
    iget v8, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 236
    .local v8, "cc":I
    iget v9, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 237
    .local v9, "dd":I
    iget v10, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 243
    .local v10, "ee":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    add-int/2addr v11, v12

    const/16 v12, 0xb

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v1    # "a":I
    .local v11, "a":I
    const/16 v1, 0xa

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 244
    invoke-direct {v0, v11, v2, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v14, v5

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v16, 0x1

    aget v15, v15, v16

    add-int/2addr v14, v15

    const/16 v15, 0xe

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v14

    add-int/2addr v14, v4

    .end local v5    # "e":I
    .local v14, "e":I
    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 245
    invoke-direct {v0, v14, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v17, 0x0

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v18, 0x2

    aget v13, v13, v18

    add-int/2addr v5, v13

    const/16 v13, 0xf

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 246
    .end local v11    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0x3

    aget v13, v13, v20

    add-int/2addr v11, v13

    const/16 v13, 0xc

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "c":I
    .local v11, "c":I
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 247
    .end local v14    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v14, v2

    const/16 v20, 0xc

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x4

    aget v13, v13, v21

    add-int/2addr v14, v13

    const/4 v13, 0x5

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v14

    add-int/2addr v14, v4

    .end local v2    # "b":I
    .local v14, "b":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 248
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v14, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v21, 0x5

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v21

    add-int/2addr v5, v13

    const/16 v13, 0x8

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 249
    .end local v11    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    const/16 v22, 0x8

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x6

    aget v13, v13, v15

    add-int/2addr v11, v13

    const/4 v13, 0x7

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "e":I
    .local v11, "e":I
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 250
    .end local v14    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v14, v2

    const/16 v24, 0x7

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v24

    add-int/2addr v14, v13

    const/16 v13, 0x9

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v14

    add-int/2addr v14, v4

    .end local v2    # "d":I
    .local v14, "d":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 251
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v14, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v4

    const/16 v25, 0x9

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v22

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 252
    .end local v11    # "e":I
    .local v4, "e":I
    invoke-direct {v0, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v25

    add-int/2addr v11, v13

    const/16 v13, 0xd

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "b":I
    .local v11, "b":I
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 253
    .end local v14    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v14

    add-int/2addr v14, v2

    const/16 v26, 0xd

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v1

    add-int/2addr v14, v13

    const/16 v13, 0xe

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v14

    add-int/2addr v14, v4

    .end local v2    # "a":I
    .local v14, "a":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 254
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v14, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v12

    add-int/2addr v5, v13

    const/16 v13, 0xf

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "e":I
    .local v5, "e":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 255
    .end local v11    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v13, v13, v20

    add-int/2addr v11, v13

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "d":I
    .local v11, "d":I
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 256
    .end local v14    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v13

    add-int/2addr v13, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v26

    add-int/2addr v13, v14

    const/4 v14, 0x7

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v4

    .end local v2    # "c":I
    .local v13, "c":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 257
    .end local v5    # "e":I
    .local v2, "e":I
    invoke-direct {v0, v13, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v5, v14

    const/16 v14, 0x9

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 258
    .end local v11    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v5, v13, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v11, v14

    const/16 v14, 0x8

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "a":I
    .local v11, "a":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 261
    .end local v13    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v7, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    const/16 v27, 0x6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v21

    add-int/2addr v13, v15

    const v15, 0x50a28be6

    add-int/2addr v13, v15

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v10

    .end local v6    # "aa":I
    .local v13, "aa":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 262
    .end local v8    # "cc":I
    .local v6, "cc":I
    invoke-direct {v0, v13, v7, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v10

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v8, v14

    add-int/2addr v8, v15

    const/16 v14, 0x9

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v10    # "ee":I
    .local v8, "ee":I
    invoke-direct {v0, v7, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 263
    invoke-direct {v0, v8, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v10

    add-int/2addr v10, v9

    const v28, 0x50a28be6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v15, v15, v24

    add-int/2addr v10, v15

    add-int v10, v10, v28

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "dd":I
    .local v10, "dd":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 264
    .end local v13    # "aa":I
    .local v9, "aa":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v13, v14

    add-int v13, v13, v28

    invoke-direct {v0, v13, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "cc":I
    .local v13, "cc":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 265
    .end local v8    # "ee":I
    .local v6, "ee":I
    invoke-direct {v0, v13, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v8, v14

    add-int v8, v8, v28

    const/16 v14, 0xd

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "bb":I
    .local v8, "bb":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 266
    .end local v10    # "dd":I
    .local v7, "dd":I
    invoke-direct {v0, v8, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v10, v14

    add-int v10, v10, v28

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "aa":I
    .local v10, "aa":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 267
    .end local v13    # "cc":I
    .local v9, "cc":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v12

    add-int/2addr v13, v15

    add-int v13, v13, v28

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "ee":I
    .local v13, "ee":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 268
    .end local v8    # "bb":I
    .local v6, "bb":I
    invoke-direct {v0, v13, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int v8, v8, v28

    const/4 v14, 0x5

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "dd":I
    .local v8, "dd":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 269
    .end local v10    # "aa":I
    .local v7, "aa":I
    invoke-direct {v0, v8, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v10, v14

    add-int v10, v10, v28

    const/4 v14, 0x7

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "cc":I
    .local v10, "cc":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 270
    .end local v13    # "ee":I
    .local v9, "ee":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v27

    add-int/2addr v13, v15

    add-int v13, v13, v28

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "bb":I
    .local v13, "bb":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 271
    .end local v8    # "dd":I
    .local v6, "dd":I
    invoke-direct {v0, v13, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v8, v14

    add-int v8, v8, v28

    const/16 v14, 0x8

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "aa":I
    .local v8, "aa":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 272
    .end local v10    # "cc":I
    .local v7, "cc":I
    invoke-direct {v0, v8, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v10, v15

    add-int v10, v10, v28

    invoke-direct {v0, v10, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "ee":I
    .local v10, "ee":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 273
    .end local v13    # "bb":I
    .local v9, "bb":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v13, v14

    add-int v13, v13, v28

    const/16 v14, 0xe

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "dd":I
    .local v13, "dd":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 274
    .end local v8    # "aa":I
    .local v6, "aa":I
    invoke-direct {v0, v13, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v1

    add-int/2addr v8, v15

    add-int v8, v8, v28

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "cc":I
    .local v8, "cc":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 275
    .end local v10    # "ee":I
    .local v7, "ee":I
    invoke-direct {v0, v8, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int v10, v10, v28

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "bb":I
    .local v10, "bb":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 276
    .end local v13    # "dd":I
    .local v9, "dd":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v13, v15

    add-int v13, v13, v28

    const/4 v14, 0x6

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "aa":I
    .local v13, "aa":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    .line 278
    .end local v8    # "cc":I
    .local v6, "cc":I
    move v8, v11

    .local v8, "t":I
    move v11, v13

    move v13, v8

    .line 284
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v14

    add-int/2addr v14, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v12, 0x7

    aget v15, v15, v12

    add-int/2addr v14, v15

    const v15, 0x5a827999

    add-int/2addr v14, v15

    invoke-direct {v0, v14, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v14

    add-int/2addr v14, v4

    .end local v2    # "e":I
    .local v14, "e":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 285
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v14, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x4

    aget v12, v12, v29

    add-int/2addr v5, v12

    add-int/2addr v5, v15

    const/4 v12, 0x6

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 286
    .end local v11    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v5, v14, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v12, v12, v26

    add-int/2addr v11, v12

    add-int/2addr v11, v15

    const/16 v12, 0x8

    invoke-direct {v0, v11, v12}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "c":I
    .local v11, "c":I
    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 287
    .end local v14    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    const/16 v14, 0xd

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "b":I
    .local v12, "b":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 288
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v5, v14

    add-int/2addr v5, v15

    const/16 v14, 0xb

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 289
    .end local v11    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v5, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v27, 0x6

    aget v14, v14, v27

    add-int/2addr v11, v14

    add-int/2addr v11, v15

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "e":I
    .local v11, "e":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 290
    .end local v12    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "d":I
    .local v12, "d":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 291
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x3

    aget v14, v14, v29

    add-int/2addr v5, v14

    add-int/2addr v5, v15

    const/16 v14, 0xf

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 292
    .end local v11    # "e":I
    .local v4, "e":I
    invoke-direct {v0, v5, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v11, v14

    add-int/2addr v11, v15

    const/4 v14, 0x7

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "b":I
    .local v11, "b":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 293
    .end local v12    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    const/16 v14, 0xc

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "a":I
    .local v12, "a":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 294
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v5, v14

    add-int/2addr v5, v15

    const/16 v14, 0xf

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "e":I
    .local v5, "e":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 295
    .end local v11    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v5, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v14, v14, v21

    add-int/2addr v11, v14

    add-int/2addr v11, v15

    const/16 v14, 0x9

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "d":I
    .local v11, "d":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 296
    .end local v12    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    const/16 v14, 0xb

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "c":I
    .local v12, "c":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 297
    .end local v5    # "e":I
    .local v2, "e":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v5, v14

    add-int/2addr v5, v15

    const/4 v14, 0x7

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v3

    .end local v4    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 298
    .end local v11    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v5, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v14, v14, v28

    add-int/2addr v11, v14

    add-int/2addr v11, v15

    const/16 v14, 0xd

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "a":I
    .local v11, "a":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 299
    .end local v12    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v11, v5, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v12, v14

    add-int/2addr v12, v15

    const/16 v14, 0xc

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "e":I
    .local v12, "e":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 302
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v13, v10, v6}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v5

    add-int/2addr v5, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v27, 0x6

    aget v14, v14, v27

    add-int/2addr v5, v14

    const v14, 0x5c4dd124

    add-int/2addr v5, v14

    const/16 v15, 0x9

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    add-int/2addr v5, v9

    .end local v7    # "ee":I
    .local v5, "ee":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 303
    .end local v10    # "bb":I
    .local v7, "bb":I
    invoke-direct {v0, v5, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v15, v15, v28

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0xd

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v6

    .end local v9    # "dd":I
    .local v10, "dd":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 304
    .end local v13    # "aa":I
    .local v9, "aa":I
    invoke-direct {v0, v10, v5, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v6

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v29

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0xf

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v6    # "cc":I
    .local v13, "cc":I
    invoke-direct {v0, v5, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 305
    invoke-direct {v0, v13, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x7

    const v29, 0x5c4dd124

    aget v15, v15, v14

    add-int/2addr v6, v15

    add-int v6, v6, v29

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "bb":I
    .local v6, "bb":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 306
    .end local v10    # "dd":I
    .local v7, "dd":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "aa":I
    .local v10, "aa":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 307
    .end local v13    # "cc":I
    .local v9, "cc":I
    invoke-direct {v0, v10, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v14, 0x8

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "ee":I
    .local v13, "ee":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 308
    .end local v6    # "bb":I
    .local v5, "bb":I
    invoke-direct {v0, v13, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v14, v14, v21

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v14, 0x9

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "dd":I
    .local v6, "dd":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 309
    .end local v10    # "aa":I
    .local v7, "aa":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/16 v14, 0xb

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "cc":I
    .local v10, "cc":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 310
    .end local v13    # "ee":I
    .local v9, "ee":I
    invoke-direct {v0, v10, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/4 v14, 0x7

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "bb":I
    .local v13, "bb":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 311
    .end local v6    # "dd":I
    .local v5, "dd":I
    invoke-direct {v0, v13, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v6, v15

    add-int v6, v6, v29

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "aa":I
    .local v6, "aa":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 312
    .end local v10    # "cc":I
    .local v7, "cc":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "ee":I
    .local v10, "ee":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 313
    .end local v13    # "bb":I
    .local v9, "bb":I
    invoke-direct {v0, v10, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v14

    add-int/2addr v13, v15

    add-int v13, v13, v29

    const/4 v14, 0x7

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "dd":I
    .local v13, "dd":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 314
    .end local v6    # "aa":I
    .local v5, "aa":I
    invoke-direct {v0, v13, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/4 v14, 0x6

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "cc":I
    .local v6, "cc":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 315
    .end local v10    # "ee":I
    .local v7, "ee":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/16 v14, 0xf

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "bb":I
    .local v10, "bb":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 316
    .end local v13    # "dd":I
    .local v9, "dd":I
    invoke-direct {v0, v10, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v14, 0xd

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "aa":I
    .local v13, "aa":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 317
    .end local v6    # "cc":I
    .local v5, "cc":I
    invoke-direct {v0, v13, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v14, 0xb

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "ee":I
    .local v6, "ee":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 319
    .end local v10    # "bb":I
    .local v7, "bb":I
    move v8, v2

    move v2, v7

    move v7, v8

    .line 325
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v10, v14

    const v14, 0x6ed9eba1

    add-int/2addr v10, v14

    const/16 v15, 0xb

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "d":I
    .local v10, "d":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 326
    .end local v11    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v1

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0xd

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "c":I
    .local v11, "c":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 327
    .end local v12    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v11, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v15, v15, v23

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/4 v15, 0x6

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "b":I
    .local v12, "b":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 328
    .end local v10    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x4

    aget v15, v15, v29

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/4 v15, 0x7

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "a":I
    .local v10, "a":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 329
    .end local v11    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v15, v15, v25

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0xe

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "e":I
    .local v11, "e":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 330
    .end local v12    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v11, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0x9

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "d":I
    .local v12, "d":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 331
    .end local v10    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v15, v15, v22

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0xd

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "c":I
    .local v10, "c":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 332
    .end local v11    # "e":I
    .local v4, "e":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v16

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0xf

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "b":I
    .local v11, "b":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 333
    .end local v12    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v11, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v18

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0xe

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "a":I
    .local v12, "a":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 334
    .end local v10    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v15, v15, v24

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0x8

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "e":I
    .local v10, "e":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 335
    .end local v11    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v17

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0xd

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "d":I
    .local v11, "d":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 336
    .end local v12    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v11, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x6

    const v29, 0x6ed9eba1

    aget v15, v15, v14

    add-int/2addr v12, v15

    add-int v12, v12, v29

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "c":I
    .local v12, "c":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 337
    .end local v10    # "e":I
    .local v2, "e":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/4 v14, 0x5

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "b":I
    .local v10, "b":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 338
    .end local v11    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v14, v14, v28

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v14, 0xc

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v2

    .end local v3    # "a":I
    .local v11, "a":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 339
    .end local v12    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v11, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v14, v14, v21

    add-int/2addr v12, v14

    add-int v12, v12, v29

    const/4 v14, 0x7

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "e":I
    .local v12, "e":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 340
    .end local v10    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v12, v11, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/4 v14, 0x5

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "d":I
    .local v10, "d":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 343
    .end local v11    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v11, v14

    const v14, 0x6d703ef3

    add-int/2addr v11, v14

    const/16 v15, 0x9

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "dd":I
    .local v11, "dd":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 344
    .end local v13    # "aa":I
    .local v9, "aa":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v15, v15, v21

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/4 v15, 0x7

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "cc":I
    .local v13, "cc":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 345
    .end local v6    # "ee":I
    .local v5, "ee":I
    invoke-direct {v0, v13, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v16

    add-int/2addr v6, v15

    add-int/2addr v6, v14

    const/16 v15, 0xf

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "bb":I
    .local v6, "bb":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 346
    .end local v11    # "dd":I
    .local v7, "dd":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x3

    aget v15, v15, v29

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0xb

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "aa":I
    .local v11, "aa":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 347
    .end local v13    # "cc":I
    .local v9, "cc":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v15, v15, v24

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0x8

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "ee":I
    .local v13, "ee":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 348
    .end local v6    # "bb":I
    .local v5, "bb":I
    invoke-direct {v0, v13, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v15, v15, v23

    add-int/2addr v6, v15

    add-int/2addr v6, v14

    const/4 v15, 0x6

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "dd":I
    .local v6, "dd":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 349
    .end local v11    # "aa":I
    .local v7, "aa":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    const v29, 0x6d703ef3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int v11, v11, v29

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "cc":I
    .local v11, "cc":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 350
    .end local v13    # "ee":I
    .local v9, "ee":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "bb":I
    .local v13, "bb":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 351
    .end local v6    # "dd":I
    .local v5, "dd":I
    invoke-direct {v0, v13, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v14, v14, v28

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "aa":I
    .local v6, "aa":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 352
    .end local v11    # "cc":I
    .local v7, "cc":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0xd

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "ee":I
    .local v11, "ee":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 353
    .end local v13    # "bb":I
    .local v9, "bb":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "dd":I
    .local v13, "dd":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 354
    .end local v6    # "aa":I
    .local v5, "aa":I
    invoke-direct {v0, v13, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v15, 0xe

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "cc":I
    .local v6, "cc":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 355
    .end local v11    # "ee":I
    .local v7, "ee":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0xd

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "bb":I
    .local v11, "bb":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 356
    .end local v13    # "dd":I
    .local v9, "dd":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v13

    add-int/2addr v13, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v13, v14

    add-int v13, v13, v29

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v7

    .end local v5    # "aa":I
    .local v13, "aa":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 357
    .end local v6    # "cc":I
    .local v5, "cc":I
    invoke-direct {v0, v13, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/4 v14, 0x7

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "ee":I
    .local v6, "ee":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 358
    .end local v11    # "bb":I
    .local v7, "bb":I
    invoke-direct {v0, v6, v13, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f3(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/4 v14, 0x5

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "dd":I
    .local v11, "dd":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 360
    .end local v13    # "aa":I
    .local v9, "aa":I
    move v8, v3

    move v3, v5

    move v5, v8

    .line 366
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v13, v14

    const v14, -0x70e44324

    add-int/2addr v13, v14

    const/16 v15, 0xb

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "c":I
    .local v13, "c":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 367
    .end local v12    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v13, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v15, v15, v25

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0xc

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "b":I
    .local v12, "b":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 368
    .end local v10    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v12, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v15, v15, v28

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0xe

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "a":I
    .local v10, "a":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 369
    .end local v13    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v1

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0xf

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "e":I
    .local v13, "e":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 370
    .end local v12    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v13, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v17

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0xe

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "d":I
    .local v12, "d":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 371
    .end local v10    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v12, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v15, v15, v22

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0xf

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "c":I
    .local v10, "c":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 372
    .end local v13    # "e":I
    .local v4, "e":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v15, v15, v20

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0x9

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "b":I
    .local v13, "b":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 373
    .end local v12    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v13, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x4

    aget v15, v15, v29

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0x8

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "a":I
    .local v12, "a":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 374
    .end local v10    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v12, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v15, v15, v26

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/16 v15, 0x9

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "e":I
    .local v10, "e":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 375
    .end local v13    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x3

    aget v15, v15, v29

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "d":I
    .local v13, "d":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 376
    .end local v12    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v13, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v15, v15, v24

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/4 v15, 0x5

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "c":I
    .local v12, "c":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 377
    .end local v10    # "e":I
    .local v2, "e":I
    invoke-direct {v0, v12, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v15, v15, v19

    add-int/2addr v10, v15

    add-int/2addr v10, v14

    const/4 v15, 0x6

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "b":I
    .local v10, "b":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 378
    .end local v13    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v15, v15, v23

    add-int/2addr v13, v15

    add-int/2addr v13, v14

    const/16 v15, 0x8

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "a":I
    .local v13, "a":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 379
    .end local v12    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v13, v10, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v12

    add-int/2addr v12, v2

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v15, v15, v21

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/4 v15, 0x6

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v4

    .end local v2    # "e":I
    .local v12, "e":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 380
    .end local v10    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v12, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v10

    add-int/2addr v10, v4

    const v29, -0x70e44324

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v10, v14

    add-int v10, v10, v29

    const/4 v14, 0x5

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v3

    .end local v4    # "d":I
    .local v10, "d":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 381
    .end local v13    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v10, v12, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f4(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v14, 0xc

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "c":I
    .local v13, "c":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 384
    .end local v12    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v12, v14

    const v14, 0x7a6d76e9

    add-int/2addr v12, v14

    const/16 v15, 0xf

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "cc":I
    .local v12, "cc":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 385
    .end local v6    # "ee":I
    .local v5, "ee":I
    invoke-direct {v0, v12, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v27, 0x6

    aget v15, v15, v27

    add-int/2addr v6, v15

    add-int/2addr v6, v14

    const/4 v15, 0x5

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "bb":I
    .local v6, "bb":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 386
    .end local v11    # "dd":I
    .local v7, "dd":I
    invoke-direct {v0, v6, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x4

    aget v15, v15, v29

    add-int/2addr v11, v15

    add-int/2addr v11, v14

    const/16 v15, 0x8

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "aa":I
    .local v11, "aa":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 387
    .end local v12    # "cc":I
    .local v9, "cc":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v16

    add-int/2addr v12, v15

    add-int/2addr v12, v14

    const/16 v15, 0xb

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "ee":I
    .local v12, "ee":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 388
    .end local v6    # "bb":I
    .local v5, "bb":I
    invoke-direct {v0, v12, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v29, 0x3

    aget v15, v15, v29

    add-int/2addr v6, v15

    add-int/2addr v6, v14

    const/16 v15, 0xe

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "dd":I
    .local v6, "dd":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 389
    .end local v11    # "aa":I
    .local v7, "aa":I
    invoke-direct {v0, v6, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    const v29, 0x7a6d76e9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v28, 0xb

    aget v14, v14, v28

    add-int/2addr v11, v14

    add-int v11, v11, v29

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "cc":I
    .local v11, "cc":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 390
    .end local v12    # "ee":I
    .local v9, "ee":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v12, v14

    add-int v12, v12, v29

    const/4 v15, 0x6

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "bb":I
    .local v12, "bb":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 391
    .end local v6    # "dd":I
    .local v5, "dd":I
    invoke-direct {v0, v12, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v15, 0xe

    invoke-direct {v0, v6, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "aa":I
    .local v6, "aa":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 392
    .end local v11    # "cc":I
    .local v7, "cc":I
    invoke-direct {v0, v6, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v21, 0x5

    aget v14, v14, v21

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/4 v15, 0x6

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "ee":I
    .local v11, "ee":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 393
    .end local v12    # "bb":I
    .local v9, "bb":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v12, v14

    add-int v12, v12, v29

    const/16 v15, 0x9

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "dd":I
    .local v12, "dd":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 394
    .end local v6    # "aa":I
    .local v5, "aa":I
    invoke-direct {v0, v12, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/16 v14, 0xc

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "cc":I
    .local v6, "cc":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 395
    .end local v11    # "ee":I
    .local v7, "ee":I
    invoke-direct {v0, v6, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0x9

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "bb":I
    .local v11, "bb":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 396
    .end local v12    # "dd":I
    .local v9, "dd":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v12, v14

    add-int v12, v12, v29

    const/16 v14, 0xc

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "aa":I
    .local v12, "aa":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 397
    .end local v6    # "cc":I
    .local v5, "cc":I
    invoke-direct {v0, v12, v11, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v6

    add-int/2addr v6, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v14, v14, v24

    add-int/2addr v6, v14

    add-int v6, v6, v29

    const/4 v14, 0x5

    invoke-direct {v0, v6, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v6

    add-int/2addr v6, v9

    .end local v7    # "ee":I
    .local v6, "ee":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 398
    .end local v11    # "bb":I
    .local v7, "bb":I
    invoke-direct {v0, v6, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v11

    add-int/2addr v11, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0xf

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v5

    .end local v9    # "dd":I
    .local v11, "dd":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 399
    .end local v12    # "aa":I
    .local v9, "aa":I
    invoke-direct {v0, v11, v6, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f2(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v12, v14

    add-int v12, v12, v29

    const/16 v15, 0x8

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "cc":I
    .local v12, "cc":I
    invoke-direct {v0, v6, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 401
    .end local v6    # "ee":I
    .local v5, "ee":I
    move v6, v10

    .end local v8    # "t":I
    .local v6, "t":I
    move v8, v11

    .line 407
    .end local v11    # "dd":I
    .local v8, "d":I
    .local v10, "dd":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v11, v14

    const v14, -0x56ac02b2

    add-int/2addr v11, v14

    const/16 v15, 0x9

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "b":I
    .local v11, "b":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 408
    .end local v8    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v11, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v15, v15, v17

    add-int/2addr v8, v15

    add-int/2addr v8, v14

    const/16 v15, 0xf

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v3

    .end local v4    # "a":I
    .local v8, "a":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 409
    .end local v13    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v8, v11, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v15, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v14, 0x5

    const v29, -0x56ac02b2

    aget v15, v15, v14

    add-int/2addr v13, v15

    add-int v13, v13, v29

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "e":I
    .local v13, "e":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 410
    .end local v11    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0xb

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "d":I
    .local v11, "d":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 411
    .end local v8    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v11, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v14, v14, v24

    add-int/2addr v8, v14

    add-int v8, v8, v29

    const/4 v15, 0x6

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v3

    .end local v4    # "c":I
    .local v8, "c":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 412
    .end local v13    # "e":I
    .local v4, "e":I
    invoke-direct {v0, v8, v11, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v15, 0x8

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "b":I
    .local v13, "b":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 413
    .end local v11    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v15, 0xd

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "a":I
    .local v11, "a":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 414
    .end local v8    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v11, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v8, v14

    add-int v8, v8, v29

    const/16 v14, 0xc

    invoke-direct {v0, v8, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v3

    .end local v4    # "e":I
    .local v8, "e":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 415
    .end local v13    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v8, v11, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "d":I
    .local v13, "d":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 416
    .end local v11    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/16 v14, 0xc

    invoke-direct {v0, v11, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "c":I
    .local v11, "c":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 417
    .end local v8    # "e":I
    .local v2, "e":I
    invoke-direct {v0, v11, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v8, v14

    add-int v8, v8, v29

    const/16 v15, 0xd

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v3

    .end local v4    # "b":I
    .local v8, "b":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 418
    .end local v13    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v8, v11, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "a":I
    .local v13, "a":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 419
    .end local v11    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v15, 0xb

    aget v14, v14, v15

    add-int/2addr v11, v14

    add-int v11, v11, v29

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "e":I
    .local v11, "e":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 420
    .end local v8    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v11, v13, v2}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v8

    add-int/2addr v8, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v27, 0x6

    aget v14, v14, v27

    add-int/2addr v8, v14

    add-int v8, v8, v29

    const/16 v15, 0x8

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v3

    .end local v4    # "d":I
    .local v8, "d":I
    invoke-direct {v0, v13, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v4

    .line 421
    .end local v13    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v8, v11, v4}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v13

    add-int/2addr v13, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v13, v14

    add-int v13, v13, v29

    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v13

    add-int/2addr v13, v2

    .end local v3    # "c":I
    .local v13, "c":I
    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v3

    .line 422
    .end local v11    # "e":I
    .local v3, "e":I
    invoke-direct {v0, v13, v8, v3}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f5(III)I

    move-result v11

    add-int/2addr v11, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v26, 0xd

    aget v14, v14, v26

    add-int/2addr v11, v14

    add-int v11, v11, v29

    const/4 v15, 0x6

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v11

    add-int/2addr v11, v4

    .end local v2    # "b":I
    .local v11, "b":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v2

    .line 425
    .end local v8    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v20, 0xc

    aget v14, v14, v20

    add-int/2addr v8, v14

    const/16 v15, 0x8

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "bb":I
    .local v8, "bb":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 426
    .end local v10    # "dd":I
    .local v7, "dd":I
    invoke-direct {v0, v8, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v19, 0xf

    aget v14, v14, v19

    add-int/2addr v10, v14

    const/4 v14, 0x5

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "aa":I
    .local v10, "aa":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 427
    .end local v12    # "cc":I
    .local v9, "cc":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v1

    add-int/2addr v12, v14

    const/16 v14, 0xc

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "ee":I
    .local v12, "ee":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 428
    .end local v8    # "bb":I
    .local v5, "bb":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v8, v14

    const/16 v15, 0x9

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "dd":I
    .local v8, "dd":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 429
    .end local v10    # "aa":I
    .local v7, "aa":I
    invoke-direct {v0, v8, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v16

    add-int/2addr v10, v14

    const/16 v14, 0xc

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "cc":I
    .local v10, "cc":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 430
    .end local v12    # "ee":I
    .local v9, "ee":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    add-int/2addr v12, v14

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "bb":I
    .local v12, "bb":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 431
    .end local v8    # "dd":I
    .local v5, "dd":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v22, 0x8

    aget v14, v14, v22

    add-int/2addr v8, v14

    const/16 v15, 0xe

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "aa":I
    .local v8, "aa":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 432
    .end local v10    # "cc":I
    .local v7, "cc":I
    invoke-direct {v0, v8, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v24, 0x7

    aget v14, v14, v24

    add-int/2addr v10, v14

    const/4 v15, 0x6

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "ee":I
    .local v10, "ee":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 433
    .end local v12    # "bb":I
    .local v9, "bb":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v12, v14

    const/16 v15, 0x8

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "dd":I
    .local v12, "dd":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 434
    .end local v8    # "aa":I
    .local v5, "aa":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v18

    add-int/2addr v8, v14

    const/16 v15, 0xd

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "cc":I
    .local v8, "cc":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 435
    .end local v10    # "ee":I
    .local v7, "ee":I
    invoke-direct {v0, v8, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v10, v14

    const/4 v15, 0x6

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "bb":I
    .local v10, "bb":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 436
    .end local v12    # "dd":I
    .local v9, "dd":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v23, 0xe

    aget v14, v14, v23

    add-int/2addr v12, v14

    const/4 v14, 0x5

    invoke-direct {v0, v12, v14}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "aa":I
    .local v12, "aa":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 437
    .end local v8    # "cc":I
    .local v5, "cc":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v17

    add-int/2addr v8, v14

    const/16 v15, 0xf

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "ee":I
    .local v8, "ee":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v7

    .line 438
    .end local v10    # "bb":I
    .local v7, "bb":I
    invoke-direct {v0, v8, v12, v7}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v10

    add-int/2addr v10, v9

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    add-int/2addr v10, v14

    const/16 v15, 0xd

    invoke-direct {v0, v10, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v10

    add-int/2addr v10, v5

    .end local v9    # "dd":I
    .local v10, "dd":I
    invoke-direct {v0, v12, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v9

    .line 439
    .end local v12    # "aa":I
    .local v9, "aa":I
    invoke-direct {v0, v10, v8, v9}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v12

    add-int/2addr v12, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v25, 0x9

    aget v14, v14, v25

    add-int/2addr v12, v14

    const/16 v15, 0xb

    invoke-direct {v0, v12, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v12

    add-int/2addr v12, v7

    .end local v5    # "cc":I
    .local v12, "cc":I
    invoke-direct {v0, v8, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v5

    .line 440
    .end local v8    # "ee":I
    .local v5, "ee":I
    invoke-direct {v0, v12, v10, v5}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->f1(III)I

    move-result v8

    add-int/2addr v8, v7

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aget v14, v14, v15

    add-int/2addr v8, v14

    invoke-direct {v0, v8, v15}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v8

    add-int/2addr v8, v9

    .end local v7    # "bb":I
    .local v8, "bb":I
    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->RL(II)I

    move-result v1

    .line 446
    .end local v10    # "dd":I
    .local v1, "dd":I
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    add-int/2addr v7, v4

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 447
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    add-int/2addr v7, v11

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 448
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    add-int/2addr v7, v13

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 449
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    add-int/2addr v7, v2

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 450
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    add-int/2addr v7, v5

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 451
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    add-int/2addr v7, v9

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 452
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    add-int/2addr v7, v8

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 453
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    add-int/2addr v7, v12

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 454
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 455
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 460
    const/4 v7, 0x0

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 461
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v14, v14

    if-eq v10, v14, :cond_0

    .line 463
    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aput v7, v14, v10

    .line 461
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 465
    .end local v10    # "i":I
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

    .line 95
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 100
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    .line 101
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 102
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

    .line 84
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 86
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->processBlock()V

    .line 90
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 129
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 131
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H0:I

    .line 132
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H1:I

    .line 133
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H2:I

    .line 134
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H3:I

    .line 135
    const v0, -0x3c2d1e10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H4:I

    .line 136
    const v0, 0x76543210

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H5:I

    .line 137
    const v0, -0x1234568

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H6:I

    .line 138
    const v0, -0x76543211

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H7:I

    .line 139
    const v0, 0x1234567

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H8:I

    .line 140
    const v0, 0x3c2d1e0f

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->H9:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->xOff:I

    .line 144
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 146
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->X:[I

    aput v0, v2, v1

    .line 144
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
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

    .line 474
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;

    .line 476
    .local v0, "d":Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;->doCopy(Lorg/bouncycastle/crypto/digests/RIPEMD320Digest;)V

    .line 477
    return-void
.end method

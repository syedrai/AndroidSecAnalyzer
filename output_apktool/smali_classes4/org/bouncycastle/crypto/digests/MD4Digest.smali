.class public Lorg/bouncycastle/crypto/digests/MD4Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "MD4Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x3

.field private static final S12:I = 0x7

.field private static final S13:I = 0xb

.field private static final S14:I = 0x13

.field private static final S21:I = 0x3

.field private static final S22:I = 0x5

.field private static final S23:I = 0x9

.field private static final S24:I = 0xd

.field private static final S31:I = 0x3

.field private static final S32:I = 0x9

.field private static final S33:I = 0xb

.field private static final S34:I = 0xf


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 30
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

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 36
    const/16 v0, 0x40

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 2
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD4Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 43
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 24
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 45
    const/16 v0, 0x40

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 47
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    .line 48
    return-void
.end method

.method private F(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 171
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private G(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 179
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private H(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "u",
            "v",
            "w"
        }
    .end annotation

    .line 187
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD4Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 52
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 54
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 55
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 56
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 57
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 59
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 61
    return-void
.end method

.method private rotateLeft(II)I
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

    .line 160
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 274
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 286
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

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

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->finish()V

    .line 99
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 100
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 101
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 102
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 104
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->reset()V

    .line 106
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "MD4"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 70
    const/16 v0, 0x10

    return v0
.end method

.method protected processBlock()V
    .locals 24

    .line 192
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 193
    .local v1, "a":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 194
    .local v2, "b":I
    iget v3, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 195
    .local v3, "c":I
    iget v4, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 200
    .local v4, "d":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const/4 v6, 0x3

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 201
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v5, v8

    const/4 v8, 0x7

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 202
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v5, v10

    const/16 v10, 0xb

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 203
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const/16 v12, 0x13

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 204
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 205
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v15, 0x5

    aget v13, v13, v15

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 206
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v16, 0x6

    aget v13, v13, v16

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 207
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v8

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 208
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v17, 0x8

    aget v13, v13, v17

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 209
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v18, 0x1

    const/16 v9, 0x9

    aget v13, v13, v9

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 210
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v19, 0xa

    aget v13, v13, v19

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 211
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v10

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 212
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v20, 0xc

    aget v13, v13, v20

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 213
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v21, 0x2

    const/16 v11, 0xd

    aget v13, v13, v11

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 214
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v22, 0xe

    aget v13, v13, v22

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 215
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v23, 0x7

    const/16 v8, 0xf

    aget v13, v13, v8

    add-int/2addr v5, v13

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 220
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    const v12, 0x5a827999

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 221
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 222
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v17

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 223
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v20

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 224
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v18

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 225
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v15

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 226
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v9

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 227
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v11

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 228
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v21

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 229
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v16

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 230
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 231
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v22

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 232
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v6

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 233
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v23

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 234
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v10

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 235
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v8

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 240
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v5, v12

    const v12, 0x6ed9eba1

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 241
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v17

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 242
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v14

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 243
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v20

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 244
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v21

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 245
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v19

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 246
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v16

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 247
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v22

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 248
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v18

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 249
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v9

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 250
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v13, v13, v15

    add-int/2addr v5, v13

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 251
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v13, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v13, v11

    add-int/2addr v5, v11

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 252
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v11, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v6

    add-int/2addr v5, v11

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 253
    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 254
    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v23

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 255
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 257
    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 258
    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v5, v2

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 259
    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v5, v3

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 260
    iget v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v5, v4

    iput v5, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 265
    iput v7, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 266
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v6, v6

    if-eq v5, v6, :cond_0

    .line 268
    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v7, v6, v5

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 270
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

    .line 86
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 88
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 91
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    .line 92
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 93
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

    .line 75
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 77
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 81
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 114
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 116
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 117
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 118
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 119
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 121
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    .line 123
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 125
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aput v0, v2, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
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

    .line 279
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/MD4Digest;

    .line 281
    .local v0, "d":Lorg/bouncycastle/crypto/digests/MD4Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD4Digest;)V

    .line 282
    return-void
.end method

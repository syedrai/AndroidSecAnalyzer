.class public Lorg/bouncycastle/crypto/digests/MD5Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x7

.field private static final S12:I = 0xc

.field private static final S13:I = 0x11

.field private static final S14:I = 0x16

.field private static final S21:I = 0x5

.field private static final S22:I = 0x9

.field private static final S23:I = 0xe

.field private static final S24:I = 0x14

.field private static final S31:I = 0x4

.field private static final S32:I = 0xb

.field private static final S33:I = 0x10

.field private static final S34:I = 0x17

.field private static final S41:I = 0x6

.field private static final S42:I = 0xa

.field private static final S43:I = 0xf

.field private static final S44:I = 0x15


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

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

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

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 36
    const/16 v0, 0x40

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 38
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD5Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 65
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    .line 66
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encodedState"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedState"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 21
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 45
    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 46
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 47
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 48
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 50
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 51
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v0, v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x24

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "i":I
    :cond_0
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

    .line 197
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

    .line 205
    and-int v0, p1, p3

    not-int v1, p3

    and-int/2addr v1, p2

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

    .line 213
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private K(III)I
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

    .line 221
    not-int v0, p3

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/MD5Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 72
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 73
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 74
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 75
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 77
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    iget v0, p1, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 79
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

    .line 186
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 328
    new-instance v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;-><init>(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

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

    .line 115
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->finish()V

    .line 117
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 118
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 119
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 120
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 122
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 124
    const/16 v0, 0x10

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 83
    const-string v0, "MD5"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 88
    const/16 v0, 0x10

    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    .line 340
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 342
    .local v0, "state":[B
    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 344
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 345
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 346
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 347
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 348
    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 350
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v1, v2, :cond_0

    .line 352
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 355
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 357
    return-object v0
.end method

.method protected processBlock()V
    .locals 25

    .line 226
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 227
    .local v1, "a":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 228
    .local v2, "b":I
    iget v3, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 229
    .local v3, "c":I
    iget v4, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 234
    .local v4, "d":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 235
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v1, v8

    const v8, -0x173848aa

    add-int/2addr v1, v8

    const/16 v8, 0xc

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 236
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x242070db

    add-int/2addr v4, v10

    const/16 v10, 0x11

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 237
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v3, v12

    const v12, -0x3e423112

    add-int/2addr v3, v12

    const/16 v12, 0x16

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 238
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v2, v14

    const v14, -0xa83f051

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 239
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v16, 0x1

    const/4 v9, 0x5

    aget v14, v14, v9

    add-int/2addr v5, v14

    const v14, 0x4787c62a

    add-int/2addr v5, v14

    invoke-direct {v0, v5, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 240
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v17, 0x2

    const/4 v11, 0x6

    aget v14, v14, v11

    add-int/2addr v1, v14

    const v14, -0x57cfb9ed

    add-int/2addr v1, v14

    invoke-direct {v0, v1, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 241
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v14, v14, v6

    add-int/2addr v4, v14

    const v14, -0x2b96aff

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 242
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v18, 0x8

    aget v14, v14, v18

    add-int/2addr v3, v14

    const v14, 0x698098d8

    add-int/2addr v3, v14

    invoke-direct {v0, v3, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 243
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v19, 0x3

    const/16 v13, 0x9

    aget v14, v14, v13

    add-int/2addr v2, v14

    const v14, -0x74bb0851

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 244
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v20, 0x0

    const/16 v7, 0xa

    aget v14, v14, v7

    add-int/2addr v5, v14

    const v14, -0xa44f

    add-int/2addr v5, v14

    invoke-direct {v0, v5, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 245
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v21, 0xa

    const/16 v7, 0xb

    aget v14, v14, v7

    add-int/2addr v1, v14

    const v14, -0x76a32842

    add-int/2addr v1, v14

    invoke-direct {v0, v1, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 246
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v14, v14, v8

    add-int/2addr v4, v14

    const v14, 0x6b901122

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 247
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v22, 0xd

    aget v14, v14, v22

    add-int/2addr v3, v14

    const v14, -0x2678e6d

    add-int/2addr v3, v14

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 248
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v23, 0x7

    const/16 v6, 0xe

    aget v14, v14, v6

    add-int/2addr v2, v14

    const v14, -0x5986bc72

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 249
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v14, 0xf

    aget v10, v10, v14

    add-int/2addr v5, v10

    const v10, 0x49b40821

    add-int/2addr v5, v10

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 254
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v16

    add-int/2addr v1, v10

    const v10, -0x9e1da9e

    add-int/2addr v1, v10

    invoke-direct {v0, v1, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 255
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, -0x3fbf4cc0

    add-int/2addr v4, v10

    invoke-direct {v0, v4, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 256
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v7

    add-int/2addr v3, v10

    const v10, 0x265e5a51

    add-int/2addr v3, v10

    invoke-direct {v0, v3, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 257
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v20

    add-int/2addr v2, v10

    const v10, -0x16493856

    add-int/2addr v2, v10

    const/16 v10, 0x14

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 258
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v5, v12

    const v12, -0x29d0efa3

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 259
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v1, v12

    const v12, 0x2441453

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 260
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v4, v12

    const v12, -0x275e197f

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 261
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    const v12, -0x182c0438

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 262
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v2, v12

    const v12, 0x21e1cde6

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 263
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const v12, -0x3cc8f82a

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 264
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v1, v12

    const v12, -0xb2af279

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 265
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v4, v12

    const v12, 0x455a14ed

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 266
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v22

    add-int/2addr v3, v12

    const v12, -0x561c16fb

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 267
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v2, v12

    const v12, -0x3105c08

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v13}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 268
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v23

    add-int/2addr v5, v12

    const v12, 0x676f02d9

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 269
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v1, v12

    const v12, -0x72d5b376

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 274
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v9

    add-int/2addr v4, v10

    const v10, -0x5c6be

    add-int/2addr v4, v10

    invoke-direct {v0, v4, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 275
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v18

    add-int/2addr v3, v10

    const v10, -0x788e097f

    add-int/2addr v3, v10

    invoke-direct {v0, v3, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 276
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v10, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v7

    add-int/2addr v2, v10

    const v10, 0x6d9d6122

    add-int/2addr v2, v10

    const/16 v10, 0x10

    invoke-direct {v0, v2, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 277
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const v12, -0x21ac7f4

    add-int/2addr v5, v12

    const/16 v12, 0x17

    invoke-direct {v0, v5, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 278
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    const/16 v24, 0xe

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v16

    add-int/2addr v1, v6

    const v6, -0x5b4115bc

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 279
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v15

    add-int/2addr v4, v6

    const v6, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 280
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v23

    add-int/2addr v3, v6

    const v6, -0x944b4a0

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 281
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v21

    add-int/2addr v2, v6

    const v6, -0x41404390

    add-int/2addr v2, v6

    invoke-direct {v0, v2, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 282
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v22

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 283
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v20

    add-int/2addr v1, v6

    const v6, -0x155ed806

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 284
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v19

    add-int/2addr v4, v6

    const v6, -0x2b10cf7b

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 285
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v3, v6

    const v6, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 286
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v13

    add-int/2addr v2, v6

    const v6, -0x262b2fc7

    add-int/2addr v2, v6

    invoke-direct {v0, v2, v15}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 287
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v7}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 288
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v14

    add-int/2addr v1, v6

    const v6, 0x1fa27cf8

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v10}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 289
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v17

    add-int/2addr v4, v6

    const v6, -0x3b53a99b

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v12}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 294
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v20

    add-int/2addr v3, v6

    const v6, -0xbd6ddbc

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 295
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v23

    add-int/2addr v2, v6

    const v6, 0x432aff97

    add-int/2addr v2, v6

    const/16 v6, 0xa

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 296
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v24

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 297
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v1, v6

    const v6, -0x36c5fc7

    add-int/2addr v1, v6

    const/16 v6, 0x15

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 298
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v9, v8

    add-int/2addr v4, v8

    const v8, 0x655b59c3

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 299
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v19

    add-int/2addr v3, v8

    const v8, -0x70f3336e

    add-int/2addr v3, v8

    const/16 v8, 0xa

    invoke-direct {v0, v3, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 300
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v9, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v8

    add-int/2addr v2, v9

    const v8, -0x100b83

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 301
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v16

    add-int/2addr v5, v8

    const v8, -0x7a7ba22f

    add-int/2addr v5, v8

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 302
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v18

    add-int/2addr v1, v8

    const v8, 0x6fa87e4f

    add-int/2addr v1, v8

    invoke-direct {v0, v1, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 303
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v14

    add-int/2addr v4, v8

    const v8, -0x1d31920

    add-int/2addr v4, v8

    const/16 v8, 0xa

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 304
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v11

    add-int/2addr v3, v8

    const v8, -0x5cfebcec

    add-int/2addr v3, v8

    invoke-direct {v0, v3, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 305
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v22

    add-int/2addr v2, v8

    const v8, 0x4e0811a1    # 5.7071418E8f

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 306
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v15

    add-int/2addr v5, v8

    const v8, -0x8ac817e

    add-int/2addr v5, v8

    invoke-direct {v0, v5, v11}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 307
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v8, v7

    add-int/2addr v1, v7

    const v7, -0x42c50dcb

    add-int/2addr v1, v7

    const/16 v8, 0xa

    invoke-direct {v0, v1, v8}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 308
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v17

    add-int/2addr v4, v7

    const v7, 0x2ad7d2bb

    add-int/2addr v4, v7

    invoke-direct {v0, v4, v14}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 309
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lorg/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v13

    add-int/2addr v3, v7

    const v7, -0x14792c6f

    add-int/2addr v3, v7

    invoke-direct {v0, v3, v6}, Lorg/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 311
    .end local v2    # "b":I
    .local v3, "b":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v2, v5

    iput v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 312
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v2, v3

    iput v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 313
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v2, v4

    iput v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 314
    iget v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v2, v1

    iput v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 319
    const/4 v2, 0x0

    iput v2, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 320
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v7, v7

    if-eq v6, v7, :cond_0

    .line 322
    iget-object v7, v0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v2, v7, v6

    .line 320
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 324
    .end local v6    # "i":I
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

    .line 104
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 111
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

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 95
    iget v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 99
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 132
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 134
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 135
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 136
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 137
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 141
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v0, v2, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
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

    .line 333
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/MD5Digest;

    .line 335
    .local v0, "d":Lorg/bouncycastle/crypto/digests/MD5Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lorg/bouncycastle/crypto/digests/MD5Digest;)V

    .line 336
    return-void
.end method

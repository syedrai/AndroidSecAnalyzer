.class public Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "RIPEMD256Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x20


# instance fields
.field private H0:I

.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

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

    .line 33
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    .line 35
    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 37
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V
    .locals 2
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 46
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    .line 48
    const/16 v0, 0x80

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 50
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V

    .line 51
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

    .line 210
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 221
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5a827999

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 232
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6ed9eba1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 243
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, -0x70e44324

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 254
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f1(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 265
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f2(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x6d703ef3

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 276
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f3(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x5c4dd124

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 287
    invoke-direct {p0, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->f4(III)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p5

    const v1, 0x50a28be6

    add-int/2addr v0, v1

    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->RL(II)I

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

    .line 151
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 57
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 58
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 59
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 60
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 61
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 63
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 64
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 66
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    iget v0, p1, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 68
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

    .line 166
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

    .line 177
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

    .line 188
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

    .line 199
    and-int v0, p1, p3

    not-int v1, p3

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 485
    new-instance v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;-><init>(Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 497
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

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

    .line 104
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->finish()V

    .line 106
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 107
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 108
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 109
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 111
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 112
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 113
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    .line 115
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->reset()V

    .line 117
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "RIPEMD256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 77
    const/16 v0, 0x20

    return v0
.end method

.method protected processBlock()V
    .locals 33

    .line 298
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 299
    .local v1, "a":I
    iget v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 300
    .local v2, "b":I
    iget v3, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 301
    .local v3, "c":I
    iget v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 302
    .local v4, "d":I
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 303
    .local v7, "aa":I
    iget v8, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 304
    .local v8, "bb":I
    iget v9, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 305
    .local v9, "cc":I
    iget v10, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 311
    .local v10, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v11, 0x0

    aget v5, v5, v11

    const/16 v6, 0xb

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 312
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 313
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v13, 0x2

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 314
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v14, 0x3

    aget v5, v5, v14

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 315
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/4 v15, 0x4

    aget v5, v5, v15

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 316
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v16, 0x5

    aget v5, v5, v16

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 317
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v17, 0x6

    aget v5, v5, v17

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 318
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v18, 0x7

    aget v5, v5, v18

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 319
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v19, 0x8

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 320
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v20, 0x9

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 321
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v21, 0xa

    aget v5, v5, v21

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 322
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v22, 0xb

    aget v5, v5, v22

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 323
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v23, 0xc

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 324
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v24, 0xd

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 325
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v25, 0xe

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v1

    .line 326
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v26, 0xf

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F1(IIIIII)I

    move-result v27

    .line 328
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
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v16

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
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 329
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 330
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 331
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 332
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 333
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 334
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 335
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 336
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 337
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 338
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 339
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 340
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 341
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 342
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v1

    .line 343
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF4(IIIIII)I

    move-result v7

    .line 345
    move v9, v2

    move v8, v3

    .end local v1    # "bb":I
    .end local v2    # "cc":I
    .end local v3    # "dd":I
    .local v7, "bb":I
    .local v8, "dd":I
    .restart local v9    # "cc":I
    move/from16 v10, v28

    .local v10, "t":I
    move v1, v4

    .line 350
    .end local v4    # "aa":I
    .local v1, "a":I
    .local v28, "aa":I
    iget-object v2, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v2, v18

    const/4 v6, 0x7

    move/from16 v2, v27

    move/from16 v4, v29

    move/from16 v3, v30

    .end local v27    # "b":I
    .end local v29    # "d":I
    .end local v30    # "c":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 351
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 352
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 353
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 354
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 355
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 356
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 357
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 358
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 359
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 360
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 361
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 362
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 363
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 364
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v1

    .line 365
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F2(IIIIII)I

    move-result v27

    .line 367
    move/from16 v31, v2

    move/from16 v30, v3

    move/from16 v29, v4

    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v3    # "d":I
    .end local v4    # "a":I
    .restart local v27    # "b":I
    .local v29, "a":I
    .local v30, "d":I
    .local v31, "c":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v17

    const/16 v6, 0x9

    move v2, v7

    move v4, v8

    move v3, v9

    move/from16 v1, v28

    .end local v7    # "bb":I
    .end local v8    # "dd":I
    .end local v9    # "cc":I
    .end local v28    # "aa":I
    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 368
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 369
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 370
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 371
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 372
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "dd":I
    .local v3, "bb":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "dd":I
    .local v2, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 373
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 374
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 375
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "aa":I
    .local v3, "cc":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "aa":I
    .local v2, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 376
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 377
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 378
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "bb":I
    .local v3, "dd":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "bb":I
    .local v2, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 379
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 380
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 381
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "cc":I
    .local v3, "aa":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "cc":I
    .local v2, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 382
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xb

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF3(IIIIII)I

    move-result v1

    .line 384
    move v9, v2

    move v8, v3

    move v7, v4

    .end local v2    # "cc":I
    .end local v3    # "dd":I
    .end local v4    # "aa":I
    .local v7, "aa":I
    .restart local v8    # "dd":I
    .restart local v9    # "cc":I
    move/from16 v10, v27

    move v2, v1

    .line 389
    .end local v1    # "bb":I
    .local v2, "b":I
    .local v27, "bb":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v14

    move/from16 v1, v29

    move/from16 v4, v30

    move/from16 v3, v31

    .end local v29    # "a":I
    .end local v30    # "d":I
    .end local v31    # "c":I
    .local v1, "a":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 390
    move v3, v2

    move v2, v4

    .end local v4    # "d":I
    .local v2, "d":I
    .local v3, "b":I
    .restart local v31    # "c":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v4, v21

    const/16 v6, 0xd

    move v4, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v31

    .end local v31    # "c":I
    .local v1, "d":I
    .local v2, "a":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 391
    .end local v4    # "c":I
    .restart local v31    # "c":I
    iget-object v4, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v4, v25

    const/4 v6, 0x6

    move v4, v3

    move v3, v2

    move v2, v1

    move/from16 v1, v31

    .end local v31    # "c":I
    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 392
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 393
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 394
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 395
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 396
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 397
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 398
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 399
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xd

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 400
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 401
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 402
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 403
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v1

    .line 404
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F3(IIIIII)I

    move-result v28

    .line 406
    move/from16 v31, v2

    move/from16 v30, v3

    move/from16 v29, v4

    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v3    # "d":I
    .end local v4    # "a":I
    .local v28, "b":I
    .restart local v29    # "a":I
    .restart local v30    # "d":I
    .restart local v31    # "c":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v26

    const/16 v6, 0x9

    move v1, v7

    move v4, v8

    move v3, v9

    move/from16 v2, v27

    .end local v7    # "aa":I
    .end local v8    # "dd":I
    .end local v9    # "cc":I
    .end local v27    # "bb":I
    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 407
    move/from16 v32, v4

    move v4, v2

    move/from16 v2, v32

    .local v2, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x7

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 408
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "cc":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 409
    move v3, v2

    move/from16 v2, v32

    .local v2, "aa":I
    .local v3, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xb

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 410
    move v4, v2

    move/from16 v2, v32

    .local v2, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    const/16 v6, 0x8

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 411
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "dd":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 412
    move v3, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v3, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 413
    move v4, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xe

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 414
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "aa":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 415
    move v3, v2

    move/from16 v2, v32

    .local v2, "cc":I
    .local v3, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xd

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 416
    move v4, v2

    move/from16 v2, v32

    .local v2, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/4 v6, 0x5

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 417
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "bb":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 418
    move v3, v2

    move/from16 v2, v32

    .local v2, "dd":I
    .local v3, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xd

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 419
    move v4, v2

    move/from16 v2, v32

    .local v2, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 420
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "cc":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/4 v6, 0x7

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v1

    .line 421
    move v3, v2

    move/from16 v2, v32

    .local v2, "aa":I
    .local v3, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/4 v6, 0x5

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF2(IIIIII)I

    move-result v7

    .line 423
    move v1, v2

    move v9, v3

    move v8, v4

    .end local v2    # "cc":I
    .end local v3    # "dd":I
    .end local v4    # "aa":I
    .local v1, "cc":I
    .local v7, "bb":I
    .local v8, "aa":I
    .local v9, "dd":I
    move/from16 v10, v31

    move v3, v1

    .end local v31    # "c":I
    .local v3, "c":I
    move/from16 v27, v10

    .line 428
    .end local v1    # "cc":I
    .local v27, "cc":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v12

    const/16 v6, 0xb

    move/from16 v2, v28

    move/from16 v1, v29

    move/from16 v4, v30

    .end local v28    # "b":I
    .end local v29    # "a":I
    .end local v30    # "d":I
    .local v1, "a":I
    .local v2, "b":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 429
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 430
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 431
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 432
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 433
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "c":I
    .local v3, "d":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v19

    const/16 v6, 0xf

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 434
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "c":I
    .local v3, "a":I
    .local v4, "b":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "c":I
    .local v2, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 435
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 436
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "d":I
    .local v3, "a":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "a":I
    .local v2, "b":I
    .local v3, "c":I
    .local v4, "d":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 437
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "d":I
    .local v3, "b":I
    .local v4, "c":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "d":I
    .local v2, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 438
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 439
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "a":I
    .local v3, "b":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "b":I
    .local v2, "c":I
    .local v3, "d":I
    .local v4, "a":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 440
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "a":I
    .local v3, "c":I
    .local v4, "d":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "a":I
    .local v2, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 441
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move/from16 v32, v2

    move v2, v1

    move v1, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "d":I
    .local v2, "a":I
    .local v3, "b":I
    .local v4, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 442
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "b":I
    .local v3, "c":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move v3, v4

    move/from16 v4, v32

    .local v1, "c":I
    .local v2, "d":I
    .local v3, "a":I
    .local v4, "b":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v1

    .line 443
    move/from16 v32, v3

    move v3, v2

    move v2, v4

    move/from16 v4, v32

    .local v2, "b":I
    .local v3, "d":I
    .local v4, "a":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move/from16 v1, v32

    .local v1, "b":I
    .local v2, "c":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->F4(IIIIII)I

    move-result v28

    .line 445
    move/from16 v31, v2

    move/from16 v30, v3

    move/from16 v29, v4

    .end local v1    # "b":I
    .end local v2    # "c":I
    .end local v3    # "d":I
    .end local v4    # "a":I
    .restart local v28    # "b":I
    .restart local v29    # "a":I
    .restart local v30    # "d":I
    .restart local v31    # "c":I
    iget-object v1, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v1, v19

    const/16 v6, 0xf

    move v2, v7

    move v1, v8

    move v4, v9

    move/from16 v3, v27

    .end local v7    # "bb":I
    .end local v8    # "aa":I
    .end local v9    # "dd":I
    .end local v27    # "cc":I
    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 446
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "dd":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v17

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 447
    move v3, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v3, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v15

    const/16 v6, 0x8

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 448
    move v4, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v12

    const/16 v6, 0xb

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 449
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "aa":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v14

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 450
    move v3, v2

    move/from16 v2, v32

    .local v2, "cc":I
    .local v3, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v22

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 451
    move v4, v2

    move/from16 v2, v32

    .local v2, "cc":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v26

    const/4 v6, 0x6

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 452
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "bb":I
    .local v4, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v11

    const/16 v6, 0xe

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 453
    move v3, v2

    move/from16 v2, v32

    .local v2, "dd":I
    .local v3, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v16

    const/4 v6, 0x6

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 454
    move v4, v2

    move/from16 v2, v32

    .local v2, "dd":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v23

    const/16 v6, 0x9

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    .local v4, "cc":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 455
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "cc":I
    .local v4, "bb":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v13

    const/16 v6, 0xc

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v3, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 456
    move v3, v2

    move/from16 v2, v32

    .local v2, "aa":I
    .local v3, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v24

    const/16 v6, 0x9

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 457
    move v4, v2

    move/from16 v2, v32

    .local v2, "aa":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v20

    const/16 v6, 0xc

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "aa":I
    .local v2, "bb":I
    .local v3, "cc":I
    .local v4, "dd":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 458
    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v3, "dd":I
    .local v4, "cc":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v18

    const/4 v6, 0x5

    move/from16 v32, v2

    move v2, v1

    move v1, v3

    move/from16 v3, v32

    .local v1, "dd":I
    .local v2, "aa":I
    .local v3, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 459
    move v3, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v3, "aa":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v21

    const/16 v6, 0xf

    move v2, v1

    move v1, v4

    move/from16 v4, v32

    .local v1, "cc":I
    .local v2, "dd":I
    .local v4, "bb":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 460
    move v4, v2

    move/from16 v2, v32

    .local v2, "bb":I
    .local v4, "dd":I
    iget-object v5, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aget v5, v5, v25

    const/16 v6, 0x8

    move v2, v1

    move/from16 v1, v32

    move/from16 v32, v4

    move v4, v3

    move/from16 v3, v32

    .local v1, "bb":I
    .local v2, "cc":I
    .local v3, "dd":I
    .local v4, "aa":I
    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->FF1(IIIIII)I

    move-result v1

    .line 462
    move/from16 v32, v4

    move v4, v2

    move v2, v3

    move/from16 v3, v32

    .local v2, "dd":I
    .local v3, "aa":I
    .local v4, "cc":I
    move/from16 v5, v30

    .end local v10    # "t":I
    .local v5, "t":I
    move v6, v2

    .end local v30    # "d":I
    .local v6, "d":I
    move v2, v5

    .line 464
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    add-int v7, v7, v29

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 465
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    add-int v7, v7, v28

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 466
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    add-int v7, v7, v31

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 467
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    add-int/2addr v7, v6

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 468
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    add-int/2addr v7, v3

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 469
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    add-int/2addr v7, v1

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 470
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    add-int/2addr v7, v4

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 471
    iget v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    add-int/2addr v7, v2

    iput v7, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 476
    iput v11, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 477
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v8, v8

    if-eq v7, v8, :cond_0

    .line 479
    iget-object v8, v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aput v11, v8, v7

    .line 477
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 481
    .end local v7    # "i":I
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

    .line 93
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->processBlock()V

    .line 98
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v3, v2

    aput v3, v0, v1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 100
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

    .line 82
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 84
    iget v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->processBlock()V

    .line 88
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 125
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 127
    const v0, 0x67452301

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H0:I

    .line 128
    const v0, -0x10325477

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H1:I

    .line 129
    const v0, -0x67452302

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H2:I

    .line 130
    const v0, 0x10325476

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H3:I

    .line 131
    const v0, 0x76543210

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H4:I

    .line 132
    const v0, -0x1234568

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H5:I

    .line 133
    const v0, -0x76543211

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H6:I

    .line 134
    const v0, 0x1234567

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->H7:I

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->xOff:I

    .line 138
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 140
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->X:[I

    aput v0, v2, v1

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
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

    .line 490
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;

    .line 492
    .local v0, "d":Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/RIPEMD256Digest;)V

    .line 493
    return-void
.end method

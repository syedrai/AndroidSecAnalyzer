.class public Lorg/bouncycastle/crypto/digests/SHA256Digest;
.super Lorg/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA256Digest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/SavableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x20

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 344
    const/16 v0, 0x40

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    return-void

    :array_0
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.80805568E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.81751936E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 65
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 66
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

    .line 73
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 75
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 77
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SHA256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 88
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 89
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

    .line 115
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 32
    const/16 v0, 0x40

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    .line 117
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 118
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 119
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 120
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 121
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 122
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 123
    const/16 v0, 0x28

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 124
    const/16 v0, 0x2c

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 126
    const/16 v0, 0x30

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 127
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 127
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private static Ch(III)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
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

    .line 310
    and-int v0, p0, p1

    not-int v1, p0

    and-int/2addr v1, p2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Maj(III)I
    .locals 2
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "z"    # I
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

    .line 317
    and-int v0, p0, p1

    xor-int v1, p0, p1

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private static Sum0(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 322
    ushr-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0x1e

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xd

    shl-int/lit8 v2, p0, 0x13

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x16

    shl-int/lit8 v2, p0, 0xa

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Sum1(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 327
    ushr-int/lit8 v0, p0, 0x6

    shl-int/lit8 v1, p0, 0x1a

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xb

    shl-int/lit8 v2, p0, 0x15

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x19

    shl-int/lit8 v2, p0, 0x7

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Theta0(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 332
    ushr-int/lit8 v0, p0, 0x7

    shl-int/lit8 v1, p0, 0x19

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x12

    shl-int/lit8 v2, p0, 0xe

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x3

    xor-int/2addr v0, v1

    return v0
.end method

.method private static Theta1(I)I
    .locals 3
    .param p0, "x"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    .line 337
    ushr-int/lit8 v0, p0, 0x11

    shl-int/lit8 v1, p0, 0xf

    or-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0x13

    shl-int/lit8 v2, p0, 0xd

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    ushr-int/lit8 v1, p0, 0xa

    xor-int/2addr v0, v1

    return v0
.end method

.method private copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V
    .locals 4
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SHA256Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 93
    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lorg/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 95
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 96
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 97
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 98
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 99
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 100
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 101
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 102
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 104
    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 106
    return-void
.end method

.method public static newInstance()Lorg/bouncycastle/crypto/SavableDigest;
    .locals 1

    .line 37
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/SavableDigest;
    .locals 1
    .param p0, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purpose"
        }
    .end annotation

    .line 42
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method public static newInstance(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/SavableDigest;
    .locals 4
    .param p0, "digest"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digest"
        }
    .end annotation

    .line 47
    instance-of v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    move-object v1, p0

    check-cast v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, "null"

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiver digest not available for input type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static newInstance([B)Lorg/bouncycastle/crypto/SavableDigest;
    .locals 1
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoded"
        }
    .end annotation

    .line 57
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 357
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 395
    const/16 v0, 0x100

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

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

    .line 170
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->finish()V

    .line 172
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 173
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 174
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 175
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 176
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 177
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 178
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/lit8 v1, p2, 0x18

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 179
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/lit8 v1, p2, 0x1c

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 181
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->reset()V

    .line 183
    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 136
    const-string v0, "SHA-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 141
    const/16 v0, 0x20

    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    .line 369
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 371
    .local v0, "state":[B
    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 373
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 374
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 375
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 376
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 377
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 378
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 379
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 380
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 381
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 383
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    if-eq v1, v2, :cond_0

    .line 385
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    .end local v1    # "i":I
    :cond_0
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 390
    return-object v0
.end method

.method protected processBlock()V
    .locals 12

    .line 219
    const/16 v0, 0x10

    .local v0, "t":I
    :goto_0
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_0

    .line 221
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v3, v0, -0x2

    aget v2, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Theta1(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x7

    aget v3, v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0xf

    aget v3, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Theta0(I)I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    add-int/lit8 v4, v0, -0x10

    aget v3, v3, v4

    add-int/2addr v2, v3

    aput v2, v1, v0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    .end local v0    # "t":I
    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 228
    .local v0, "a":I
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 229
    .local v1, "b":I
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 230
    .local v2, "c":I
    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 231
    .local v3, "d":I
    iget v4, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 232
    .local v4, "e":I
    iget v5, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 233
    .local v5, "f":I
    iget v6, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 234
    .local v6, "g":I
    iget v7, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 236
    .local v7, "h":I
    const/4 v8, 0x0

    .line 237
    .local v8, "t":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 240
    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 241
    add-int/2addr v3, v7

    .line 242
    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v7, v10

    .line 243
    add-int/lit8 v8, v8, 0x1

    .line 246
    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 247
    add-int/2addr v2, v6

    .line 248
    invoke-static {v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v6, v10

    .line 249
    add-int/lit8 v8, v8, 0x1

    .line 252
    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 253
    add-int/2addr v1, v5

    .line 254
    invoke-static {v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    .line 255
    add-int/lit8 v8, v8, 0x1

    .line 258
    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 259
    add-int/2addr v0, v4

    .line 260
    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    .line 261
    add-int/lit8 v8, v8, 0x1

    .line 264
    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 265
    add-int/2addr v7, v3

    .line 266
    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    .line 267
    add-int/lit8 v8, v8, 0x1

    .line 270
    invoke-static {v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v7, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 271
    add-int/2addr v6, v2

    .line 272
    invoke-static {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    .line 273
    add-int/lit8 v8, v8, 0x1

    .line 276
    invoke-static {v6}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 277
    add-int/2addr v5, v1

    .line 278
    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    .line 279
    add-int/lit8 v8, v8, 0x1

    .line 282
    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum1(I)I

    move-result v10

    invoke-static {v5, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Ch(III)I

    move-result v11

    add-int/2addr v10, v11

    sget-object v11, Lorg/bouncycastle/crypto/digests/SHA256Digest;->K:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aget v11, v11, v8

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 283
    add-int/2addr v4, v0

    .line 284
    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Sum0(I)I

    move-result v10

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->Maj(III)I

    move-result v11

    add-int/2addr v10, v11

    add-int/2addr v0, v10

    .line 285
    add-int/lit8 v8, v8, 0x1

    .line 237
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 288
    .end local v9    # "i":I
    :cond_1
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    add-int/2addr v9, v0

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 289
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    add-int/2addr v9, v1

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 290
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    add-int/2addr v9, v2

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 291
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    add-int/2addr v9, v3

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 292
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    add-int/2addr v9, v4

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 293
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    add-int/2addr v9, v5

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 294
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    add-int/2addr v9, v6

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 295
    iget v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    add-int/2addr v9, v7

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 300
    const/4 v9, 0x0

    iput v9, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 301
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    const/16 v11, 0x10

    if-ge v10, v11, :cond_2

    .line 303
    iget-object v11, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v9, v11, v10

    .line 301
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 305
    .end local v10    # "i":I
    :cond_2
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

    .line 159
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v3, v2

    aput v3, v0, v1

    .line 165
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    const-wide/16 v1, -0x1

    and-long/2addr v1, p1

    long-to-int v2, v1

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 166
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

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v0, v1

    .line 150
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->processBlock()V

    .line 154
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    .line 191
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 198
    const v0, 0x6a09e667

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H1:I

    .line 199
    const v0, -0x4498517b

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H2:I

    .line 200
    const v0, 0x3c6ef372

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H3:I

    .line 201
    const v0, -0x5ab00ac6

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H4:I

    .line 202
    const v0, 0x510e527f

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H5:I

    .line 203
    const v0, -0x64fa9774

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H6:I

    .line 204
    const v0, 0x1f83d9ab

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H7:I

    .line 205
    const v0, 0x5be0cd19

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->H8:I

    .line 207
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->xOff:I

    .line 208
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_0

    .line 210
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA256Digest;->X:[I

    aput v0, v2, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
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

    .line 362
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    .line 364
    .local v0, "d":Lorg/bouncycastle/crypto/digests/SHA256Digest;
    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->copyIn(Lorg/bouncycastle/crypto/digests/SHA256Digest;)V

    .line 365
    return-void
.end method

.class public Lorg/bouncycastle/crypto/digests/SHAKEDigest;
.super Lorg/bouncycastle/crypto/digests/KeccakDigest;
.source "SHAKEDigest.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "bitStrength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitStrength"
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->checkBitLength(I)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 47
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1
    .param p1, "bitStrength"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitStrength",
            "purpose"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->checkBitLength(I)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 58
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

    .line 36
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V
    .locals 0
    .param p1, "source"    # Lorg/bouncycastle/crypto/digests/SHAKEDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V

    .line 68
    return-void
.end method

.method private static checkBitLength(I)I
    .locals 3
    .param p0, "bitStrength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bitStrength"
        }
    .end annotation

    .line 19
    sparse-switch p0, :sswitch_data_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'bitStrength\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported for SHAKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :sswitch_0
    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0x100 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1
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

    .line 82
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method protected doFinal([BIBI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "partialByte"    # B
    .param p4, "partialBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "partialByte",
            "partialBits"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->getDigestSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .end local p1    # "out":[B
    .end local p2    # "outOff":I
    .end local p3    # "partialByte":B
    .end local p4    # "partialBits":I
    .local v1, "out":[B
    .local v2, "outOff":I
    .local v4, "partialByte":B
    .local v5, "partialBits":I
    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BIIBI)I

    move-result p1

    return p1
.end method

.method public doFinal([BII)I
    .locals 1
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 87
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move-result v0

    .line 89
    .local v0, "length":I
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 91
    return v0
.end method

.method protected doFinal([BIIBI)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .param p4, "partialByte"    # B
    .param p5, "partialBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen",
            "partialByte",
            "partialBits"
        }
    .end annotation

    .line 119
    if-ltz p5, :cond_2

    const/4 v0, 0x7

    if-gt p5, v0, :cond_2

    .line 124
    const/4 v0, 0x1

    shl-int v1, v0, p5

    sub-int/2addr v1, v0

    and-int v0, p4, v1

    const/16 v1, 0xf

    shl-int/2addr v1, p5

    or-int/2addr v0, v1

    .line 125
    .local v0, "finalInput":I
    add-int/lit8 v1, p5, 0x4

    .line 127
    .local v1, "finalBits":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 129
    int-to-byte v2, v0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->absorb(B)V

    .line 130
    add-int/lit8 v1, v1, -0x8

    .line 131
    ushr-int/lit8 v0, v0, 0x8

    .line 134
    :cond_0
    if-lez v1, :cond_1

    .line 136
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->absorbBits(II)V

    .line 139
    :cond_1
    int-to-long v2, p3

    const-wide/16 v4, 0x8

    mul-long v2, v2, v4

    invoke-virtual {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->squeeze([BIJ)V

    .line 141
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->reset()V

    .line 143
    return p3

    .line 121
    .end local v0    # "finalInput":I
    .end local v1    # "finalBits":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'partialBits\' must be in the range [0,7]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public doOutput([BII)I
    .locals 4
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "outLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "outLen"
        }
    .end annotation

    .line 96
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->squeezing:Z

    if-nez v0, :cond_0

    .line 98
    const/16 v0, 0xf

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->absorbBits(II)V

    .line 101
    :cond_0
    int-to-long v0, p3

    const-wide/16 v2, 0x8

    mul-long v0, v0, v2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->squeeze([BIJ)V

    .line 103
    return p3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 72
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->fixedOutputLength:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHAKE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 77
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

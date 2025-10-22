.class public Lorg/bouncycastle/crypto/digests/SHA512tDigest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;
.source "SHA512tDigest.java"


# instance fields
.field private H1t:J

.field private H2t:J

.field private H3t:J

.field private H4t:J

.field private H5t:J

.field private H6t:J

.field private H7t:J

.field private H8t:J

.field private digestLength:I


# direct methods
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

    .line 25
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 26
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 2
    .param p1, "bitLength"    # I
    .param p2, "purpose"    # Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitLength",
            "purpose"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>()V

    .line 30
    const/16 v0, 0x200

    if-ge p1, v0, :cond_2

    .line 35
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_1

    .line 40
    const/16 v0, 0x180

    if-eq p1, v0, :cond_0

    .line 45
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    .line 47
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 49
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->tIvGenerate(I)V

    .line 51
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 52
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength needs to be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be >= 512"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA512tDigest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SHA512tDigest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 60
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 62
    iget v0, p1, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    .line 64
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 66
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    .line 67
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

    .line 71
    invoke-static {p1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->readDigestLength([B)I

    move-result v0

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    aget-object v1, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 73
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 75
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->restoreState([B)V

    .line 76
    return-void
.end method

.method private static intToBigEndian(I[BII)V
    .locals 4
    .param p0, "n"    # I
    .param p1, "bs"    # [B
    .param p2, "off"    # I
    .param p3, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off",
            "max"
        }
    .end annotation

    .line 199
    const/4 v0, 0x4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 200
    .local v0, "num":I
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 202
    rsub-int/lit8 v1, v0, 0x3

    mul-int/lit8 v1, v1, 0x8

    .line 203
    .local v1, "shift":I
    add-int v2, p2, v0

    ushr-int v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    .line 204
    .end local v1    # "shift":I
    goto :goto_0

    .line 205
    :cond_0
    return-void
.end method

.method private static longToBigEndian(J[BII)V
    .locals 3
    .param p0, "n"    # J
    .param p2, "bs"    # [B
    .param p3, "off"    # I
    .param p4, "max"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "n",
            "bs",
            "off",
            "max"
        }
    .end annotation

    .line 186
    if-lez p4, :cond_0

    .line 188
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v1, v0

    invoke-static {v1, p2, p3, p4}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    .line 190
    const/4 v0, 0x4

    if-le p4, v0, :cond_0

    .line 192
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v1, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v2, p4, -0x4

    invoke-static {v1, p2, v0, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->intToBigEndian(I[BII)V

    .line 195
    :cond_0
    return-void
.end method

.method private static readDigestLength([B)I
    .locals 1
    .param p0, "encodedState"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedState"
        }
    .end annotation

    .line 80
    array-length v0, p0

    add-int/lit8 v0, v0, -0x5

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method private tIvGenerate(I)V
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

    .line 135
    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    .line 136
    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    .line 137
    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    .line 138
    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    .line 139
    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    .line 140
    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    .line 141
    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    .line 142
    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    .line 144
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 145
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 146
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 147
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 148
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 149
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 150
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 151
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 153
    const/16 v0, 0x64

    const/16 v1, 0xa

    if-le p1, v0, :cond_0

    .line 155
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 156
    rem-int/lit8 p1, p1, 0x64

    .line 157
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 158
    rem-int/2addr p1, v1

    .line 159
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0

    .line 161
    :cond_0
    if-le p1, v1, :cond_1

    .line 163
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 164
    rem-int/lit8 p1, p1, 0xa

    .line 165
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0

    .line 169
    :cond_1
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 172
    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 174
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    .line 175
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    .line 176
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    .line 177
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    .line 178
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    .line 179
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    .line 180
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    .line 181
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    .line 182
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 209
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512tDigest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 247
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 4
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
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 99
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    invoke-static {v0, v1, p1, p2, v2}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 100
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 101
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 102
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 103
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 104
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 105
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 106
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    add-int/lit8 v2, p2, 0x38

    iget v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    add-int/lit8 v3, v3, -0x38

    invoke-static {v0, v1, p1, v2, v3}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->longToBigEndian(J[BII)V

    .line 108
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 110
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    .line 85
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SHA-512/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    .line 235
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->getEncodedStateSize()I

    move-result v0

    .line 236
    .local v0, "baseSize":I
    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 237
    .local v1, "encoded":[B
    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->populateState([B)V

    .line 238
    iget v2, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    mul-int/lit8 v2, v2, 0x8

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 240
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 242
    return-object v1
.end method

.method public reset()V
    .locals 2

    .line 118
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 123
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1:J

    .line 124
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2:J

    .line 125
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3:J

    .line 126
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4:J

    .line 127
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5:J

    .line 128
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6:J

    .line 129
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7:J

    .line 130
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8:J

    .line 131
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 3
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 214
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;

    .line 216
    .local v0, "t":Lorg/bouncycastle/crypto/digests/SHA512tDigest;
    iget v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    iget v2, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->digestLength:I

    if-ne v1, v2, :cond_0

    .line 221
    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 223
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H1t:J

    .line 224
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H2t:J

    .line 225
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H3t:J

    .line 226
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H4t:J

    .line 227
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H5t:J

    .line 228
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H6t:J

    .line 229
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H7t:J

    .line 230
    iget-wide v1, v0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    iput-wide v1, p0, Lorg/bouncycastle/crypto/digests/SHA512tDigest;->H8t:J

    .line 231
    return-void

    .line 218
    :cond_0
    new-instance v1, Lorg/bouncycastle/util/MemoableResetException;

    const-string v2, "digestLength inappropriate in other"

    invoke-direct {v1, v2}, Lorg/bouncycastle/util/MemoableResetException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

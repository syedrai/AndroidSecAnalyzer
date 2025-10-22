.class public Lorg/bouncycastle/crypto/digests/SHA512Digest;
.super Lorg/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 32
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

    .line 39
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 41
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 1
    .param p1, "t"    # Lorg/bouncycastle/crypto/digests/SHA512Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 52
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 54
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 55
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .param p1, "encodedState"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedState"
        }
    .end annotation

    .line 64
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->values()[Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 66
    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->restoreState([B)V

    .line 68
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 69
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    .line 124
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lorg/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    .line 146
    const/16 v0, 0x100

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3
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

    .line 85
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 87
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 88
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 89
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 90
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 91
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 92
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 93
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 94
    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 98
    const/16 v0, 0x40

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 73
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    .line 78
    const/16 v0, 0x40

    return v0
.end method

.method public getEncodedState()[B
    .locals 3

    .line 136
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->getEncodedStateSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 137
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lorg/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 139
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 141
    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 106
    invoke-super {p0}, Lorg/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 112
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 113
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 114
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 115
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 116
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 117
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 118
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 119
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 120
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

    .line 129
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    .line 131
    .local v0, "d":Lorg/bouncycastle/crypto/digests/SHA512Digest;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->copyIn(Lorg/bouncycastle/crypto/digests/LongDigest;)V

    .line 132
    return-void
.end method

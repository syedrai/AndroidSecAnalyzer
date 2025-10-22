.class public Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;
.super Ljava/lang/Object;
.source "HKDFBytesGenerator.java"

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationFunction;


# instance fields
.field private currentT:[B

.field private generatedBytes:I

.field private hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

.field private hashLen:I

.field private info:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "hash"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    .line 38
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    .line 39
    return-void
.end method

.method private expandNext()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 105
    .local v0, "n":I
    const/16 v1, 0x100

    if-ge v0, v1, :cond_1

    .line 111
    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    iget v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-virtual {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 115
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    array-length v4, v4

    invoke-virtual {v1, v3, v2, v4}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 116
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    int-to-byte v3, v0

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/macs/HMac;->update(B)V

    .line 117
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 118
    return-void

    .line 107
    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v2, "HKDF cannot generate more than 255 blocks of HashLen size"

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public extractPRK([B[B)[B
    .locals 3
    .param p1, "salt"    # [B
    .param p2, "ikm"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "salt",
            "ikm"
        }
    .end annotation

    .line 75
    if-nez p1, :cond_0

    .line 78
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v2, v2, [B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 85
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    .line 87
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v0, v0, [B

    .line 89
    .local v0, "prk":[B
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 91
    return-object v0
.end method

.method public generateBytes([BII)I
    .locals 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "out",
            "outOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 129
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    mul-int/lit16 v1, v1, 0xff

    if-gt v0, v1, :cond_2

    .line 135
    iget v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 137
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    .line 141
    :cond_0
    move v0, p3

    .line 142
    .local v0, "toGenerate":I
    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v1, v2

    .line 143
    .local v1, "posInT":I
    iget v2, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    iget v3, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    iget v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    rem-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 144
    .local v2, "leftInT":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 145
    .local v3, "toCopy":I
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    invoke-static {v4, v1, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 146
    iget v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 147
    sub-int/2addr v0, v3

    .line 148
    add-int/2addr p2, v3

    .line 150
    :goto_0
    if-lez v0, :cond_1

    .line 152
    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->expandNext()V

    .line 153
    iget v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 154
    iget-object v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 155
    iget v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 156
    sub-int/2addr v0, v3

    .line 157
    add-int/2addr p2, v3

    goto :goto_0

    .line 160
    :cond_1
    return p3

    .line 131
    .end local v0    # "toGenerate":I
    .end local v1    # "posInT":I
    .end local v2    # "leftInT":I
    .end local v3    # "toCopy":I
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "HKDF may only be used for 255 * HashLen bytes of output"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDigest()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getUnderlyingDigest()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/DerivationParameters;)V
    .locals 5
    .param p1, "param"    # Lorg/bouncycastle/crypto/DerivationParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 43
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/HKDFParameters;

    if-eqz v0, :cond_1

    .line 49
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/HKDFParameters;

    .line 50
    .local v0, "params":Lorg/bouncycastle/crypto/params/HKDFParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtract()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hMacHash:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getSalt()[B

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getIKM()[B

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->getInfo()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->info:[B

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generatedBytes:I

    .line 63
    iget v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->hashLen:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->currentT:[B

    .line 64
    return-void

    .line 45
    .end local v0    # "params":Lorg/bouncycastle/crypto/params/HKDFParameters;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HKDF parameters required for HKDFBytesGenerator"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

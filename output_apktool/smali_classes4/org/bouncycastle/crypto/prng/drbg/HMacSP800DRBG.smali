.class public Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;
.super Ljava/lang/Object;
.source "HMacSP800DRBG.java"

# interfaces
.implements Lorg/bouncycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final MAX_BITS_REQUEST:I = 0x40000

.field private static final RESEED_MAX:J = 0x800000000000L


# instance fields
.field private _K:[B

.field private _V:[B

.field private _entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

.field private _hMac:Lorg/bouncycastle/crypto/Mac;

.field private _reseedCounter:J

.field private _securityStrength:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Mac;ILorg/bouncycastle/crypto/prng/EntropySource;[B[B)V
    .locals 4
    .param p1, "hMac"    # Lorg/bouncycastle/crypto/Mac;
    .param p2, "securityStrength"    # I
    .param p3, "entropySource"    # Lorg/bouncycastle/crypto/prng/EntropySource;
    .param p4, "personalizationString"    # [B
    .param p5, "nonce"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "hMac",
            "securityStrength",
            "entropySource",
            "personalizationString",
            "nonce"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lorg/bouncycastle/crypto/prng/drbg/Utils;->getMaxSecurityStrength(Lorg/bouncycastle/crypto/Mac;)I

    move-result v0

    if-gt p2, v0, :cond_1

    .line 42
    invoke-interface {p3}, Lorg/bouncycastle/crypto/prng/EntropySource;->entropySize()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 47
    iput p2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

    .line 48
    iput-object p3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    .line 51
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 52
    .local v0, "entropy":[B
    invoke-static {v0, p5, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v1

    .line 54
    .local v1, "seedMaterial":[B
    invoke-interface {p1}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    .line 55
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    .line 56
    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    .line 58
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 60
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 61
    return-void

    .line 44
    .end local v0    # "entropy":[B
    .end local v1    # "seedMaterial":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not enough entropy for security strength required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by the derivation function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getEntropy()[B
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_entropySource:Lorg/bouncycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/prng/EntropySource;->getEntropy()[B

    move-result-object v0

    .line 188
    .local v0, "entropy":[B
    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_securityStrength:I

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    if-lt v1, v2, :cond_0

    .line 192
    return-object v0

    .line 190
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Insufficient entropy provided by entropy source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private hmac_DRBG_Update([B)V
    .locals 1
    .param p1, "seedMaterial"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seedMaterial"
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 66
    if-eqz p1, :cond_0

    .line 68
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update_Func([BB)V

    .line 70
    :cond_0
    return-void
.end method

.method private hmac_DRBG_Update_Func([BB)V
    .locals 4
    .param p1, "seedMaterial"    # [B
    .param p2, "vValue"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seedMaterial",
            "vValue"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    invoke-interface {v0, p2}, Lorg/bouncycastle/crypto/Mac;->update(B)V

    .line 79
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 84
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 86
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 87
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 90
    return-void
.end method


# virtual methods
.method public generate([B[BZ)I
    .locals 9
    .param p1, "output"    # [B
    .param p2, "additionalInput"    # [B
    .param p3, "predictionResistant"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "output",
            "additionalInput",
            "predictionResistant"
        }
    .end annotation

    .line 113
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    .line 115
    .local v0, "numberOfBits":I
    const/high16 v1, 0x40000

    if-gt v0, v1, :cond_5

    .line 120
    iget-wide v1, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide v3, 0x800000000000L

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 122
    const/4 v1, -0x1

    return v1

    .line 125
    :cond_0
    if-eqz p3, :cond_1

    .line 127
    invoke-virtual {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->reseed([B)V

    .line 128
    const/4 p2, 0x0

    .line 132
    :cond_1
    if-eqz p2, :cond_2

    .line 134
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 138
    :cond_2
    array-length v1, p1

    new-array v1, v1, [B

    .line 140
    .local v1, "rv":[B
    array-length v2, p1

    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v3, v3

    div-int/2addr v2, v3

    .line 142
    .local v2, "m":I
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_K:[B

    invoke-direct {v4, v5}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Mac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 144
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_3

    .line 146
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-interface {v5, v6, v4, v7}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 147
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v5, v6, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 149
    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    mul-int v6, v6, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    invoke-static {v5, v4, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 152
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v3, v3

    mul-int v3, v3, v2

    array-length v5, v1

    if-ge v3, v5, :cond_4

    .line 154
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v6, v6

    invoke-interface {v3, v5, v4, v6}, Lorg/bouncycastle/crypto/Mac;->update([BII)V

    .line 155
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_hMac:Lorg/bouncycastle/crypto/Mac;

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    invoke-interface {v3, v5, v4}, Lorg/bouncycastle/crypto/Mac;->doFinal([BI)I

    .line 157
    iget-object v3, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v5, v5

    mul-int v5, v5, v2

    array-length v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v7, v7

    mul-int v7, v7, v2

    sub-int/2addr v6, v7

    invoke-static {v3, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    :cond_4
    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 162
    iget-wide v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 164
    array-length v3, p1

    invoke-static {v1, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    return v0

    .line 117
    .end local v1    # "rv":[B
    .end local v2    # "m":I
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Number of bits per request limited to 262144"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBlockSize()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_V:[B

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reseed([B)V
    .locals 4
    .param p1, "additionalInput"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "additionalInput"
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->getEntropy()[B

    move-result-object v0

    .line 177
    .local v0, "entropy":[B
    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    .line 179
    .local v1, "seedMaterial":[B
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->hmac_DRBG_Update([B)V

    .line 181
    const-wide/16 v2, 0x1

    iput-wide v2, p0, Lorg/bouncycastle/crypto/prng/drbg/HMacSP800DRBG;->_reseedCounter:J

    .line 182
    return-void
.end method

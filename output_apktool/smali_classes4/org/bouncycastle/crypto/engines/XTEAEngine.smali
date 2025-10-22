.class public Lorg/bouncycastle/crypto/engines/XTEAEngine;
.super Ljava/lang/Object;
.source "XTEAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final block_size:I = 0x8

.field private static final delta:I = -0x61c88647

.field private static final rounds:I = 0x20


# instance fields
.field private _S:[I

.field private _forEncryption:Z

.field private _initialised:Z

.field private _sum0:[I

.field private _sum1:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_S:[I

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum0:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum1:[I

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_initialised:Z

    .line 38
    return-void
.end method

.method private bytesToInt([BI)I
    .locals 2
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

    .line 179
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inOff":I
    .local v0, "inOff":I
    aget-byte p2, p1, p2

    shl-int/lit8 p2, p2, 0x18

    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inOff":I
    .local v1, "inOff":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p2, v0

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "inOff":I
    .restart local v0    # "inOff":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p2, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    or-int/2addr p2, v1

    return p2
.end method

.method private decryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v0

    .line 163
    .local v0, "v0":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 165
    .local v1, "v1":I
    const/16 v2, 0x1f

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 167
    shl-int/lit8 v3, v0, 0x4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum1:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    sub-int/2addr v1, v3

    .line 168
    shl-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum0:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    sub-int/2addr v0, v3

    .line 165
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 171
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 172
    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 174
    const/16 v2, 0x8

    return v2
.end method

.method private encryptBlock([BI[BI)I
    .locals 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 140
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v0

    .line 141
    .local v0, "v0":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 143
    .local v1, "v1":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_0

    .line 145
    shl-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, v1, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum0:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    add-int/2addr v0, v3

    .line 146
    shl-int/lit8 v3, v0, 0x4

    ushr-int/lit8 v4, v0, 0x5

    xor-int/2addr v3, v4

    add-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum1:[I

    aget v4, v4, v2

    xor-int/2addr v3, v4

    add-int/2addr v1, v3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 149
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 150
    add-int/lit8 v2, p4, 0x4

    invoke-direct {p0, v1, p3, v2}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->unpackInt(I[BI)V

    .line 152
    const/16 v2, 0x8

    return v2
.end method

.method private setKey([B)V
    .locals 5
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 114
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 120
    const/4 v0, 0x0

    move v1, v0

    .local v1, "j":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 122
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_S:[I

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->bytesToInt([BI)I

    move-result v4

    aput v4, v3, v2

    .line 120
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x4

    goto :goto_0

    .line 125
    :cond_0
    move v1, v0

    .end local v2    # "i":I
    .local v0, "i":I
    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 127
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum0:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_S:[I

    and-int/lit8 v4, v1, 0x3

    aget v3, v3, v4

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 128
    const v2, 0x61c88647

    sub-int/2addr v1, v2

    .line 129
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_sum1:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_S:[I

    ushr-int/lit8 v4, v1, 0xb

    and-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    add-int/2addr v3, v1

    aput v3, v2, v0

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 131
    :cond_1
    return-void

    .line 116
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key size must be 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private unpackInt(I[BI)V
    .locals 2
    .param p1, "v"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "out",
            "outOff"
        }
    .end annotation

    .line 187
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 188
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 189
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 190
    int-to-byte p3, p1

    aput-byte p3, p2, v0

    .line 191
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "XTEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 47
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .param p1, "forEncryption"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "params"
        }
    .end annotation

    .line 62
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 67
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_forEncryption:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_initialised:Z

    .line 70
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 72
    .local v0, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->setKey([B)V

    .line 73
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 74
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 73
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 75
    return-void

    .line 64
    .end local v0    # "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to TEA init - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "out"    # [B
    .param p4, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "out",
            "outOff"
        }
    .end annotation

    .line 83
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_initialised:Z

    if-eqz v0, :cond_3

    .line 88
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 93
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 98
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XTEAEngine;->_forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    .line 98
    :goto_0
    return v0

    .line 95
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XTEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    .line 104
    return-void
.end method

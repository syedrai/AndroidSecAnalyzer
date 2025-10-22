.class public Lorg/bouncycastle/crypto/engines/TEAEngine;
.super Ljava/lang/Object;
.source "TEAEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final block_size:I = 0x8

.field private static final d_sum:I = -0x3910c8e0

.field private static final delta:I = -0x61c88647

.field private static final rounds:I = 0x20


# instance fields
.field private _a:I

.field private _b:I

.field private _c:I

.field private _d:I

.field private _forEncryption:Z

.field private _initialised:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    .line 36
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

    .line 176
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
    .locals 7
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

    .line 156
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    .line 157
    .local v0, "v0":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 159
    .local v1, "v1":I
    const v2, -0x3910c8e0

    .line 161
    .local v2, "sum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 163
    shl-int/lit8 v4, v0, 0x4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v0, v2

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x5

    iget v6, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v1, v4

    .line 164
    shl-int/lit8 v4, v1, 0x4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v1, v2

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v1, 0x5

    iget v6, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    sub-int/2addr v0, v4

    .line 165
    const v4, 0x61c88647

    add-int/2addr v2, v4

    .line 161
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 169
    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v1, p3, v3}, Lorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 171
    const/16 v3, 0x8

    return v3
.end method

.method private encryptBlock([BI[BI)I
    .locals 7
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

    .line 131
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    .line 132
    .local v0, "v0":I
    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v1

    .line 134
    .local v1, "v1":I
    const/4 v2, 0x0

    .line 136
    .local v2, "sum":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    .line 138
    const v4, 0x61c88647

    sub-int/2addr v2, v4

    .line 139
    shl-int/lit8 v4, v1, 0x4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    add-int/2addr v4, v5

    add-int v5, v1, v2

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v1, 0x5

    iget v6, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v0, v4

    .line 140
    shl-int/lit8 v4, v0, 0x4

    iget v5, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    add-int/2addr v4, v5

    add-int v5, v0, v2

    xor-int/2addr v4, v5

    ushr-int/lit8 v5, v0, 0x5

    iget v6, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    add-int/2addr v5, v6

    xor-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    .end local v3    # "i":I
    :cond_0
    invoke-direct {p0, v0, p3, p4}, Lorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 144
    add-int/lit8 v3, p4, 0x4

    invoke-direct {p0, v1, p3, v3}, Lorg/bouncycastle/crypto/engines/TEAEngine;->unpackInt(I[BI)V

    .line 146
    const/16 v3, 0x8

    return v3
.end method

.method private setKey([B)V
    .locals 2
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 113
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_a:I

    .line 119
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_b:I

    .line 120
    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_c:I

    .line 121
    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->bytesToInt([BI)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_d:I

    .line 122
    return-void

    .line 115
    :cond_0
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

    .line 184
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .local v0, "outOff":I
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 185
    add-int/lit8 p3, v0, 0x1

    .end local v0    # "outOff":I
    .restart local p3    # "outOff":I
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 186
    add-int/lit8 v0, p3, 0x1

    .end local p3    # "outOff":I
    .restart local v0    # "outOff":I
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, p3

    .line 187
    int-to-byte p3, p1

    aput-byte p3, p2, v0

    .line 188
    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "TEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 45
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

    .line 60
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 65
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    .line 68
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 70
    .local v0, "p":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/TEAEngine;->setKey([B)V

    .line 72
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    .line 73
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v1, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 72
    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 74
    return-void

    .line 62
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

    .line 82
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_initialised:Z

    if-eqz v0, :cond_3

    .line 87
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 92
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 97
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/TEAEngine;->_forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/TEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    .line 97
    :goto_0
    return v0

    .line 94
    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/TEAEngine;->getAlgorithmName()Ljava/lang/String;

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

    .line 103
    return-void
.end method

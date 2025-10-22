.class public Lorg/bouncycastle/crypto/engines/DESedeEngine;
.super Lorg/bouncycastle/crypto/engines/DESBase;
.source "DESedeEngine.java"

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x8


# instance fields
.field private forEncryption:Z

.field private workingKey1:[I

.field private workingKey2:[I

.field private workingKey3:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESBase;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 21
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 22
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 31
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 32
    return-void
.end method

.method private bitsOfSecurity()I
    .locals 2

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    if-ne v0, v1, :cond_0

    .line 140
    const/16 v0, 0x50

    return v0

    .line 142
    :cond_0
    const/16 v0, 0x70

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 84
    const-string v0, "DESede"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    .line 89
    const/16 v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .param p1, "encrypting"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encrypting",
            "params"
        }
    .end annotation

    .line 46
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_3

    .line 51
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    .line 53
    .local v0, "keyMaster":[B
    array-length v1, v0

    const/16 v2, 0x10

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    array-length v1, v0

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "key size must be 16 or 24 bytes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    .line 60
    const/16 v1, 0x8

    new-array v4, v1, [B

    .line 61
    .local v4, "key1":[B
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    invoke-virtual {p0, p1, v4}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    .line 64
    new-array v5, v1, [B

    .line 65
    .local v5, "key2":[B
    array-length v7, v5

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    xor-int/lit8 v7, p1, 0x1

    invoke-virtual {p0, v7, v5}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v7

    iput-object v7, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    .line 68
    array-length v7, v0

    if-ne v7, v3, :cond_2

    .line 70
    new-array v1, v1, [B

    .line 71
    .local v1, "key3":[B
    array-length v3, v1

    invoke-static {v0, v2, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 72
    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->generateWorkingKey(Z[B)[I

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 73
    .end local v1    # "key3":[B
    goto :goto_1

    .line 76
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    .line 79
    :goto_1
    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->bitsOfSecurity()I

    move-result v3

    iget-boolean v6, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    invoke-static {v6}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v6

    invoke-direct {v1, v2, v3, p2, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 80
    return-void

    .line 48
    .end local v0    # "keyMaster":[B
    .end local v4    # "key1":[B
    .end local v5    # "key2":[B
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid parameter passed to DESede init - "

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

    .line 98
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    if-eqz v0, :cond_3

    .line 103
    add-int/lit8 v0, p2, 0x8

    array-length v1, p1

    if-gt v0, v1, :cond_2

    .line 108
    add-int/lit8 v0, p4, 0x8

    array-length v1, p3

    if-gt v0, v1, :cond_1

    .line 113
    const/16 v0, 0x8

    new-array v3, v0, [B

    .line 115
    .local v3, "temp":[B
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    .line 117
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    const/4 v6, 0x0

    move-object v1, p0

    move v4, p2

    move-object v5, v3

    move-object v3, p1

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .local v3, "in":[B
    .local v4, "inOff":I
    .local v5, "temp":[B
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 118
    move-object v3, v5

    .end local v4    # "inOff":I
    .end local v5    # "temp":[B
    .local v3, "temp":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 119
    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v5, "out":[B
    .local v6, "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    goto :goto_0

    .line 123
    :cond_0
    move-object v1, p0

    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey3:[I

    const/4 v6, 0x0

    move v4, p2

    move-object v5, v3

    move-object v3, p1

    .end local p1    # "in":[B
    .end local p2    # "inOff":I
    .local v3, "in":[B
    .restart local v4    # "inOff":I
    .local v5, "temp":[B
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 124
    move-object v3, v5

    .end local v4    # "inOff":I
    .end local v5    # "temp":[B
    .local v3, "temp":[B
    .restart local p1    # "in":[B
    .restart local p2    # "inOff":I
    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey2:[I

    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 125
    iget-object v2, v1, Lorg/bouncycastle/crypto/engines/DESedeEngine;->workingKey1:[I

    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .local v5, "out":[B
    .restart local v6    # "outOff":I
    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/DESedeEngine;->desFunc([I[BI[BI)V

    .line 128
    :goto_0
    return v0

    .line 110
    .end local v3    # "temp":[B
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_1
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p4, "output buffer too short"

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 105
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_2
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p4, "input buffer too short"

    invoke-direct {p3, p4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 100
    .end local v5    # "out":[B
    .end local v6    # "outOff":I
    .restart local p3    # "out":[B
    .restart local p4    # "outOff":I
    :cond_3
    move-object v5, p3

    move v6, p4

    .end local p3    # "out":[B
    .end local p4    # "outOff":I
    .restart local v5    # "out":[B
    .restart local v6    # "outOff":I
    new-instance p3, Ljava/lang/IllegalStateException;

    const-string p4, "DESede engine not initialised"

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public reset()V
    .locals 0

    .line 133
    return-void
.end method

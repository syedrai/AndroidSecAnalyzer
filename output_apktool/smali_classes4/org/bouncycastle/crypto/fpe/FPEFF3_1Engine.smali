.class public Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;
.super Lorg/bouncycastle/crypto/fpe/FPEEngine;
.source "FPEFF3_1Engine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2
    .param p1, "baseCipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "baseCipher"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/fpe/FPEEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 33
    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    .line 38
    const-string v0, "org.bouncycastle.fpe.disable"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "FPE disabled"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "base cipher needs to be 128 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected decryptBlock([BII[BI)I
    .locals 8
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBuf",
            "inOff",
            "length",
            "outBuf",
            "outOff"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadix()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 87
    iget-object v2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadixConverter()Lorg/bouncycastle/crypto/util/RadixConverter;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getTweak()[B

    move-result-object v4

    invoke-static {p1}, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->toShortArray([B)[S

    move-result-object v5

    div-int/lit8 v7, p3, 0x2

    move v6, p2

    .end local p2    # "inOff":I
    .local v6, "inOff":I
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object p2

    move v4, v6

    .end local v6    # "inOff":I
    .local v4, "inOff":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->toByteArray([S)[B

    move-result-object p2

    move-object v3, p1

    move v5, p3

    .local p2, "dec":[B
    goto :goto_0

    .line 91
    .end local v4    # "inOff":I
    .local p2, "inOff":I
    :cond_0
    move v4, p2

    .end local p2    # "inOff":I
    .restart local v4    # "inOff":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadixConverter()Lorg/bouncycastle/crypto/util/RadixConverter;

    move-result-object v1

    iget-object p2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/FPEParameters;->getTweak()[B

    move-result-object v2

    move-object v3, p1

    move v5, p3

    .end local p1    # "inBuf":[B
    .end local p3    # "length":I
    .local v3, "inBuf":[B
    .local v5, "length":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object p2

    .line 94
    .local p2, "dec":[B
    :goto_0
    const/4 p1, 0x0

    invoke-static {p2, p1, p4, p5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    return v5
.end method

.method protected encryptBlock([BII[BI)I
    .locals 8
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "length"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inBuf",
            "inOff",
            "length",
            "outBuf",
            "outOff"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadix()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    .line 69
    iget-object v2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadixConverter()Lorg/bouncycastle/crypto/util/RadixConverter;

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getTweak()[B

    move-result-object v4

    invoke-static {p1}, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->toShortArray([B)[S

    move-result-object v5

    div-int/lit8 v7, p3, 0x2

    move v6, p2

    .end local p2    # "inOff":I
    .local v6, "inOff":I
    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object p2

    move v4, v6

    .end local v6    # "inOff":I
    .local v4, "inOff":I
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->toByteArray([S)[B

    move-result-object p2

    move-object v3, p1

    move v5, p3

    .local p2, "enc":[B
    goto :goto_0

    .line 73
    .end local v4    # "inOff":I
    .local p2, "inOff":I
    :cond_0
    move v4, p2

    .end local p2    # "inOff":I
    .restart local v4    # "inOff":I
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object p2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/FPEParameters;->getRadixConverter()Lorg/bouncycastle/crypto/util/RadixConverter;

    move-result-object v1

    iget-object p2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/FPEParameters;->getTweak()[B

    move-result-object v2

    move-object v3, p1

    move v5, p3

    .end local p1    # "inBuf":[B
    .end local p3    # "length":I
    .local v3, "inBuf":[B
    .local v5, "length":I
    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object p2

    .line 76
    .local p2, "enc":[B
    :goto_0
    const/4 p1, 0x0

    invoke-static {p2, p1, p4, p5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return v5
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "FF3-1"

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3
    .param p1, "forEncryption"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forEncryption",
            "parameters"
        }
    .end annotation

    .line 46
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->forEncryption:Z

    .line 48
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/FPEParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    .line 50
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/FPEParameters;->isUsingInverseFunction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/FPEParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->reverse()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEFF3_1Engine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/FPEParameters;->getTweak()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 56
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "tweak should be 56 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/bouncycastle/crypto/macs/GMac;
.super Ljava/lang/Object;
.source "GMac.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

.field private final macSizeBits:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/modes/GCMModeCipher;)V
    .locals 1
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/modes/GCMModeCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    .line 37
    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->macSizeBits:I

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/modes/GCMModeCipher;I)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/modes/GCMModeCipher;
    .param p2, "macSizeBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "cipher",
            "macSizeBits"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    .line 52
    iput p2, p0, Lorg/bouncycastle/crypto/macs/GMac;->macSizeBits:I

    .line 53
    return-void
.end method


# virtual methods
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    invoke-interface {v0, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->doFinal([BI)I

    move-result v0
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 105
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    .line 84
    iget v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->macSizeBits:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 61
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    .line 65
    .local v0, "param":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    .line 66
    .local v1, "iv":[B
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    .line 69
    .local v2, "keyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/AEADParameters;

    iget v5, p0, Lorg/bouncycastle/crypto/macs/GMac;->macSizeBits:I

    invoke-direct {v4, v2, v5, v1}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    const/4 v5, 0x1

    invoke-interface {v3, v5, v4}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 70
    .end local v0    # "param":Lorg/bouncycastle/crypto/params/ParametersWithIV;
    .end local v1    # "iv":[B
    .end local v2    # "keyParam":Lorg/bouncycastle/crypto/params/KeyParameter;
    nop

    .line 75
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "GMAC requires ParametersWithIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->reset()V

    .line 115
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->processAADByte(B)V

    .line 90
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "in",
            "inOff",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/GMac;->cipher:Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->processAADBytes([BII)V

    .line 96
    return-void
.end method

.class Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;
.super Ljavax/crypto/CipherSpi;
.source "BIKECipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$BIKE256;,
        Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$BIKE192;,
        Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$BIKE128;,
        Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi$Base;
    }
.end annotation


# instance fields
.field private final algorithmName:Ljava/lang/String;

.field private bikeParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

.field private engineParams:Ljava/security/AlgorithmParameters;

.field private kemGen:Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;

.field private kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

.field private unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

.field private wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->bikeParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    .line 53
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V
    .locals 1
    .param p1, "bikeParameters"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bikeParameters"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->bikeParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    .line 59
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    .line 60
    return-void
.end method


# virtual methods
.method protected engineDoFinal([BII[BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "bytes1"    # [B
    .param p5, "i2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "i",
            "i1",
            "bytes1",
            "i2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 237
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported in a wrapping mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineDoFinal([BII)[B
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "i",
            "i1"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported in a wrapping mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .line 98
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 1
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 79
    const/16 v0, 0x800

    return v0
.end method

.method protected engineGetOutputSize(I)I
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 92
    const/4 v0, -0x1

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    const-string v1, "BCPQC"

    invoke-static {v0, v1}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    .line 110
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1

    .line 118
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineParams:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "algorithmParameters"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "algorithmParameters",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 196
    const/4 v0, 0x0

    .line 198
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 202
    :try_start_0
    const-class v1, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 207
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 206
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {p3}, Ljava/security/AlgorithmParameters;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can\'t handle parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 211
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 127
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .line 133
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalArgumentException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "opmode",
            "key",
            "paramSpec",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 139
    if-nez p3, :cond_0

    .line 142
    new-instance v0, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;

    const-string v1, "AES-KWP"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/spec/KEMParameterSpec;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    goto :goto_0

    .line 146
    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    if-eqz v0, :cond_7

    .line 151
    move-object v0, p3

    check-cast v0, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    .line 154
    :goto_0
    const/4 v0, 0x3

    const-string v1, "Only a "

    if-ne p1, v0, :cond_2

    .line 156
    instance-of v0, p2, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;

    if-eqz v0, :cond_1

    .line 158
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;

    .line 159
    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;

    invoke-static {p4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;

    goto :goto_1

    .line 163
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " public key can be used for wrapping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 168
    instance-of v0, p2, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    if-eqz v0, :cond_5

    .line 170
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    .line 182
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->bikeParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    if-eqz v0, :cond_4

    .line 184
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->bikeParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "canonicalAlgName":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 187
    :cond_3
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cipher locked to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v0    # "canonicalAlgName":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 174
    :cond_5
    new-instance v0, Ljava/security/InvalidKeyException;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " private key can be used for unwrapping"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cipher only valid for wrapping/unwrapping"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_7
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->algorithmName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only accept KTSParameterSpec"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "padding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 73
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Padding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 9
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrappedKey",
            "wrappedKeyAlgorithm",
            "wrappedKeyType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 289
    const-string/jumbo v0, "unable to extract KTS secret: "

    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 295
    :try_start_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->unwrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPrivateKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;)V

    .line 297
    .local v1, "kemExt":Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->getEncapsulationLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->extractSecret([B)[B

    move-result-object v2

    .line 299
    .local v2, "secret":[B
    iget-object v4, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v4

    .line 301
    .local v4, "kWrap":Lorg/bouncycastle/crypto/Wrapper;
    new-instance v5, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v5, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 303
    .local v5, "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    .line 305
    invoke-interface {v4, v3, v5}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 307
    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;->getEncapsulationLength()I

    move-result v6

    array-length v7, p1

    invoke-static {p1, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    .line 309
    .local v6, "keyEncBytes":[B
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    array-length v8, v6

    invoke-interface {v4, v6, v3, v8}, Lorg/bouncycastle/crypto/Wrapper;->unwrap([BII)[B

    move-result-object v3

    invoke-direct {v7, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 311
    .local v7, "rv":Ljavax/crypto/SecretKey;
    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    return-object v7

    .line 319
    .end local v1    # "kemExt":Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMExtractor;
    .end local v2    # "secret":[B
    .end local v4    # "kWrap":Lorg/bouncycastle/crypto/Wrapper;
    .end local v5    # "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v6    # "keyEncBytes":[B
    .end local v7    # "rv":Ljavax/crypto/SecretKey;
    :catch_0
    move-exception v1

    .line 321
    .local v1, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 315
    .end local v1    # "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    :catch_1
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 291
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "only SECRET_KEY supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII[BI)I
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .param p4, "bytes1"    # [B
    .param p5, "i2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "i",
            "i1",
            "bytes1",
            "i2"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported in a wrapping mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineUpdate([BII)[B
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "i"    # I
    .param p3, "i1"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bytes",
            "i",
            "i1"
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not supported in a wrapping mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 8
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 244
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 245
    .local v0, "encoded":[B
    if-eqz v0, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemGen:Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->wrapKey:Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/jcajce/provider/bike/BCBIKEPublicKey;->getKeyParams()Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v1

    .line 254
    .local v1, "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/bike/BIKECipherSpi;->kemParameterSpec:Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/KTSParameterSpec;->getKeyAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/jcajce/provider/util/WrapUtil;->getWrapper(Ljava/lang/String;)Lorg/bouncycastle/crypto/Wrapper;

    move-result-object v2

    .line 256
    .local v2, "kWrap":Lorg/bouncycastle/crypto/Wrapper;
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 258
    .local v3, "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    const/4 v4, 0x1

    invoke-interface {v2, v4, v3}, Lorg/bouncycastle/crypto/Wrapper;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 260
    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v4

    .line 262
    .local v4, "encapsulation":[B
    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->destroy()V

    .line 264
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v5

    .line 266
    .local v5, "keyToWrap":[B
    array-length v6, v5

    const/4 v7, 0x0

    invoke-interface {v2, v5, v7, v6}, Lorg/bouncycastle/crypto/Wrapper;->wrap([BII)[B

    move-result-object v6

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v6

    .line 268
    .local v6, "rv":[B
    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clear([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    return-object v6

    .line 276
    .end local v1    # "secEnc":Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .end local v2    # "kWrap":Lorg/bouncycastle/crypto/Wrapper;
    .end local v3    # "keyParameter":Lorg/bouncycastle/crypto/params/KeyParameter;
    .end local v4    # "encapsulation":[B
    .end local v5    # "keyToWrap":[B
    .end local v6    # "rv":[B
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Ljavax/security/auth/DestroyFailedException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v1}, Ljavax/security/auth/DestroyFailedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to destroy interim values: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 272
    .end local v1    # "e":Ljavax/security/auth/DestroyFailedException;
    :catch_1
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to generate KTS secret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 247
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Cannot wrap key, null encoding."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

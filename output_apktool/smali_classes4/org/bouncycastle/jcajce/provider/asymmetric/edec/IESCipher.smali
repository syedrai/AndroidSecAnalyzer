.class public Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "IESCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA512andAESCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA384andAESCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA256andAESCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithAESCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA512andDESedeCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA384andDESedeCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA256andDESedeCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithDESedeCBC;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithCipher;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA512;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA384;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIESwithSHA256;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$XIES;
    }
.end annotation


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private dhaesMode:Z

.field private engine:Lorg/bouncycastle/crypto/engines/IESEngine;

.field private engineParam:Ljava/security/AlgorithmParameters;

.field private engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private ivLength:I

.field private key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

.field private random:Ljava/security/SecureRandom;

.field private state:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/IESEngine;)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/crypto/engines/IESEngine;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->dhaesMode:Z

    .line 72
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 76
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    .line 77
    iput v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/IESEngine;I)V
    .locals 2
    .param p1, "engine"    # Lorg/bouncycastle/crypto/engines/IESEngine;
    .param p2, "ivLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "engine",
            "ivLength"
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    .line 61
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 68
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->dhaesMode:Z

    .line 72
    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 82
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    .line 83
    iput p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    .line 84
    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 3
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLength"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLength",
            "output",
            "outputOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 485
    .local v0, "buf":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p4, p5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 486
    array-length v1, v0

    return v1
.end method

.method public engineDoFinal([BII)[B
    .locals 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 384
    if-eqz p3, :cond_0

    .line 386
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 389
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 390
    .local v0, "in":[B
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 393
    new-instance v1, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 394
    invoke-virtual {v3}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 395
    invoke-virtual {v4}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 396
    invoke-virtual {v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getCipherKeySize()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;-><init>([B[BII)V

    .line 398
    .local v1, "params":Lorg/bouncycastle/crypto/CipherParameters;
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v2

    .line 399
    .local v2, "engineSpecNonce":[B
    if-eqz v2, :cond_1

    .line 401
    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    move-object v1, v3

    .line 404
    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v4, 0x3

    const-string/jumbo v5, "unable to process block"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_4

    .line 408
    :try_start_0
    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v3, v6, :cond_3

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 414
    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v3, v7, v4, v6, v1}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_1

    .line 410
    :cond_3
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    iget-object v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v3, v6, v4, v8, v1}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 416
    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    array-length v4, v0

    invoke-virtual {v3, v0, v7, v4}, Lorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 418
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 424
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_4
    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v3, v3, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    if-nez v3, :cond_6

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    instance-of v3, v3, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x1

    .line 425
    .local v3, "isX25519":Z
    :goto_3
    if-eqz v3, :cond_7

    const/16 v8, 0x100

    goto :goto_4

    :cond_7
    const/16 v8, 0x1c0

    .line 427
    .local v8, "fieldSize":I
    :goto_4
    iget v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v9, v6, :cond_b

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v6, v4, :cond_8

    goto :goto_6

    .line 453
    :cond_8
    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    const/4 v6, 0x2

    if-eq v4, v6, :cond_a

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_9

    goto :goto_5

    .line 469
    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "cipher not initialised"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 458
    :cond_a
    :goto_5
    :try_start_1
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    iget-object v6, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    new-instance v9, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;

    invoke-direct {v9, v3}, Lorg/bouncycastle/crypto/parsers/XIESPublicKeyParser;-><init>(Z)V

    invoke-virtual {v4, v6, v1, v9}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/KeyParser;)V

    .line 460
    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    array-length v6, v0

    invoke-virtual {v4, v0, v7, v6}, Lorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v4
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 462
    :catch_1
    move-exception v4

    .line 464
    .local v4, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    new-instance v6, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v6, v5, v4}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 430
    .end local v4    # "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    :cond_b
    :goto_6
    if-eqz v3, :cond_c

    new-instance v4, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    goto :goto_7

    :cond_c
    new-instance v4, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/generators/X448KeyPairGenerator;-><init>()V

    .line 431
    .local v4, "kpGen":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
    :goto_7
    new-instance v6, Lorg/bouncycastle/crypto/KeyGenerationParameters;

    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->random:Ljava/security/SecureRandom;

    invoke-direct {v6, v9, v8}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    invoke-interface {v4, v6}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 432
    new-instance v6, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;

    new-instance v9, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;

    invoke-direct {v9, p0, v3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher$1;-><init>(Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;Z)V

    invoke-direct {v6, v4, v9}, Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;-><init>(Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;Lorg/bouncycastle/crypto/KeyEncoder;)V

    .line 444
    .local v6, "epKpGen":Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;
    :try_start_2
    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    iget-object v10, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    invoke-virtual {v9, v10, v1, v6}, Lorg/bouncycastle/crypto/engines/IESEngine;->init(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/crypto/generators/EphemeralKeyPairGenerator;)V

    .line 446
    iget-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    array-length v10, v0

    invoke-virtual {v9, v0, v7, v10}, Lorg/bouncycastle/crypto/engines/IESEngine;->processBlock([BII)[B

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object v5

    .line 448
    :catch_2
    move-exception v7

    .line 450
    .local v7, "e":Ljava/lang/Exception;
    new-instance v9, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v9, v5, v7}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9
.end method

.method public engineGetBlockSize()I
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v0

    .line 89
    .local v0, "cipher":Lorg/bouncycastle/crypto/BufferedBlockCipher;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getBlockSize()I

    move-result v1

    :goto_0
    return v1
.end method

.method public engineGetIV()[B
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 94
    instance-of v0, p1, Lorg/bouncycastle/jcajce/interfaces/XDHKey;

    if-eqz v0, :cond_2

    .line 96
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/interfaces/XDHKey;

    invoke-interface {v0}, Lorg/bouncycastle/jcajce/interfaces/XDHKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "algorithm":Ljava/lang/String;
    const-string v1, "X25519"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    const/16 v1, 0x100

    return v1

    .line 101
    :cond_0
    const-string v1, "X448"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    const/16 v1, 0x1c0

    return v1

    .line 107
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown XDH key algorithm "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    .end local v0    # "algorithm":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not an XDH key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetOutputSize(I)I
    .locals 10
    .param p1, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputLen"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_a

    .line 173
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/engines/IESEngine;->getMac()Lorg/bouncycastle/crypto/Mac;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Mac;->getMacSize()I

    move-result v0

    .line 175
    .local v0, "len1":I
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    check-cast v2, Lorg/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 178
    .local v2, "c":Lorg/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x7

    div-int/lit8 v4, v4, 0x8

    .line 179
    .local v4, "feSize":I
    mul-int/lit8 v4, v4, 0x2

    .line 180
    .end local v2    # "c":Lorg/bouncycastle/math/ec/ECCurve;
    .local v4, "len2":I
    goto :goto_0

    .line 183
    .end local v4    # "len2":I
    :cond_0
    const/4 v4, 0x0

    .line 186
    .restart local v4    # "len2":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    add-int/2addr v2, p1

    .line 187
    .local v2, "inLen":I
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-nez v5, :cond_1

    .line 189
    move v5, v2

    .local v5, "len3":I
    goto :goto_3

    .line 191
    .end local v5    # "len3":I
    :cond_1
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v5, v8, :cond_5

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v5, v7, :cond_2

    goto :goto_2

    .line 195
    :cond_2
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v5, v3, :cond_4

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v5, v6, :cond_3

    goto :goto_1

    .line 201
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_4
    :goto_1
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    sub-int v9, v2, v0

    sub-int/2addr v9, v4

    invoke-virtual {v5, v9}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v5

    .restart local v5    # "len3":I
    goto :goto_3

    .line 193
    .end local v5    # "len3":I
    :cond_5
    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/bouncycastle/crypto/BufferedBlockCipher;->getOutputSize(I)I

    move-result v5

    .line 204
    .restart local v5    # "len3":I
    :goto_3
    iget v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v9, v8, :cond_9

    iget v8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v8, v7, :cond_6

    goto :goto_5

    .line 208
    :cond_6
    iget v7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-eq v7, v3, :cond_8

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    if-ne v3, v6, :cond_7

    goto :goto_4

    .line 214
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 210
    :cond_8
    :goto_4
    return v5

    .line 206
    :cond_9
    :goto_5
    add-int v1, v0, v4

    add-int/2addr v1, v5

    return v1

    .line 170
    .end local v0    # "len1":I
    .end local v2    # "inLen":I
    .end local v4    # "len2":I
    .end local v5    # "len3":I
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 3

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_0

    .line 131
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "IES"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_0

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
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
            "params",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 248
    const/4 v0, 0x0

    .line 250
    .local v0, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    if-eqz p3, :cond_0

    .line 254
    :try_start_0
    const-class v1, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {p3, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 259
    goto :goto_0

    .line 256
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot recognise parameters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iput-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineParam:Ljava/security/AlgorithmParameters;

    .line 263
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 265
    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 5
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

    .line 342
    const/4 v0, 0x0

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    nop

    .line 349
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot handle supplied parameter spec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "engineSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
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
            "engineSpec",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->otherKeyParameter:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 278
    if-nez p3, :cond_0

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engine:Lorg/bouncycastle/crypto/engines/IESEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/IESEngine;->getCipher()Lorg/bouncycastle/crypto/BufferedBlockCipher;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/IESUtil;->guessParameterSpec(Lorg/bouncycastle/crypto/BufferedBlockCipher;[B)Lorg/bouncycastle/jce/spec/IESParameterSpec;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    goto :goto_0

    .line 282
    :cond_0
    instance-of v0, p3, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-eqz v0, :cond_9

    .line 284
    move-object v0, p3

    check-cast v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 291
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->engineSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getNonce()[B

    move-result-object v0

    .line 293
    .local v0, "nonce":[B
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    array-length v1, v0

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 295
    :cond_1
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->ivLength:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NONCE in IES Parameters needs to be "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes long"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    :cond_2
    :goto_1
    const/4 v1, 0x1

    if-eq p1, v1, :cond_7

    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    goto :goto_3

    .line 310
    :cond_3
    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    goto :goto_2

    .line 323
    :cond_4
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed XDH key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 312
    :cond_5
    :goto_2
    instance-of v1, p2, Ljava/security/PrivateKey;

    if-eqz v1, :cond_6

    .line 314
    move-object v1, p2

    check-cast v1, Ljava/security/PrivateKey;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/EdECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    goto :goto_4

    .line 318
    :cond_6
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed recipient\'s private XDH key for decryption"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_7
    :goto_3
    instance-of v1, p2, Ljava/security/PublicKey;

    if-eqz v1, :cond_8

    .line 303
    move-object v1, p2

    check-cast v1, Ljava/security/PublicKey;

    invoke-static {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/EdECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->key:Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 327
    :goto_4
    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->random:Ljava/security/SecureRandom;

    .line 328
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->state:I

    .line 329
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 331
    return-void

    .line 307
    :cond_8
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "must be passed recipient\'s public XDH key for encryption"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 288
    .end local v0    # "nonce":[B
    :cond_9
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "must be passed IES parameters"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4
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

    .line 147
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    .local v0, "modeName":Ljava/lang/String;
    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->dhaesMode:Z

    goto :goto_0

    .line 153
    :cond_0
    const-string v1, "DHAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->dhaesMode:Z

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t support mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineSetPadding(Ljava/lang/String;)V
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

    .line 221
    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, "paddingName":Ljava/lang/String;
    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    const-string v1, "PKCS5PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PKCS7PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 234
    :cond_1
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "padding not available with IESCipher"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_2
    :goto_0
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen",
            "output",
            "outputOffset"
        }
    .end annotation

    .line 371
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 372
    const/4 v0, 0x0

    return v0
.end method

.method public engineUpdate([BII)[B
    .locals 1
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "inputOffset",
            "inputLen"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/edec/IESCipher;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

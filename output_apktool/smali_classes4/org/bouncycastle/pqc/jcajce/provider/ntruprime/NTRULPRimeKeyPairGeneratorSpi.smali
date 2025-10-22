.class public Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "NTRULPRimeKeyPairGeneratorSpi.java"


# static fields
.field private static parameters:Ljava/util/Map;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

.field initialised:Z

.field param:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    .line 28
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr653:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr761:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr857:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr953:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1013:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->ntrulpr1277:Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    const-string v0, "NTRULPRime"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 37
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

    .line 39
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->initialised:Z

    .line 45
    return-void
.end method

.method private static getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;
    .locals 2
    .param p0, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramSpec"
        }
    .end annotation

    .line 76
    instance-of v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;

    .line 79
    .local v0, "frodoParams":Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 83
    .end local v0    # "frodoParams":Lorg/bouncycastle/pqc/jcajce/spec/NTRULPRimeParameterSpec;
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/pqc/jcajce/provider/util/SpecUtil;->getNameFrom(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .line 89
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->initialised:Z

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    .line 93
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->initialised:Z

    .line 97
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    .line 98
    .local v0, "pair":Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    .line 99
    .local v1, "pub":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    .line 101
    .local v2, "priv":Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;
    new-instance v3, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCNTRULPRimePublicKey;

    invoke-direct {v4, v1}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCNTRULPRimePublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;)V

    new-instance v5, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCNTRULPRimePrivateKey;

    invoke-direct {v5, v2}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/BCNTRULPRimePrivateKey;-><init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;)V

    invoke-direct {v3, v4, v5}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "strength",
            "random"
        }
    .end annotation

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "use AlgorithmParameterSpec"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 59
    invoke-static {p1}, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->getNameFromParams(Ljava/security/spec/AlgorithmParameterSpec;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->parameters:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    invoke-direct {v1, p2, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    .line 65
    iget-object v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->engine:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;

    iget-object v2, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->param:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/jcajce/provider/ntruprime/NTRULPRimeKeyPairGeneratorSpi;->initialised:Z

    .line 72
    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid ParameterSpec: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

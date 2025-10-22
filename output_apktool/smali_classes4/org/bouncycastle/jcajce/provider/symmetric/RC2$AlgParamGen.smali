.class public Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source "RC2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/RC2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGen"
.end annotation


# instance fields
.field spec:Ljavax/crypto/spec/RC2ParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .line 225
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    const-string v1, "RC2"

    if-nez v0, :cond_1

    .line 227
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 229
    .local v0, "iv":[B
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 231
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->random:Ljava/security/SecureRandom;

    .line 234
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 238
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 239
    .local v1, "params":Ljava/security/AlgorithmParameters;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    nop

    .line 245
    .end local v0    # "iv":[B
    goto :goto_0

    .line 241
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    .restart local v0    # "iv":[B
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 250
    .end local v0    # "iv":[B
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    move-object v1, v0

    .line 251
    .local v1, "params":Ljava/security/AlgorithmParameters;
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {v1, v0}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 256
    nop

    .line 259
    :goto_0
    return-object v1

    .line 253
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :catch_1
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "genParamSpec",
            "random"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 212
    instance-of v0, p1, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v0, :cond_0

    .line 214
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/RC2ParameterSpec;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/RC2$AlgParamGen;->spec:Ljavax/crypto/spec/RC2ParameterSpec;

    .line 215
    return-void

    .line 218
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for RC2 parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

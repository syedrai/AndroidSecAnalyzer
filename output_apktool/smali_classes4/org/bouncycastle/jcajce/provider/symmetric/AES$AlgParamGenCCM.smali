.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamGenCCM"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 533
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameterGenerator;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 4

    .line 547
    const/16 v0, 0xc

    new-array v1, v0, [B

    .line 549
    .local v1, "iv":[B
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_0

    .line 551
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;->random:Ljava/security/SecureRandom;

    .line 554
    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 560
    :try_start_0
    const-string v2, "CCM"

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamGenCCM;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 561
    .local v2, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;

    invoke-direct {v3, v1, v0}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;-><init>([BI)V

    invoke-virtual {v3}, Lorg/bouncycastle/internal/asn1/cms/CCMParameters;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    nop

    .line 568
    return-object v2

    .line 563
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
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

    .line 542
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "No supported AlgorithmParameterSpec for AES parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

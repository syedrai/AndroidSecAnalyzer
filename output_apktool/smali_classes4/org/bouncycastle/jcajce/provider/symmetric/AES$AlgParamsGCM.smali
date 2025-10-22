.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlgParamsGCM"
.end annotation


# instance fields
.field private gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 620
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 668
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 673
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getEncoded()[B

    move-result-object v0

    return-object v0

    .line 670
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 628
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmParameters(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    goto :goto_0

    .line 632
    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-eqz v0, :cond_1

    .line 634
    new-instance v0, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getNonce()[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;->getMacSizeInBits()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 640
    :goto_0
    return-void

    .line 638
    :cond_1
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlgorithmParameterSpec class not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 1
    .param p1, "params"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 646
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 2
    .param p1, "params"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "params",
            "format"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    invoke-virtual {p0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->isASN1FormatString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    invoke-static {p1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    .line 657
    return-void

    .line 653
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unknown format specified"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .line 678
    const-string v0, "GCM"

    return-object v0
.end method

.method protected localEngineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 4
    .param p1, "paramSpec"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 684
    const-class v0, Ljava/security/spec/AlgorithmParameterSpec;

    if-eq p1, v0, :cond_3

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->isGcmSpec(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 692
    :cond_0
    const-class v0, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    if-ne p1, v0, :cond_1

    .line 694
    new-instance v0, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0

    .line 696
    :cond_1
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_2

    .line 698
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 701
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlgorithmParameterSpec not recognized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 686
    :cond_3
    :goto_0
    invoke-static {}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->gcmSpecExtractable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 688
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/GcmSpecUtil;->extractGcmSpec(Lorg/bouncycastle/asn1/ASN1Primitive;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 690
    :cond_4
    new-instance v0, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getNonce()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$AlgParamsGCM;->gcmParams:Lorg/bouncycastle/internal/asn1/cms/GCMParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/internal/asn1/cms/GCMParameters;->getIcvLen()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jcajce/spec/AEADParameterSpec;-><init>([BI)V

    return-object v0
.end method

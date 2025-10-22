.class public Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "Falcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Falcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 14
    .param p1, "provider"    # Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 22
    const-string v0, "KeyFactory.FALCON"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget-object v6, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v7, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon512;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon512;-><init>()V

    const-string v4, "FALCON-512"

    const-string v5, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon512"

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .local v3, "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 25
    sget-object v12, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v13, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon1024;

    invoke-direct {v13}, Lorg/bouncycastle/pqc/jcajce/provider/falcon/FalconKeyFactorySpi$Falcon1024;-><init>()V

    const-string v10, "FALCON-1024"

    const-string v11, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyFactorySpi$Falcon1024"

    move-object v8, p0

    move-object v9, v3

    .end local v3    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .local v9, "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addKeyFactoryAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 27
    move-object v2, v8

    .end local v9    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .restart local v3    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    const-string p1, "KeyPairGenerator.FALCON"

    const-string v0, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi"

    invoke-interface {v3, p1, v0}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon512"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "FALCON-512"

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 30
    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.FalconKeyPairGeneratorSpi$Falcon1024"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "FALCON-1024"

    invoke-virtual {p0, v3, v4, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 32
    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Base"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v5, "FALCON"

    invoke-virtual {p0, v3, v5, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 34
    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon512"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v3, v1, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 35
    const-string p1, "org.bouncycastle.pqc.jcajce.provider.falcon.SignatureSpi$Falcon1024"

    sget-object v0, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->falcon_1024:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v3, v4, p1, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Falcon$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 36
    return-void
.end method

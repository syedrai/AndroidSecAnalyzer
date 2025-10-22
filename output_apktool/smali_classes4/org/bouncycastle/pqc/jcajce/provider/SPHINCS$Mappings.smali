.class public Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "SPHINCS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS;
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
    const-string v0, "KeyFactory.SPHINCS256"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "KeyPairGenerator.SPHINCS256"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.sphincs.Sphincs256KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    const-string v6, "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha512"

    sget-object v7, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256_with_SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v4, "SHA512"

    const-string v5, "SPHINCS256"

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .local v3, "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 26
    const-string v12, "org.bouncycastle.pqc.jcajce.provider.sphincs.SignatureSpi$withSha3_512"

    sget-object v13, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256_with_SHA3_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v10, "SHA3-512"

    const-string v11, "SPHINCS256"

    move-object v8, p0

    move-object v9, v3

    .end local v3    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .local v9, "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 28
    move-object v2, v8

    .end local v9    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    .restart local v3    # "provider":Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;
    new-instance p1, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/jcajce/provider/sphincs/Sphincs256KeyFactorySpi;-><init>()V

    .line 30
    .local p1, "keyFact":Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v1, "SPHINCS256"

    invoke-virtual {p0, v3, v0, v1, p1}, Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS$Mappings;->registerOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 31
    sget-object v0, Lorg/bouncycastle/pqc/asn1/PQCObjectIdentifiers;->sphincs256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, v3, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/SPHINCS$Mappings;->registerOidAlgorithmParameters(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    .line 32
    return-void
.end method

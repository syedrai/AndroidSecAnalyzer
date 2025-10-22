.class public Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi_8.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;-><init>(Z)V

    .line 45
    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForCRLCheck"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    .line 39
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 49
    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->isForCRLCheck:Z

    .line 50
    return-void
.end method


# virtual methods
.method protected build(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 9
    .param p1, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p3, "tbvPath"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tbvCert",
            "pkixParams",
            "tbvPath"
        }
    .end annotation

    .line 150
    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    return-object v1

    .line 156
    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    return-object v1

    .line 161
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 163
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v2

    if-le v0, v2, :cond_2

    .line 165
    return-object v1

    .line 169
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    const/4 v0, 0x0

    .line 180
    .local v0, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    .line 181
    .local v1, "cFact":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    new-instance v2, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;

    iget-boolean v3, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->isForCRLCheck:Z

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;-><init>(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 187
    .local v2, "validator":Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
    nop

    .line 190
    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v3

    .line 191
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-static {p1, v3, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v3
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v3, :cond_3

    .line 195
    const/4 v3, 0x0

    .line 196
    .local v3, "certPath":Ljava/security/cert/CertPath;
    const/4 v4, 0x0

    .line 199
    .local v4, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_start_2
    invoke-virtual {v1, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 206
    .end local v3    # "certPath":Ljava/security/cert/CertPath;
    .local v5, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 210
    :try_start_3
    invoke-virtual {v2, v5, p2}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 217
    .end local v4    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .local v3, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    nop

    .line 219
    :try_start_4
    new-instance v4, Ljava/security/cert/PKIXCertPathBuilderResult;

    .line 220
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v6

    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v7

    .line 221
    invoke-virtual {v3}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 219
    return-object v4

    .line 213
    .end local v3    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .restart local v4    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_0
    move-exception v3

    .line 215
    .local v3, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be validated."

    invoke-direct {v6, v7, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 201
    .end local v5    # "certPath":Ljava/security/cert/CertPath;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v3, "certPath":Ljava/security/cert/CertPath;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_1
    move-exception v5

    .line 203
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be constructed from certificate list."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 226
    .end local v3    # "certPath":Ljava/security/cert/CertPath;
    .end local v4    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v3, "stores":Ljava/util/List;
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 234
    :try_start_5
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 235
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v5

    .line 234
    invoke-static {v4, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 242
    nop

    .line 243
    :try_start_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 248
    .local v4, "issuers":Ljava/util/Collection;
    :try_start_7
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-static {p1, v5, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 255
    nop

    .line 256
    :try_start_8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 261
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 263
    .local v5, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v0, :cond_4

    .line 265
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 266
    .local v6, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v6, p2, p3}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->build(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v7

    move-object v0, v7

    .line 267
    .end local v6    # "issuer":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 273
    .end local v1    # "cFact":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
    .end local v3    # "stores":Ljava/util/List;
    .end local v4    # "issuers":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    :cond_4
    goto :goto_2

    .line 258
    .restart local v1    # "cFact":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .restart local v2    # "validator":Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
    .restart local v3    # "stores":Ljava/util/List;
    .restart local v4    # "issuers":Ljava/util/Collection;
    :cond_5
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No issuer certificate for certificate in certification path found."

    invoke-direct {v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v5

    .line 250
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_2
    move-exception v5

    .line 252
    .local v5, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v6

    .line 237
    .end local v4    # "issuers":Ljava/util/Collection;
    .end local v5    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_3
    move-exception v4

    .line 239
    .local v4, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v5

    .line 270
    .end local v1    # "cFact":Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;
    .end local v2    # "validator":Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
    .end local v3    # "stores":Ljava/util/List;
    .end local v4    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :catch_4
    move-exception v1

    goto :goto_1

    .line 183
    :catch_5
    move-exception v1

    .line 186
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception creating support classes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p3    # "tbvPath":Ljava/util/List;
    throw v2
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 272
    .restart local v0    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .local v1, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local p1    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p3    # "tbvPath":Ljava/util/List;
    :goto_1
    iput-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    .line 274
    .end local v1    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_2
    if-nez v0, :cond_6

    .line 276
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 278
    :cond_6
    return-object v0
.end method

.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 8
    .param p1, "params"    # Ljava/security/cert/CertPathParameters;
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
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 67
    instance-of v0, p1, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v0, :cond_2

    .line 69
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v1, p1

    check-cast v1, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 72
    .local v0, "paramsPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v1, p1, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v1, :cond_1

    .line 74
    move-object v1, p1

    check-cast v1, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 76
    .local v1, "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v1}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getAdditionalStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 78
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXCertStore;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCertificateStore(Lorg/bouncycastle/jcajce/PKIXCertStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_0

    .line 80
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 82
    .local v2, "paramsBldrPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    invoke-virtual {v1}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 83
    invoke-virtual {v1}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 84
    .end local v1    # "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    goto :goto_1

    .line 87
    .end local v2    # "paramsBldrPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    :cond_1
    new-instance v1, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    move-object v2, p1

    check-cast v2, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v1, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    move-object v2, v1

    .line 90
    .restart local v2    # "paramsBldrPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v0

    .line 91
    .end local v2    # "paramsBldrPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    .local v0, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    goto :goto_2

    .line 92
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_2
    instance-of v0, p1, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_8

    .line 94
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 106
    .restart local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v1, "certPathList":Ljava/util/List;
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTargets(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;

    move-result-object v2

    .line 112
    .local v2, "targets":Ljava/util/Collection;
    const/4 v3, 0x0

    .line 115
    .local v3, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 116
    .local v4, "targetIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_3

    .line 118
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 119
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, v5, v0, v1}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->build(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v3

    goto :goto_3

    .line 122
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    if-nez v3, :cond_5

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    if-eqz v5, :cond_5

    .line 124
    iget-object v5, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    instance-of v5, v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v5, :cond_4

    .line 126
    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    invoke-virtual {v7}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 128
    :cond_4
    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    const-string v6, "Possible certificate chain could not be validated."

    iget-object v7, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    invoke-direct {v5, v6, v7}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 133
    :cond_5
    if-nez v3, :cond_7

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->certPathException:Ljava/lang/Exception;

    if-eqz v5, :cond_6

    goto :goto_4

    .line 135
    :cond_6
    new-instance v5, Ljava/security/cert/CertPathBuilderException;

    const-string v6, "Unable to find certificate chain."

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 139
    :cond_7
    :goto_4
    return-object v3

    .line 98
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v1    # "certPathList":Ljava/util/List;
    .end local v2    # "targets":Ljava/util/Collection;
    .end local v3    # "result":Ljava/security/cert/CertPathBuilderResult;
    .end local v4    # "targetIter":Ljava/util/Iterator;
    :cond_8
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-class v1, Ljava/security/cert/PKIXBuilderParameters;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameters must be an instance of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " or "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;
    .locals 2

    .line 54
    new-instance v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

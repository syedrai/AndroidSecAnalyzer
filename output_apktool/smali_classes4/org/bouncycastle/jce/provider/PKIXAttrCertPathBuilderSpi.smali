.class public Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXAttrCertPathBuilderSpi.java"


# instance fields
.field private certPathException:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private build(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;
    .locals 10
    .param p1, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p2, "tbvCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .param p4, "tbvPath"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attrCert",
            "tbvCert",
            "pkixParams",
            "tbvPath"
        }
    .end annotation

    .line 195
    const-string v0, "BC"

    invoke-interface {p4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 197
    return-object v2

    .line 201
    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    return-object v2

    .line 206
    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    .line 208
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getMaxPathLength()I

    move-result v3

    if-le v1, v3, :cond_2

    .line 210
    return-object v2

    .line 214
    :cond_2
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const/4 v1, 0x0

    .line 222
    .local v1, "builderResult":Ljava/security/cert/CertPathBuilderResult;
    :try_start_0
    const-string v2, "X.509"

    invoke-static {v2, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 223
    .local v2, "cFact":Ljava/security/cert/CertificateFactory;
    const-string v3, "RFC3281"

    invoke-static {v3, v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    .line 230
    .local v0, "validator":Ljava/security/cert/CertPathValidator;
    nop

    .line 235
    :try_start_1
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 236
    .local v3, "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    .line 237
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v5

    .line 236
    invoke-static {p2, v4, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z

    move-result v4
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v4, :cond_3

    .line 242
    :try_start_2
    invoke-virtual {v2, p4}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    .line 248
    .local v4, "certPath":Ljava/security/cert/CertPath;
    nop

    .line 253
    :try_start_3
    invoke-virtual {v0, v4, p3}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v5

    check-cast v5, Ljava/security/cert/PKIXCertPathValidatorResult;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 258
    .local v5, "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    nop

    .line 260
    :try_start_4
    new-instance v6, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v5}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v7

    invoke-virtual {v5}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v8

    .line 261
    invoke-virtual {v5}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-direct {v6, v4, v7, v8, v9}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    .line 260
    return-object v6

    .line 255
    .end local v5    # "result":Ljava/security/cert/PKIXCertPathValidatorResult;
    :catch_0
    move-exception v5

    .line 257
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Certification path could not be validated."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p4    # "tbvPath":Ljava/util/List;
    throw v6

    .line 244
    .end local v4    # "certPath":Ljava/security/cert/CertPath;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .restart local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p4    # "tbvPath":Ljava/util/List;
    :catch_1
    move-exception v4

    .line 246
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Certification path could not be constructed from certificate list."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p4    # "tbvPath":Ljava/util/List;
    throw v5

    .line 266
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .restart local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p4    # "tbvPath":Ljava/util/List;
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 267
    .local v4, "stores":Ljava/util/List;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 272
    :try_start_5
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->issuerAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 273
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v5

    .line 274
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCertificateStoreMap()Ljava/util/Map;

    move-result-object v6

    .line 272
    invoke-static {v5, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_5
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 280
    nop

    .line 282
    :try_start_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 287
    .local v5, "issuers":Ljava/util/Collection;
    :try_start_7
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v6

    invoke-static {p2, v6, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_2

    .line 293
    nop

    .line 294
    :try_start_8
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 300
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 301
    .local v6, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    if-nez v1, :cond_5

    .line 303
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 306
    .local v7, "issuer":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 308
    goto :goto_0

    .line 310
    :cond_4
    invoke-direct {p0, p1, v7, p3, p4}, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v8

    move-object v1, v8

    .line 311
    .end local v7    # "issuer":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 317
    .end local v3    # "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "stores":Ljava/util/List;
    .end local v5    # "issuers":Ljava/util/Collection;
    .end local v6    # "it":Ljava/util/Iterator;
    :cond_5
    goto :goto_1

    .line 296
    .restart local v3    # "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "stores":Ljava/util/List;
    .restart local v5    # "issuers":Ljava/util/Collection;
    :cond_6
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "No issuer certificate for certificate in certification path found."

    invoke-direct {v6, v7}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p4    # "tbvPath":Ljava/util/List;
    throw v6

    .line 289
    .restart local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .restart local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p4    # "tbvPath":Ljava/util/List;
    :catch_2
    move-exception v6

    .line 291
    .local v6, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "Cannot find issuer certificate for certificate in certification path."

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p4    # "tbvPath":Ljava/util/List;
    throw v7

    .line 276
    .end local v5    # "issuers":Ljava/util/Collection;
    .end local v6    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .restart local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p4    # "tbvPath":Ljava/util/List;
    :catch_3
    move-exception v5

    .line 278
    .local v5, "e":Ljava/security/cert/CertificateParsingException;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "No additional X.509 stores can be added from certificate locations."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local p4    # "tbvPath":Ljava/util/List;
    throw v6
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    .line 314
    .end local v3    # "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "stores":Ljava/util/List;
    .end local v5    # "e":Ljava/security/cert/CertificateParsingException;
    .restart local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .restart local v1    # "builderResult":Ljava/security/cert/CertPathBuilderResult;
    .restart local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "tbvCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "pkixParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .restart local p4    # "tbvPath":Ljava/util/List;
    :catch_4
    move-exception v3

    .line 316
    .local v3, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "No valid certification path could be build."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v4, p0, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    .line 318
    .end local v3    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_1
    if-nez v1, :cond_7

    .line 320
    invoke-interface {p4, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 322
    :cond_7
    return-object v1

    .line 225
    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .end local v2    # "cFact":Ljava/security/cert/CertificateFactory;
    :catch_5
    move-exception v0

    .line 228
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception creating support classes."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static findCertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;
    .param p1, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certSelect",
            "certStores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 328
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 330
    .local v0, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 334
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/util/Store;

    if-eqz v3, :cond_0

    .line 336
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/util/Store;

    .line 339
    .local v3, "certStore":Lorg/bouncycastle/util/Store;
    :try_start_0
    invoke-interface {v3, p0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    goto :goto_1

    .line 341
    :catch_0
    move-exception v4

    .line 343
    .local v4, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 346
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "certStore":Lorg/bouncycastle/util/Store;
    .end local v4    # "e":Lorg/bouncycastle/util/StoreException;
    :cond_0
    :goto_1
    goto :goto_0

    .line 348
    :cond_1
    return-object v0
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .locals 17
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

    .line 55
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    instance-of v0, v2, Ljava/security/cert/PKIXBuilderParameters;

    if-nez v0, :cond_1

    instance-of v0, v2, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    if-nez v0, :cond_1

    instance-of v0, v2, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-class v3, Ljava/security/cert/PKIXBuilderParameters;

    .line 61
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    .line 62
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parameters must be an instance of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " or "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "targetStores":Ljava/util/List;
    instance-of v3, v2, Ljava/security/cert/PKIXBuilderParameters;

    if-eqz v3, :cond_3

    .line 71
    new-instance v3, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    move-object v4, v2

    check-cast v4, Ljava/security/cert/PKIXBuilderParameters;

    invoke-direct {v3, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Ljava/security/cert/PKIXBuilderParameters;)V

    .line 73
    .local v3, "paramsPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;
    instance-of v4, v2, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v4, :cond_2

    .line 75
    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;

    .line 77
    .local v4, "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    invoke-virtual {v4}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getExcludedCerts()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->addExcludedCerts(Ljava/util/Set;)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 78
    invoke-virtual {v4}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getMaxPathLength()I

    move-result v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->setMaxPathLength(I)Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    .line 79
    invoke-virtual {v4}, Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;->getStores()Ljava/util/List;

    move-result-object v0

    .line 82
    .end local v4    # "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXBuilderParameters;
    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v3

    .line 83
    .local v3, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    move-object v4, v3

    move-object v3, v0

    goto :goto_1

    .line 86
    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :cond_3
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-object v4, v3

    move-object v3, v0

    .line 91
    .end local v0    # "targetStores":Ljava/util/List;
    .local v3, "targetStores":Ljava/util/List;
    .local v4, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    .line 96
    .local v5, "certPathList":Ljava/util/List;
    invoke-virtual {v4}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v6

    .line 97
    .local v6, "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v7

    .line 98
    .local v7, "certSelect":Lorg/bouncycastle/util/Selector;
    instance-of v0, v7, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    if-eqz v0, :cond_e

    .line 109
    :try_start_0
    move-object v0, v7

    check-cast v0, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    invoke-static {v0, v3}, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->findCertificates(Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v8, v0

    .line 114
    .local v8, "targets":Ljava/util/Collection;
    nop

    .line 116
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 122
    const/4 v0, 0x0

    .line 125
    .local v0, "result":Ljava/security/cert/CertPathBuilderResult;
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move-object v10, v0

    .line 126
    .end local v0    # "result":Ljava/security/cert/CertPathBuilderResult;
    .local v9, "targetIter":Ljava/util/Iterator;
    .local v10, "result":Ljava/security/cert/CertPathBuilderResult;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    if-nez v10, :cond_8

    .line 128
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 130
    .local v11, "cert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    new-instance v0, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    move-object v12, v0

    .line 131
    .local v12, "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {v11}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v13

    .line 132
    .local v13, "principals":[Ljava/security/Principal;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v14, v0

    .line 133
    .local v14, "issuers":Ljava/util/LinkedHashSet;
    const/4 v0, 0x0

    move v15, v0

    .local v15, "i":I
    :goto_3
    array-length v0, v13

    if-ge v15, v0, :cond_5

    .line 137
    :try_start_1
    aget-object v0, v13, v15
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    instance-of v0, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v0, :cond_4

    .line 139
    aget-object v0, v13, v15

    check-cast v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setSubject([B)V

    .line 141
    :cond_4
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v12}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    .line 142
    .local v0, "certStoreSelector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-static {v14, v0, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 143
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v2

    invoke-static {v14, v0, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    .end local v0    # "certStoreSelector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    nop

    .line 133
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    goto :goto_3

    .line 145
    :catch_0
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_4

    .line 151
    :catch_1
    move-exception v0

    .line 153
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    move-object/from16 v16, v3

    .end local v3    # "targetStores":Ljava/util/List;
    .local v16, "targetStores":Ljava/util/List;
    const-string v3, "cannot encode X500Principal."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 145
    .end local v0    # "e":Ljava/io/IOException;
    .end local v16    # "targetStores":Ljava/util/List;
    .restart local v3    # "targetStores":Ljava/util/List;
    :catch_2
    move-exception v0

    move-object/from16 v16, v3

    .line 147
    .end local v3    # "targetStores":Ljava/util/List;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v16    # "targetStores":Ljava/util/List;
    :goto_4
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v3, "Public key certificate for attribute certificate cannot be searched."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 133
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "targetStores":Ljava/util/List;
    .restart local v3    # "targetStores":Ljava/util/List;
    :cond_5
    move-object/from16 v16, v3

    .line 158
    .end local v3    # "targetStores":Ljava/util/List;
    .end local v15    # "i":I
    .restart local v16    # "targetStores":Ljava/util/List;
    invoke-virtual {v14}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 163
    invoke-virtual {v14}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v10, :cond_6

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    invoke-direct {v1, v11, v2, v4, v5}, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->build(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;Ljava/util/List;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v10

    goto :goto_5

    .line 168
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v12    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .end local v13    # "principals":[Ljava/security/Principal;
    .end local v14    # "issuers":Ljava/util/LinkedHashSet;
    :cond_6
    move-object/from16 v2, p1

    move-object/from16 v3, v16

    goto/16 :goto_2

    .line 160
    .restart local v12    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .restart local v13    # "principals":[Ljava/security/Principal;
    .restart local v14    # "issuers":Ljava/util/LinkedHashSet;
    :cond_7
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Public key certificate for attribute certificate cannot be found."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    .end local v11    # "cert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local v12    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .end local v13    # "principals":[Ljava/security/Principal;
    .end local v14    # "issuers":Ljava/util/LinkedHashSet;
    .end local v16    # "targetStores":Ljava/util/List;
    .restart local v3    # "targetStores":Ljava/util/List;
    :cond_8
    move-object/from16 v16, v3

    .line 170
    .end local v3    # "targetStores":Ljava/util/List;
    .restart local v16    # "targetStores":Ljava/util/List;
    if-nez v10, :cond_a

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-nez v0, :cond_9

    goto :goto_6

    .line 172
    :cond_9
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v2, "Possible certificate chain could not be validated."

    iget-object v3, v1, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 177
    :cond_a
    :goto_6
    if-nez v10, :cond_c

    iget-object v0, v1, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathBuilderSpi;->certPathException:Ljava/lang/Exception;

    if-eqz v0, :cond_b

    goto :goto_7

    .line 179
    :cond_b
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "Unable to find certificate chain."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_c
    :goto_7
    return-object v10

    .line 118
    .end local v9    # "targetIter":Ljava/util/Iterator;
    .end local v10    # "result":Ljava/security/cert/CertPathBuilderResult;
    .end local v16    # "targetStores":Ljava/util/List;
    .restart local v3    # "targetStores":Ljava/util/List;
    :cond_d
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-string v2, "No attribute certificate found matching targetConstraints."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    .end local v8    # "targets":Ljava/util/Collection;
    :catch_3
    move-exception v0

    move-object/from16 v16, v3

    .line 113
    .end local v3    # "targetStores":Ljava/util/List;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v16    # "targetStores":Ljava/util/List;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v3, "Error finding target attribute certificate."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "targetStores":Ljava/util/List;
    .restart local v3    # "targetStores":Ljava/util/List;
    :cond_e
    move-object/from16 v16, v3

    .end local v3    # "targetStores":Ljava/util/List;
    .restart local v16    # "targetStores":Ljava/util/List;
    new-instance v0, Ljava/security/cert/CertPathBuilderException;

    const-class v2, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TargetConstraints must be an instance of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " for "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " class."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

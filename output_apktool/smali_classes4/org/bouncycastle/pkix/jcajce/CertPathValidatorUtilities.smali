.class Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field protected static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field protected static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field protected static final FRESHEST_CRL:Ljava/lang/String;

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 69
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 70
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 71
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 72
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 76
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 84
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static findCertificates(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 7
    .param p0, "certSelect"    # Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 586
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 587
    .local v0, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 589
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 593
    .local v2, "obj":Ljava/lang/Object;
    instance-of v3, v2, Lorg/bouncycastle/util/Store;

    if-eqz v3, :cond_0

    .line 595
    move-object v3, v2

    check-cast v3, Lorg/bouncycastle/util/Store;

    .line 598
    .local v3, "certStore":Lorg/bouncycastle/util/Store;
    :try_start_0
    invoke-interface {v3, p0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    nop

    .line 605
    .end local v3    # "certStore":Lorg/bouncycastle/util/Store;
    goto :goto_1

    .line 600
    .restart local v3    # "certStore":Lorg/bouncycastle/util/Store;
    :catch_0
    move-exception v4

    .line 602
    .local v4, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Problem while picking certificates from X.509 store."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 608
    .end local v3    # "certStore":Lorg/bouncycastle/util/Store;
    .end local v4    # "e":Lorg/bouncycastle/util/StoreException;
    :cond_0
    move-object v3, v2

    check-cast v3, Ljava/security/cert/CertStore;

    .line 612
    .local v3, "certStore":Ljava/security/cert/CertStore;
    :try_start_1
    invoke-static {p0, v3}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 619
    nop

    .line 621
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "certStore":Ljava/security/cert/CertStore;
    :goto_1
    goto :goto_0

    .line 614
    .restart local v2    # "obj":Ljava/lang/Object;
    .restart local v3    # "certStore":Ljava/security/cert/CertStore;
    :catch_1
    move-exception v4

    .line 616
    .local v4, "e":Ljava/security/cert/CertStoreException;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Problem while picking certificates from certificate store."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 622
    .end local v2    # "obj":Ljava/lang/Object;
    .end local v3    # "certStore":Ljava/security/cert/CertStore;
    .end local v4    # "e":Ljava/security/cert/CertStoreException;
    :cond_1
    return-object v0
.end method

.method protected static findCertificates(Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;Ljava/util/List;)Ljava/util/Collection;
    .locals 10
    .param p0, "certSelect"    # Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 507
    const-string v0, "Problem while extracting certificates from X.509 store."

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 508
    .local v1, "certs":Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 509
    .local v2, "iter":Ljava/util/Iterator;
    const/4 v3, 0x0

    .line 512
    .local v3, "certFact":Ljava/security/cert/CertificateFactory;
    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_4

    .line 517
    .end local v3    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v4, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 519
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 523
    .local v3, "obj":Ljava/lang/Object;
    instance-of v5, v3, Lorg/bouncycastle/util/Store;

    if-eqz v5, :cond_3

    .line 525
    move-object v5, v3

    check-cast v5, Lorg/bouncycastle/util/Store;

    .line 528
    .local v5, "certStore":Lorg/bouncycastle/util/Store;
    :try_start_1
    invoke-interface {v5, p0}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 530
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 532
    .local v7, "cert":Ljava/lang/Object;
    instance-of v8, v7, Lorg/bouncycastle/util/Encodable;

    if-eqz v8, :cond_0

    .line 534
    new-instance v8, Ljava/io/ByteArrayInputStream;

    move-object v9, v7

    check-cast v9, Lorg/bouncycastle/util/Encodable;

    invoke-interface {v9}, Lorg/bouncycastle/util/Encodable;->getEncoded()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 536
    :cond_0
    instance-of v8, v7, Ljava/security/cert/Certificate;

    if-eqz v8, :cond_1

    .line 538
    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v7    # "cert":Ljava/lang/Object;
    :goto_2
    goto :goto_1

    .line 542
    .restart local v7    # "cert":Ljava/lang/Object;
    :cond_1
    new-instance v8, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v9, "Unknown object found in certificate store."

    invoke-direct {v8, v9}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v1    # "certs":Ljava/util/Set;
    .end local v2    # "iter":Ljava/util/Iterator;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v4    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v5    # "certStore":Lorg/bouncycastle/util/Store;
    .end local p0    # "certSelect":Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    .end local p1    # "certStores":Ljava/util/List;
    throw v8
    :try_end_1
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 561
    .end local v6    # "it":Ljava/util/Iterator;
    .end local v7    # "cert":Ljava/lang/Object;
    .restart local v1    # "certs":Ljava/util/Set;
    .restart local v2    # "iter":Ljava/util/Iterator;
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v4    # "certFact":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "certStore":Lorg/bouncycastle/util/Store;
    .restart local p0    # "certSelect":Lorg/bouncycastle/pkix/jcajce/X509CertStoreSelector;
    .restart local p1    # "certStores":Ljava/util/List;
    :cond_2
    nop

    .line 562
    .end local v5    # "certStore":Lorg/bouncycastle/util/Store;
    goto :goto_3

    .line 557
    .restart local v5    # "certStore":Lorg/bouncycastle/util/Store;
    :catch_0
    move-exception v6

    .line 559
    .local v6, "e":Ljava/security/cert/CertificateException;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v7, v0, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 552
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    :catch_1
    move-exception v6

    .line 554
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v7, v0, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 547
    .end local v6    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 549
    .local v0, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v7, "Problem while picking certificates from X.509 store."

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 565
    .end local v0    # "e":Lorg/bouncycastle/util/StoreException;
    .end local v5    # "certStore":Lorg/bouncycastle/util/Store;
    :cond_3
    move-object v5, v3

    check-cast v5, Ljava/security/cert/CertStore;

    .line 569
    .local v5, "certStore":Ljava/security/cert/CertStore;
    :try_start_2
    invoke-virtual {v5, p0}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/security/cert/CertStoreException; {:try_start_2 .. :try_end_2} :catch_3

    .line 576
    nop

    .line 578
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "certStore":Ljava/security/cert/CertStore;
    :goto_3
    goto :goto_0

    .line 571
    .restart local v3    # "obj":Ljava/lang/Object;
    .restart local v5    # "certStore":Ljava/security/cert/CertStore;
    :catch_3
    move-exception v0

    .line 573
    .local v0, "e":Ljava/security/cert/CertStoreException;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v7, "Problem while picking certificates from certificate store."

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 579
    .end local v0    # "e":Ljava/security/cert/CertStoreException;
    .end local v3    # "obj":Ljava/lang/Object;
    .end local v5    # "certStore":Ljava/security/cert/CertStore;
    :cond_4
    return-object v1

    .line 514
    .end local v4    # "certFact":Ljava/security/cert/CertificateFactory;
    .local v3, "certFact":Ljava/security/cert/CertificateFactory;
    :catch_4
    move-exception v0

    .line 516
    .local v0, "e":Ljava/security/cert/CertificateException;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3
    .param p0, "key"    # Ljava/security/PublicKey;
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
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 194
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 196
    .local v0, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    .line 198
    .local v1, "info":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 200
    .end local v0    # "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "info":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Subject public key cannot be decoded."

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;)V
    .locals 9
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "validDate",
            "crl",
            "cert",
            "certStatus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 639
    const/4 v0, 0x0

    .line 644
    .local v0, "crl_entry":Ljava/security/cert/X509CRLEntry;
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v1
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    .local v1, "isIndirect":Z
    nop

    .line 651
    if-eqz v1, :cond_3

    .line 653
    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    .line 655
    if-nez v0, :cond_0

    .line 657
    return-void

    .line 660
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 662
    .local v2, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v2, :cond_1

    .line 664
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 667
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 669
    return-void

    .line 671
    .end local v2    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_2
    goto :goto_0

    .line 672
    :cond_3
    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 674
    return-void

    .line 678
    :cond_4
    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v0

    .line 680
    if-nez v0, :cond_5

    .line 682
    return-void

    .line 686
    :cond_5
    :goto_0
    const/4 v2, 0x0

    .line 687
    .local v2, "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 691
    :try_start_1
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 694
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    .line 693
    invoke-static {v0, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    .line 692
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 701
    goto :goto_1

    .line 696
    :catch_0
    move-exception v3

    .line 698
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v5, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 704
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_1
    if-nez v2, :cond_7

    .line 705
    const/4 v3, 0x0

    goto :goto_2

    .line 706
    :cond_7
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    :goto_2
    nop

    .line 709
    .local v3, "reasonCodeValue":I
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_8

    if-eqz v3, :cond_8

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    const/16 v4, 0xa

    if-ne v3, v4, :cond_9

    .line 716
    :cond_8
    invoke-virtual {p3, v3}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    .line 717
    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 719
    :cond_9
    return-void

    .line 646
    .end local v1    # "isIndirect":Z
    .end local v2    # "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    .end local v3    # "reasonCodeValue":I
    :catch_1
    move-exception v1

    .line 648
    .local v1, "exception":Ljava/security/cert/CRLException;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "Failed check for indirect CRL."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;
    .locals 2
    .param p0, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 109
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 111
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown certificate type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2
    .param p0, "ext"    # Ljava/security/cert/X509Extension;
    .param p1, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "ext",
            "oid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 155
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 156
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 161
    :cond_0
    invoke-static {p1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    return-object v1
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crl"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    .locals 12
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certs",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 745
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 746
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 747
    .local v1, "pubKey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v2, :cond_0

    .line 749
    return-object v1

    .line 751
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 752
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 754
    return-object v2

    .line 756
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DSA parameters cannot be inherited from previous certificate."

    if-ge v3, v4, :cond_4

    .line 758
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 759
    .local v4, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 760
    instance-of v6, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_3

    .line 765
    move-object v5, v1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    .line 766
    .local v5, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    if-nez v6, :cond_2

    .line 768
    nop

    .line 756
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 770
    .restart local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_2
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    .line 771
    .local v6, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    .line 772
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 775
    .local v7, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string v8, "DSA"

    invoke-static {v8}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 776
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v8, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 778
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v8

    .line 780
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 762
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v7    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_3
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 783
    .end local v3    # "i":I
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    :cond_4
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v3, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static getObject(Ljava/lang/String;[B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4
    .param p0, "oid"    # Ljava/lang/String;
    .param p1, "ext"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oid",
            "ext"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 171
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 172
    .local v0, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 174
    .local v1, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 175
    .end local v0    # "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .local v2, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    .end local v1    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v2    # "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static final getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .locals 7
    .param p0, "qualifiers"    # Lorg/bouncycastle/asn1/ASN1Sequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 216
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 218
    .local v0, "pq":Ljava/util/Set;
    if-nez p0, :cond_0

    .line 220
    return-object v0

    .line 223
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 224
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 226
    .local v2, "aOut":Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 228
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 232
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 234
    new-instance v4, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    nop

    .line 241
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 236
    :catch_0
    move-exception v4

    .line 238
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 244
    .end local v4    # "ex":Ljava/io/IOException;
    :cond_1
    return-object v0
.end method

.method private static getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 629
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .locals 2
    .param p0, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsPKIX"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 124
    .local v0, "validDate":Ljava/util/Date;
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    move-object v0, v1

    .line 129
    :cond_0
    return-object v0
.end method

.method protected static getValidityDate(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .param p1, "currentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "currentDate"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 820
    .local v0, "validityDate":Ljava/util/Date;
    if-nez v0, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .locals 1
    .param p0, "policySet"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policySet"
        }
    .end annotation

    .line 489
    if-eqz p0, :cond_1

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static isIndirectCRL(Ljava/security/cert/X509CRL;)Z
    .locals 5
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 805
    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 806
    .local v0, "idp":[B
    if-eqz v0, :cond_0

    .line 807
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 806
    :goto_0
    return v1

    .line 809
    .end local v0    # "idp":[B
    :catch_0
    move-exception v0

    .line 811
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CRLException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception reading IssuingDistributionPoint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .locals 15
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "m_idp"    # Ljava/util/Map;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "policyNodes",
            "id_p",
            "m_idp",
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 370
    move-object/from16 v6, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 371
    .local v0, "idp_found":Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 372
    .local v1, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 374
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 375
    .local v2, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 378
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setExpectedPolicies(Ljava/util/Set;)V

    .line 379
    move v9, v0

    goto :goto_1

    .line 381
    .end local v2    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_0
    goto :goto_0

    .line 372
    :cond_1
    move v9, v0

    .line 383
    .end local v0    # "idp_found":Z
    .local v9, "idp_found":Z
    :goto_1
    if-nez v9, :cond_8

    .line 385
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 386
    .end local v1    # "nodes_i":Ljava/util/Iterator;
    .local v10, "nodes_i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 388
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 389
    .local v11, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 391
    const/4 v2, 0x0

    .line 392
    .local v2, "pq":Ljava/util/Set;
    const/4 v3, 0x0

    .line 395
    .local v3, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v12, p4

    :try_start_1
    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v13, v0

    .line 400
    .end local v3    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v13, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 401
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v14

    .line 402
    .local v14, "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 404
    const/4 v3, 0x0

    .line 408
    .local v3, "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v0

    .line 413
    nop

    .line 414
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 418
    :try_start_3
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v0

    .line 424
    move-object v5, v2

    goto :goto_4

    .line 420
    :catch_0
    move-exception v0

    .line 422
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v1, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 427
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_2
    goto :goto_3

    .line 410
    .restart local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 402
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_3
    move-object v5, v2

    .line 428
    .end local v2    # "pq":Ljava/util/Set;
    .local v5, "pq":Ljava/util/Set;
    :goto_4
    const/4 v0, 0x0

    .line 429
    .local v0, "ci":Z
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    goto :goto_5

    .line 429
    :cond_4
    move v7, v0

    .line 434
    .end local v0    # "ci":Z
    .local v7, "ci":Z
    :goto_5
    invoke-virtual {v11}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 435
    .local v4, "p_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 437
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 439
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    move v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 441
    .local v0, "c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 442
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    .end local v0    # "c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto :goto_7

    .line 397
    .end local v4    # "p_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v5    # "pq":Ljava/util/Set;
    .end local v7    # "ci":Z
    .end local v13    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v14    # "e":Ljava/util/Enumeration;
    .restart local v2    # "pq":Ljava/util/Set;
    .local v3, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v12, p4

    .line 399
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 389
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pq":Ljava/util/Set;
    .end local v3    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    move-object/from16 v12, p4

    .line 446
    .end local v11    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    move-object/from16 v6, p2

    goto/16 :goto_2

    .line 386
    :cond_6
    move-object/from16 v12, p4

    .line 448
    :cond_7
    :goto_7
    move-object v1, v10

    goto :goto_8

    .line 383
    .end local v10    # "nodes_i":Ljava/util/Iterator;
    .restart local v1    # "nodes_i":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v12, p4

    .line 448
    :goto_8
    return-void
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .locals 8
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "policyNodes",
            "id_p",
            "validPolicyTree"
        }
    .end annotation

    .line 456
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 457
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 459
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 460
    .local v1, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 462
    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 463
    .local v2, "p_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 465
    add-int/lit8 v3, p0, -0x1

    .local v3, "k":I
    :goto_1
    if-ltz v3, :cond_2

    .line 467
    aget-object v4, p1, v3

    .line 468
    .local v4, "nodes":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 470
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 471
    .local v6, "node2":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_0

    .line 473
    invoke-static {p3, p1, v6}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object p3

    .line 474
    if-nez p3, :cond_0

    .line 476
    goto :goto_3

    .line 468
    .end local v6    # "node2":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 465
    .end local v4    # "nodes":Ljava/util/List;
    .end local v5    # "l":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 482
    .end local v1    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v2    # "p_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v3    # "k":I
    :cond_2
    goto :goto_0

    .line 483
    :cond_3
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z
    .locals 11
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "pOid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "pq"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "policyNodes",
            "pOid",
            "pq"
        }
    .end annotation

    .line 301
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 303
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 305
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 306
    .local v7, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    .line 308
    .local v2, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 311
    .local v6, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 313
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 318
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 320
    .local v3, "child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 321
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    const/4 p0, 0x1

    return p0

    .line 308
    .end local v3    # "child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "pq":Ljava/util/Set;
    :cond_0
    move v5, p0

    move-object v8, p3

    .line 303
    .end local v2    # "expectedPolicies":Ljava/util/Set;
    .end local v7    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local p0    # "index":I
    .end local p3    # "pq":Ljava/util/Set;
    .restart local v5    # "index":I
    .restart local v8    # "pq":Ljava/util/Set;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v5    # "index":I
    .end local v8    # "pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "pq":Ljava/util/Set;
    :cond_1
    move v5, p0

    .line 327
    .end local v1    # "j":I
    .end local p0    # "index":I
    .restart local v5    # "index":I
    const/4 p0, 0x0

    return p0
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    .locals 11
    .param p0, "index"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_poid"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p3, "_pq"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "index",
            "policyNodes",
            "_poid",
            "_pq"
        }
    .end annotation

    .line 336
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 338
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 340
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 342
    .local v7, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    const-string v2, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 345
    .local v6, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 347
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 352
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "_pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 354
    .local v3, "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 355
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void

    .line 342
    .end local v3    # "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "_childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_0
    move v5, p0

    move-object v8, p3

    .line 338
    .end local v7    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .restart local v5    # "index":I
    .restart local v8    # "_pq":Ljava/util/Set;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 359
    .end local v1    # "j":I
    .end local v5    # "index":I
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method protected static removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "validPolicyTree",
            "policyNodes",
            "_node"
        }
    .end annotation

    .line 252
    invoke-virtual {p2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 254
    .local v0, "_parent":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 256
    return-object v1

    .line 259
    :cond_0
    if-nez v0, :cond_2

    .line 261
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 263
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v2

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 266
    .end local v2    # "j":I
    :cond_1
    return-object v1

    .line 270
    :cond_2
    invoke-virtual {v0, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 271
    invoke-static {p1, p2}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 273
    return-object p0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V
    .locals 2
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "policyNodes",
            "_node"
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 283
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 286
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 289
    .local v1, "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-static {p0, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 290
    .end local v1    # "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto :goto_0

    .line 292
    .end local v0    # "_iter":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected static verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "publicKey",
            "sigProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 790
    if-nez p2, :cond_0

    .line 792
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 796
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 798
    :goto_0
    return-void
.end method

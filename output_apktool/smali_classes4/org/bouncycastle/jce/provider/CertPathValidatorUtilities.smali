.class Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
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

    .line 88
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 89
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 92
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 93
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 94
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 95
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 96
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 97
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 98
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 99
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 100
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 104
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 112
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

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCRLsNotEmpty(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V
    .locals 7
    .param p0, "params"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "crls"    # Ljava/util/Set;
    .param p2, "cert"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "crls",
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1400
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1402
    instance-of v0, p2, Lorg/bouncycastle/x509/X509AttributeCertificate;

    const/4 v1, 0x0

    const-string v2, "\""

    const-string v3, "No CRLs found for issuer \""

    if-eqz v0, :cond_0

    .line 1404
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    .line 1406
    .local v0, "aCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    new-instance v4, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    invoke-interface {v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;->getPrincipals()[Ljava/security/Principal;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1407
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1411
    .end local v0    # "aCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1413
    .local v0, "xCert":Ljava/security/cert/X509Certificate;
    new-instance v4, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;

    sget-object v5, Lorg/bouncycastle/asn1/x500/style/RFC4519Style;->INSTANCE:Lorg/bouncycastle/asn1/x500/X500NameStyle;

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/bouncycastle/asn1/x500/X500NameStyle;->toString(Lorg/bouncycastle/asn1/x500/X500Name;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;->getIndex()I

    move-result v5

    invoke-direct {v4, v2, v1, v3, v5}, Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1417
    .end local v0    # "xCert":Ljava/security/cert/X509Certificate;
    :cond_1
    return-void
.end method

.method protected static findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    .locals 6
    .param p0, "certs"    # Ljava/util/Set;
    .param p1, "certSelect"    # Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .param p2, "certStores"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certs",
            "certSelect",
            "certStores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 678
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 679
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 682
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Lorg/bouncycastle/util/Store;

    if-eqz v2, :cond_0

    .line 684
    move-object v2, v1

    check-cast v2, Lorg/bouncycastle/util/Store;

    .line 687
    .local v2, "certStore":Lorg/bouncycastle/util/Store;
    :try_start_0
    invoke-interface {v2, p1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/bouncycastle/util/StoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    nop

    .line 693
    .end local v2    # "certStore":Lorg/bouncycastle/util/Store;
    goto :goto_1

    .line 689
    .restart local v2    # "certStore":Lorg/bouncycastle/util/Store;
    :catch_0
    move-exception v3

    .line 691
    .local v3, "e":Lorg/bouncycastle/util/StoreException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Problem while picking certificates from X.509 store."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 696
    .end local v2    # "certStore":Lorg/bouncycastle/util/Store;
    .end local v3    # "e":Lorg/bouncycastle/util/StoreException;
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/security/cert/CertStore;

    .line 699
    .local v2, "certStore":Ljava/security/cert/CertStore;
    :try_start_1
    invoke-static {p1, v2}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificates(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/security/cert/CertStore;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/cert/CertStoreException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    nop

    .line 706
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    :goto_1
    goto :goto_0

    .line 701
    .restart local v1    # "obj":Ljava/lang/Object;
    .restart local v2    # "certStore":Ljava/security/cert/CertStore;
    :catch_1
    move-exception v3

    .line 703
    .local v3, "e":Ljava/security/cert/CertStoreException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Problem while picking certificates from certificate store."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 707
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v2    # "certStore":Ljava/security/cert/CertStore;
    .end local v3    # "e":Ljava/security/cert/CertStoreException;
    :cond_1
    return-void
.end method

.method static findIssuerCerts(Ljava/security/cert/X509Certificate;Ljava/util/List;Ljava/util/List;)Ljava/util/Collection;
    .locals 6
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "certStores",
            "pkixCertStores"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/Collection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1336
    .local p1, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p2, "pkixCertStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1340
    .local v0, "selector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1346
    nop

    .line 1350
    :try_start_1
    sget-object v1, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 1351
    .local v1, "akiExtensionValue":[B
    if-eqz v1, :cond_0

    .line 1353
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    .line 1354
    .local v2, "aki":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v3

    .line 1355
    .local v3, "authorityKeyIdentifier":[B
    if-eqz v3, :cond_0

    .line 1357
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1364
    .end local v1    # "akiExtensionValue":[B
    .end local v2    # "aki":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v3    # "authorityKeyIdentifier":[B
    :cond_0
    goto :goto_0

    .line 1361
    :catch_0
    move-exception v1

    .line 1366
    :goto_0
    new-instance v1, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 1367
    .local v1, "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1371
    .local v2, "certs":Ljava/util/Set;
    :try_start_2
    invoke-static {v2, v1, p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 1372
    invoke-static {v2, v1, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1377
    nop

    .line 1381
    return-object v2

    .line 1374
    :catch_1
    move-exception v3

    .line 1376
    .local v3, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate cannot be searched."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1342
    .end local v1    # "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v2    # "certs":Ljava/util/Set;
    .end local v3    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_2
    move-exception v1

    .line 1344
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate could not be set."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method static findTargets(Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;)Ljava/util/Collection;
    .locals 6
    .param p0, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramsPKIX"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .line 127
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 128
    .local v0, "baseParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v1

    .line 129
    .local v1, "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 133
    .local v2, "targets":Ljava/util/Set;
    :try_start_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 134
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 141
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    return-object v2

    .line 146
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->getCertificate()Ljava/security/cert/Certificate;

    move-result-object v3

    .line 147
    .local v3, "target":Ljava/security/cert/Certificate;
    if-eqz v3, :cond_1

    .line 152
    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 149
    :cond_1
    new-instance v4, Ljava/security/cert/CertPathBuilderException;

    const-string v5, "No certificate found matching targetConstraints."

    invoke-direct {v4, v5}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    .end local v3    # "target":Ljava/security/cert/Certificate;
    :catch_0
    move-exception v3

    .line 138
    .local v3, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;

    const-string v5, "Error finding target certificate."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cert",
            "trustAnchors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 172
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    return-object v0
.end method

.method protected static findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "trustAnchors",
            "sigProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v1, 0x0

    .line 197
    .local v1, "trustPublicKey":Ljava/security/PublicKey;
    const/4 v2, 0x0

    .line 199
    .local v2, "invalidKeyEx":Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 201
    .local v3, "certSelectX509":Ljava/security/cert/X509CertSelector;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 202
    .local v4, "certIssuerPrincipal":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->setSubject(Ljavax/security/auth/x500/X500Principal;)V

    .line 204
    const/4 v5, 0x0

    .line 206
    .local v5, "certIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 207
    .local v6, "iter":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    if-nez v0, :cond_6

    .line 209
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 210
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 212
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    goto :goto_2

    .line 218
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 221
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 222
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 223
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 225
    if-nez v5, :cond_3

    .line 227
    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 232
    :cond_3
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    .line 234
    .local v7, "caName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 236
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v8

    goto :goto_1

    .line 240
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 243
    .end local v7    # "caName":Lorg/bouncycastle/asn1/x500/X500Name;
    :catch_0
    move-exception v7

    .line 245
    .local v7, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v0, 0x0

    .line 246
    .end local v7    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_1
    goto :goto_2

    .line 250
    :cond_5
    const/4 v0, 0x0

    .line 253
    :goto_2
    if-eqz v1, :cond_0

    .line 257
    :try_start_1
    invoke-static {p0, v1, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 259
    :catch_1
    move-exception v7

    .line 261
    .local v7, "ex":Ljava/lang/Exception;
    move-object v2, v7

    .line 262
    const/4 v0, 0x0

    .line 263
    const/4 v1, 0x0

    .line 264
    .end local v7    # "ex":Ljava/lang/Exception;
    :goto_3
    goto :goto_0

    .line 268
    :cond_6
    if-nez v0, :cond_8

    if-nez v2, :cond_7

    goto :goto_4

    .line 270
    :cond_7
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "TrustAnchor found but certificate validation failed."

    invoke-direct {v7, v8, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 273
    :cond_8
    :goto_4
    return-object v0
.end method

.method static getAdditionalStoresFromAltNames([BLjava/util/Map;)Ljava/util/List;
    .locals 6
    .param p0, "issuerAlternativeName"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "issuerAlternativeName",
            "altNameCertStoreMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCertStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 299
    .local p1, "altNameCertStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    if-nez p0, :cond_0

    .line 301
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 304
    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    .line 306
    .local v0, "issuerAltName":Lorg/bouncycastle/asn1/x509/GeneralNames;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 307
    .local v1, "names":[Lorg/bouncycastle/asn1/x509/GeneralName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCertStore;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-eq v3, v4, :cond_2

    .line 311
    aget-object v4, v1, v3

    .line 313
    .local v4, "altName":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXCertStore;

    .line 314
    .local v5, "altStore":Lorg/bouncycastle/jcajce/PKIXCertStore;
    if-eqz v5, :cond_1

    .line 316
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 309
    .end local v4    # "altName":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "altStore":Lorg/bouncycastle/jcajce/PKIXCertStore;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 320
    .end local v3    # "i":I
    :cond_2
    return-object v2
.end method

.method static getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;
    .locals 10
    .param p0, "crldp"    # Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .param p2, "validDate"    # Ljava/util/Date;
    .param p3, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "crldp",
            "namedCRLStoreMap",
            "validDate",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/asn1/x509/CRLDistPoint;",
            "Ljava/util/Map<",
            "Lorg/bouncycastle/asn1/x509/GeneralName;",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Ljava/util/Date;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 713
    .local p1, "namedCRLStoreMap":Ljava/util/Map;, "Ljava/util/Map<Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    if-nez p0, :cond_0

    .line 715
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 721
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 726
    .local v0, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 728
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 730
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 732
    aget-object v3, v0, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 734
    .local v3, "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_2

    .line 736
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 738
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    .line 740
    aget-object v6, v4, v5

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    .line 741
    .local v6, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v6, :cond_1

    .line 743
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 738
    .end local v6    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 730
    .end local v3    # "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 750
    .end local v2    # "i":I
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "org.bouncycastle.x509.enableCRLDP"

    invoke-static {v2}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 755
    :try_start_1
    const-string v2, "X.509"

    invoke-interface {p3, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 760
    .local v2, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 762
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_7

    .line 764
    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v4

    .line 766
    .local v4, "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v5

    if-nez v5, :cond_6

    .line 768
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 770
    .local v5, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3
    array-length v7, v5

    if-ge v6, v7, :cond_6

    .line 772
    aget-object v7, v5, v6

    .line 773
    .local v7, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_5

    .line 777
    :try_start_2
    new-instance v8, Ljava/net/URI;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v9}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 778
    .local v8, "distributionPoint":Ljava/net/URI;
    invoke-static {v2, p2, v8}, Lorg/bouncycastle/jce/provider/CrlCache;->getCrl(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)Lorg/bouncycastle/jcajce/PKIXCRLStore;

    move-result-object v9

    .line 779
    .local v9, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v9, :cond_4

    .line 781
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 783
    :cond_4
    goto :goto_4

    .line 785
    .end local v8    # "distributionPoint":Ljava/net/URI;
    .end local v9    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :catch_0
    move-exception v8

    .line 770
    .end local v7    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 762
    .end local v4    # "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v6    # "j":I
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 757
    .end local v2    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    :catch_1
    move-exception v2

    .line 759
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot create certificate factory: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 795
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    return-object v1

    .line 723
    .end local v0    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v1    # "stores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    :catch_2
    move-exception v0

    .line 725
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Distribution points could not be read."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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

    .line 368
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 370
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "Subject public key cannot be decoded."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getCRLIssuersFromDistributionPoint(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    .locals 6
    .param p0, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "issuerPrincipals"    # Ljava/util/Collection;
    .param p2, "selector"    # Ljava/security/cert/X509CRLSelector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dp",
            "issuerPrincipals",
            "selector"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 820
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 822
    .local v0, "issuers":Ljava/util/List;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 824
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v1

    .line 826
    .local v1, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 828
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 832
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 838
    goto :goto_1

    .line 834
    :catch_0
    move-exception v3

    .line 836
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 826
    .end local v3    # "e":Ljava/io/IOException;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 841
    .end local v1    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v2    # "j":I
    :cond_1
    goto :goto_3

    .line 848
    :cond_2
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 854
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 856
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 903
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 904
    .restart local v1    # "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 908
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 914
    goto :goto_4

    .line 910
    :catch_1
    move-exception v2

    .line 912
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Cannot decode CRL issuer information."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 916
    .end local v2    # "ex":Ljava/io/IOException;
    :cond_4
    return-void

    .line 850
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_5
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "CRL issuer is omitted from distribution point but no distributionPoint field present."

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V
    .locals 9
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/bouncycastle/jce/provider/CertStatus;
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
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 933
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/X509CRLObject;->isIndirectCRL(Ljava/security/cert/X509CRL;)Z

    move-result v0
    :try_end_0
    .catch Ljava/security/cert/CRLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 938
    .local v0, "isIndirect":Z
    nop

    .line 941
    if-eqz v0, :cond_3

    .line 943
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 945
    .local v1, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_0

    .line 947
    return-void

    .line 950
    :cond_0
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getCertificateIssuer()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 953
    .local v2, "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    if-nez v2, :cond_1

    .line 955
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .local v3, "certIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    goto :goto_0

    .line 959
    .end local v3    # "certIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    :cond_1
    invoke-static {v2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getX500Name(Ljavax/security/auth/x500/X500Principal;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    .line 962
    .restart local v3    # "certIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    :goto_0
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 964
    return-void

    .line 966
    .end local v2    # "certificateIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "certIssuer":Lorg/bouncycastle/asn1/x500/X500Name;
    :cond_2
    goto :goto_1

    .line 967
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    :cond_3
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 969
    return-void

    .line 973
    :cond_4
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSerialNumber(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v1

    .line 975
    .restart local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-nez v1, :cond_5

    .line 977
    return-void

    .line 981
    :cond_5
    :goto_1
    const/4 v2, 0x0

    .line 982
    .local v2, "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 984
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->hasUnsupportedCriticalExtension()Z

    move-result v3

    if-nez v3, :cond_6

    .line 991
    :try_start_1
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 992
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v3

    .line 997
    goto :goto_2

    .line 994
    :catch_0
    move-exception v3

    .line 996
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Reason code CRL entry extension could not be decoded."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 986
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_6
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL entry has unsupported critical extensions."

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1000
    :cond_7
    :goto_2
    if-nez v2, :cond_8

    .line 1001
    const/4 v3, 0x0

    goto :goto_3

    .line 1002
    :cond_8
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v3

    :goto_3
    nop

    .line 1005
    .local v3, "reasonCodeValue":I
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    if-eqz v3, :cond_9

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    const/4 v4, 0x2

    if-eq v3, v4, :cond_9

    const/16 v4, 0xa

    if-ne v3, v4, :cond_a

    .line 1012
    :cond_9
    invoke-virtual {p3, v3}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1013
    invoke-virtual {v1}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p3, v4}, Lorg/bouncycastle/jce/provider/CertStatus;->setRevocationDate(Ljava/util/Date;)V

    .line 1015
    :cond_a
    return-void

    .line 935
    .end local v0    # "isIndirect":Z
    .end local v1    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v2    # "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    .end local v3    # "reasonCodeValue":I
    :catch_1
    move-exception v0

    .line 937
    .local v0, "exception":Ljava/security/cert/CRLException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Failed check for indirect CRL."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getCompleteCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;
    .locals 4
    .param p0, "params"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p4, "validityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "dp",
            "cert",
            "paramsPKIX",
            "validityDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1180
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1184
    .local v0, "baseCrlSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1185
    .local v1, "issuers":Ljava/util/Set;
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1187
    invoke-static {p1, v1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCRLIssuersFromDistributionPoint(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/util/Collection;Ljava/security/cert/X509CRLSelector;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1192
    .end local v1    # "issuers":Ljava/util/Set;
    nop

    .line 1194
    instance-of v1, p2, Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_0

    .line 1196
    move-object v1, p2

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1199
    :cond_0
    new-instance v1, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v1

    .line 1200
    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v1

    .line 1202
    .local v1, "crlSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, p4, v2, v3}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v2

    .line 1204
    .local v2, "crls":Ljava/util/Set;
    invoke-static {p0, v2, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkCRLsNotEmpty(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Ljava/util/Set;Ljava/lang/Object;)V

    .line 1206
    return-object v2

    .line 1189
    .end local v1    # "crlSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v2    # "crls":Ljava/util/Set;
    :catch_0
    move-exception v1

    .line 1191
    .local v1, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Could not get issuer information from distribution point."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 21
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p4, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "validityDate",
            "completeCRL",
            "certStores",
            "pkixCrlStores",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/security/cert/X509CRL;",
            "Ljava/util/List<",
            "Ljava/security/cert/CertStore;",
            ">;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/jcajce/PKIXCRLStore;",
            ">;",
            "Lorg/bouncycastle/jcajce/util/JcaJceHelper;",
            ")",
            "Ljava/util/Set;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1033
    .local p2, "certStores":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/CertStore;>;"
    .local p3, "pkixCrlStores":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/jcajce/PKIXCRLStore;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    move-object v3, v0

    .line 1037
    .local v3, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :try_start_0
    invoke-static {v2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6

    .line 1042
    nop

    .line 1044
    const/4 v4, 0x0

    .line 1047
    .local v4, "completeCRLNumber":Ljava/math/BigInteger;
    :try_start_1
    sget-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    .line 1048
    .local v0, "derObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_0

    .line 1050
    :try_start_2
    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 1053
    .end local v0    # "derObject":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v3

    goto/16 :goto_9

    .line 1057
    :cond_0
    :goto_0
    nop

    .line 1063
    :try_start_3
    sget-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v5, v0

    .line 1068
    .local v5, "idp":[B
    nop

    .line 1072
    if-nez v4, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1074
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    move-object v6, v0

    .line 1076
    .local v6, "selBuilder":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    invoke-virtual {v6, v5}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPoint([B)V

    .line 1077
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setIssuingDistributionPointEnabled(Z)V

    .line 1080
    invoke-virtual {v6, v4}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setMaxBaseCRLNumber(Ljava/math/BigInteger;)V

    .line 1082
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v7

    .line 1085
    .local v7, "deltaSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    invoke-static {v7, v1, v8, v9}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v10

    .line 1088
    .local v10, "temp":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "org.bouncycastle.x509.enableCRLDP"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1093
    :try_start_4
    const-string v0, "X.509"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object/from16 v11, p4

    :try_start_5
    invoke-interface {v11, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object v12, v0

    .line 1098
    .local v12, "certFact":Ljava/security/cert/CertificateFactory;
    nop

    .line 1100
    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v13

    .line 1101
    .local v13, "id":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v14

    .line 1102
    .local v14, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v0, 0x0

    move-object v15, v10

    move v10, v0

    .local v10, "i":I
    .local v15, "temp":Ljava/util/Set;
    :goto_2
    array-length v0, v14

    if-ge v10, v0, :cond_6

    .line 1104
    aget-object v0, v14, v10

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v16

    .line 1106
    .local v16, "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    if-eqz v16, :cond_5

    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v0

    if-nez v0, :cond_5

    .line 1108
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 1110
    .local v2, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v0, 0x0

    move-object/from16 v17, v3

    move v3, v0

    .local v3, "j":I
    .local v17, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_3
    array-length v0, v2

    if-ge v3, v0, :cond_4

    .line 1112
    aget-object v18, v2, v10

    .line 1113
    .local v18, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    move-object/from16 v19, v2

    .end local v2    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v19, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v2, 0x6

    if-ne v0, v2, :cond_3

    .line 1117
    :try_start_6
    new-instance v0, Ljava/net/URI;

    .line 1118
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 1117
    invoke-static {v12, v1, v0}, Lorg/bouncycastle/jce/provider/CrlCache;->getCrl(Ljava/security/cert/CertificateFactory;Ljava/util/Date;Ljava/net/URI;)Lorg/bouncycastle/jcajce/PKIXCRLStore;

    move-result-object v0

    .line 1119
    .local v0, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    if-eqz v0, :cond_2

    .line 1121
    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1122
    move-object/from16 v20, v0

    .end local v0    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .local v20, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    invoke-static/range {v20 .. v20}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1121
    invoke-static {v7, v1, v2, v0}, Lorg/bouncycastle/jce/provider/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    move-object v15, v0

    .end local v15    # "temp":Ljava/util/Set;
    .local v0, "temp":Ljava/util/Set;
    goto :goto_4

    .line 1119
    .end local v20    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .local v0, "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .restart local v15    # "temp":Ljava/util/Set;
    :cond_2
    move-object/from16 v20, v0

    .line 1124
    .end local v0    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    .restart local v20    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :goto_4
    goto :goto_5

    .line 1126
    .end local v20    # "store":Lorg/bouncycastle/jcajce/PKIXCRLStore;
    :catch_1
    move-exception v0

    .line 1110
    .end local v18    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v19

    goto :goto_3

    .end local v19    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v2    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    move-object/from16 v19, v2

    .end local v2    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v19    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_5

    .line 1106
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v19    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v3, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_5
    move-object/from16 v17, v3

    .line 1102
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .end local v16    # "dpn":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, v17

    goto :goto_2

    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_6
    move-object/from16 v17, v3

    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    move-object v10, v15

    goto :goto_7

    .line 1095
    .end local v12    # "certFact":Ljava/security/cert/CertificateFactory;
    .end local v13    # "id":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v14    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v15    # "temp":Ljava/util/Set;
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v10, "temp":Ljava/util/Set;
    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    move-object/from16 v11, p4

    :goto_6
    move-object/from16 v17, v3

    .line 1097
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "cannot create certificate factory: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1088
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :cond_7
    move-object/from16 v11, p4

    move-object/from16 v17, v3

    .line 1136
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_7
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1138
    .local v0, "result":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 1142
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isDeltaCRL(Ljava/security/cert/X509CRL;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1144
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1146
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    :cond_8
    goto :goto_8

    .line 1148
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_9
    return-object v0

    .line 1065
    .end local v0    # "result":Ljava/util/Set;
    .end local v5    # "idp":[B
    .end local v6    # "selBuilder":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;
    .end local v7    # "deltaSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v10    # "temp":Ljava/util/Set;
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v3, "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_4
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v3

    .line 1067
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension value could not be read."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1053
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_5
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v3

    .line 1055
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :goto_9
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "CRL number extension could not be extracted from CRL."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1039
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "completeCRLNumber":Ljava/math/BigInteger;
    .end local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .restart local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    :catch_6
    move-exception v0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    move-object/from16 v17, v3

    .line 1041
    .end local v3    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    .local v0, "e":Ljava/io/IOException;
    .restart local v17    # "baseDeltaSelect":Ljava/security/cert/X509CRLSelector;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Cannot extract issuer from CRL."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 345
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 347
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected static getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;
    .locals 12
    .param p0, "certs"    # Ljava/util/List;
    .param p1, "index"    # I
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certs",
            "index",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1281
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 1282
    .local v0, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1283
    .local v1, "pubKey":Ljava/security/PublicKey;
    instance-of v2, v1, Ljava/security/interfaces/DSAPublicKey;

    if-nez v2, :cond_0

    .line 1285
    return-object v1

    .line 1287
    :cond_0
    move-object v2, v1

    check-cast v2, Ljava/security/interfaces/DSAPublicKey;

    .line 1288
    .local v2, "dsaPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1290
    return-object v2

    .line 1292
    :cond_1
    add-int/lit8 v3, p1, 0x1

    .local v3, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "DSA parameters cannot be inherited from previous certificate."

    if-ge v3, v4, :cond_4

    .line 1294
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 1295
    .local v4, "parentCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 1296
    instance-of v6, v1, Ljava/security/interfaces/DSAPublicKey;

    if-eqz v6, :cond_3

    .line 1301
    move-object v5, v1

    check-cast v5, Ljava/security/interfaces/DSAPublicKey;

    .line 1302
    .local v5, "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1304
    nop

    .line 1292
    .end local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1306
    .restart local v4    # "parentCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    :cond_2
    invoke-interface {v5}, Ljava/security/interfaces/DSAPublicKey;->getParams()Ljava/security/interfaces/DSAParams;

    move-result-object v6

    .line 1307
    .local v6, "dsaParams":Ljava/security/interfaces/DSAParams;
    new-instance v7, Ljava/security/spec/DSAPublicKeySpec;

    .line 1308
    invoke-interface {v2}, Ljava/security/interfaces/DSAPublicKey;->getY()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getQ()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface {v6}, Ljava/security/interfaces/DSAParams;->getG()Ljava/math/BigInteger;

    move-result-object v11

    invoke-direct {v7, v8, v9, v10, v11}, Ljava/security/spec/DSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 1311
    .local v7, "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    :try_start_0
    const-string v8, "DSA"

    invoke-interface {p2, v8}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v8

    .line 1312
    .local v8, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v8, v7}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v9

    .line 1314
    .end local v8    # "keyFactory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v8

    .line 1316
    .local v8, "exception":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1298
    .end local v5    # "prevDSAPubKey":Ljava/security/interfaces/DSAPublicKey;
    .end local v6    # "dsaParams":Ljava/security/interfaces/DSAParams;
    .end local v7    # "dsaPubKeySpec":Ljava/security/spec/DSAPublicKeySpec;
    .end local v8    # "exception":Ljava/lang/Exception;
    :cond_3
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1319
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
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 354
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    .line 356
    .local v0, "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 358
    .end local v0    # "octs":Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception processing extension "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 386
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 388
    .local v0, "pq":Ljava/util/Set;
    if-nez p0, :cond_0

    .line 390
    return-object v0

    .line 393
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 394
    .local v1, "bOut":Ljava/io/ByteArrayOutputStream;
    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->create(Ljava/io/OutputStream;)Lorg/bouncycastle/asn1/ASN1OutputStream;

    move-result-object v2

    .line 396
    .local v2, "aOut":Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 397
    .local v3, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    :try_start_0
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 403
    new-instance v4, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 408
    nop

    .line 410
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_0

    .line 405
    :catch_0
    move-exception v4

    .line 407
    .local v4, "ex":Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy qualifier info cannot be decoded."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 413
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

    .line 920
    move-object v0, p0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;
    .locals 5
    .param p0, "validityDate"    # Ljava/util/Date;
    .param p1, "validityModel"    # I
    .param p2, "certPath"    # Ljava/security/cert/CertPath;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "validityDate",
            "validityModel",
            "certPath",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 1212
    const-string v0, "Date of cert gen extension could not be read."

    const/4 v1, 0x1

    if-ne v1, p1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1220
    .local v1, "issuedCert":Ljava/security/cert/X509Certificate;
    add-int/lit8 v2, p3, -0x1

    if-nez v2, :cond_2

    .line 1223
    const/4 v2, 0x0

    .line 1226
    .local v2, "dateOfCertgen":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, p3, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    sget-object v4, Lorg/bouncycastle/internal/asn1/isismtt/ISISMTTObjectIdentifiers;->id_isismtt_at_dateOfCertGen:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1227
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 1228
    .local v3, "extBytes":[B
    if-eqz v3, :cond_1

    .line 1230
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    .line 1240
    .end local v3    # "extBytes":[B
    :cond_1
    nop

    .line 1241
    if-eqz v2, :cond_2

    .line 1245
    :try_start_1
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v0
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 1247
    :catch_0
    move-exception v0

    .line 1249
    .local v0, "e":Ljava/text/ParseException;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Date from date of cert gen extension could not be parsed."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 1237
    .end local v0    # "e":Ljava/text/ParseException;
    :catch_1
    move-exception v3

    .line 1239
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1233
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 1235
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1254
    .end local v2    # "dateOfCertgen":Lorg/bouncycastle/asn1/ASN1GeneralizedTime;
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 1215
    .end local v1    # "issuedCert":Ljava/security/cert/X509Certificate;
    :cond_3
    :goto_0
    return-object p0
.end method

.method protected static getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;
    .locals 2
    .param p0, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
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

    .line 325
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityDate()Ljava/util/Date;

    move-result-object v0

    .line 327
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

    .line 658
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

.method private static isDeltaCRL(Ljava/security/cert/X509CRL;)Z
    .locals 2
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crl"
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 1155
    .local v0, "critical":Ljava/util/Set;
    if-nez v0, :cond_0

    .line 1157
    const/4 v1, 0x0

    return v1

    .line 1160
    :cond_0
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static isIssuerTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustAnchors"    # Ljava/util/Set;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cert",
            "trustAnchors",
            "sigProvider"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 286
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    return v0
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

    .line 332
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
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 539
    move-object/from16 v6, p2

    move-object/from16 v8, p3

    const/4 v0, 0x0

    .line 540
    .local v0, "idp_found":Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 541
    .local v1, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 544
    .local v2, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 546
    const/4 v0, 0x1

    .line 547
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 548
    move v9, v0

    goto :goto_1

    .line 550
    .end local v2    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    goto :goto_0

    .line 541
    :cond_1
    move v9, v0

    .line 552
    .end local v0    # "idp_found":Z
    .local v9, "idp_found":Z
    :goto_1
    if-nez v9, :cond_8

    .line 554
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 555
    .end local v1    # "nodes_i":Ljava/util/Iterator;
    .local v10, "nodes_i":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 557
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 558
    .local v11, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2.5.29.32.0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 560
    const/4 v2, 0x0

    .line 561
    .local v2, "pq":Ljava/util/Set;
    const/4 v3, 0x0

    .line 564
    .local v3, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object/from16 v12, p4

    :try_start_1
    invoke-static {v12, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERSequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object v13, v0

    .line 569
    .end local v3    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v13, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 570
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v14

    .line 571
    .local v14, "e":Ljava/util/Enumeration;
    :goto_3
    invoke-interface {v14}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 573
    const/4 v3, 0x0

    .line 577
    .local v3, "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface {v14}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v3, v0

    .line 582
    nop

    .line 583
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 587
    :try_start_3
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v2, v0

    .line 593
    move-object v5, v2

    goto :goto_4

    .line 589
    :catch_0
    move-exception v0

    .line 591
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Policy qualifier info set could not be built."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 596
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_2
    goto :goto_3

    .line 579
    .restart local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    .line 581
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Policy information cannot be decoded."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 571
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v3    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_3
    move-object v5, v2

    .line 597
    .end local v2    # "pq":Ljava/util/Set;
    .local v5, "pq":Ljava/util/Set;
    :goto_4
    const/4 v0, 0x0

    .line 598
    .local v0, "ci":Z
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 600
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v7, v0

    goto :goto_5

    .line 598
    :cond_4
    move v7, v0

    .line 603
    .end local v0    # "ci":Z
    .local v7, "ci":Z
    :goto_5
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 604
    .local v4, "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 606
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 608
    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/util/Set;

    move v2, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 610
    .local v0, "c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 611
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    .end local v0    # "c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_7

    .line 566
    .end local v4    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
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

    .line 568
    .local v0, "e":Ljava/lang/Exception;
    :goto_6
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Certificate policies cannot be decoded."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 558
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "pq":Ljava/util/Set;
    .end local v3    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    move-object/from16 v12, p4

    .line 615
    .end local v11    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v6, p2

    goto/16 :goto_2

    .line 555
    :cond_6
    move-object/from16 v12, p4

    .line 617
    :cond_7
    :goto_7
    move-object v1, v10

    goto :goto_8

    .line 552
    .end local v10    # "nodes_i":Ljava/util/Iterator;
    .restart local v1    # "nodes_i":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v12, p4

    .line 617
    :goto_8
    return-void
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 8
    .param p0, "i"    # I
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "id_p"    # Ljava/lang/String;
    .param p3, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
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

    .line 625
    aget-object v0, p1, p0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 626
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 628
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 629
    .local v1, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 632
    .local v2, "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 633
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 634
    add-int/lit8 v3, p0, -0x1

    .local v3, "k":I
    :goto_1
    if-ltz v3, :cond_2

    .line 636
    aget-object v4, p1, v3

    .line 637
    .local v4, "nodes":Ljava/util/List;
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 639
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 640
    .local v6, "node2":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_0

    .line 642
    invoke-static {p3, p1, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 643
    if-nez p3, :cond_0

    .line 645
    goto :goto_3

    .line 637
    .end local v6    # "node2":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 634
    .end local v4    # "nodes":Ljava/util/List;
    .end local v5    # "l":I
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 651
    .end local v1    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v2    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "k":I
    :cond_2
    goto :goto_0

    .line 652
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

    .line 470
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 472
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 474
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 475
    .local v7, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    .line 477
    .local v2, "expectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 479
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v6, "childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    new-instance v3, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 487
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 489
    .local v3, "child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 490
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    const/4 p0, 0x1

    return p0

    .line 477
    .end local v3    # "child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "pq":Ljava/util/Set;
    :cond_0
    move v5, p0

    move-object v8, p3

    .line 472
    .end local v2    # "expectedPolicies":Ljava/util/Set;
    .end local v7    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
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

    .line 496
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

    .line 505
    add-int/lit8 v0, p0, -0x1

    aget-object v0, p1, v0

    .line 507
    .local v0, "policyNodeVec":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 509
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 511
    .local v7, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v2, "2.5.29.32.0"

    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 514
    .local v6, "_childExpectedPolicies":Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 516
    new-instance v3, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    move v5, p0

    move-object v8, p3

    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .local v5, "index":I
    .local v8, "_pq":Ljava/util/Set;
    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 523
    .local v3, "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7, v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 524
    aget-object p0, p1, v5

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    return-void

    .line 511
    .end local v3    # "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "index":I
    .end local v6    # "_childExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_0
    move v5, p0

    move-object v8, p3

    .line 507
    .end local v7    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local p0    # "index":I
    .end local p3    # "_pq":Ljava/util/Set;
    .restart local v5    # "index":I
    .restart local v8    # "_pq":Ljava/util/Set;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "j":I
    .end local v5    # "index":I
    .end local v8    # "_pq":Ljava/util/Set;
    .restart local p0    # "index":I
    .restart local p3    # "_pq":Ljava/util/Set;
    :cond_1
    return-void
.end method

.method protected static removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 4
    .param p0, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p1, "policyNodes"    # [Ljava/util/List;
    .param p2, "_node"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
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

    .line 421
    invoke-virtual {p2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 423
    .local v0, "_parent":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 425
    return-object v1

    .line 428
    :cond_0
    if-nez v0, :cond_2

    .line 430
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 432
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, p1, v2

    .line 430
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v2    # "j":I
    :cond_1
    return-object v1

    .line 439
    :cond_2
    invoke-virtual {v0, p2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 440
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 442
    return-object p0
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .locals 2
    .param p0, "policyNodes"    # [Ljava/util/List;
    .param p1, "_node"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
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

    .line 450
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v0

    aget-object v0, p0, v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 452
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v0

    .line 455
    .local v0, "_iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 458
    .local v1, "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 459
    .end local v1    # "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_0

    .line 461
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

    .line 1387
    if-nez p2, :cond_0

    .line 1389
    invoke-virtual {p0, p1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 1393
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 1395
    :goto_0
    return-void
.end method

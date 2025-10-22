.class public Lorg/bouncycastle/x509/PKIXCertPathReviewer;
.super Lorg/bouncycastle/x509/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected currentDate:Ljava/util/Date;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    .line 91
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 231
    invoke-direct {p0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;-><init>()V

    .line 233
    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;-><init>()V

    .line 224
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    .line 225
    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 4
    .param p1, "ip"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ip"
        }
    .end annotation

    .line 2024
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .local v0, "result":Ljava/lang/String;
    goto :goto_1

    .line 2026
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2028
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2030
    .local v1, "b":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 2032
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2033
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2030
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2036
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2039
    .end local v1    # "b":Ljava/lang/StringBuffer;
    .local v0, "result":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method private checkCriticalExtensions()V
    .locals 18

    .line 1854
    move-object/from16 v1, p0

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v3

    .line 1855
    .local v3, "pathCheckers":Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1861
    .local v4, "certIter":Ljava/util/Iterator;
    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1863
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, v8}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1871
    :cond_0
    nop

    .line 1877
    const/4 v0, 0x0

    .line 1881
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1
    iget-object v9, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    .local v9, "index":I
    :goto_1
    if-ltz v9, :cond_8

    .line 1883
    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 1885
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    move-object v11, v0

    .line 1886
    .local v11, "criticalExtensions":Ljava/util/Set;
    if-eqz v11, :cond_7

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1888
    const/16 v17, 0x2

    goto/16 :goto_4

    .line 1891
    :cond_1
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1892
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1893
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1894
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1895
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1896
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1897
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1898
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1899
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1900
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1902
    if-nez v9, :cond_2

    .line 1904
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1907
    :cond_2
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1909
    invoke-direct {v1, v10, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1911
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v11, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1915
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v12, v0

    .line 1916
    .local v12, "tmpIter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_4

    .line 1920
    :try_start_2
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v0, v10, v11}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1927
    goto :goto_2

    .line 1922
    :catch_0
    move-exception v0

    .line 1924
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_3
    new-instance v13, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "CertPathReviewer.criticalExtensionError"

    .line 1925
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v15, v6, v8

    aput-object v0, v6, v7

    aput-object v16, v6, v5

    invoke-direct {v13, v2, v14, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1926
    .local v13, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v13, v5, v6, v9}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "pathCheckers":Ljava/util/List;
    .end local v4    # "certIter":Ljava/util/Iterator;
    throw v2

    .line 1929
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v13    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "pathCheckers":Ljava/util/List;
    .restart local v4    # "certIter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1932
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1933
    .local v0, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1935
    new-instance v13, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "CertPathReviewer.unknownCriticalExt"

    new-instance v15, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    const/16 v17, 0x2

    move-object/from16 v5, v16

    check-cast v5, Ljava/lang/String;

    invoke-direct {v15, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v15, v5, v8

    invoke-direct {v13, v2, v14, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1937
    .restart local v13    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v13, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    const/4 v5, 0x2

    goto :goto_3

    .line 1933
    .end local v13    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_5
    const/16 v17, 0x2

    goto :goto_4

    .line 1929
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_6
    const/16 v17, 0x2

    goto :goto_4

    .line 1886
    .end local v12    # "tmpIter":Ljava/util/Iterator;
    :cond_7
    const/16 v17, 0x2

    .line 1881
    .end local v11    # "criticalExtensions":Ljava/util/Set;
    :goto_4
    add-int/lit8 v9, v9, -0x1

    move-object v0, v10

    const/4 v5, 0x2

    goto/16 :goto_1

    .line 1945
    .end local v9    # "index":I
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    :cond_8
    goto :goto_6

    .line 1942
    :catch_1
    move-exception v0

    goto :goto_5

    .line 1866
    :catch_2
    move-exception v0

    const/16 v17, 0x2

    .line 1868
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v9, "CertPathReviewer.certPathCheckerError"

    .line 1869
    invoke-virtual {v0}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v8

    aput-object v0, v6, v7

    aput-object v11, v6, v17

    invoke-direct {v5, v2, v9, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1870
    .local v5, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    .end local v3    # "pathCheckers":Ljava/util/List;
    .end local v4    # "certIter":Ljava/util/Iterator;
    throw v2
    :try_end_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1944
    .end local v5    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .restart local v3    # "pathCheckers":Ljava/util/List;
    .restart local v4    # "certIter":Ljava/util/Iterator;
    :goto_5
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1946
    .end local v0    # "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    :goto_6
    return-void
.end method

.method private checkNameConstraints()V
    .locals 18

    .line 426
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 433
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    move-object v3, v0

    .line 443
    .local v3, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_7

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move-object v5, v2

    move v2, v0

    .local v2, "index":I
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    :goto_0
    if-lez v2, :cond_5

    .line 445
    :try_start_1
    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v6, v0, v2

    .line 451
    .local v6, "i":I
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 455
    invoke-static {v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_6

    const-string v7, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-nez v0, :cond_2

    .line 457
    :try_start_2
    invoke-static {v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    move-object v8, v0

    .line 458
    .local v8, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v9}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v9, v0

    .line 463
    .local v9, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_3
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v11, v0

    .line 470
    .local v11, "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 474
    :try_start_4
    invoke-virtual {v3, v11}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_6

    .line 481
    nop

    .line 485
    :try_start_5
    invoke-virtual {v3, v11}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_6

    .line 492
    nop

    .line 497
    :try_start_6
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_6

    move-object v12, v0

    .line 503
    .local v12, "altName":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 505
    if-eqz v12, :cond_1

    .line 507
    const/4 v0, 0x0

    move v13, v0

    .local v13, "j":I
    :goto_1
    :try_start_7
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ge v13, v0, :cond_0

    .line 509
    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_6

    move-object v14, v0

    .line 513
    .local v14, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_8
    invoke-virtual {v3, v14}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 514
    invoke-virtual {v3, v14}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_6

    .line 521
    nop

    .line 507
    .end local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 516
    .restart local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    :try_start_9
    new-instance v15, Lorg/bouncycastle/i18n/ErrorBundle;

    const/16 v16, 0x0

    const-string v10, "CertPathReviewer.notPermittedEmail"

    new-instance v4, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v4, v14}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v17, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v17, v4, v16

    invoke-direct {v15, v7, v10, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    .local v15, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v7, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v15, v0, v7, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v4

    .line 507
    .end local v0    # "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v14    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    const/4 v13, 0x1

    goto :goto_2

    .line 505
    .end local v13    # "j":I
    :cond_1
    const/4 v13, 0x1

    goto :goto_2

    .line 499
    .end local v12    # "altName":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v0

    .line 501
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.subjAltNameExtError"

    invoke-direct {v4, v7, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v4, v0, v10, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v7

    .line 487
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :catch_2
    move-exception v0

    const/16 v16, 0x0

    .line 489
    .local v0, "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.excludedDN"

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 490
    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v16

    invoke-direct {v4, v7, v10, v13}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 491
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v4, v0, v10, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v7

    .line 476
    .end local v0    # "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :catch_3
    move-exception v0

    const/16 v16, 0x0

    .line 478
    .restart local v0    # "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.notPermittedDN"

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 479
    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v16

    invoke-direct {v4, v7, v10, v13}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 480
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v4, v0, v10, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v7

    .line 465
    .end local v0    # "cpve":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v11    # "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v0

    const/16 v16, 0x0

    .line 467
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.ncSubjectNameError"

    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v11, v8}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x1

    new-array v12, v13, [Ljava/lang/Object;

    aput-object v11, v12, v16

    invoke-direct {v4, v7, v10, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v4, v0, v10, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v7
    :try_end_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    .line 455
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v8    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v9    # "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :cond_2
    const/4 v13, 0x1

    .line 617
    :goto_2
    :try_start_a
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_6

    .line 623
    .local v0, "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 625
    if-eqz v0, :cond_4

    .line 627
    :try_start_b
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v4

    .line 632
    .local v4, "nc":Lorg/bouncycastle/asn1/x509/NameConstraints;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v7

    .line 633
    .local v7, "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v7, :cond_3

    .line 635
    invoke-virtual {v3, v7}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 641
    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 642
    .local v8, "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_4

    .line 644
    const/4 v9, 0x0

    .local v9, "c":I
    :goto_3
    array-length v10, v8

    if-eq v9, v10, :cond_4

    .line 646
    aget-object v10, v8, v9

    invoke-virtual {v3, v10}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 644
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 443
    .end local v0    # "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "nc":Lorg/bouncycastle/asn1/x509/NameConstraints;
    .end local v7    # "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v8    # "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v9    # "c":I
    :cond_4
    add-int/lit8 v2, v2, -0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 619
    :catch_5
    move-exception v0

    .line 621
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.ncExtError"

    invoke-direct {v4, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v4, v0, v8, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    throw v7
    :try_end_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_6

    .line 653
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "index":I
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v6    # "i":I
    .restart local v3    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :catch_6
    move-exception v0

    move-object v2, v5

    goto :goto_4

    .line 656
    .restart local v2    # "index":I
    :cond_5
    goto :goto_5

    .line 653
    .end local v5    # "cert":Ljava/security/cert/X509Certificate;
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    :catch_7
    move-exception v0

    .line 655
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    :goto_4
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v5

    invoke-virtual {v1, v4, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v5, v2

    .line 658
    .end local v0    # "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "cert":Ljava/security/cert/X509Certificate;
    :goto_5
    return-void
.end method

.method private checkPathLength()V
    .locals 9

    .line 666
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    .line 667
    .local v0, "maxPathLength":I
    const/4 v1, 0x0

    .line 669
    .local v1, "totalPathLength":I
    const/4 v2, 0x0

    .line 671
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "index":I
    :goto_0
    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-lez v3, :cond_3

    .line 673
    iget-object v6, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 677
    invoke-static {v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 679
    if-gtz v0, :cond_0

    .line 681
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.pathLengthExtended"

    invoke-direct {v6, v5, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .local v6, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 684
    .end local v6    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 693
    :cond_1
    :try_start_0
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v5
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 700
    .local v5, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    goto :goto_1

    .line 695
    .end local v5    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v6

    .line 697
    .local v6, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.processLengthConstError"

    invoke-direct {v7, v5, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 699
    const/4 v5, 0x0

    .line 702
    .end local v6    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v5    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 704
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    .line 705
    .local v6, "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v6, :cond_2

    .line 707
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v7

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 671
    .end local v5    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v6    # "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 712
    .end local v3    # "index":I
    :cond_3
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    .line 713
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v4, v7

    const-string v6, "CertPathReviewer.totalPathLength"

    invoke-direct {v3, v5, v6, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    .local v3, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 716
    return-void
.end method

.method private checkPolicy()V
    .locals 38

    .line 1136
    move-object/from16 v1, p0

    const-string v2, "CertPathReviewer.policyExtError"

    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v3

    .line 1146
    .local v3, "userInitialPolicySet":Ljava/util/Set;
    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-array v5, v0, [Ljava/util/ArrayList;

    .line 1147
    .local v5, "policyNodes":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 1149
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v5, v0

    .line 1147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    .end local v0    # "j":I
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    .line 1154
    .local v9, "policySet":Ljava/util/Set;
    const-string v0, "2.5.29.32.0"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    new-instance v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "2.5.29.32.0"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1159
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1164
    iget-object v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1166
    const/4 v8, 0x0

    .local v8, "explicitPolicy":I
    goto :goto_1

    .line 1170
    .end local v8    # "explicitPolicy":I
    :cond_1
    iget v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v8, v4

    .line 1176
    .restart local v8    # "explicitPolicy":I
    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1178
    const/4 v10, 0x0

    .local v10, "inhibitAnyPolicy":I
    goto :goto_2

    .line 1182
    .end local v10    # "inhibitAnyPolicy":I
    :cond_2
    iget v10, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v10, v4

    .line 1188
    .restart local v10    # "inhibitAnyPolicy":I
    :goto_2
    iget-object v11, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1190
    const/4 v11, 0x0

    .local v11, "policyMapping":I
    goto :goto_3

    .line 1194
    .end local v11    # "policyMapping":I
    :cond_3
    iget v11, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/2addr v11, v4

    .line 1197
    .restart local v11    # "policyMapping":I
    :goto_3
    const/4 v12, 0x0

    .line 1203
    .local v12, "acceptablePolicies":Ljava/util/Set;
    const/4 v13, 0x0

    .line 1209
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v14, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_20

    sub-int/2addr v14, v4

    .local v14, "index":I
    :goto_4
    const-string v15, "CertPathReviewer.policyConstExtError"

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    if-ltz v14, :cond_32

    .line 1212
    :try_start_1
    iget v7, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I
    :try_end_1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1a

    sub-int/2addr v7, v14

    .line 1215
    .local v7, "i":I
    move-object/from16 v26, v6

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v26, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :try_start_2
    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_19

    move-object v13, v6

    .line 1222
    :try_start_3
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v13, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_18
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_19

    .line 1229
    .local v6, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1230
    move-object/from16 v27, v6

    .end local v6    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v27, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    const-string v6, "CertPathReviewer.policyQualifierError"

    if-eqz v27, :cond_1a

    if-eqz v26, :cond_1a

    .line 1235
    :try_start_4
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v18

    .line 1236
    .local v18, "e":Ljava/util/Enumeration;
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v28, v19

    .line 1238
    .local v28, "pols":Ljava/util/Set;
    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19
    :try_end_4
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_19

    if-eqz v19, :cond_6

    .line 1240
    :try_start_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v19

    .line 1241
    .local v19, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20
    :try_end_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v21, v20

    .line 1243
    .local v21, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move/from16 v29, v8

    .end local v8    # "explicitPolicy":I
    .local v29, "explicitPolicy":I
    :try_start_6
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8
    :try_end_6
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v30, v9

    move-object/from16 v9, v28

    .end local v28    # "pols":Ljava/util/Set;
    .local v9, "pols":Ljava/util/Set;
    .local v30, "policySet":Ljava/util/Set;
    :try_start_7
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1245
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_1

    if-nez v8, :cond_4

    .line 1250
    :try_start_8
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v8
    :try_end_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1256
    .local v8, "pq":Ljava/util/Set;
    nop

    .line 1258
    move/from16 v28, v10

    move-object/from16 v10, v21

    .end local v21    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v10, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v28, "inhibitAnyPolicy":I
    :try_start_9
    invoke-static {v7, v5, v10, v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v20

    .line 1260
    .local v20, "match":Z
    if-nez v20, :cond_5

    .line 1262
    invoke-static {v7, v5, v10, v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_6

    .line 1252
    .end local v8    # "pq":Ljava/util/Set;
    .end local v20    # "match":Z
    .end local v28    # "inhibitAnyPolicy":I
    .local v10, "inhibitAnyPolicy":I
    .restart local v21    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v10, v21

    .line 1254
    .end local v21    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    .local v10, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v28    # "inhibitAnyPolicy":I
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    .local v2, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v0, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4

    .line 1245
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .local v10, "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v21    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_4
    move/from16 v28, v10

    move-object/from16 v10, v21

    .line 1265
    .end local v10    # "inhibitAnyPolicy":I
    .end local v19    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v21    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v28    # "inhibitAnyPolicy":I
    :cond_5
    :goto_6
    move/from16 v10, v28

    move/from16 v8, v29

    move-object/from16 v28, v9

    move-object/from16 v9, v30

    goto :goto_5

    .line 1842
    .end local v7    # "i":I
    .end local v9    # "pols":Ljava/util/Set;
    .end local v14    # "index":I
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "inhibitAnyPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    :catch_1
    move-exception v0

    move/from16 v28, v10

    move-object/from16 v6, v26

    move/from16 v8, v29

    .end local v10    # "inhibitAnyPolicy":I
    .restart local v28    # "inhibitAnyPolicy":I
    goto/16 :goto_3c

    .end local v28    # "inhibitAnyPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .local v9, "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    :catch_2
    move-exception v0

    move-object/from16 v30, v9

    move/from16 v28, v10

    move-object/from16 v6, v26

    move/from16 v8, v29

    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    goto/16 :goto_3c

    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .local v8, "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    :catch_3
    move-exception v0

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move-object/from16 v6, v26

    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    goto/16 :goto_3c

    .line 1267
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .restart local v7    # "i":I
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v14    # "index":I
    .restart local v18    # "e":Ljava/util/Enumeration;
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v28, "pols":Ljava/util/Set;
    :cond_6
    move/from16 v29, v8

    move-object/from16 v30, v9

    move-object/from16 v9, v28

    move/from16 v28, v10

    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .local v9, "pols":Ljava/util/Set;
    .local v28, "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    if-eqz v12, :cond_a

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_8

    .line 1273
    :cond_7
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1274
    .local v8, "it":Ljava/util/Iterator;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 1276
    .local v10, "t1":Ljava/util/Set;
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1278
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v20, v19

    .line 1280
    .local v20, "o":Ljava/lang/Object;
    move-object/from16 v19, v8

    move-object/from16 v8, v20

    .end local v20    # "o":Ljava/lang/Object;
    .local v8, "o":Ljava/lang/Object;
    .local v19, "it":Ljava/util/Iterator;
    invoke-interface {v9, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1282
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1284
    .end local v8    # "o":Ljava/lang/Object;
    :cond_8
    move-object/from16 v8, v19

    goto :goto_7

    .line 1286
    .end local v19    # "it":Ljava/util/Iterator;
    .local v8, "it":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v19, v8

    .end local v8    # "it":Ljava/util/Iterator;
    .restart local v19    # "it":Ljava/util/Iterator;
    move-object v8, v10

    move-object v12, v8

    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .local v8, "acceptablePolicies":Ljava/util/Set;
    goto :goto_9

    .line 1842
    .end local v7    # "i":I
    .end local v8    # "acceptablePolicies":Ljava/util/Set;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v10    # "t1":Ljava/util/Set;
    .end local v14    # "index":I
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v19    # "it":Ljava/util/Iterator;
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    :catch_4
    move-exception v0

    move-object/from16 v6, v26

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .line 1269
    .restart local v7    # "i":I
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v18    # "e":Ljava/util/Enumeration;
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_a
    :goto_8
    move-object v8, v9

    move-object v12, v8

    .line 1291
    :goto_9
    if-gtz v28, :cond_c

    iget v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge v7, v8, :cond_b

    invoke-static {v13}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v8
    :try_end_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_4

    if-eqz v8, :cond_b

    goto :goto_a

    .line 1372
    :cond_b
    move-object/from16 v32, v9

    goto/16 :goto_12

    .line 1293
    :cond_c
    :goto_a
    :try_start_a
    invoke-virtual/range {v27 .. v27}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1295
    .end local v18    # "e":Ljava/util/Enumeration;
    .local v8, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_7

    if-eqz v10, :cond_15

    .line 1297
    :try_start_b
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v10

    .line 1299
    .local v10, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v18

    move/from16 v20, v7

    .end local v7    # "i":I
    .local v20, "i":I
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_4

    if-eqz v7, :cond_14

    .line 1304
    :try_start_c
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v23
    :try_end_c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_c .. :try_end_c} :catch_5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_4

    .line 1310
    .local v23, "_apq":Ljava/util/Set;
    nop

    .line 1311
    add-int/lit8 v7, v20, -0x1

    :try_start_d
    aget-object v7, v5, v7

    .line 1313
    .local v7, "_nodes":Ljava/util/List;
    const/16 v18, 0x0

    move-object/from16 v31, v8

    move/from16 v8, v18

    .local v8, "k":I
    .local v31, "e":Ljava/util/Enumeration;
    :goto_c
    move-object/from16 v32, v9

    .end local v9    # "pols":Ljava/util/Set;
    .local v32, "pols":Ljava/util/Set;
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_13

    .line 1315
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v22, v9

    check-cast v22, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1317
    .local v22, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1318
    .local v9, "_policySetIter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1320
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v33, v18

    .line 1323
    .local v33, "_tmp":Ljava/lang/Object;
    move-object/from16 v34, v7

    move-object/from16 v7, v33

    move/from16 v33, v8

    .end local v8    # "k":I
    .local v7, "_tmp":Ljava/lang/Object;
    .local v33, "k":I
    .local v34, "_nodes":Ljava/util/List;
    instance-of v8, v7, Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 1325
    move-object v8, v7

    check-cast v8, Ljava/lang/String;

    .local v8, "_policy":Ljava/lang/String;
    goto :goto_e

    .line 1327
    .end local v8    # "_policy":Ljava/lang/String;
    :cond_d
    instance-of v8, v7, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v8, :cond_11

    .line 1329
    move-object v8, v7

    check-cast v8, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1336
    .restart local v8    # "_policy":Ljava/lang/String;
    :goto_e
    const/16 v18, 0x0

    .line 1337
    .local v18, "_found":Z
    nop

    .line 1338
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v19

    move-object/from16 v35, v19

    move/from16 v36, v18

    .line 1340
    .end local v18    # "_found":Z
    .local v35, "_childrenIter":Ljava/util/Iterator;
    .local v36, "_found":Z
    :goto_f
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1342
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1344
    .local v18, "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v37, v7

    .end local v7    # "_tmp":Ljava/lang/Object;
    .local v37, "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1346
    const/4 v7, 0x1

    move/from16 v36, v7

    .line 1348
    .end local v18    # "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_e
    move-object/from16 v7, v37

    goto :goto_f

    .line 1350
    .end local v37    # "_tmp":Ljava/lang/Object;
    .restart local v7    # "_tmp":Ljava/lang/Object;
    :cond_f
    move-object/from16 v37, v7

    .end local v7    # "_tmp":Ljava/lang/Object;
    .restart local v37    # "_tmp":Ljava/lang/Object;
    if-nez v36, :cond_10

    .line 1352
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v7, v21

    .line 1353
    .local v7, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1355
    new-instance v18, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x0

    move-object/from16 v21, v7

    move-object/from16 v24, v8

    .end local v7    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v8    # "_policy":Ljava/lang/String;
    .local v21, "_newChildExpectedPolicies":Ljava/util/Set;
    .local v24, "_policy":Ljava/lang/String;
    invoke-direct/range {v18 .. v25}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move/from16 v7, v20

    move-object/from16 v8, v22

    .end local v20    # "i":I
    .end local v22    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "i":I
    .local v8, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v19, v18

    .line 1359
    .local v19, "_newChild":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v18, v9

    move-object/from16 v9, v19

    .end local v19    # "_newChild":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "_newChild":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v18, "_policySetIter":Ljava/util/Iterator;
    invoke-virtual {v8, v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1360
    move-object/from16 v22, v8

    .end local v8    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    aget-object v8, v5, v7

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1350
    .end local v7    # "i":I
    .end local v18    # "_policySetIter":Ljava/util/Iterator;
    .end local v21    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v24    # "_policy":Ljava/lang/String;
    .local v8, "_policy":Ljava/lang/String;
    .local v9, "_policySetIter":Ljava/util/Iterator;
    .restart local v20    # "i":I
    :cond_10
    move-object/from16 v24, v8

    move-object/from16 v18, v9

    move/from16 v7, v20

    .line 1362
    .end local v8    # "_policy":Ljava/lang/String;
    .end local v9    # "_policySetIter":Ljava/util/Iterator;
    .end local v20    # "i":I
    .end local v35    # "_childrenIter":Ljava/util/Iterator;
    .end local v36    # "_found":Z
    .end local v37    # "_tmp":Ljava/lang/Object;
    .restart local v7    # "i":I
    .restart local v18    # "_policySetIter":Ljava/util/Iterator;
    :goto_10
    move/from16 v20, v7

    move-object/from16 v9, v18

    move/from16 v8, v33

    move-object/from16 v7, v34

    goto/16 :goto_d

    .line 1327
    .end local v18    # "_policySetIter":Ljava/util/Iterator;
    .local v7, "_tmp":Ljava/lang/Object;
    .restart local v9    # "_policySetIter":Ljava/util/Iterator;
    .restart local v20    # "i":I
    :cond_11
    move-object/from16 v37, v7

    move-object/from16 v18, v9

    move/from16 v7, v20

    .end local v9    # "_policySetIter":Ljava/util/Iterator;
    .end local v20    # "i":I
    .local v7, "i":I
    .restart local v18    # "_policySetIter":Ljava/util/Iterator;
    .restart local v37    # "_tmp":Ljava/lang/Object;
    move/from16 v8, v33

    move-object/from16 v7, v34

    goto/16 :goto_d

    .line 1318
    .end local v18    # "_policySetIter":Ljava/util/Iterator;
    .end local v33    # "k":I
    .end local v34    # "_nodes":Ljava/util/List;
    .end local v37    # "_tmp":Ljava/lang/Object;
    .local v7, "_nodes":Ljava/util/List;
    .local v8, "k":I
    .restart local v9    # "_policySetIter":Ljava/util/Iterator;
    .restart local v20    # "i":I
    :cond_12
    move-object/from16 v34, v7

    move/from16 v33, v8

    move-object/from16 v18, v9

    move/from16 v7, v20

    .line 1313
    .end local v8    # "k":I
    .end local v9    # "_policySetIter":Ljava/util/Iterator;
    .end local v20    # "i":I
    .end local v22    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "i":I
    .restart local v33    # "k":I
    .restart local v34    # "_nodes":Ljava/util/List;
    add-int/lit8 v8, v33, 0x1

    move-object/from16 v9, v32

    move-object/from16 v7, v34

    .end local v33    # "k":I
    .restart local v8    # "k":I
    goto/16 :goto_c

    .end local v34    # "_nodes":Ljava/util/List;
    .local v7, "_nodes":Ljava/util/List;
    .restart local v20    # "i":I
    :cond_13
    move-object/from16 v34, v7

    move/from16 v33, v8

    move/from16 v7, v20

    .line 1364
    .end local v8    # "k":I
    .end local v20    # "i":I
    .local v7, "i":I
    .restart local v34    # "_nodes":Ljava/util/List;
    goto :goto_11

    .line 1306
    .end local v7    # "i":I
    .end local v23    # "_apq":Ljava/util/Set;
    .end local v31    # "e":Ljava/util/Enumeration;
    .end local v32    # "pols":Ljava/util/Set;
    .end local v34    # "_nodes":Ljava/util/List;
    .local v8, "e":Ljava/util/Enumeration;
    .local v9, "pols":Ljava/util/Set;
    .restart local v20    # "i":I
    :catch_5
    move-exception v0

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v7, v20

    .line 1308
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v20    # "i":I
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v7    # "i":I
    .restart local v31    # "e":Ljava/util/Enumeration;
    .restart local v32    # "pols":Ljava/util/Set;
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v0, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_4

    .line 1299
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v7    # "i":I
    .end local v31    # "e":Ljava/util/Enumeration;
    .end local v32    # "pols":Ljava/util/Set;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "i":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_14
    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move/from16 v7, v20

    .line 1366
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v10    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v20    # "i":I
    .restart local v7    # "i":I
    .restart local v31    # "e":Ljava/util/Enumeration;
    .restart local v32    # "pols":Ljava/util/Set;
    goto/16 :goto_b

    .line 1295
    .end local v31    # "e":Ljava/util/Enumeration;
    .end local v32    # "pols":Ljava/util/Set;
    .restart local v8    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_15
    move-object/from16 v31, v8

    move-object/from16 v32, v9

    .line 1372
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .restart local v31    # "e":Ljava/util/Enumeration;
    .restart local v32    # "pols":Ljava/util/Set;
    :goto_11
    move-object/from16 v18, v31

    .end local v31    # "e":Ljava/util/Enumeration;
    .local v18, "e":Ljava/util/Enumeration;
    :goto_12
    add-int/lit8 v8, v7, -0x1

    .local v8, "j":I
    :goto_13
    if-ltz v8, :cond_18

    .line 1374
    :try_start_e
    aget-object v9, v5, v8
    :try_end_e
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_7

    .line 1376
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    move/from16 v19, v8

    move v8, v10

    move-object/from16 v10, v26

    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "k":I
    .local v10, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v19, "j":I
    :goto_14
    move/from16 v20, v11

    .end local v11    # "policyMapping":I
    .local v20, "policyMapping":I
    :try_start_f
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_17

    .line 1378
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1379
    .local v11, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v21

    if-nez v21, :cond_16

    .line 1381
    invoke-static {v10, v5, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v21
    :try_end_f
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_6

    move-object/from16 v10, v21

    .line 1383
    if-nez v10, :cond_16

    .line 1385
    move-object/from16 v26, v10

    goto :goto_15

    .line 1376
    .end local v11    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_16
    add-int/lit8 v8, v8, 0x1

    move/from16 v11, v20

    goto :goto_14

    :cond_17
    move-object/from16 v26, v10

    .line 1372
    .end local v8    # "k":I
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_15
    add-int/lit8 v8, v19, -0x1

    move/from16 v11, v20

    .end local v19    # "j":I
    .local v8, "j":I
    goto :goto_13

    .line 1842
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v14    # "index":I
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v32    # "pols":Ljava/util/Set;
    .restart local v10    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_6
    move-exception v0

    move-object v6, v10

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .line 1372
    .end local v10    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .local v11, "policyMapping":I
    .restart local v14    # "index":I
    .restart local v18    # "e":Ljava/util/Enumeration;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v32    # "pols":Ljava/util/Set;
    :cond_18
    move/from16 v19, v8

    move/from16 v20, v11

    .line 1394
    .end local v8    # "j":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    :try_start_10
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1396
    .local v8, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v8, :cond_19

    .line 1398
    sget-object v9, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1400
    .local v9, "critical":Z
    aget-object v10, v5, v7

    .line 1401
    .local v10, "nodes":Ljava/util/List;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_16
    move-object/from16 v19, v8

    .end local v8    # "criticalExtensionOids":Ljava/util/Set;
    .local v19, "criticalExtensionOids":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    if-ge v11, v8, :cond_1b

    .line 1403
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1404
    .local v8, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V
    :try_end_10
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_1f

    .line 1401
    .end local v8    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v19

    goto :goto_16

    .line 1396
    .end local v9    # "critical":Z
    .end local v10    # "nodes":Ljava/util/List;
    .end local v11    # "j":I
    .end local v19    # "criticalExtensionOids":Ljava/util/Set;
    .local v8, "criticalExtensionOids":Ljava/util/Set;
    :cond_19
    move-object/from16 v19, v8

    .end local v8    # "criticalExtensionOids":Ljava/util/Set;
    .restart local v19    # "criticalExtensionOids":Ljava/util/Set;
    goto :goto_17

    .line 1842
    .end local v7    # "i":I
    .end local v14    # "index":I
    .end local v18    # "e":Ljava/util/Enumeration;
    .end local v19    # "criticalExtensionOids":Ljava/util/Set;
    .end local v20    # "policyMapping":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v32    # "pols":Ljava/util/Set;
    .local v11, "policyMapping":I
    :catch_7
    move-exception v0

    move/from16 v20, v11

    move-object/from16 v6, v26

    move/from16 v10, v28

    move/from16 v8, v29

    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    goto/16 :goto_3c

    .line 1230
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .restart local v7    # "i":I
    .local v8, "explicitPolicy":I
    .local v9, "policySet":Ljava/util/Set;
    .local v10, "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v14    # "index":I
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1a
    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move/from16 v20, v11

    .line 1412
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_1b
    :goto_17
    if-nez v27, :cond_1c

    .line 1414
    const/4 v8, 0x0

    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_18

    .line 1412
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1c
    move-object/from16 v8, v26

    .line 1419
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_18
    if-gtz v29, :cond_1e

    if-eqz v8, :cond_1d

    goto :goto_19

    .line 1421
    :cond_1d
    :try_start_11
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "CertPathReviewer.noValidPolicyTree"

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2
    :try_end_11
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_8

    .line 1842
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v7    # "i":I
    .end local v14    # "index":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_8
    move-exception v0

    move-object v6, v8

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .line 1429
    .restart local v7    # "i":I
    .restart local v14    # "index":I
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1e
    :goto_19
    :try_start_12
    iget v9, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I
    :try_end_12
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_12 .. :try_end_12} :catch_17

    if-eq v7, v9, :cond_31

    .line 1437
    :try_start_13
    sget-object v9, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v13, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9
    :try_end_13
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_13} :catch_15
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_13 .. :try_end_13} :catch_17

    .line 1443
    .local v9, "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 1445
    if-eqz v9, :cond_22

    .line 1447
    :try_start_14
    move-object v10, v9

    check-cast v10, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_14
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_14 .. :try_end_14} :catch_a

    .line 1448
    .local v10, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_1a
    move-object/from16 v18, v8

    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v18, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :try_start_15
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v11, v8, :cond_21

    .line 1450
    invoke-virtual {v10, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1451
    .local v8, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v19, v9

    const/4 v9, 0x0

    .end local v9    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v19, "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1452
    .local v21, "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v22

    check-cast v22, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1453
    .local v22, "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_15
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_15 .. :try_end_15} :catch_9

    move-object/from16 v23, v8

    .end local v8    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v23, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    const-string v8, "CertPathReviewer.invalidPolicyMapping"

    if-nez v9, :cond_20

    .line 1458
    :try_start_16
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1f

    .line 1448
    .end local v21    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v22    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    goto :goto_1a

    .line 1460
    .restart local v21    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v22    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1f
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1461
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2

    .line 1455
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_20
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v0, v4, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2
    :try_end_16
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_16 .. :try_end_16} :catch_9

    .line 1448
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v21    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v22    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v9    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_21
    move-object/from16 v19, v9

    .end local v9    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    goto :goto_1b

    .line 1842
    .end local v7    # "i":I
    .end local v10    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "j":I
    .end local v14    # "index":I
    .end local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_9
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_a
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v6, v18

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_3c

    .line 1445
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v7    # "i":I
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v9    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v14    # "index":I
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_22
    move-object/from16 v18, v8

    move-object/from16 v19, v9

    .line 1468
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    :goto_1b
    if-eqz v19, :cond_28

    .line 1470
    :try_start_17
    move-object/from16 v8, v19

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1471
    .local v8, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 1472
    .local v9, "m_idp":Ljava/util/Map;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V
    :try_end_17
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_17 .. :try_end_17} :catch_e

    .line 1474
    .local v10, "s_idp":Ljava/util/Set;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_1c
    move-object/from16 v21, v12

    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .local v21, "acceptablePolicies":Ljava/util/Set;
    :try_start_18
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-ge v11, v12, :cond_24

    .line 1476
    invoke-virtual {v8, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1477
    .local v12, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v22, v8

    const/4 v8, 0x0

    .end local v8    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v22, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v12, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1478
    .local v8, "id_p":Ljava/lang/String;
    move/from16 v23, v11

    const/4 v11, 0x1

    .end local v11    # "j":I
    .local v23, "j":I
    invoke-virtual {v12, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v24

    check-cast v24, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v24 .. v24}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v11

    .line 1481
    .local v11, "sd_p":Ljava/lang/String;
    invoke-interface {v9, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_23

    .line 1483
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v25, v24

    .line 1484
    .local v25, "tmp":Ljava/util/Set;
    move-object/from16 v24, v12

    move-object/from16 v12, v25

    .end local v25    # "tmp":Ljava/util/Set;
    .local v12, "tmp":Ljava/util/Set;
    .local v24, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1485
    invoke-interface {v9, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-interface {v10, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 1490
    .end local v24    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v12, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_23
    move-object/from16 v24, v12

    .end local v12    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v24    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Set;

    .line 1491
    .local v12, "tmp":Ljava/util/Set;
    invoke-interface {v12, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1474
    .end local v8    # "id_p":Ljava/lang/String;
    .end local v11    # "sd_p":Ljava/lang/String;
    .end local v12    # "tmp":Ljava/util/Set;
    .end local v24    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_1d
    add-int/lit8 v11, v23, 0x1

    move-object/from16 v12, v21

    move-object/from16 v8, v22

    .end local v23    # "j":I
    .local v11, "j":I
    goto :goto_1c

    .end local v22    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_24
    move-object/from16 v22, v8

    move/from16 v23, v11

    .line 1495
    .end local v8    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "j":I
    .restart local v22    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8
    :try_end_18
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_18 .. :try_end_18} :catch_16

    move-object/from16 v11, v18

    .line 1496
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "it_idp":Ljava/util/Iterator;
    .local v11, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_1e
    :try_start_19
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_27

    .line 1498
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;
    :try_end_19
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_19 .. :try_end_19} :catch_d

    .line 1503
    .local v12, "id_p":Ljava/lang/String;
    if-lez v20, :cond_25

    .line 1507
    :try_start_1a
    invoke-static {v7, v5, v12, v9, v13}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_1a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1a .. :try_end_1a} :catch_c
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1a .. :try_end_1a} :catch_d

    .line 1520
    goto :goto_1f

    .line 1515
    :catch_b
    move-exception v0

    .line 1518
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_1b
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v0, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v11    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4

    .line 1509
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v11    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_c
    move-exception v0

    .line 1512
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v6, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1513
    .local v6, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v6, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v11    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2

    .line 1526
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v6    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v11    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_25
    if-gtz v20, :cond_26

    .line 1528
    invoke-static {v7, v5, v12, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v18
    :try_end_1b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1b .. :try_end_1b} :catch_d

    move-object/from16 v11, v18

    .line 1531
    .end local v12    # "id_p":Ljava/lang/String;
    :cond_26
    :goto_1f
    goto :goto_1e

    .line 1496
    :cond_27
    move-object v6, v11

    goto :goto_20

    .line 1842
    .end local v7    # "i":I
    .end local v8    # "it_idp":Ljava/util/Iterator;
    .end local v9    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .end local v14    # "index":I
    .end local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v22    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_d
    move-exception v0

    move-object v6, v11

    move/from16 v11, v20

    move-object/from16 v12, v21

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .end local v11    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .local v12, "acceptablePolicies":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_e
    move-exception v0

    move-object/from16 v21, v12

    move-object/from16 v6, v18

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    goto/16 :goto_3c

    .line 1468
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v7    # "i":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v21, v12

    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    move-object/from16 v6, v18

    .line 1538
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_20
    :try_start_1c
    invoke-static {v13}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v8
    :try_end_1c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1c .. :try_end_1c} :catch_14

    if-nez v8, :cond_2c

    .line 1542
    if-eqz v29, :cond_29

    .line 1544
    add-int/lit8 v8, v29, -0x1

    .end local v29    # "explicitPolicy":I
    .local v8, "explicitPolicy":I
    goto :goto_21

    .line 1542
    .end local v8    # "explicitPolicy":I
    .restart local v29    # "explicitPolicy":I
    :cond_29
    move/from16 v8, v29

    .line 1548
    .end local v29    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    :goto_21
    if-eqz v20, :cond_2a

    .line 1550
    add-int/lit8 v11, v20, -0x1

    .end local v20    # "policyMapping":I
    .local v11, "policyMapping":I
    goto :goto_22

    .line 1548
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    :cond_2a
    move/from16 v11, v20

    .line 1554
    .end local v20    # "policyMapping":I
    .restart local v11    # "policyMapping":I
    :goto_22
    if-eqz v28, :cond_2b

    .line 1556
    add-int/lit8 v10, v28, -0x1

    .end local v28    # "inhibitAnyPolicy":I
    .local v10, "inhibitAnyPolicy":I
    goto :goto_23

    .line 1554
    .end local v10    # "inhibitAnyPolicy":I
    .restart local v28    # "inhibitAnyPolicy":I
    :cond_2b
    move/from16 v10, v28

    goto :goto_23

    .line 1538
    .end local v8    # "explicitPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    .restart local v29    # "explicitPolicy":I
    :cond_2c
    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    .line 1567
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    :goto_23
    :try_start_1d
    sget-object v9, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v13, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1568
    .local v9, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v9, :cond_2f

    .line 1570
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v12

    .line 1572
    .local v12, "policyConstraints":Ljava/util/Enumeration;
    :goto_24
    invoke-interface {v12}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 1574
    invoke-interface {v12}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-object/from16 v20, v18

    .line 1577
    .local v20, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v18
    :try_end_1d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1d .. :try_end_1d} :catch_12
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1d .. :try_end_1d} :catch_11

    packed-switch v18, :pswitch_data_0

    move-object/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v6, v20

    .end local v7    # "i":I
    .end local v20    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .local v6, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v22, "i":I
    goto :goto_25

    .line 1587
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "i":I
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v7    # "i":I
    .restart local v20    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_0
    move-object/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v6, v20

    const/4 v7, 0x0

    .end local v7    # "i":I
    .end local v20    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .local v6, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "i":I
    :try_start_1e
    invoke-static {v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7

    .line 1588
    .local v7, "tmpInt":I
    if-ge v7, v11, :cond_2d

    .line 1590
    move v11, v7

    goto :goto_25

    .line 1580
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "i":I
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "i":I
    .restart local v20    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_1
    move-object/from16 v18, v6

    move/from16 v22, v7

    move-object/from16 v6, v20

    .end local v7    # "i":I
    .end local v20    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .local v6, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "i":I
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7
    :try_end_1e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1e .. :try_end_1e} :catch_f
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1e .. :try_end_1e} :catch_13

    .line 1581
    .local v7, "tmpInt":I
    if-ge v7, v8, :cond_2d

    .line 1583
    move v8, v7

    goto :goto_25

    .line 1597
    .end local v6    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v7    # "tmpInt":I
    .end local v9    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v12    # "policyConstraints":Ljava/util/Enumeration;
    :catch_f
    move-exception v0

    goto :goto_27

    .line 1594
    .restart local v9    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "policyConstraints":Ljava/util/Enumeration;
    :cond_2d
    :goto_25
    move-object/from16 v6, v18

    move/from16 v7, v22

    goto :goto_24

    .line 1572
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "i":I
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "i":I
    :cond_2e
    move-object/from16 v18, v6

    move/from16 v22, v7

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "i":I
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "i":I
    goto :goto_26

    .line 1568
    .end local v12    # "policyConstraints":Ljava/util/Enumeration;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v7    # "i":I
    :cond_2f
    move-object/from16 v18, v6

    move/from16 v22, v7

    .line 1601
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "i":I
    .end local v9    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "i":I
    :goto_26
    nop

    .line 1609
    :try_start_1f
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v13, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 1611
    .local v6, "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v6, :cond_30

    .line 1613
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v4
    :try_end_1f
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1f .. :try_end_1f} :catch_13

    .line 1615
    .local v4, "_inhibitAnyPolicy":I
    if-ge v4, v10, :cond_30

    .line 1617
    move v10, v4

    .line 1625
    .end local v4    # "_inhibitAnyPolicy":I
    .end local v6    # "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_30
    move-object/from16 v6, v18

    goto/16 :goto_28

    .line 1621
    :catch_10
    move-exception v0

    .line 1623
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_20
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "CertPathReviewer.policyInhibitExtError"

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4

    .line 1842
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .end local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v22    # "i":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_11
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v12, v21

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_3c

    .line 1597
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v7    # "i":I
    .restart local v14    # "index":I
    .restart local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_12
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v22, v7

    .line 1599
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "i":I
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "i":I
    :goto_27
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v4, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_20
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_20 .. :try_end_20} :catch_13

    .line 1842
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .end local v19    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v22    # "i":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_13
    move-exception v0

    move-object/from16 v6, v18

    move-object/from16 v12, v21

    goto/16 :goto_3c

    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v20, "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    :catch_14
    move-exception v0

    move-object/from16 v18, v6

    move/from16 v11, v20

    move-object/from16 v12, v21

    move/from16 v10, v28

    move/from16 v8, v29

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_3c

    .line 1439
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v7    # "i":I
    .local v8, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "acceptablePolicies":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_15
    move-exception v0

    move/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v12

    .line 1441
    .end local v7    # "i":I
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "i":I
    :try_start_21
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "CertPathReviewer.policyMapExtError"

    invoke-direct {v2, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v0, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_21
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_21 .. :try_end_21} :catch_16

    .line 1842
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .end local v22    # "i":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v20    # "policyMapping":I
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_16
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v11, v20

    move-object/from16 v12, v21

    move/from16 v10, v28

    move/from16 v8, v29

    goto/16 :goto_3c

    .line 1429
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v7    # "i":I
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_31
    move/from16 v22, v7

    move-object/from16 v18, v8

    move-object/from16 v21, v12

    .end local v7    # "i":I
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "i":I
    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    move-object/from16 v6, v18

    .line 1209
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .end local v27    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    :goto_28
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v12, v21

    move-object/from16 v9, v30

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1842
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v14    # "index":I
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v22    # "i":I
    .local v8, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    :catch_17
    move-exception v0

    move-object/from16 v18, v8

    move-object/from16 v21, v12

    move-object/from16 v6, v18

    move/from16 v11, v20

    move/from16 v10, v28

    move/from16 v8, v29

    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "acceptablePolicies":Ljava/util/Set;
    goto/16 :goto_3c

    .line 1225
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20    # "policyMapping":I
    .end local v21    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .restart local v7    # "i":I
    .local v8, "explicitPolicy":I
    .local v9, "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_18
    move-exception v0

    move/from16 v22, v7

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move/from16 v20, v11

    .line 1227
    .end local v7    # "i":I
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v20    # "policyMapping":I
    .restart local v22    # "i":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :try_start_22
    new-instance v6, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v6, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    .local v6, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v6, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2

    .line 1842
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v6    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .end local v22    # "i":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_19
    move-exception v0

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move/from16 v20, v11

    move-object/from16 v6, v26

    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    goto/16 :goto_3c

    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    :catch_1a
    move-exception v0

    move-object/from16 v26, v6

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move/from16 v20, v11

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    goto/16 :goto_3c

    .line 1638
    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v14    # "index":I
    :cond_32
    move-object/from16 v26, v6

    move/from16 v29, v8

    move-object/from16 v30, v9

    move/from16 v28, v10

    move/from16 v20, v11

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .restart local v20    # "policyMapping":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    invoke-static {v13}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_22
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_22 .. :try_end_22} :catch_1f

    if-nez v2, :cond_33

    if-lez v29, :cond_33

    .line 1640
    add-int/lit8 v8, v29, -0x1

    .end local v29    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    goto :goto_29

    .line 1649
    .end local v8    # "explicitPolicy":I
    .restart local v29    # "explicitPolicy":I
    :cond_33
    move/from16 v8, v29

    .end local v29    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    :goto_29
    :try_start_23
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1650
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v2, :cond_35

    .line 1652
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 1654
    .local v6, "policyConstraints":Ljava/util/Enumeration;
    :goto_2a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_35

    .line 1656
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1657
    .local v7, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v9

    packed-switch v9, :pswitch_data_1

    const/4 v9, 0x0

    goto :goto_2b

    .line 1660
    :pswitch_2
    const/4 v9, 0x0

    invoke-static {v7, v9}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v10
    :try_end_23
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_23 .. :try_end_23} :catch_1e
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_23 .. :try_end_23} :catch_1d

    .line 1661
    .local v10, "tmpInt":I
    if-nez v10, :cond_34

    .line 1663
    const/4 v8, 0x0

    .line 1667
    .end local v7    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v10    # "tmpInt":I
    :cond_34
    :goto_2b
    goto :goto_2a

    .line 1674
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "policyConstraints":Ljava/util/Enumeration;
    :cond_35
    nop

    .line 1686
    const-string v2, "CertPathReviewer.explicitPolicy"

    if-nez v26, :cond_37

    .line 1688
    :try_start_24
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1693
    const/4 v0, 0x0

    move-object/from16 v6, v26

    .local v0, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1690
    .end local v0    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_36
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1691
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2

    .line 1695
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_37
    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 1697
    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_40

    .line 1699
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3f

    .line 1706
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1708
    .local v2, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_2c
    array-length v7, v5

    if-ge v6, v7, :cond_3a

    .line 1710
    aget-object v7, v5, v6

    .line 1712
    .local v7, "_nodeDepth":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_39

    .line 1714
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1716
    .local v10, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_38

    .line 1718
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 1719
    .local v11, "_iter":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_38

    .line 1721
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2e

    .line 1712
    .end local v10    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "_iter":Ljava/util/Iterator;
    :cond_38
    add-int/lit8 v9, v9, 0x1

    goto :goto_2d

    .line 1708
    .end local v7    # "_nodeDepth":Ljava/util/List;
    .end local v9    # "k":I
    :cond_39
    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    .line 1727
    .end local v6    # "j":I
    :cond_3a
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1728
    .local v0, "_vpnsIter":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 1730
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1731
    .local v6, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    .line 1733
    .local v7, "_validPolicy":Ljava/lang/String;
    invoke-interface {v12, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1737
    .end local v6    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "_validPolicy":Ljava/lang/String;
    goto :goto_2f

    .line 1738
    :cond_3b
    if-eqz v26, :cond_40

    .line 1740
    iget v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/16 v16, 0x1

    add-int/lit8 v6, v6, -0x1

    .local v6, "j":I
    :goto_30
    if-ltz v6, :cond_3e

    .line 1742
    aget-object v7, v5, v6
    :try_end_24
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_24 .. :try_end_24} :catch_1d

    .line 1744
    .local v7, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    move-object/from16 v10, v26

    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v9    # "k":I
    .local v10, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_31
    :try_start_25
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_3d

    .line 1746
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1747
    .local v11, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v15

    if-nez v15, :cond_3c

    .line 1749
    invoke-static {v10, v5, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v15
    :try_end_25
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_25 .. :try_end_25} :catch_1b

    move-object v10, v15

    .line 1744
    .end local v11    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_3c
    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    .line 1740
    .end local v7    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_3d
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v26, v10

    goto :goto_30

    .line 1842
    .end local v0    # "_vpnsIter":Ljava/util/Iterator;
    .end local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v6    # "j":I
    .end local v14    # "index":I
    :catch_1b
    move-exception v0

    move-object v6, v10

    move/from16 v11, v20

    move/from16 v10, v28

    goto/16 :goto_3c

    .line 1740
    .end local v10    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v0    # "_vpnsIter":Ljava/util/Iterator;
    .restart local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .restart local v6    # "j":I
    .restart local v14    # "index":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_3e
    move-object/from16 v6, v26

    goto :goto_32

    .line 1701
    .end local v0    # "_vpnsIter":Ljava/util/Iterator;
    .end local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v6    # "j":I
    :cond_3f
    :try_start_26
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v0, v4, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v2

    .line 1757
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :cond_40
    move-object/from16 v6, v26

    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_32
    move-object v0, v6

    .local v0, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1771
    .end local v0    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_41
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1773
    .restart local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_33
    array-length v7, v5

    if-ge v6, v7, :cond_46

    .line 1775
    aget-object v7, v5, v6

    .line 1777
    .local v7, "_nodeDepth":Ljava/util/List;
    const/4 v9, 0x0

    .restart local v9    # "k":I
    :goto_34
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_45

    .line 1779
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1781
    .local v10, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_44

    .line 1783
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v11

    .line 1784
    .local v11, "_iter":Ljava/util/Iterator;
    :goto_35
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_43

    .line 1786
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1787
    .local v15, "_c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move/from16 v17, v6

    .end local v6    # "j":I
    .local v17, "j":I
    invoke-virtual {v15}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_42

    .line 1789
    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1791
    .end local v15    # "_c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_42
    move/from16 v6, v17

    goto :goto_35

    .line 1784
    .end local v17    # "j":I
    .restart local v6    # "j":I
    :cond_43
    move/from16 v17, v6

    .end local v6    # "j":I
    .restart local v17    # "j":I
    goto :goto_36

    .line 1781
    .end local v11    # "_iter":Ljava/util/Iterator;
    .end local v17    # "j":I
    .restart local v6    # "j":I
    :cond_44
    move/from16 v17, v6

    .line 1777
    .end local v6    # "j":I
    .end local v10    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "j":I
    :goto_36
    add-int/lit8 v9, v9, 0x1

    move/from16 v6, v17

    goto :goto_34

    .end local v17    # "j":I
    .restart local v6    # "j":I
    :cond_45
    move/from16 v17, v6

    .line 1773
    .end local v6    # "j":I
    .end local v7    # "_nodeDepth":Ljava/util/List;
    .end local v9    # "k":I
    .restart local v17    # "j":I
    add-int/lit8 v6, v17, 0x1

    .end local v17    # "j":I
    .restart local v6    # "j":I
    goto :goto_33

    :cond_46
    move/from16 v17, v6

    .line 1799
    .end local v6    # "j":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_26
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_26 .. :try_end_26} :catch_1d

    move-object/from16 v6, v26

    .line 1800
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "_vpnsIter":Ljava/util/Iterator;
    .local v6, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_37
    :try_start_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 1802
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1803
    .local v7, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    .line 1805
    .local v9, "_validPolicy":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_47

    .line 1807
    invoke-static {v6, v5, v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v10

    move-object v6, v10

    .line 1809
    .end local v7    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_validPolicy":Ljava/lang/String;
    :cond_47
    goto :goto_37

    .line 1814
    :cond_48
    if-eqz v6, :cond_4b

    .line 1816
    iget v7, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    const/16 v16, 0x1

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_38
    if-ltz v7, :cond_4b

    .line 1818
    aget-object v9, v5, v7

    .line 1820
    .local v9, "nodes":Ljava/util/List;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_39
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_4a

    .line 1822
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1823
    .local v11, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v15

    if-nez v15, :cond_49

    .line 1825
    invoke-static {v6, v5, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v15

    move-object v6, v15

    .line 1820
    .end local v11    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_49
    add-int/lit8 v10, v10, 0x1

    goto :goto_39

    .line 1816
    .end local v9    # "nodes":Ljava/util/List;
    .end local v10    # "k":I
    :cond_4a
    add-int/lit8 v7, v7, -0x1

    goto :goto_38

    .line 1831
    .end local v7    # "j":I
    :cond_4b
    move-object v7, v6

    move-object v0, v7

    .line 1834
    .end local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .local v0, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_3a
    if-gtz v8, :cond_4d

    if-eqz v0, :cond_4c

    goto :goto_3b

    .line 1836
    :cond_4c
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.invalidPolicy"

    invoke-direct {v2, v4, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    .local v2, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v4, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v28    # "inhibitAnyPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_27
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_27 .. :try_end_27} :catch_1c

    .line 1842
    .end local v0    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_1c
    move-exception v0

    move/from16 v11, v20

    move/from16 v10, v28

    goto :goto_3c

    .line 1840
    .restart local v0    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v14    # "index":I
    :cond_4d
    :goto_3b
    nop

    .line 1846
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move/from16 v11, v20

    move/from16 v10, v28

    goto :goto_3d

    .line 1842
    .end local v0    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v14    # "index":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :catch_1d
    move-exception v0

    move/from16 v11, v20

    move-object/from16 v6, v26

    move/from16 v10, v28

    goto :goto_3c

    .line 1670
    .restart local v14    # "index":I
    :catch_1e
    move-exception v0

    .line 1672
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_28
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v4, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1673
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v6, v14}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_28
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_28 .. :try_end_28} :catch_1d

    .line 1842
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "index":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policyMapping":I
    .restart local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v28    # "inhibitAnyPolicy":I
    .restart local v29    # "explicitPolicy":I
    .restart local v30    # "policySet":Ljava/util/Set;
    :catch_1f
    move-exception v0

    move/from16 v11, v20

    move-object/from16 v6, v26

    move/from16 v10, v28

    move/from16 v8, v29

    goto :goto_3c

    .end local v20    # "policyMapping":I
    .end local v26    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28    # "inhibitAnyPolicy":I
    .end local v29    # "explicitPolicy":I
    .end local v30    # "policySet":Ljava/util/Set;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .local v9, "policySet":Ljava/util/Set;
    .local v10, "inhibitAnyPolicy":I
    .local v11, "policyMapping":I
    :catch_20
    move-exception v0

    move-object/from16 v30, v9

    .line 1844
    .end local v9    # "policySet":Ljava/util/Set;
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .restart local v30    # "policySet":Ljava/util/Set;
    :goto_3c
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1845
    const/4 v2, 0x0

    move-object v0, v2

    .line 1847
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_3d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private checkSignatures()V
    .locals 27

    .line 728
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 729
    .local v2, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v3, 0x0

    .line 733
    .local v3, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v4, Lorg/bouncycastle/i18n/filter/TrustedInput;

    iget-object v5, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v4, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lorg/bouncycastle/i18n/filter/TrustedInput;

    iget-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-direct {v5, v6}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x2

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v6, v11

    const/4 v12, 0x1

    aput-object v5, v6, v12

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.certPathValidDate"

    invoke-direct {v0, v13, v4, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 735
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 741
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 743
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    move-object v5, v0

    .line 744
    .local v5, "trustColl":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v12, :cond_0

    .line 747
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "CertPathReviewer.conflictingTrustAnchors"

    .line 749
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 750
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v7, v9, v11

    aput-object v8, v9, v12

    invoke-direct {v0, v13, v6, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 752
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto/16 :goto_2

    .line 753
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 755
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "CertPathReviewer.noTrustAnchorFound"

    new-instance v7, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 757
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    iget-object v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 758
    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    aput-object v7, v9, v11

    aput-object v8, v9, v12

    invoke-direct {v0, v13, v6, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 760
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_2

    .line 764
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object v2, v0

    .line 765
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 767
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    .local v0, "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_0

    .line 771
    .end local v0    # "trustPublicKey":Ljava/security/PublicKey;
    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 776
    .local v6, "trustPublicKey":Ljava/security/PublicKey;
    :goto_0
    :try_start_1
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 777
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {v4, v6, v0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :goto_1
    goto :goto_2

    .line 784
    :catch_0
    move-exception v0

    goto :goto_2

    .line 779
    :catch_1
    move-exception v0

    .line 781
    .local v0, "e":Ljava/security/SignatureException;
    :try_start_2
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.trustButInvalidCert"

    invoke-direct {v7, v13, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/security/SignatureException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_1

    .line 794
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "trustColl":Ljava/util/Collection;
    .end local v6    # "trustPublicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v0

    .line 796
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 798
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v6, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v6, v0}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v7, v10, [Ljava/lang/Object;

    aput-object v5, v7, v11

    aput-object v6, v7, v12

    const-string v5, "CertPathReviewer.unknown"

    invoke-direct {v4, v13, v5, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 799
    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    move-object v14, v2

    goto :goto_3

    .line 790
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_2
    move-exception v0

    .line 792
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 800
    .end local v0    # "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    :goto_2
    move-object v14, v2

    .line 802
    .end local v2    # "trust":Ljava/security/cert/TrustAnchor;
    .local v14, "trust":Ljava/security/cert/TrustAnchor;
    :goto_3
    const/4 v15, 0x5

    if-eqz v14, :cond_6

    .line 805
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 808
    .local v2, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_3

    .line 810
    :try_start_3
    invoke-static {v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v0, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_4

    .line 814
    .end local v0    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v0

    .line 822
    :goto_4
    goto :goto_5

    .line 817
    :catch_3
    move-exception v0

    .line 819
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 820
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v5, v6, v11

    const-string v5, "CertPathReviewer.trustDNInvalid"

    invoke-direct {v4, v13, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 825
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_5
    if-eqz v2, :cond_5

    .line 827
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 828
    .local v0, "ku":[Z
    if-eqz v0, :cond_5

    array-length v4, v0

    if-le v4, v15, :cond_4

    aget-boolean v4, v0, v15

    if-nez v4, :cond_5

    .line 830
    :cond_4
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "CertPathReviewer.trustKeyUsage"

    invoke-direct {v4, v13, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 838
    .end local v0    # "ku":[Z
    .end local v2    # "sign":Ljava/security/cert/X509Certificate;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_5
    move-object/from16 v16, v3

    goto :goto_6

    .line 802
    :cond_6
    move-object/from16 v16, v3

    .line 838
    .end local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v16, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    :goto_6
    const/4 v0, 0x0

    .line 839
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    move-object/from16 v2, v16

    .line 841
    .local v2, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .line 843
    .local v3, "sign":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 844
    .local v4, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v5, 0x0

    .line 845
    .local v5, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 847
    .local v6, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v14, :cond_8

    .line 849
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 851
    if-eqz v3, :cond_7

    .line 853
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v7, v0

    goto :goto_7

    .line 857
    :cond_7
    invoke-virtual {v14}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v7, v0

    .line 862
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    :goto_7
    :try_start_4
    invoke-static {v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    move-object v4, v0

    .line 863
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object v5, v0

    .line 864
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v0

    .line 871
    move-object v0, v7

    goto :goto_8

    .line 866
    :catch_4
    move-exception v0

    .line 868
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v9, "CertPathReviewer.trustPubKeyError"

    invoke-direct {v8, v13, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    .local v8, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 870
    const/4 v4, 0x0

    move-object v0, v7

    .line 876
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    :cond_8
    :goto_8
    const/4 v7, 0x0

    .line 879
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    iget-object v8, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v12

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move v9, v8

    move-object v6, v0

    move-object v5, v3

    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v3    # "sign":Ljava/security/cert/X509Certificate;
    .end local v4    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v5, "sign":Ljava/security/cert/X509Certificate;
    .local v6, "workingPublicKey":Ljava/security/PublicKey;
    .local v9, "index":I
    .local v17, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v18, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v19, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_9
    if-ltz v9, :cond_1c

    .line 884
    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v3, v0, v9

    .line 892
    .local v3, "i":I
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 894
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    const-string v7, "CertPathReviewer.signatureNotVerified"

    const/4 v8, 0x3

    if-eqz v6, :cond_9

    .line 898
    :try_start_5
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 899
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 898
    invoke-static {v4, v6, v0}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    .line 906
    const/16 v20, 0x0

    goto :goto_a

    .line 901
    :catch_5
    move-exception v0

    .line 903
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    const/16 v20, 0x0

    new-instance v11, Lorg/bouncycastle/i18n/ErrorBundle;

    .line 904
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v21, v8, v20

    aput-object v0, v8, v12

    aput-object v22, v8, v10

    invoke-direct {v11, v13, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    .local v11, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v11, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 906
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    .end local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    nop

    :goto_a
    const/16 v25, 0x5

    const/16 v26, 0x2

    goto/16 :goto_d

    .line 908
    :cond_9
    const/16 v20, 0x0

    invoke-static {v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 912
    :try_start_6
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v11, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 913
    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v11

    .line 912
    invoke-static {v4, v0, v11}, Lorg/bouncycastle/x509/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 914
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v11, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-direct {v0, v13, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_b

    .line 917
    :catch_6
    move-exception v0

    .line 919
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    new-instance v11, Lorg/bouncycastle/i18n/ErrorBundle;

    .line 920
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v22

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v21, v8, v20

    aput-object v0, v8, v12

    aput-object v22, v8, v10

    invoke-direct {v11, v13, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 921
    .restart local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v11, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 922
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    .end local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_b
    const/16 v25, 0x5

    const/16 v26, 0x2

    goto/16 :goto_d

    .line 926
    :cond_a
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.NoIssuerPublicKey"

    invoke-direct {v0, v13, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    sget-object v7, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v7

    .line 929
    .local v7, "akiBytes":[B
    if-eqz v7, :cond_d

    .line 931
    nop

    .line 932
    invoke-static {v7}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 931
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v11

    .line 933
    .local v11, "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v21

    .line 934
    .local v21, "issuerNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    if-eqz v21, :cond_c

    .line 936
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v22

    aget-object v22, v22, v20

    .line 937
    .local v22, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v23

    .line 938
    .local v23, "serial":Ljava/math/BigInteger;
    if-eqz v23, :cond_b

    .line 940
    const/16 v24, 0x3

    new-instance v8, Lorg/bouncycastle/i18n/LocaleString;

    const/16 v25, 0x5

    const-string v15, "missingIssuer"

    invoke-direct {v8, v13, v15}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v15, Lorg/bouncycastle/i18n/LocaleString;

    const/16 v26, 0x2

    const-string v10, "missingSerial"

    invoke-direct {v15, v13, v10}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v20

    const-string v8, " \""

    aput-object v8, v10, v12

    aput-object v22, v10, v26

    const-string v8, "\" "

    aput-object v8, v10, v24

    const/4 v8, 0x4

    aput-object v15, v10, v8

    const-string v8, " "

    aput-object v8, v10, v25

    const/4 v8, 0x6

    aput-object v23, v10, v8

    .line 942
    .local v10, "extraArgs":[Ljava/lang/Object;
    invoke-virtual {v0, v10}, Lorg/bouncycastle/i18n/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    goto :goto_c

    .line 938
    .end local v10    # "extraArgs":[Ljava/lang/Object;
    :cond_b
    const/16 v25, 0x5

    const/16 v26, 0x2

    goto :goto_c

    .line 934
    .end local v22    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v23    # "serial":Ljava/math/BigInteger;
    :cond_c
    const/16 v25, 0x5

    const/16 v26, 0x2

    goto :goto_c

    .line 929
    .end local v11    # "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v21    # "issuerNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_d
    const/16 v25, 0x5

    const/16 v26, 0x2

    .line 946
    :goto_c
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 952
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v7    # "akiBytes":[B
    :goto_d
    :try_start_7
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_7
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_e

    .line 960
    :catch_7
    move-exception v0

    .line 962
    .local v0, "cee":Ljava/security/cert/CertificateExpiredException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v8, Lorg/bouncycastle/i18n/filter/TrustedInput;

    .line 963
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v20

    const-string v8, "CertPathReviewer.certificateExpired"

    invoke-direct {v7, v13, v8, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 964
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_f

    .line 954
    .end local v0    # "cee":Ljava/security/cert/CertificateExpiredException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_8
    move-exception v0

    .line 956
    .local v0, "cnve":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v8, Lorg/bouncycastle/i18n/filter/TrustedInput;

    .line 957
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v8, v10, v20

    const-string v8, "CertPathReviewer.certificateNotYetValid"

    invoke-direct {v7, v13, v8, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    .restart local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 965
    .end local v0    # "cnve":Ljava/security/cert/CertificateNotYetValidException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_e
    nop

    .line 968
    :goto_f
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 971
    const/4 v7, 0x0

    .line 974
    .local v7, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_8
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 975
    .local v0, "crl_dp":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_e

    .line 977
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v8
    :try_end_8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_9

    move-object v7, v8

    .line 984
    .end local v0    # "crl_dp":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_e
    move-object v10, v7

    goto :goto_10

    .line 980
    :catch_9
    move-exception v0

    .line 982
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.crlDistPtExtError"

    invoke-direct {v8, v13, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    .restart local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v10, v7

    .line 987
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_10
    const/4 v7, 0x0

    .line 990
    .local v7, "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_start_9
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 991
    .local v0, "auth_info_acc":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_f

    .line 993
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v8
    :try_end_9
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_a

    move-object v7, v8

    .line 1000
    .end local v0    # "auth_info_acc":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_f
    move-object v11, v7

    goto :goto_11

    .line 996
    :catch_a
    move-exception v0

    .line 998
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v11, "CertPathReviewer.crlAuthInfoAccError"

    invoke-direct {v8, v13, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .restart local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    move-object v11, v7

    .line 1002
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .end local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .local v11, "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :goto_11
    invoke-virtual {v1, v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v7

    .line 1003
    .local v7, "crlDistPointUrls":Ljava/util/Vector;
    invoke-virtual {v1, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v8

    .line 1008
    .local v8, "ocspUrls":Ljava/util/Vector;
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1009
    .local v0, "urlIt":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1011
    new-instance v15, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v12, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    .line 1012
    move-object/from16 v22, v0

    .end local v0    # "urlIt":Ljava/util/Iterator;
    .local v22, "urlIt":Ljava/util/Iterator;
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v12, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v23, v2

    const/4 v2, 0x1

    .end local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v23, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    new-array v0, v2, [Ljava/lang/Object;

    aput-object v12, v0, v20

    const-string v2, "CertPathReviewer.crlDistPoint"

    invoke-direct {v15, v13, v2, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1013
    .local v15, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v15, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1014
    .end local v15    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, v22

    move-object/from16 v2, v23

    const/4 v12, 0x1

    goto :goto_12

    .line 1017
    .end local v22    # "urlIt":Ljava/util/Iterator;
    .end local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v0    # "urlIt":Ljava/util/Iterator;
    .restart local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :cond_10
    move-object/from16 v22, v0

    move-object/from16 v23, v2

    .end local v0    # "urlIt":Ljava/util/Iterator;
    .end local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v22    # "urlIt":Ljava/util/Iterator;
    .restart local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1018
    .end local v22    # "urlIt":Ljava/util/Iterator;
    .local v12, "urlIt":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1020
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v2, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    .line 1021
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    invoke-direct {v2, v15}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v22, v2

    const/4 v15, 0x1

    new-array v2, v15, [Ljava/lang/Object;

    aput-object v22, v2, v20

    const-string v15, "CertPathReviewer.ocspLocation"

    invoke-direct {v0, v13, v15, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1023
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_13

    .line 1029
    :cond_11
    :try_start_a
    iget-object v2, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_d

    move v15, v3

    move-object v3, v4

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .local v15, "i":I
    :try_start_b
    iget-object v4, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;
    :try_end_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_c

    move-object/from16 v22, v10

    move v10, v15

    move-object/from16 v15, v23

    .end local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v10, "i":I
    .local v15, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v22, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_c
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_b

    .line 1034
    goto :goto_15

    .line 1031
    :catch_b
    move-exception v0

    goto :goto_14

    .end local v22    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v15, "i":I
    .restart local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :catch_c
    move-exception v0

    move-object/from16 v22, v10

    move v10, v15

    move-object/from16 v15, v23

    .end local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v10, "i":I
    .local v15, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v22    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    goto :goto_14

    .end local v15    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v3, "i":I
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :catch_d
    move-exception v0

    move-object/from16 v22, v10

    move-object/from16 v15, v23

    move v10, v3

    move-object v3, v4

    .line 1033
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v23    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .local v10, "i":I
    .restart local v15    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .restart local v22    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_14
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_15

    .line 968
    .end local v0    # "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .end local v7    # "crlDistPointUrls":Ljava/util/Vector;
    .end local v8    # "ocspUrls":Ljava/util/Vector;
    .end local v10    # "i":I
    .end local v11    # "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .end local v12    # "urlIt":Ljava/util/Iterator;
    .end local v15    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v22    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v3, "i":I
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_12
    move-object v15, v2

    move v10, v3

    move-object v3, v4

    .line 1038
    .end local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .restart local v10    # "i":I
    .restart local v15    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :goto_15
    if-eqz v15, :cond_13

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1040
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    .line 1041
    invoke-virtual {v15}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1042
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v20

    const/16 v21, 0x1

    aput-object v4, v7, v21

    const-string v2, "CertPathReviewer.certWrongIssuer"

    invoke-direct {v0, v13, v2, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1043
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_16

    .line 1038
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_13
    const/4 v8, 0x2

    .line 1049
    :goto_16
    iget v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-eq v10, v0, :cond_1a

    .line 1052
    const-string v0, "CertPathReviewer.noCACert"

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_15

    .line 1054
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v2, v13, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1055
    .local v2, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_17

    .line 1052
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_14
    const/4 v4, 0x1

    .line 1063
    :cond_15
    :goto_17
    :try_start_d
    sget-object v2, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2

    .line 1065
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v2, :cond_16

    .line 1067
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v7

    if-nez v7, :cond_17

    .line 1069
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v7, v13, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1071
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_18

    .line 1075
    :cond_16
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.noBasicConstraints"

    invoke-direct {v0, v13, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_d .. :try_end_d} :catch_e

    .line 1083
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_17
    :goto_18
    goto :goto_19

    .line 1079
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_e
    move-exception v0

    .line 1081
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.errorProcesingBC"

    invoke-direct {v2, v13, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    .local v2, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1087
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_19
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 1089
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_19

    array-length v2, v0

    const/4 v11, 0x5

    if-le v2, v11, :cond_18

    aget-boolean v2, v0, v11

    if-nez v2, :cond_1b

    .line 1091
    :cond_18
    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.noCertSign"

    invoke-direct {v2, v13, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    .restart local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_1a

    .line 1089
    .end local v2    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_19
    const/4 v11, 0x5

    goto :goto_1a

    .line 1049
    .end local v0    # "keyUsage":[Z
    :cond_1a
    const/4 v4, 0x1

    const/4 v11, 0x5

    .line 1098
    :cond_1b
    :goto_1a
    move-object v5, v3

    .line 1102
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 1108
    .end local v15    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v2, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :try_start_e
    iget-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v0, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    .line 1109
    invoke-static {v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1110
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1111
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_e
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e .. :try_end_e} :catch_f

    .line 1120
    .end local v19    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v0, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    move-object/from16 v19, v0

    goto :goto_1b

    .line 1113
    .end local v0    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v19    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    :catch_f
    move-exception v0

    .line 1115
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v12, "CertPathReviewer.pubKeyError"

    invoke-direct {v7, v13, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    .restart local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1117
    const/4 v12, 0x0

    .line 1118
    .end local v17    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v12, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v15, 0x0

    .line 1119
    .end local v18    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v15, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/16 v17, 0x0

    move-object/from16 v18, v15

    move-object/from16 v19, v17

    move-object/from16 v17, v12

    .line 879
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v12    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v15    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v17    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v18    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_1b
    add-int/lit8 v9, v9, -0x1

    move-object v7, v3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x5

    goto/16 :goto_9

    .line 1124
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "index":I
    .end local v10    # "i":I
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    :cond_1c
    iput-object v14, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1125
    iput-object v6, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 1126
    return-void
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 9
    .param p1, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "location"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2467
    const/4 v0, 0x0

    .line 2470
    .local v0, "result":Ljava/security/cert/X509CRL;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2472
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2474
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 2475
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2477
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2478
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 2479
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 2481
    const-string v5, "X.509"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 2482
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CRL;

    move-object v0, v6

    .line 2483
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    nop

    .line 2497
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_1
    nop

    .line 2498
    return-object v0

    .line 2486
    .restart local v3    # "url":Ljava/net/URL;
    .restart local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_2
    new-instance v5, Ljava/lang/Exception;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .end local v0    # "result":Ljava/security/cert/X509CRL;
    .end local p1    # "location":Ljava/lang/String;
    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2490
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "result":Ljava/security/cert/X509CRL;
    .restart local p1    # "location":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2492
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v5, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v5, p1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    .line 2495
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v2

    aput-object v6, v8, v1

    const/4 v1, 0x2

    aput-object v3, v8, v1

    const/4 v1, 0x3

    aput-object v7, v8, v1

    const-string v1, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v2, "CertPathReviewer.loadCrlDistPointError"

    invoke-direct {v4, v1, v2, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2496
    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v1, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v1
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 21
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cert",
            "index"
        }
    .end annotation

    .line 1954
    move-object/from16 v1, p0

    move/from16 v2, p2

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const/4 v0, 0x0

    .line 1956
    .local v0, "unknownStatement":Z
    :try_start_0
    sget-object v5, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v6, p1

    :try_start_1
    invoke-static {v6, v5}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1957
    .local v5, "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 1959
    invoke-virtual {v5, v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v8

    .line 1960
    .local v8, "stmt":Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1963
    new-instance v9, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v9, v3, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1964
    .local v9, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1965
    .end local v9    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1966
    :cond_0
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1970
    :cond_1
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1973
    new-instance v9, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.QcSSCD"

    invoke-direct {v9, v3, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1974
    .restart local v9    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v9, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1975
    .end local v9    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v17, v5

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1976
    :cond_2
    sget-object v9, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1979
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v9

    .line 1980
    .local v9, "limit":Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v12

    .line 1981
    .local v12, "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v15
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v5

    const/16 v16, 0x0

    .end local v5    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v17, "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_2
    invoke-virtual {v15}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v4

    move-object/from16 v18, v12

    const/4 v15, 0x1

    .end local v12    # "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .local v18, "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    invoke-static {v11, v12, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v13, v13, v4

    .line 1983
    .local v13, "value":D
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v4

    const/4 v5, 0x3

    if-eqz v4, :cond_3

    .line 1985
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v11, "CertPathReviewer.QcLimitValueAlpha"

    .line 1986
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v12

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v12

    const/16 v19, 0x1

    new-instance v15, Lorg/bouncycastle/i18n/filter/TrustedInput;

    const/16 v20, 0x2

    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v15, v10}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v12, v5, v16

    aput-object v15, v5, v19

    aput-object v9, v5, v20

    invoke-direct {v4, v3, v11, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_1

    .line 1992
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_3
    const/16 v19, 0x1

    const/16 v20, 0x2

    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "CertPathReviewer.QcLimitValueNum"

    .line 1993
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v11

    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    new-instance v12, Lorg/bouncycastle/i18n/filter/TrustedInput;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v13, v14}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v12, v15}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v11, v5, v16

    aput-object v12, v5, v19

    aput-object v9, v5, v20

    invoke-direct {v4, v3, v10, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1997
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_1
    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1998
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v9    # "limit":Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    .end local v13    # "value":D
    .end local v18    # "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    goto :goto_2

    .line 2001
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v5    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    move-object/from16 v17, v5

    const/16 v16, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x2

    .end local v5    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "CertPathReviewer.QcUnknownStatement"

    .line 2002
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    new-instance v10, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v10, v8}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v9, v11, v16

    aput-object v10, v11, v19

    invoke-direct {v4, v3, v5, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2003
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2004
    const/4 v0, 0x1

    .line 1957
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v8    # "stmt":Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    :goto_2
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v5, v17

    goto/16 :goto_0

    .line 2010
    .end local v0    # "unknownStatement":Z
    .end local v7    # "j":I
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1957
    .restart local v0    # "unknownStatement":Z
    .restart local v5    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v7    # "j":I
    :cond_5
    move-object/from16 v17, v5

    .line 2008
    .end local v5    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v7    # "j":I
    .restart local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    xor-int/lit8 v3, v0, 0x1

    return v3

    .line 2010
    .end local v0    # "unknownStatement":Z
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v6, p1

    :goto_3
    const/16 v16, 0x0

    .line 2012
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_4
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2013
    .restart local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v4, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2016
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    return v16
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    return-void
.end method

.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "index"
        }
    .end annotation

    .line 381
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    return-void

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/i18n/ErrorBundle;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "msg",
            "index"
        }
    .end annotation

    .line 367
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 371
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    return-void

    .line 369
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 30
    .param p1, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "sign"    # Ljava/security/cert/X509Certificate;
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "crlDistPointUrls"    # Ljava/util/Vector;
    .param p7, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "cert",
            "validDate",
            "sign",
            "workingPublicKey",
            "crlDistPointUrls",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2066
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    const-string v7, "CertPathReviewer.distrPtExtError"

    const-string v8, "CertPathReviewer.crlExtractionError"

    const-string v9, "CertPathReviewer.crlIssuerException"

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    new-instance v0, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    move-object v11, v0

    .line 2070
    .local v11, "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_0
    invoke-static {v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_16

    .line 2076
    nop

    .line 2078
    invoke-virtual {v11, v3}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 2083
    :try_start_1
    invoke-static {v11, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v0

    .line 2084
    .local v0, "crl_coll":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 2086
    .local v16, "crl_iter":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v17
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v17, :cond_1

    .line 2089
    const/16 v17, 0x0

    :try_start_2
    new-instance v15, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v15}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    invoke-static {v15, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v15

    .line 2090
    .end local v0    # "crl_coll":Ljava/util/Collection;
    .local v15, "crl_coll":Ljava/util/Collection;
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2091
    .local v0, "it":Ljava/util/Iterator;
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v18

    .line 2092
    .local v19, "nonMatchingCrlNames":Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v18
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_5

    if-eqz v18, :cond_0

    .line 2094
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/security/cert/X509CRL;
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v20, 0x1

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v14
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v13, v19

    const/16 v18, 0x2

    .end local v19    # "nonMatchingCrlNames":Ljava/util/List;
    .local v13, "nonMatchingCrlNames":Ljava/util/List;
    :try_start_5
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v19, v13

    goto :goto_0

    .line 2105
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v13    # "nonMatchingCrlNames":Ljava/util/List;
    .end local v15    # "crl_coll":Ljava/util/Collection;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v18, 0x2

    goto :goto_1

    :catch_2
    move-exception v0

    const/16 v18, 0x2

    const/16 v20, 0x1

    :goto_1
    move-object/from16 v22, v11

    goto :goto_4

    .line 2096
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v15    # "crl_coll":Ljava/util/Collection;
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    .restart local v19    # "nonMatchingCrlNames":Ljava/util/List;
    :cond_0
    move-object/from16 v13, v19

    const/16 v18, 0x2

    const/16 v20, 0x1

    .end local v19    # "nonMatchingCrlNames":Ljava/util/List;
    .restart local v13    # "nonMatchingCrlNames":Ljava/util/List;
    :try_start_6
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    .line 2097
    .local v14, "numbOfCrls":I
    new-instance v12, Lorg/bouncycastle/i18n/ErrorBundle;

    move-object/from16 v21, v0

    .end local v0    # "it":Ljava/util/Iterator;
    .local v21, "it":Ljava/util/Iterator;
    const-string v0, "CertPathReviewer.noCrlInCertstore"
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    move-object/from16 v22, v11

    .end local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .local v22, "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_7
    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .line 2099
    move/from16 v23, v14

    .end local v14    # "numbOfCrls":I
    .local v23, "numbOfCrls":I
    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v14

    invoke-direct {v11, v14}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v14, v13}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    .line 2101
    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v25, v11

    move-object/from16 v26, v13

    const/4 v11, 0x3

    .end local v13    # "nonMatchingCrlNames":Ljava/util/List;
    .local v26, "nonMatchingCrlNames":Ljava/util/List;
    new-array v13, v11, [Ljava/lang/Object;

    aput-object v25, v13, v17

    aput-object v14, v13, v20

    aput-object v24, v13, v18

    invoke-direct {v12, v10, v0, v13}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2102
    .local v12, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v12, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 2105
    .end local v12    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v15    # "crl_coll":Ljava/util/Collection;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v21    # "it":Ljava/util/Iterator;
    .end local v23    # "numbOfCrls":I
    .end local v26    # "nonMatchingCrlNames":Ljava/util/List;
    :catch_3
    move-exception v0

    goto :goto_4

    .end local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .restart local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :catch_4
    move-exception v0

    move-object/from16 v22, v11

    goto :goto_4

    :catch_5
    move-exception v0

    move-object/from16 v22, v11

    goto :goto_3

    .line 2086
    .local v0, "crl_coll":Ljava/util/Collection;
    .restart local v16    # "crl_iter":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v22, v11

    const/16 v17, 0x0

    const/16 v18, 0x2

    const/16 v20, 0x1

    .line 2111
    .end local v0    # "crl_coll":Ljava/util/Collection;
    .end local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .restart local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :goto_2
    goto :goto_5

    .line 2105
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .restart local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :catch_6
    move-exception v0

    move-object/from16 v22, v11

    const/16 v17, 0x0

    :goto_3
    const/16 v18, 0x2

    const/16 v20, 0x1

    .line 2107
    .end local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :goto_4
    new-instance v11, Lorg/bouncycastle/i18n/ErrorBundle;

    .line 2108
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v13

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v0

    const/4 v15, 0x3

    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v16, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v12, v0, v17

    aput-object v13, v0, v20

    aput-object v14, v0, v18

    invoke-direct {v11, v10, v8, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2109
    .local v11, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object/from16 v16, v0

    .line 2113
    .end local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .local v16, "crl_iter":Ljava/util/Iterator;
    :goto_5
    const/4 v0, 0x0

    .line 2114
    .local v0, "validCrlFound":Z
    const/4 v11, 0x0

    .line 2115
    .local v11, "crl":Ljava/security/cert/X509CRL;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2117
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Ljava/security/cert/X509CRL;

    .line 2119
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v12

    .line 2120
    .local v12, "thisUpdate":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v13

    .line 2121
    .local v13, "nextUpdate":Ljava/util/Date;
    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-direct {v14, v12}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v15, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-direct {v15, v13}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    move/from16 v23, v0

    move-object/from16 v21, v11

    const/4 v11, 0x2

    .end local v0    # "validCrlFound":Z
    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .local v21, "crl":Ljava/security/cert/X509CRL;
    .local v23, "validCrlFound":Z
    new-array v0, v11, [Ljava/lang/Object;

    aput-object v14, v0, v17

    aput-object v15, v0, v20

    .line 2123
    .local v0, "arguments":[Ljava/lang/Object;
    if-eqz v13, :cond_3

    invoke-virtual {v4, v13}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_7

    .line 2131
    :cond_2
    new-instance v11, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "CertPathReviewer.localInvalidCRL"

    invoke-direct {v11, v10, v14, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    .local v11, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2133
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v12    # "thisUpdate":Ljava/util/Date;
    .end local v13    # "nextUpdate":Ljava/util/Date;
    move-object/from16 v11, v21

    move/from16 v0, v23

    const/16 v18, 0x2

    goto :goto_6

    .line 2125
    .restart local v0    # "arguments":[Ljava/lang/Object;
    .restart local v12    # "thisUpdate":Ljava/util/Date;
    .restart local v13    # "nextUpdate":Ljava/util/Date;
    :cond_3
    :goto_7
    const/4 v11, 0x1

    .line 2126
    .end local v23    # "validCrlFound":Z
    .local v11, "validCrlFound":Z
    new-instance v14, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v15, "CertPathReviewer.localValidCRL"

    invoke-direct {v14, v10, v15, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    .local v14, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v14, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2128
    move v0, v11

    move-object/from16 v11, v21

    goto :goto_8

    .line 2115
    .end local v12    # "thisUpdate":Ljava/util/Date;
    .end local v13    # "nextUpdate":Ljava/util/Date;
    .end local v14    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "validCrlFound":Z
    .local v11, "crl":Ljava/security/cert/X509CRL;
    :cond_4
    move/from16 v23, v0

    .line 2137
    :goto_8
    if-nez v0, :cond_a

    .line 2139
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    .line 2141
    .local v12, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v13, 0x0

    .line 2142
    .local v13, "onlineCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move-object v15, v13

    move v13, v0

    .line 2143
    .end local v0    # "validCrlFound":Z
    .local v13, "validCrlFound":Z
    .local v14, "urlIt":Ljava/util/Iterator;
    .local v15, "onlineCRL":Ljava/security/cert/X509CRL;
    :goto_9
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2147
    :try_start_8
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2148
    .local v0, "location":Ljava/lang/String;
    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v21

    move-object/from16 v15, v21

    .line 2149
    if-eqz v15, :cond_8

    .line 2151
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v21
    :try_end_8
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_c

    move-object/from16 v23, v21

    .line 2154
    .local v23, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v21, v11

    move-object/from16 v11, v23

    .end local v23    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v11, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    :try_start_9
    invoke-virtual {v12, v11}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_5

    .line 2156
    move-object/from16 v23, v11

    .end local v11    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v23    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v11, Lorg/bouncycastle/i18n/ErrorBundle;
    :try_end_9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_b

    move-object/from16 v24, v12

    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v24, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    :try_start_a
    const-string v12, "CertPathReviewer.onlineCRLWrongCA"
    :try_end_a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_8

    move/from16 v25, v13

    .end local v13    # "validCrlFound":Z
    .local v25, "validCrlFound":Z
    :try_start_b
    new-instance v13, Lorg/bouncycastle/i18n/filter/UntrustedInput;
    :try_end_b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_7

    .line 2157
    move-object/from16 v26, v14

    .end local v14    # "urlIt":Ljava/util/Iterator;
    .local v26, "urlIt":Ljava/util/Iterator;
    :try_start_c
    invoke-virtual/range {v23 .. v23}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v27, v13

    invoke-virtual/range {v24 .. v24}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v13, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v13, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v28, v13

    move-object/from16 v29, v14

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v27, v14, v17

    aput-object v29, v14, v20

    const/16 v18, 0x2

    aput-object v28, v14, v18

    invoke-direct {v11, v10, v12, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2159
    .local v11, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2160
    goto/16 :goto_c

    .line 2183
    .end local v0    # "location":Ljava/lang/String;
    .end local v11    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v23    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :catch_7
    move-exception v0

    move-object/from16 v26, v14

    move/from16 v13, v25

    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    goto/16 :goto_d

    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .restart local v13    # "validCrlFound":Z
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :catch_8
    move-exception v0

    move/from16 v25, v13

    move-object/from16 v26, v14

    .end local v13    # "validCrlFound":Z
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v25    # "validCrlFound":Z
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    goto/16 :goto_d

    .line 2163
    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .restart local v0    # "location":Ljava/lang/String;
    .local v11, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v13    # "validCrlFound":Z
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :cond_5
    move-object/from16 v23, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    .end local v11    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "validCrlFound":Z
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v23    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v25    # "validCrlFound":Z
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v11

    .line 2164
    .local v11, "thisUpdate":Ljava/util/Date;
    invoke-virtual {v15}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    .line 2165
    .local v12, "nextUpdate":Ljava/util/Date;
    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-direct {v13, v11}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-direct {v14, v12}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v27, v11

    .end local v11    # "thisUpdate":Ljava/util/Date;
    .local v27, "thisUpdate":Ljava/util/Date;
    new-instance v11, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;

    invoke-direct {v11, v0}, Lorg/bouncycastle/i18n/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v19, v0

    move-object/from16 v28, v11

    const/4 v11, 0x3

    .end local v0    # "location":Ljava/lang/String;
    .local v19, "location":Ljava/lang/String;
    new-array v0, v11, [Ljava/lang/Object;

    aput-object v13, v0, v17

    aput-object v14, v0, v20

    const/16 v18, 0x2

    aput-object v28, v0, v18

    .line 2168
    .local v0, "arguments":[Ljava/lang/Object;
    if-eqz v12, :cond_7

    invoke-virtual {v4, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_a

    .line 2178
    :cond_6
    new-instance v13, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v14, "CertPathReviewer.onlineInvalidCRL"

    invoke-direct {v13, v10, v14, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2180
    .local v13, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v13, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_b

    .line 2170
    .end local v13    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_7
    :goto_a
    const/4 v13, 0x1

    .line 2171
    .end local v25    # "validCrlFound":Z
    .local v13, "validCrlFound":Z
    :try_start_d
    new-instance v14, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v11, "CertPathReviewer.onlineValidCRL"

    invoke-direct {v14, v10, v11, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2173
    .local v14, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v14, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_9

    .line 2174
    move-object v11, v15

    .line 2175
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .local v11, "crl":Ljava/security/cert/X509CRL;
    move/from16 v25, v13

    goto :goto_e

    .line 2183
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .end local v12    # "nextUpdate":Ljava/util/Date;
    .end local v14    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v19    # "location":Ljava/lang/String;
    .end local v23    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v27    # "thisUpdate":Ljava/util/Date;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    :catch_9
    move-exception v0

    goto :goto_d

    .end local v13    # "validCrlFound":Z
    .restart local v25    # "validCrlFound":Z
    :catch_a
    move-exception v0

    move/from16 v13, v25

    goto :goto_d

    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .local v12, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v13    # "validCrlFound":Z
    .local v14, "urlIt":Ljava/util/Iterator;
    :catch_b
    move-exception v0

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "validCrlFound":Z
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v25    # "validCrlFound":Z
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    goto :goto_d

    .line 2149
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .local v0, "location":Ljava/lang/String;
    .restart local v11    # "crl":Ljava/security/cert/X509CRL;
    .restart local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v13    # "validCrlFound":Z
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :cond_8
    move-object/from16 v19, v0

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    .line 2186
    .end local v0    # "location":Ljava/lang/String;
    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "validCrlFound":Z
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    .restart local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v25    # "validCrlFound":Z
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    :goto_b
    nop

    .line 2143
    :goto_c
    move-object/from16 v11, v21

    move-object/from16 v12, v24

    move/from16 v13, v25

    move-object/from16 v14, v26

    goto/16 :goto_9

    .line 2183
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .restart local v11    # "crl":Ljava/security/cert/X509CRL;
    .restart local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v13    # "validCrlFound":Z
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :catch_c
    move-exception v0

    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    .line 2185
    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .local v0, "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    .restart local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    :goto_d
    invoke-virtual {v0}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v11

    invoke-virtual {v1, v11, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2186
    .end local v0    # "cpre":Lorg/bouncycastle/x509/CertPathReviewerException;
    move-object/from16 v11, v21

    move-object/from16 v12, v24

    move-object/from16 v14, v26

    goto/16 :goto_9

    .line 2143
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .restart local v11    # "crl":Ljava/security/cert/X509CRL;
    .restart local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v14    # "urlIt":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v21, v11

    move-object/from16 v24, v12

    move/from16 v25, v13

    move-object/from16 v26, v14

    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .end local v12    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "validCrlFound":Z
    .end local v14    # "urlIt":Ljava/util/Iterator;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    .restart local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v25    # "validCrlFound":Z
    .restart local v26    # "urlIt":Ljava/util/Iterator;
    goto :goto_e

    .line 2137
    .end local v15    # "onlineCRL":Ljava/security/cert/X509CRL;
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .end local v24    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "validCrlFound":Z
    .end local v26    # "urlIt":Ljava/util/Iterator;
    .local v0, "validCrlFound":Z
    .restart local v11    # "crl":Ljava/security/cert/X509CRL;
    :cond_a
    move-object/from16 v21, v11

    .end local v11    # "crl":Ljava/security/cert/X509CRL;
    .restart local v21    # "crl":Ljava/security/cert/X509CRL;
    move/from16 v25, v0

    .line 2192
    .end local v0    # "validCrlFound":Z
    .end local v21    # "crl":Ljava/security/cert/X509CRL;
    .restart local v11    # "crl":Ljava/security/cert/X509CRL;
    .restart local v25    # "validCrlFound":Z
    :goto_e
    if-eqz v11, :cond_1c

    .line 2194
    if-eqz p4, :cond_c

    .line 2196
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2198
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_c

    array-length v12, v0

    const/4 v13, 0x6

    if-le v12, v13, :cond_b

    aget-boolean v12, v0, v13

    if-eqz v12, :cond_b

    goto :goto_f

    .line 2200
    :cond_b
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.noCrlSigningPermited"

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2201
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v7}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v8

    .line 2205
    .end local v0    # "keyUsage":[Z
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_c
    :goto_f
    if-eqz v5, :cond_1b

    .line 2209
    :try_start_e
    const-string v0, "BC"

    invoke-virtual {v11, v5, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_15

    .line 2215
    nop

    .line 2223
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v12

    .line 2224
    .local v12, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-eqz v12, :cond_10

    .line 2226
    const/4 v13, 0x0

    .line 2228
    .local v13, "reason":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2233
    :try_start_f
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0
    :try_end_f
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_f .. :try_end_f} :catch_d

    .line 2239
    .local v0, "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    nop

    .line 2240
    if-eqz v0, :cond_d

    .line 2242
    sget-object v14, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v15

    aget-object v13, v14, v15

    goto :goto_10

    .line 2235
    .end local v0    # "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    :catch_d
    move-exception v0

    .line 2237
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.crlReasonExtError"

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    .restart local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v7, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v8

    .line 2246
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_d
    :goto_10
    if-nez v13, :cond_e

    .line 2248
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/4 v14, 0x7

    aget-object v13, v0, v14

    .line 2252
    :cond_e
    new-instance v0, Lorg/bouncycastle/i18n/LocaleString;

    invoke-direct {v0, v10, v13}, Lorg/bouncycastle/i18n/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2254
    .local v0, "ls":Lorg/bouncycastle/i18n/LocaleString;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 2262
    new-instance v14, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v15, Lorg/bouncycastle/i18n/filter/TrustedInput;

    .line 2263
    move-object/from16 v19, v0

    .end local v0    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    .local v19, "ls":Lorg/bouncycastle/i18n/LocaleString;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-direct {v15, v0}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v0, v5, [Ljava/lang/Object;

    aput-object v15, v0, v17

    aput-object v19, v0, v20

    const-string v5, "CertPathReviewer.revokedAfterValidation"

    invoke-direct {v14, v10, v5, v0}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2264
    .local v14, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v14, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2266
    .end local v13    # "reason":Ljava/lang/String;
    .end local v14    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v19    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    goto :goto_11

    .line 2256
    .restart local v0    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    .restart local v13    # "reason":Ljava/lang/String;
    :cond_f
    move-object/from16 v19, v0

    .end local v0    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    .restart local v19    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v5, Lorg/bouncycastle/i18n/filter/TrustedInput;

    .line 2257
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v17

    aput-object v19, v7, v20

    const-string v5, "CertPathReviewer.certRevoked"

    invoke-direct {v0, v10, v5, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2258
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v5, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v5

    .line 2269
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v13    # "reason":Ljava/lang/String;
    .end local v19    # "ls":Lorg/bouncycastle/i18n/LocaleString;
    :cond_10
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "CertPathReviewer.notRevoked"

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2276
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_11
    invoke-virtual {v11}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    .line 2277
    .local v5, "nextUpdate":Ljava/util/Date;
    if-eqz v5, :cond_11

    invoke-virtual {v4, v5}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2279
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    new-instance v13, Lorg/bouncycastle/i18n/filter/TrustedInput;

    invoke-direct {v13, v5}, Lorg/bouncycastle/i18n/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v13, v14, v17

    const-string v13, "CertPathReviewer.crlUpdateAvailable"

    invoke-direct {v0, v10, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2281
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2290
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_11
    :try_start_10
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_10
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_14

    move-object v13, v0

    .line 2296
    .local v13, "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2300
    :try_start_11
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_11
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_11 .. :try_end_11} :catch_13

    move-object v14, v0

    .line 2306
    .local v14, "dci":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2308
    if-eqz v14, :cond_15

    .line 2310
    new-instance v0, Lorg/bouncycastle/x509/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;-><init>()V

    move-object v15, v0

    .line 2314
    .local v15, "baseSelect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :try_start_12
    invoke-static {v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_11

    .line 2320
    nop

    .line 2322
    move-object v0, v14

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 2325
    :try_start_13
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v11, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v17, 0x1

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/bouncycastle/x509/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_13
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_13 .. :try_end_13} :catch_10

    .line 2331
    nop

    .line 2333
    const/4 v9, 0x0

    .line 2337
    .local v9, "foundBase":Z
    :try_start_14
    invoke-static {v15, v2}, Lorg/bouncycastle/x509/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/x509/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_14
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_14 .. :try_end_14} :catch_f

    move-object v8, v0

    .line 2343
    .local v8, "it":Ljava/util/Iterator;
    nop

    .line 2344
    :goto_12
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2346
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 2351
    .local v1, "base":Ljava/security/cert/X509CRL;
    :try_start_15
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_15
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_15 .. :try_end_15} :catch_e

    .line 2357
    .local v0, "baseIdp":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2359
    invoke-static {v13, v0}, Lorg/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 2361
    const/4 v9, 0x1

    .line 2362
    goto :goto_13

    .line 2364
    .end local v0    # "baseIdp":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "base":Ljava/security/cert/X509CRL;
    :cond_12
    move-object/from16 v1, p0

    goto :goto_12

    .line 2353
    .restart local v1    # "base":Ljava/security/cert/X509CRL;
    :catch_e
    move-exception v0

    .line 2355
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    move-object/from16 v17, v1

    .end local v1    # "base":Ljava/security/cert/X509CRL;
    .local v17, "base":Ljava/security/cert/X509CRL;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v1, v10, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2356
    .local v1, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v7

    .line 2366
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v17    # "base":Ljava/security/cert/X509CRL;
    :cond_13
    :goto_13
    if-eqz v9, :cond_14

    goto :goto_14

    .line 2368
    :cond_14
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "CertPathReviewer.noBaseCRL"

    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2369
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v1

    .line 2339
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v8    # "it":Ljava/util/Iterator;
    :catch_f
    move-exception v0

    .line 2341
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v1, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2342
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v7

    .line 2327
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v9    # "foundBase":Z
    :catch_10
    move-exception v0

    .line 2329
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.crlNbrExtError"

    invoke-direct {v1, v10, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2330
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v7

    .line 2316
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_11
    move-exception v0

    .line 2318
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v1, v10, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2319
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v7

    .line 2373
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v15    # "baseSelect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :cond_15
    :goto_14
    if-eqz v13, :cond_1c

    .line 2375
    invoke-static {v13}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    .line 2376
    .local v1, "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v7, 0x0

    .line 2379
    .local v7, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_16
    sget-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0
    :try_end_16
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_16 .. :try_end_16} :catch_12

    .line 2385
    .end local v7    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v0, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2387
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v7

    if-eqz v7, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v7

    if-nez v7, :cond_16

    goto :goto_15

    .line 2389
    :cond_16
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.crlOnlyUserCert"

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    .local v7, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v7}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v8

    .line 2393
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_17
    :goto_15
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v7

    if-eqz v7, :cond_19

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v7

    if-eqz v7, :cond_18

    goto :goto_16

    .line 2395
    :cond_18
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.crlOnlyCaCert"

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    .restart local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v7}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v8

    .line 2399
    .end local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_19
    :goto_16
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v7

    if-nez v7, :cond_1a

    goto :goto_17

    .line 2401
    :cond_1a
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "CertPathReviewer.crlOnlyAttrCert"

    invoke-direct {v7, v10, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2402
    .restart local v7    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v7}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v8

    .line 2381
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v7, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_12
    move-exception v0

    .line 2383
    .local v0, "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v9, "CertPathReviewer.crlBCExtError"

    invoke-direct {v8, v10, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2384
    .local v8, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v9, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v9, v8, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v9

    .line 2302
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v7    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v8    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v14    # "dci":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_13
    move-exception v0

    .line 2304
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v7, "CertPathReviewer.deltaCrlExtError"

    invoke-direct {v1, v10, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2305
    .local v1, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v7

    .line 2292
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v13    # "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_14
    move-exception v0

    .line 2294
    .restart local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v1, v10, v7}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2295
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v7, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v7

    .line 2211
    .end local v0    # "ae":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v5    # "nextUpdate":Ljava/util/Date;
    .end local v12    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    :catch_15
    move-exception v0

    .line 2213
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "CertPathReviewer.crlVerifyFailed"

    invoke-direct {v1, v10, v5}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2214
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v5, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v5

    .line 2219
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_1b
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2220
    .local v0, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v1

    .line 2407
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_1c
    :goto_17
    if-eqz v25, :cond_1d

    .line 2412
    return-void

    .line 2409
    :cond_1d
    new-instance v0, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v1, "CertPathReviewer.noValidCrlFound"

    invoke-direct {v0, v10, v1}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2410
    .restart local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v1

    .line 2072
    .end local v0    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v16    # "crl_iter":Ljava/util/Iterator;
    .end local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .end local v25    # "validCrlFound":Z
    .local v11, "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    :catch_16
    move-exception v0

    move-object/from16 v22, v11

    .line 2074
    .end local v11    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    .local v0, "e":Ljava/io/IOException;
    .restart local v22    # "crlselect":Lorg/bouncycastle/x509/X509CRLStoreSelector;
    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    invoke-direct {v1, v10, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    .restart local v1    # "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v5, v1, v0}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .param p1, "paramsPKIX"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "validDate"    # Ljava/util/Date;
    .param p4, "sign"    # Ljava/security/cert/X509Certificate;
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "crlDistPointUrls"    # Ljava/util/Vector;
    .param p7, "ocspUrls"    # Ljava/util/Vector;
    .param p8, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "cert",
            "validDate",
            "sign",
            "workingPublicKey",
            "crlDistPointUrls",
            "ocspUrls",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2052
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    .line 2053
    return-void
.end method

.method protected doChecks()V
    .locals 3

    .line 390
    iget-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_2

    .line 394
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_1

    .line 397
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 398
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 400
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 402
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 403
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    .line 410
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    .line 413
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    .line 416
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    .line 419
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    .line 422
    :cond_1
    return-void

    .line 392
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 8
    .param p1, "crlDistPoints"    # Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "crlDistPoints"
        }
    .end annotation

    .line 2416
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2418
    .local v0, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_2

    .line 2420
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    .line 2421
    .local v1, "distPoints":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2423
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 2424
    .local v3, "dp_name":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 2426
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 2427
    .local v4, "generalNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 2429
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 2431
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 2432
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2427
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2421
    .end local v3    # "dp_name":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "generalNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2438
    .end local v1    # "distPoints":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 241
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    .line 250
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 276
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 277
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    .line 263
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 264
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 303
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 304
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    .line 290
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 291
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 6
    .param p1, "authInfoAccess"    # Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "authInfoAccess"
        }
    .end annotation

    .line 2443
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2445
    .local v0, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_1

    .line 2447
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v1

    .line 2448
    .local v1, "ads":[Lorg/bouncycastle/asn1/x509/AccessDescription;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2450
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2452
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 2453
    .local v3, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 2455
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2456
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2448
    .end local v3    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2462
    .end local v1    # "ads":[Lorg/bouncycastle/asn1/x509/AccessDescription;
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 315
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 325
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 326
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    .line 336
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 337
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "trustanchors"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cert",
            "trustanchors"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 2503
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    .local v0, "trustColl":Ljava/util/Collection;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2506
    .local v1, "it":Ljava/util/Iterator;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2510
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    .line 2511
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 2513
    .local v3, "ext":[B
    if-eqz v3, :cond_1

    .line 2515
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 2516
    .local v4, "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v5

    .line 2519
    .local v5, "authID":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    .line 2520
    .local v6, "serial":Ljava/math/BigInteger;
    if-eqz v6, :cond_0

    .line 2522
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 2526
    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 2527
    .local v7, "keyID":[B
    if-eqz v7, :cond_1

    .line 2529
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2538
    .end local v3    # "ext":[B
    .end local v4    # "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "authID":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v6    # "serial":Ljava/math/BigInteger;
    .end local v7    # "keyID":[B
    :cond_1
    :goto_0
    nop

    .line 2540
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2542
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 2543
    .local v3, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2545
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2547
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2550
    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2552
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 2553
    .local v4, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2554
    .local v5, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2556
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2559
    .end local v3    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v4    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "caName":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    :goto_2
    goto :goto_1

    .line 2560
    :cond_4
    return-object v0

    .line 2534
    :catch_0
    move-exception v3

    .line 2536
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v5, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v6, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2537
    .local v4, "msg":Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v5, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v5, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v5
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 6
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/PKIXParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .line 130
    iget-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_6

    .line 134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->initialized:Z

    .line 137
    if-eqz p1, :cond_5

    .line 142
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "cs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 148
    .local v0, "tas":Ljava/util/Set;
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 152
    .local v3, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v3    # "ta":Ljava/security/cert/TrustAnchor;
    goto :goto_0

    .line 155
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v2, "certs":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 159
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 161
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 166
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    const-string v3, "X.509"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 168
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    nop

    .line 174
    iput-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 175
    .end local v0    # "tas":Ljava/util/Set;
    .end local v2    # "certs":Ljava/util/List;
    goto :goto_2

    .line 170
    .restart local v0    # "tas":Ljava/util/Set;
    .restart local v2    # "certs":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 172
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "unable to rebuild certpath"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 178
    .end local v0    # "tas":Ljava/util/Set;
    .end local v2    # "certs":Ljava/util/List;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    .line 179
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 182
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    .line 183
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 189
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 197
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    .line 198
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-static {v0, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getValidityDate(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 209
    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 210
    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 211
    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 212
    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    .line 213
    return-void

    .line 185
    :cond_4
    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    new-instance v2, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v3, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v4, "CertPathReviewer.emptyCertPath"

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v0

    .line 139
    .end local v1    # "cs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidCertPath()Z
    .locals 3

    .line 347
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 348
    const/4 v0, 0x1

    .line 349
    .local v0, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 351
    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 353
    const/4 v0, 0x0

    .line 354
    goto :goto_1

    .line 349
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 357
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

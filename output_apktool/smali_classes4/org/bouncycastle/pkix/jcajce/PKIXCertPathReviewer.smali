.class public Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;
.super Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.pkix.CertPathReviewerMessages"


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

    .line 86
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    .line 87
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    .line 88
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    .line 230
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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 220
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    .line 221
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    .line 222
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

    .line 2025
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2038
    .local v0, "result":Ljava/lang/String;
    goto :goto_1

    .line 2027
    .end local v0    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2029
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 2031
    .local v1, "b":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_0

    .line 2033
    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2034
    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2031
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2037
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 2040
    .end local v1    # "b":Ljava/lang/StringBuffer;
    .local v0, "result":Ljava/lang/String;
    :goto_1
    return-object v0
.end method

.method private checkCriticalExtensions()V
    .locals 14

    .line 1855
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v0

    .line 1856
    .local v0, "pathCheckers":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1862
    .local v1, "certIter":Ljava/util/Iterator;
    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1864
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v6, v5}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1872
    :cond_0
    nop

    .line 1878
    const/4 v6, 0x0

    .line 1882
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    :try_start_1
    iget-object v7, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    .local v7, "index":I
    :goto_1
    if-ltz v7, :cond_6

    .line 1884
    iget-object v8, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    move-object v6, v8

    .line 1886
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1887
    .local v8, "criticalExtensions":Ljava/util/Set;
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1889
    goto/16 :goto_4

    .line 1892
    :cond_1
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1893
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1894
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1895
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1896
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1897
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1898
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1899
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1900
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1901
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1903
    if-nez v7, :cond_2

    .line 1905
    sget-object v9, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1908
    :cond_2
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1910
    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1912
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1916
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1917
    .local v9, "tmpIter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v10, :cond_4

    .line 1921
    :try_start_2
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v10, v6, v8}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1928
    goto :goto_2

    .line 1923
    :catch_0
    move-exception v10

    .line 1925
    .local v10, "e":Ljava/security/cert/CertPathValidatorException;
    :try_start_3
    const-string v11, "CertPathReviewer.criticalExtensionError"

    .line 1926
    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v12, v3, v5

    aput-object v10, v3, v4

    aput-object v13, v3, v2

    .line 1925
    invoke-static {v11, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1927
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-virtual {v10}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v3, v2, v4, v5, v7}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "pathCheckers":Ljava/util/List;
    .end local v1    # "certIter":Ljava/util/Iterator;
    throw v3

    .line 1930
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v10    # "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v0    # "pathCheckers":Ljava/util/List;
    .restart local v1    # "certIter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 1933
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1934
    .local v10, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 1936
    const-string v11, "CertPathReviewer.unknownCriticalExt"

    new-instance v12, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1937
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-direct {v12, v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v12, v13, v5

    .line 1936
    invoke-static {v11, v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v11

    .line 1938
    .local v11, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {p0, v11, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_3

    .line 1882
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .end local v9    # "tmpIter":Ljava/util/Iterator;
    .end local v10    # "it":Ljava/util/Iterator;
    .end local v11    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_5
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_1

    .line 1946
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v7    # "index":I
    :cond_6
    goto :goto_6

    .line 1943
    :catch_1
    move-exception v2

    goto :goto_5

    .line 1867
    :catch_2
    move-exception v6

    .line 1869
    .local v6, "cpve":Ljava/security/cert/CertPathValidatorException;
    const-string v7, "CertPathReviewer.certPathCheckerError"

    .line 1870
    invoke-virtual {v6}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v8, v3, v5

    aput-object v6, v3, v4

    aput-object v9, v3, v2

    .line 1869
    invoke-static {v7, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1871
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v6}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    .end local v0    # "pathCheckers":Ljava/util/List;
    .end local v1    # "certIter":Ljava/util/Iterator;
    throw v3
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1945
    .end local v6    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v0    # "pathCheckers":Ljava/util/List;
    .restart local v1    # "certIter":Ljava/util/Iterator;
    .local v2, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    :goto_5
    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1947
    .end local v2    # "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    :goto_6
    return-void
.end method

.method private checkNameConstraints()V
    .locals 15

    .line 423
    const/4 v0, 0x0

    .line 430
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    invoke-direct {v1}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;-><init>()V

    .line 440
    .local v1, "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :try_start_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "index":I
    :goto_0
    if-lez v2, :cond_3

    .line 442
    iget v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v4, v2

    .line 448
    .local v4, "i":I
    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;

    move-object v0, v5

    .line 452
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 454
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    .line 455
    .local v5, "principal":Ljavax/security/auth/x500/X500Principal;
    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_6

    .line 460
    .local v6, "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    const/4 v7, 0x0

    :try_start_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_6

    .line 467
    .local v8, "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 471
    :try_start_2
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_6

    .line 478
    nop

    .line 482
    :try_start_3
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    .line 489
    nop

    .line 494
    :try_start_4
    sget-object v9, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_6

    .line 500
    .local v9, "altName":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 502
    if-eqz v9, :cond_0

    .line 504
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    :try_start_5
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 506
    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v11
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_6

    .line 510
    .local v11, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_6
    invoke-virtual {v1, v11}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 511
    invoke-virtual {v1, v11}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_6

    .line 518
    nop

    .line 504
    .end local v11    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 513
    .restart local v11    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v12

    .line 515
    .local v12, "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    :try_start_7
    const-string v13, "CertPathReviewer.notPermittedEmail"

    new-instance v14, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v14, v11}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v14, v3, v7

    invoke-static {v13, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 517
    .local v3, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v13, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v3, v12, v13, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v7

    .line 496
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v9    # "altName":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "j":I
    .end local v11    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v12    # "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :catch_1
    move-exception v3

    .line 498
    .local v3, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v7, "CertPathReviewer.subjAltNameExtError"

    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 499
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v9, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v10, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v9, v7, v3, v10, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v9

    .line 484
    .end local v3    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :catch_2
    move-exception v9

    .line 486
    .local v9, "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    const-string v10, "CertPathReviewer.excludedDN"

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 487
    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v7

    .line 486
    invoke-static {v10, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 488
    .local v3, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v10, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v3, v9, v10, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v7

    .line 473
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v9    # "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :catch_3
    move-exception v9

    .line 475
    .restart local v9    # "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    const-string v10, "CertPathReviewer.notPermittedDN"

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 476
    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v11, v3, v7

    .line 475
    invoke-static {v10, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 477
    .restart local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v10, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v3, v9, v10, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v7

    .line 462
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v8    # "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9    # "cpve":Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :catch_4
    move-exception v8

    .line 464
    .local v8, "e":Ljava/io/IOException;
    const-string v9, "CertPathReviewer.ncSubjectNameError"

    new-instance v10, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v10, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v10, v3, v7

    invoke-static {v9, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 466
    .restart local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v9, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v3, v8, v9, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v7
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_6

    .line 614
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v5    # "principal":Ljavax/security/auth/x500/X500Principal;
    .end local v6    # "aIn":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :cond_0
    :try_start_8
    sget-object v5, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_6

    .line 620
    .local v5, "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 622
    if-eqz v5, :cond_2

    .line 624
    :try_start_9
    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v6

    .line 629
    .local v6, "nc":Lorg/bouncycastle/asn1/x509/NameConstraints;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v7

    .line 630
    .local v7, "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v7, :cond_1

    .line 632
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 638
    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v8

    .line 639
    .local v8, "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v8, :cond_2

    .line 641
    const/4 v9, 0x0

    .local v9, "c":I
    :goto_2
    array-length v10, v8

    if-eq v9, v10, :cond_2

    .line 643
    aget-object v10, v8, v9

    invoke-virtual {v1, v10}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    .line 641
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 440
    .end local v5    # "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "nc":Lorg/bouncycastle/asn1/x509/NameConstraints;
    .end local v7    # "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v8    # "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v9    # "c":I
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    .line 616
    :catch_5
    move-exception v3

    .line 618
    .local v3, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v5, "CertPathReviewer.ncExtError"

    invoke-static {v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v5

    .line 619
    .local v5, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v7, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v5, v3, v7, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    throw v6
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    .line 653
    .end local v3    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v4    # "i":I
    .end local v5    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v1    # "nameConstraintValidator":Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
    :cond_3
    goto :goto_3

    .line 650
    .end local v2    # "index":I
    :catch_6
    move-exception v2

    .line 652
    .local v2, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 655
    .end local v2    # "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    :goto_3
    return-void
.end method

.method private checkPathLength()V
    .locals 9

    .line 663
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    .line 664
    .local v0, "maxPathLength":I
    const/4 v1, 0x0

    .line 666
    .local v1, "totalPathLength":I
    const/4 v2, 0x0

    .line 669
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "index":I
    :goto_0
    if-lez v3, :cond_3

    .line 671
    iget v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v5, v3

    .line 673
    .local v5, "i":I
    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 677
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 679
    if-gtz v0, :cond_0

    .line 681
    const-string v6, "CertPathReviewer.pathLengthExtended"

    invoke-static {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v6

    .line 682
    .local v6, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {p0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 684
    .end local v6    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 685
    add-int/lit8 v1, v1, 0x1

    .line 693
    :cond_1
    :try_start_0
    sget-object v6, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    .local v6, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    goto :goto_1

    .line 696
    .end local v6    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v6

    .line 698
    .local v6, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v7, "CertPathReviewer.processLengthConstError"

    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 699
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {p0, v7, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 700
    const/4 v8, 0x0

    move-object v6, v8

    .line 703
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .local v6, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :goto_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 705
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v7

    .line 706
    .local v7, "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v7, :cond_2

    .line 708
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v8

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 669
    .end local v6    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v7    # "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 713
    .end local v3    # "index":I
    .end local v5    # "i":I
    :cond_3
    nop

    .line 714
    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 713
    const-string v3, "CertPathReviewer.totalPathLength"

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 716
    .local v3, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {p0, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 717
    return-void
.end method

.method private checkPolicy()V
    .locals 37

    .line 1137
    move-object/from16 v1, p0

    const-string v2, "CertPathReviewer.policyExtError"

    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v3

    .line 1147
    .local v3, "userInitialPolicySet":Ljava/util/Set;
    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    const/4 v4, 0x1

    add-int/2addr v0, v4

    new-array v5, v0, [Ljava/util/ArrayList;

    .line 1148
    .local v5, "policyNodes":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    array-length v6, v5

    if-ge v0, v6, :cond_0

    .line 1150
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v5, v0

    .line 1148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1153
    .end local v0    # "j":I
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    .line 1155
    .local v9, "policySet":Ljava/util/Set;
    const-string v0, "2.5.29.32.0"

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const-string v12, "2.5.29.32.0"

    const/4 v13, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v6 .. v13}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1160
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    const/4 v7, 0x0

    aget-object v8, v5, v7

    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v8, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v8}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1167
    const/4 v8, 0x0

    .local v8, "explicitPolicy":I
    goto :goto_1

    .line 1171
    .end local v8    # "explicitPolicy":I
    :cond_1
    iget v8, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v8, v4

    .line 1177
    .restart local v8    # "explicitPolicy":I
    :goto_1
    iget-object v10, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1179
    const/4 v10, 0x0

    .local v10, "inhibitAnyPolicy":I
    goto :goto_2

    .line 1183
    .end local v10    # "inhibitAnyPolicy":I
    :cond_2
    iget v10, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v10, v4

    .line 1189
    .restart local v10    # "inhibitAnyPolicy":I
    :goto_2
    iget-object v11, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1191
    const/4 v11, 0x0

    .local v11, "policyMapping":I
    goto :goto_3

    .line 1195
    .end local v11    # "policyMapping":I
    :cond_3
    iget v11, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/2addr v11, v4

    .line 1198
    .restart local v11    # "policyMapping":I
    :goto_3
    const/4 v12, 0x0

    .line 1204
    .local v12, "acceptablePolicies":Ljava/util/Set;
    const/4 v13, 0x0

    .line 1210
    .local v13, "cert":Ljava/security/cert/X509Certificate;
    :try_start_0
    iget-object v14, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1a

    sub-int/2addr v14, v4

    .local v14, "index":I
    :goto_4
    const-string v15, "CertPathReviewer.policyConstExtError"

    if-ltz v14, :cond_32

    .line 1213
    :try_start_1
    iget v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v4, v14

    .line 1216
    .local v4, "i":I
    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_15

    move-object v13, v7

    .line 1223
    :try_start_2
    sget-object v7, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v13, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_14
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_15

    .line 1230
    .local v7, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1231
    const-string v25, "CertPathReviewer.policyQualifierError"

    if-eqz v7, :cond_1b

    if-eqz v6, :cond_1b

    .line 1236
    :try_start_3
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v17

    .line 1237
    .local v17, "e":Ljava/util/Enumeration;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v26, v18

    .line 1239
    .local v26, "pols":Ljava/util/Set;
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v18
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v18, :cond_6

    .line 1241
    :try_start_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v18

    .line 1242
    .local v18, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v19

    move-object/from16 v20, v19

    .line 1244
    .local v20, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    move-object/from16 v27, v2

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v28, v6

    move-object/from16 v6, v26

    .end local v26    # "pols":Ljava/util/Set;
    .local v6, "pols":Ljava/util/Set;
    .local v28, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :try_start_5
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1246
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_2

    if-nez v2, :cond_4

    .line 1251
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v2
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_2

    .line 1257
    .local v2, "pq":Ljava/util/Set;
    nop

    .line 1259
    move-object/from16 v26, v7

    move-object/from16 v7, v20

    .end local v20    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v7, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v26, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_7
    invoke-static {v4, v5, v7, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v19

    .line 1261
    .local v19, "match":Z
    if-nez v19, :cond_5

    .line 1263
    invoke-static {v4, v5, v7, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_6

    .line 1253
    .end local v2    # "pq":Ljava/util/Set;
    .end local v19    # "match":Z
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v7, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v20    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v0

    move-object/from16 v26, v7

    move-object/from16 v7, v20

    .line 1255
    .end local v20    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    .local v7, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static/range {v25 .. v25}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1256
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v15, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v19, v7

    .end local v7    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v19, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v15, v2, v0, v7, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v15

    .line 1246
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v19    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .local v7, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_4
    move-object/from16 v26, v7

    move-object/from16 v19, v20

    .line 1266
    .end local v7    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v18    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v20    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5
    :goto_6
    move-object/from16 v7, v26

    move-object/from16 v2, v27

    move-object/from16 v26, v6

    move-object/from16 v6, v28

    goto :goto_5

    .line 1843
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_1
    move-exception v0

    move-object/from16 v28, v6

    move-object/from16 v20, v9

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1268
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v7    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v14    # "index":I
    .restart local v17    # "e":Ljava/util/Enumeration;
    .local v26, "pols":Ljava/util/Set;
    :cond_6
    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v6, v26

    move-object/from16 v26, v7

    .end local v7    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v6, "pols":Ljava/util/Set;
    .local v26, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    if-eqz v12, :cond_a

    invoke-interface {v12, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_8

    .line 1274
    :cond_7
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1275
    .local v2, "it":Ljava/util/Iterator;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 1277
    .local v7, "t1":Ljava/util/Set;
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1279
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v18

    .line 1281
    .local v19, "o":Ljava/lang/Object;
    move-object/from16 v18, v2

    move-object/from16 v2, v19

    .end local v19    # "o":Ljava/lang/Object;
    .local v2, "o":Ljava/lang/Object;
    .local v18, "it":Ljava/util/Iterator;
    invoke-interface {v6, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1283
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v2    # "o":Ljava/lang/Object;
    :cond_8
    move-object/from16 v2, v18

    goto :goto_7

    .line 1287
    .end local v18    # "it":Ljava/util/Iterator;
    .local v2, "it":Ljava/util/Iterator;
    :cond_9
    move-object/from16 v18, v2

    .end local v2    # "it":Ljava/util/Iterator;
    .restart local v18    # "it":Ljava/util/Iterator;
    move-object v2, v7

    move-object v12, v2

    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .local v2, "acceptablePolicies":Ljava/util/Set;
    goto :goto_9

    .line 1843
    .end local v2    # "acceptablePolicies":Ljava/util/Set;
    .end local v4    # "i":I
    .end local v6    # "pols":Ljava/util/Set;
    .end local v7    # "t1":Ljava/util/Set;
    .end local v14    # "index":I
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v18    # "it":Ljava/util/Iterator;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    :catch_2
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v6, v28

    goto/16 :goto_3a

    .line 1270
    .restart local v4    # "i":I
    .restart local v6    # "pols":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v17    # "e":Ljava/util/Enumeration;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_a
    :goto_8
    move-object v2, v6

    move-object v12, v2

    .line 1292
    :goto_9
    if-gtz v10, :cond_c

    iget v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge v4, v2, :cond_b

    invoke-static {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_2

    if-eqz v2, :cond_b

    goto :goto_a

    .line 1373
    :cond_b
    move-object/from16 v30, v6

    goto/16 :goto_12

    .line 1294
    :cond_c
    :goto_a
    :try_start_8
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1296
    .end local v17    # "e":Ljava/util/Enumeration;
    .local v2, "e":Ljava/util/Enumeration;
    :goto_b
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_5

    if-eqz v7, :cond_15

    .line 1298
    :try_start_9
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v7

    .line 1300
    .local v7, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v17

    move-object/from16 v29, v2

    .end local v2    # "e":Ljava/util/Enumeration;
    .local v29, "e":Ljava/util/Enumeration;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_2

    if-eqz v2, :cond_14

    .line 1305
    :try_start_a
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v22
    :try_end_a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_2

    .line 1311
    .local v22, "_apq":Ljava/util/Set;
    nop

    .line 1312
    add-int/lit8 v2, v4, -0x1

    :try_start_b
    aget-object v2, v5, v2

    .line 1314
    .local v2, "_nodes":Ljava/util/List;
    const/16 v17, 0x0

    move/from16 v19, v4

    move/from16 v4, v17

    .local v4, "k":I
    .local v19, "i":I
    :goto_c
    move-object/from16 v30, v6

    .end local v6    # "pols":Ljava/util/Set;
    .local v30, "pols":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_13

    .line 1316
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v21, v6

    check-cast v21, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1318
    .local v21, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1319
    .local v6, "_policySetIter":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1321
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v31, v17

    .line 1324
    .local v31, "_tmp":Ljava/lang/Object;
    move-object/from16 v32, v2

    move-object/from16 v2, v31

    move/from16 v31, v4

    .end local v4    # "k":I
    .local v2, "_tmp":Ljava/lang/Object;
    .local v31, "k":I
    .local v32, "_nodes":Ljava/util/List;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1326
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    .local v4, "_policy":Ljava/lang/String;
    goto :goto_e

    .line 1328
    .end local v4    # "_policy":Ljava/lang/String;
    :cond_d
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v4, :cond_11

    .line 1330
    move-object v4, v2

    check-cast v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    .line 1337
    .restart local v4    # "_policy":Ljava/lang/String;
    :goto_e
    const/16 v17, 0x0

    .line 1338
    .local v17, "_found":Z
    nop

    .line 1339
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v18

    move-object/from16 v33, v18

    move/from16 v34, v17

    .line 1341
    .end local v17    # "_found":Z
    .local v33, "_childrenIter":Ljava/util/Iterator;
    .local v34, "_found":Z
    :goto_f
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 1343
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1345
    .local v17, "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    move-object/from16 v35, v2

    .end local v2    # "_tmp":Ljava/lang/Object;
    .local v35, "_tmp":Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1347
    const/4 v2, 0x1

    move/from16 v34, v2

    .line 1349
    .end local v17    # "_child":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_e
    move-object/from16 v2, v35

    goto :goto_f

    .line 1351
    .end local v35    # "_tmp":Ljava/lang/Object;
    .restart local v2    # "_tmp":Ljava/lang/Object;
    :cond_f
    move-object/from16 v35, v2

    .end local v2    # "_tmp":Ljava/lang/Object;
    .restart local v35    # "_tmp":Ljava/lang/Object;
    if-nez v34, :cond_10

    .line 1353
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v2, v20

    .line 1354
    .local v2, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1356
    new-instance v17, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    const/16 v24, 0x0

    move-object/from16 v20, v2

    move-object/from16 v23, v4

    .end local v2    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v4    # "_policy":Ljava/lang/String;
    .local v20, "_newChildExpectedPolicies":Ljava/util/Set;
    .local v23, "_policy":Ljava/lang/String;
    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move/from16 v4, v19

    move-object/from16 v2, v21

    .end local v19    # "i":I
    .end local v21    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v2, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v4, "i":I
    move-object/from16 v18, v17

    .line 1360
    .local v18, "_newChild":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    move-object/from16 v17, v6

    move-object/from16 v6, v18

    .end local v18    # "_newChild":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v6, "_newChild":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v17, "_policySetIter":Ljava/util/Iterator;
    invoke-virtual {v2, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    .line 1361
    move-object/from16 v21, v2

    .end local v2    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v21    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    aget-object v2, v5, v4

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 1351
    .end local v17    # "_policySetIter":Ljava/util/Iterator;
    .end local v20    # "_newChildExpectedPolicies":Ljava/util/Set;
    .end local v23    # "_policy":Ljava/lang/String;
    .local v4, "_policy":Ljava/lang/String;
    .local v6, "_policySetIter":Ljava/util/Iterator;
    .restart local v19    # "i":I
    :cond_10
    move-object/from16 v23, v4

    move-object/from16 v17, v6

    move/from16 v4, v19

    .line 1363
    .end local v6    # "_policySetIter":Ljava/util/Iterator;
    .end local v19    # "i":I
    .end local v33    # "_childrenIter":Ljava/util/Iterator;
    .end local v34    # "_found":Z
    .end local v35    # "_tmp":Ljava/lang/Object;
    .local v4, "i":I
    .restart local v17    # "_policySetIter":Ljava/util/Iterator;
    :goto_10
    move/from16 v19, v4

    move-object/from16 v6, v17

    move/from16 v4, v31

    move-object/from16 v2, v32

    goto/16 :goto_d

    .line 1328
    .end local v4    # "i":I
    .end local v17    # "_policySetIter":Ljava/util/Iterator;
    .local v2, "_tmp":Ljava/lang/Object;
    .restart local v6    # "_policySetIter":Ljava/util/Iterator;
    .restart local v19    # "i":I
    :cond_11
    move-object/from16 v35, v2

    move-object/from16 v17, v6

    move/from16 v4, v19

    .end local v2    # "_tmp":Ljava/lang/Object;
    .end local v6    # "_policySetIter":Ljava/util/Iterator;
    .end local v19    # "i":I
    .restart local v4    # "i":I
    .restart local v17    # "_policySetIter":Ljava/util/Iterator;
    .restart local v35    # "_tmp":Ljava/lang/Object;
    move/from16 v4, v31

    move-object/from16 v2, v32

    goto/16 :goto_d

    .line 1319
    .end local v17    # "_policySetIter":Ljava/util/Iterator;
    .end local v31    # "k":I
    .end local v32    # "_nodes":Ljava/util/List;
    .end local v35    # "_tmp":Ljava/lang/Object;
    .local v2, "_nodes":Ljava/util/List;
    .local v4, "k":I
    .restart local v6    # "_policySetIter":Ljava/util/Iterator;
    .restart local v19    # "i":I
    :cond_12
    move-object/from16 v32, v2

    move/from16 v31, v4

    move-object/from16 v17, v6

    move/from16 v4, v19

    .line 1314
    .end local v2    # "_nodes":Ljava/util/List;
    .end local v6    # "_policySetIter":Ljava/util/Iterator;
    .end local v19    # "i":I
    .end local v21    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v4, "i":I
    .restart local v31    # "k":I
    .restart local v32    # "_nodes":Ljava/util/List;
    add-int/lit8 v2, v31, 0x1

    move-object/from16 v6, v30

    move v4, v2

    move-object/from16 v2, v32

    .end local v31    # "k":I
    .local v2, "k":I
    goto/16 :goto_c

    .end local v32    # "_nodes":Ljava/util/List;
    .local v2, "_nodes":Ljava/util/List;
    .local v4, "k":I
    .restart local v19    # "i":I
    :cond_13
    move-object/from16 v32, v2

    move/from16 v31, v4

    move/from16 v4, v19

    .line 1365
    .end local v2    # "_nodes":Ljava/util/List;
    .end local v19    # "i":I
    .local v4, "i":I
    .restart local v32    # "_nodes":Ljava/util/List;
    goto :goto_11

    .line 1307
    .end local v22    # "_apq":Ljava/util/Set;
    .end local v30    # "pols":Ljava/util/Set;
    .end local v32    # "_nodes":Ljava/util/List;
    .local v6, "pols":Ljava/util/Set;
    :catch_3
    move-exception v0

    move-object/from16 v30, v6

    .line 1309
    .end local v6    # "pols":Ljava/util/Set;
    .restart local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .restart local v30    # "pols":Ljava/util/Set;
    invoke-static/range {v25 .. v25}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1310
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v15, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v2, v0, v15, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v6
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_2

    .line 1300
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v30    # "pols":Ljava/util/Set;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "pols":Ljava/util/Set;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_14
    move-object/from16 v30, v6

    .line 1367
    .end local v6    # "pols":Ljava/util/Set;
    .end local v7    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v30    # "pols":Ljava/util/Set;
    move-object/from16 v2, v29

    goto/16 :goto_b

    .line 1296
    .end local v29    # "e":Ljava/util/Enumeration;
    .end local v30    # "pols":Ljava/util/Set;
    .local v2, "e":Ljava/util/Enumeration;
    .restart local v6    # "pols":Ljava/util/Set;
    :cond_15
    move-object/from16 v29, v2

    move-object/from16 v30, v6

    .line 1373
    .end local v2    # "e":Ljava/util/Enumeration;
    .end local v6    # "pols":Ljava/util/Set;
    .restart local v29    # "e":Ljava/util/Enumeration;
    .restart local v30    # "pols":Ljava/util/Set;
    :goto_11
    move-object/from16 v17, v29

    .end local v29    # "e":Ljava/util/Enumeration;
    .local v17, "e":Ljava/util/Enumeration;
    :goto_12
    add-int/lit8 v2, v4, -0x1

    move-object/from16 v6, v28

    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v2, "j":I
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_13
    if-ltz v2, :cond_18

    .line 1375
    :try_start_c
    aget-object v7, v5, v2
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_4

    .line 1377
    .local v7, "nodes":Ljava/util/List;
    const/16 v18, 0x0

    move/from16 v36, v18

    move/from16 v18, v2

    move/from16 v2, v36

    .local v2, "k":I
    .local v18, "j":I
    :goto_14
    move/from16 v19, v8

    .end local v8    # "explicitPolicy":I
    .local v19, "explicitPolicy":I
    :try_start_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_17

    .line 1379
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1380
    .local v8, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v20

    if-nez v20, :cond_16

    .line 1382
    invoke-static {v6, v5, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v20
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_7

    move-object/from16 v6, v20

    .line 1384
    if-nez v6, :cond_16

    .line 1386
    goto :goto_15

    .line 1377
    .end local v8    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_16
    add-int/lit8 v2, v2, 0x1

    move/from16 v8, v19

    goto :goto_14

    .line 1373
    .end local v2    # "k":I
    .end local v7    # "nodes":Ljava/util/List;
    :cond_17
    :goto_15
    add-int/lit8 v2, v18, -0x1

    move/from16 v8, v19

    .end local v18    # "j":I
    .local v2, "j":I
    goto :goto_13

    .line 1843
    .end local v2    # "j":I
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v19    # "explicitPolicy":I
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v30    # "pols":Ljava/util/Set;
    .local v8, "explicitPolicy":I
    :catch_4
    move-exception v0

    move/from16 v19, v8

    move-object/from16 v20, v9

    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    goto/16 :goto_3a

    .line 1373
    .end local v19    # "explicitPolicy":I
    .restart local v2    # "j":I
    .restart local v4    # "i":I
    .restart local v8    # "explicitPolicy":I
    .restart local v14    # "index":I
    .restart local v17    # "e":Ljava/util/Enumeration;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v30    # "pols":Ljava/util/Set;
    :cond_18
    move/from16 v18, v2

    move/from16 v19, v8

    .line 1395
    .end local v2    # "j":I
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    :try_start_e
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 1397
    .local v2, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v2, :cond_19

    .line 1399
    sget-object v7, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 1401
    .local v7, "critical":Z
    aget-object v8, v5, v4
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_9

    .line 1402
    .local v8, "nodes":Ljava/util/List;
    const/16 v18, 0x0

    move-object/from16 v20, v2

    move/from16 v2, v18

    .local v2, "j":I
    .local v20, "criticalExtensionOids":Ljava/util/Set;
    :goto_16
    move-object/from16 v18, v6

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v18, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :try_start_f
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_1a

    .line 1404
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1405
    .local v6, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v6, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setCritical(Z)V
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_8

    .line 1402
    .end local v6    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v6, v18

    goto :goto_16

    .line 1397
    .end local v7    # "critical":Z
    .end local v8    # "nodes":Ljava/util/List;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v20    # "criticalExtensionOids":Ljava/util/Set;
    .local v2, "criticalExtensionOids":Ljava/util/Set;
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_19
    move-object/from16 v20, v2

    move-object/from16 v18, v6

    .line 1413
    .end local v2    # "criticalExtensionOids":Ljava/util/Set;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v17    # "e":Ljava/util/Enumeration;
    .end local v30    # "pols":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_1a
    move-object/from16 v6, v18

    goto :goto_17

    .line 1843
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "explicitPolicy":I
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_5
    move-exception v0

    move/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v6, v28

    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    goto/16 :goto_3a

    .end local v19    # "explicitPolicy":I
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    :catch_6
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v19, v8

    move-object/from16 v20, v9

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1231
    .end local v19    # "explicitPolicy":I
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v7, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "explicitPolicy":I
    .restart local v14    # "index":I
    :cond_1b
    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move-object/from16 v26, v7

    move/from16 v19, v8

    .line 1413
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v7    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    move-object/from16 v6, v28

    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_17
    if-nez v26, :cond_1c

    .line 1415
    const/4 v2, 0x0

    move-object v6, v2

    .line 1420
    :cond_1c
    if-gtz v19, :cond_1e

    if-eqz v6, :cond_1d

    goto :goto_18

    .line 1422
    :cond_1d
    :try_start_10
    const-string v0, "CertPathReviewer.noValidPolicyTree"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1423
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "explicitPolicy":I
    throw v2
    :try_end_10
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_7

    .line 1843
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "explicitPolicy":I
    :catch_7
    move-exception v0

    move-object/from16 v20, v9

    move/from16 v8, v19

    goto/16 :goto_3a

    .line 1430
    .restart local v4    # "i":I
    .restart local v14    # "index":I
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1e
    :goto_18
    :try_start_11
    iget v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I
    :try_end_11
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_13

    if-eq v4, v2, :cond_31

    .line 1438
    :try_start_12
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2
    :try_end_12
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_12 .. :try_end_12} :catch_11
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_12 .. :try_end_12} :catch_13

    .line 1444
    .local v2, "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 1446
    if-eqz v2, :cond_22

    .line 1448
    :try_start_13
    move-object v7, v2

    check-cast v7, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1449
    .local v7, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_19
    move-object/from16 v17, v2

    .end local v2    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v17, "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v8, v2, :cond_21

    .line 1451
    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_13
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_13 .. :try_end_13} :catch_9

    .line 1452
    .local v2, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v18, v6

    const/4 v6, 0x0

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :try_start_14
    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v20

    check-cast v20, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1453
    .local v20, "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v21

    check-cast v21, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 1454
    .local v21, "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_14
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_14 .. :try_end_14} :catch_8

    const-string v22, "CertPathReviewer.invalidPolicyMapping"

    if-nez v6, :cond_20

    .line 1459
    :try_start_15
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f

    .line 1449
    .end local v2    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v20    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v21    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, v17

    move-object/from16 v6, v18

    goto :goto_19

    .line 1461
    .restart local v2    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v20    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v21    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_1f
    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1462
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v15, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v0, v15, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    throw v6

    .line 1456
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v19    # "explicitPolicy":I
    :cond_20
    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1457
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v15, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v0, v15, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v9    # "policySet":Ljava/util/Set;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    throw v6
    :try_end_15
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_15 .. :try_end_15} :catch_8

    .line 1843
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v2    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "i":I
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "j":I
    .end local v14    # "index":I
    .end local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v20    # "ip_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v21    # "sp_id":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v19    # "explicitPolicy":I
    :catch_8
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_3a

    .line 1449
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "j":I
    .restart local v14    # "index":I
    .restart local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_21
    move-object/from16 v18, v6

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto :goto_1a

    .line 1843
    .end local v4    # "i":I
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "j":I
    .end local v14    # "index":I
    .end local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_9
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v9

    move/from16 v8, v19

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1446
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v2, "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v14    # "index":I
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_22
    move-object/from16 v17, v2

    move-object/from16 v18, v6

    .line 1469
    .end local v2    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_1a
    if-eqz v17, :cond_28

    .line 1471
    :try_start_16
    move-object/from16 v2, v17

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1472
    .local v2, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1473
    .local v6, "m_idp":Ljava/util/Map;
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V
    :try_end_16
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_16 .. :try_end_16} :catch_d

    .line 1475
    .local v7, "s_idp":Ljava/util/Set;
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_1b
    move-object/from16 v20, v9

    .end local v9    # "policySet":Ljava/util/Set;
    .local v20, "policySet":Ljava/util/Set;
    :try_start_17
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v9

    if-ge v8, v9, :cond_24

    .line 1477
    invoke-virtual {v2, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1478
    .local v9, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v21, v2

    const/4 v2, 0x0

    .end local v2    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v21, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v9, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v22

    check-cast v22, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 1479
    .local v2, "id_p":Ljava/lang/String;
    move/from16 v22, v8

    const/4 v8, 0x1

    .end local v8    # "j":I
    .local v22, "j":I
    invoke-virtual {v9, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v23

    check-cast v23, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual/range {v23 .. v23}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    .line 1482
    .local v8, "sd_p":Ljava/lang/String;
    invoke-interface {v6, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_23

    .line 1484
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v24, v23

    .line 1485
    .local v24, "tmp":Ljava/util/Set;
    move-object/from16 v23, v9

    move-object/from16 v9, v24

    .end local v24    # "tmp":Ljava/util/Set;
    .local v9, "tmp":Ljava/util/Set;
    .local v23, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1486
    invoke-interface {v6, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1487
    invoke-interface {v7, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1491
    .end local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v9, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_23
    move-object/from16 v23, v9

    .end local v9    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v6, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    .line 1492
    .local v9, "tmp":Ljava/util/Set;
    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1475
    .end local v2    # "id_p":Ljava/lang/String;
    .end local v8    # "sd_p":Ljava/lang/String;
    .end local v9    # "tmp":Ljava/util/Set;
    .end local v23    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_1c
    add-int/lit8 v8, v22, 0x1

    move-object/from16 v9, v20

    move-object/from16 v2, v21

    .end local v22    # "j":I
    .local v8, "j":I
    goto :goto_1b

    .end local v21    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_24
    move-object/from16 v21, v2

    move/from16 v22, v8

    .line 1496
    .end local v2    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "j":I
    .restart local v21    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_17
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_17 .. :try_end_17} :catch_12

    move-object/from16 v8, v18

    .line 1497
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v2, "it_idp":Ljava/util/Iterator;
    .local v8, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_1d
    :try_start_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_27

    .line 1499
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_18
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_18 .. :try_end_18} :catch_c

    .line 1504
    .local v9, "id_p":Ljava/lang/String;
    if-lez v11, :cond_25

    .line 1508
    :try_start_19
    invoke-static {v4, v5, v9, v6, v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_19
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_19 .. :try_end_19} :catch_a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_19 .. :try_end_19} :catch_c

    .line 1521
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    goto :goto_1e

    .line 1516
    :catch_a
    move-exception v0

    .line 1519
    .local v0, "cpve":Ljava/security/cert/CertPathValidatorException;
    :try_start_1a
    invoke-static/range {v25 .. v25}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v15

    .line 1520
    .local v15, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    move-object/from16 v22, v2

    .end local v2    # "it_idp":Ljava/util/Iterator;
    .local v22, "it_idp":Ljava/util/Iterator;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v23, v6

    .end local v6    # "m_idp":Ljava/util/Map;
    .local v23, "m_idp":Ljava/util/Map;
    iget-object v6, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v15, v0, v6, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    throw v2

    .line 1510
    .end local v0    # "cpve":Ljava/security/cert/CertPathValidatorException;
    .end local v15    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v22    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "m_idp":Ljava/util/Map;
    .restart local v2    # "it_idp":Ljava/util/Iterator;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "m_idp":Ljava/util/Map;
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    :catch_b
    move-exception v0

    move-object/from16 v22, v2

    move-object/from16 v23, v6

    .line 1513
    .end local v2    # "it_idp":Ljava/util/Iterator;
    .end local v6    # "m_idp":Ljava/util/Map;
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v22    # "it_idp":Ljava/util/Iterator;
    .restart local v23    # "m_idp":Ljava/util/Map;
    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1514
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v15, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v2, v0, v15, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    throw v6

    .line 1527
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v22    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "m_idp":Ljava/util/Map;
    .local v2, "it_idp":Ljava/util/Iterator;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "m_idp":Ljava/util/Map;
    .restart local v8    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    :cond_25
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    .end local v2    # "it_idp":Ljava/util/Iterator;
    .end local v6    # "m_idp":Ljava/util/Map;
    .restart local v22    # "it_idp":Ljava/util/Iterator;
    .restart local v23    # "m_idp":Ljava/util/Map;
    if-gtz v11, :cond_26

    .line 1529
    invoke-static {v4, v5, v9, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2
    :try_end_1a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1a .. :try_end_1a} :catch_c

    move-object v8, v2

    .line 1532
    .end local v9    # "id_p":Ljava/lang/String;
    :cond_26
    :goto_1e
    move-object/from16 v2, v22

    move-object/from16 v6, v23

    goto :goto_1d

    .line 1497
    .end local v22    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "m_idp":Ljava/util/Map;
    .restart local v2    # "it_idp":Ljava/util/Iterator;
    .restart local v6    # "m_idp":Ljava/util/Map;
    :cond_27
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    .end local v2    # "it_idp":Ljava/util/Iterator;
    .end local v6    # "m_idp":Ljava/util/Map;
    .restart local v22    # "it_idp":Ljava/util/Iterator;
    .restart local v23    # "m_idp":Ljava/util/Map;
    move-object v6, v8

    goto :goto_1f

    .line 1843
    .end local v4    # "i":I
    .end local v7    # "s_idp":Ljava/util/Set;
    .end local v14    # "index":I
    .end local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v21    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "m_idp":Ljava/util/Map;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_c
    move-exception v0

    move-object v6, v8

    move/from16 v8, v19

    goto/16 :goto_3a

    .end local v8    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v20    # "policySet":Ljava/util/Set;
    .local v9, "policySet":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_d
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v6, v18

    move/from16 v8, v19

    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v20    # "policySet":Ljava/util/Set;
    goto/16 :goto_3a

    .line 1469
    .end local v20    # "policySet":Ljava/util/Set;
    .restart local v4    # "i":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_28
    move-object/from16 v20, v9

    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v20    # "policySet":Ljava/util/Set;
    move-object/from16 v6, v18

    .line 1539
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_1f
    :try_start_1b
    invoke-static {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_1b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1b .. :try_end_1b} :catch_10

    if-nez v2, :cond_2b

    .line 1543
    if-eqz v19, :cond_29

    .line 1545
    add-int/lit8 v8, v19, -0x1

    .end local v19    # "explicitPolicy":I
    .local v8, "explicitPolicy":I
    goto :goto_20

    .line 1543
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    :cond_29
    move/from16 v8, v19

    .line 1549
    .end local v19    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    :goto_20
    if-eqz v11, :cond_2a

    .line 1551
    add-int/lit8 v11, v11, -0x1

    .line 1555
    :cond_2a
    if-eqz v10, :cond_2c

    .line 1557
    add-int/lit8 v10, v10, -0x1

    goto :goto_21

    .line 1539
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    :cond_2b
    move/from16 v8, v19

    .line 1568
    .end local v19    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    :cond_2c
    :goto_21
    :try_start_1c
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1569
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v2, :cond_2f

    .line 1571
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 1573
    .local v7, "policyConstraints":Ljava/util/Enumeration;
    :goto_22
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_2e

    .line 1575
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1578
    .local v9, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    move-object/from16 v18, v2

    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v18, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    goto :goto_23

    .line 1588
    .end local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :pswitch_0
    move-object/from16 v18, v2

    const/4 v2, 0x0

    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {v9, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 1589
    .local v2, "tmpInt":I
    if-ge v2, v11, :cond_2d

    .line 1591
    move v11, v2

    goto :goto_23

    .line 1581
    .end local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :pswitch_1
    move-object/from16 v18, v2

    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-static {v9, v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2
    :try_end_1c
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1c .. :try_end_1c} :catch_f
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1c .. :try_end_1c} :catch_16

    .line 1582
    .local v2, "tmpInt":I
    if-ge v2, v8, :cond_2d

    .line 1584
    move v8, v2

    .line 1595
    .end local v2    # "tmpInt":I
    .end local v9    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2d
    :goto_23
    move-object/from16 v2, v18

    goto :goto_22

    .line 1573
    .end local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2e
    move-object/from16 v18, v2

    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    goto :goto_24

    .line 1569
    .end local v7    # "policyConstraints":Ljava/util/Enumeration;
    .end local v18    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_2f
    move-object/from16 v18, v2

    .line 1602
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :goto_24
    nop

    .line 1610
    :try_start_1d
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    .line 1612
    .local v2, "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v2, :cond_30

    .line 1614
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v7
    :try_end_1d
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1d .. :try_end_1d} :catch_e
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1d .. :try_end_1d} :catch_16

    .line 1616
    .local v7, "_inhibitAnyPolicy":I
    if-ge v7, v10, :cond_30

    .line 1618
    move v10, v7

    .line 1626
    .end local v2    # "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v7    # "_inhibitAnyPolicy":I
    :cond_30
    goto :goto_25

    .line 1622
    :catch_e
    move-exception v0

    .line 1624
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :try_start_1e
    const-string v2, "CertPathReviewer.policyInhibitExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1625
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v9, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v2, v9, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    throw v7

    .line 1598
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policySet":Ljava/util/Set;
    :catch_f
    move-exception v0

    .line 1600
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    invoke-static {v15}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1601
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v9, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v7, v2, v9, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    throw v7
    :try_end_1e
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1e .. :try_end_1e} :catch_16

    .line 1843
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v17    # "pm":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    :catch_10
    move-exception v0

    move/from16 v8, v19

    goto/16 :goto_3a

    .line 1440
    .end local v20    # "policySet":Ljava/util/Set;
    .restart local v4    # "i":I
    .local v9, "policySet":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_11
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v9

    .line 1442
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v18, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v20    # "policySet":Ljava/util/Set;
    :try_start_1f
    const-string v2, "CertPathReviewer.policyMapExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1443
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v2, v0, v7, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    throw v6
    :try_end_1f
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1f .. :try_end_1f} :catch_12

    .line 1843
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v4    # "i":I
    .end local v14    # "index":I
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    :catch_12
    move-exception v0

    move-object/from16 v6, v18

    move/from16 v8, v19

    goto/16 :goto_3a

    .line 1430
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v20    # "policySet":Ljava/util/Set;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v14    # "index":I
    .restart local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_31
    move-object/from16 v18, v6

    move-object/from16 v20, v9

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v20    # "policySet":Ljava/util/Set;
    move/from16 v8, v19

    .line 1210
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    .end local v26    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    :goto_25
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v9, v20

    move-object/from16 v2, v27

    const/4 v4, 0x1

    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1843
    .end local v4    # "i":I
    .end local v8    # "explicitPolicy":I
    .end local v14    # "index":I
    .end local v20    # "policySet":Ljava/util/Set;
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v19    # "explicitPolicy":I
    :catch_13
    move-exception v0

    move-object/from16 v18, v6

    move-object/from16 v20, v9

    move/from16 v8, v19

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v20    # "policySet":Ljava/util/Set;
    goto/16 :goto_3a

    .line 1226
    .end local v18    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .restart local v4    # "i":I
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v14    # "index":I
    :catch_14
    move-exception v0

    move-object/from16 v27, v2

    move-object/from16 v28, v6

    move/from16 v19, v8

    move-object/from16 v20, v9

    .line 1228
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :try_start_20
    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1229
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v6, v2, v0, v7, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v6

    .line 1843
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v4    # "i":I
    .end local v14    # "index":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    :catch_15
    move-exception v0

    move-object/from16 v28, v6

    move/from16 v19, v8

    move-object/from16 v20, v9

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_3a

    .line 1639
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v9    # "policySet":Ljava/util/Set;
    .restart local v14    # "index":I
    :cond_32
    move-object/from16 v28, v6

    move/from16 v19, v8

    move-object/from16 v20, v9

    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v9    # "policySet":Ljava/util/Set;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-static {v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2
    :try_end_20
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_20 .. :try_end_20} :catch_19

    if-nez v2, :cond_33

    if-lez v19, :cond_33

    .line 1641
    add-int/lit8 v8, v19, -0x1

    .end local v19    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    goto :goto_26

    .line 1650
    .end local v8    # "explicitPolicy":I
    .restart local v19    # "explicitPolicy":I
    :cond_33
    move/from16 v8, v19

    .end local v19    # "explicitPolicy":I
    .restart local v8    # "explicitPolicy":I
    :goto_26
    :try_start_21
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v13, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1651
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v2, :cond_35

    .line 1653
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 1655
    .local v4, "policyConstraints":Ljava/util/Enumeration;
    :goto_27
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_35

    .line 1657
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1658
    .local v6, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v7

    packed-switch v7, :pswitch_data_1

    const/4 v7, 0x0

    goto :goto_28

    .line 1661
    :pswitch_2
    const/4 v7, 0x0

    invoke-static {v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v9
    :try_end_21
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_21 .. :try_end_21} :catch_18
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_21 .. :try_end_21} :catch_17

    .line 1662
    .local v9, "tmpInt":I
    if-nez v9, :cond_34

    .line 1664
    const/4 v8, 0x0

    .line 1668
    .end local v6    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v9    # "tmpInt":I
    :cond_34
    :goto_28
    goto :goto_27

    .line 1675
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "policyConstraints":Ljava/util/Enumeration;
    :cond_35
    nop

    .line 1687
    const-string v2, "CertPathReviewer.explicitPolicy"

    if-nez v28, :cond_37

    .line 1689
    :try_start_22
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-nez v0, :cond_36

    .line 1694
    const/4 v0, 0x0

    move-object/from16 v6, v28

    .local v0, "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_38

    .line 1691
    .end local v0    # "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_36
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1692
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v2

    .line 1696
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_37
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 1698
    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 1700
    invoke-interface {v12}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3f

    .line 1707
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1709
    .local v2, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_29
    array-length v6, v5

    if-ge v4, v6, :cond_3b

    .line 1711
    aget-object v6, v5, v4

    .line 1713
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_2a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_3a

    .line 1715
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1717
    .local v9, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_39

    .line 1719
    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v15

    .line 1720
    .local v15, "_iter":Ljava/util/Iterator;
    :goto_2b
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_38

    .line 1722
    move/from16 v17, v4

    .end local v4    # "j":I
    .local v17, "j":I
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move/from16 v4, v17

    goto :goto_2b

    .line 1720
    .end local v17    # "j":I
    .restart local v4    # "j":I
    :cond_38
    move/from16 v17, v4

    .end local v4    # "j":I
    .restart local v17    # "j":I
    goto :goto_2c

    .line 1717
    .end local v15    # "_iter":Ljava/util/Iterator;
    .end local v17    # "j":I
    .restart local v4    # "j":I
    :cond_39
    move/from16 v17, v4

    .line 1713
    .end local v4    # "j":I
    .end local v9    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v17    # "j":I
    :goto_2c
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    goto :goto_2a

    .end local v17    # "j":I
    .restart local v4    # "j":I
    :cond_3a
    move/from16 v17, v4

    .line 1709
    .end local v4    # "j":I
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v7    # "k":I
    .restart local v17    # "j":I
    add-int/lit8 v4, v17, 0x1

    .end local v17    # "j":I
    .restart local v4    # "j":I
    goto :goto_29

    :cond_3b
    move/from16 v17, v4

    .line 1728
    .end local v4    # "j":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1729
    .local v0, "_vpnsIter":Ljava/util/Iterator;
    :goto_2d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    .line 1731
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1732
    .local v4, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    .line 1734
    .local v6, "_validPolicy":Ljava/lang/String;
    invoke-interface {v12, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1738
    .end local v4    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v6    # "_validPolicy":Ljava/lang/String;
    goto :goto_2d

    .line 1739
    :cond_3c
    if-eqz v28, :cond_40

    .line 1741
    iget v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I
    :try_end_22
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_22 .. :try_end_22} :catch_17

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v6, v28

    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v4, "j":I
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_2e
    if-ltz v4, :cond_41

    .line 1743
    :try_start_23
    aget-object v7, v5, v4

    .line 1745
    .local v7, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_3e

    .line 1747
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1748
    .local v15, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v15}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v16

    if-nez v16, :cond_3d

    .line 1750
    invoke-static {v6, v5, v15}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v16
    :try_end_23
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_23 .. :try_end_23} :catch_16

    move-object/from16 v6, v16

    .line 1745
    .end local v15    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_3d
    add-int/lit8 v9, v9, 0x1

    goto :goto_2f

    .line 1741
    .end local v7    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_3e
    add-int/lit8 v4, v4, -0x1

    goto :goto_2e

    .line 1702
    .end local v0    # "_vpnsIter":Ljava/util/Iterator;
    .end local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v4    # "j":I
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_3f
    :try_start_24
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1703
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v2, v0, v4, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v2

    .line 1758
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_40
    move-object/from16 v6, v28

    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_41
    move-object v0, v6

    .local v0, "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto/16 :goto_38

    .line 1772
    .end local v0    # "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_42
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1774
    .restart local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_30
    array-length v6, v5

    if-ge v4, v6, :cond_47

    .line 1776
    aget-object v6, v5, v4

    .line 1778
    .local v6, "_nodeDepth":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_31
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v7, v9, :cond_46

    .line 1780
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1782
    .local v9, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_45

    .line 1784
    invoke-virtual {v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v15

    .line 1785
    .local v15, "_iter":Ljava/util/Iterator;
    :goto_32
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_44

    .line 1787
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-object/from16 v18, v17

    .line 1788
    .local v18, "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    move/from16 v17, v4

    .end local v4    # "j":I
    .restart local v17    # "j":I
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 1790
    move-object/from16 v4, v18

    .end local v18    # "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v4, "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_33

    .line 1788
    .end local v4    # "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v18    # "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_43
    move-object/from16 v4, v18

    .line 1792
    .end local v18    # "_c_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_33
    move/from16 v4, v17

    goto :goto_32

    .line 1785
    .end local v17    # "j":I
    .local v4, "j":I
    :cond_44
    move/from16 v17, v4

    .end local v4    # "j":I
    .restart local v17    # "j":I
    goto :goto_34

    .line 1782
    .end local v15    # "_iter":Ljava/util/Iterator;
    .end local v17    # "j":I
    .restart local v4    # "j":I
    :cond_45
    move/from16 v17, v4

    .line 1778
    .end local v4    # "j":I
    .end local v9    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v17    # "j":I
    :goto_34
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v17

    goto :goto_31

    .end local v17    # "j":I
    .restart local v4    # "j":I
    :cond_46
    move/from16 v17, v4

    .line 1774
    .end local v4    # "j":I
    .end local v6    # "_nodeDepth":Ljava/util/List;
    .end local v7    # "k":I
    .restart local v17    # "j":I
    add-int/lit8 v4, v17, 0x1

    .end local v17    # "j":I
    .restart local v4    # "j":I
    goto :goto_30

    :cond_47
    move/from16 v17, v4

    .line 1800
    .end local v4    # "j":I
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_24
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_24 .. :try_end_24} :catch_17

    move-object/from16 v6, v28

    .line 1801
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v0, "_vpnsIter":Ljava/util/Iterator;
    .local v6, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_35
    :try_start_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 1803
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1804
    .local v4, "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    .line 1806
    .local v7, "_validPolicy":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_48

    .line 1808
    invoke-static {v6, v5, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v9

    move-object v6, v9

    .line 1810
    .end local v4    # "_node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v7    # "_validPolicy":Ljava/lang/String;
    :cond_48
    goto :goto_35

    .line 1815
    :cond_49
    if-eqz v6, :cond_4c

    .line 1817
    iget v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    const/16 v16, 0x1

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_36
    if-ltz v4, :cond_4c

    .line 1819
    aget-object v7, v5, v4

    .line 1821
    .local v7, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_37
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_4b

    .line 1823
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    .line 1824
    .local v15, "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    invoke-virtual {v15}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v16

    if-nez v16, :cond_4a

    .line 1826
    invoke-static {v6, v5, v15}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v16

    move-object/from16 v6, v16

    .line 1821
    .end local v15    # "node":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 1817
    .end local v7    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_4b
    add-int/lit8 v4, v4, -0x1

    goto :goto_36

    .line 1832
    .end local v4    # "j":I
    :cond_4c
    move-object v4, v6

    move-object v0, v4

    .line 1835
    .end local v2    # "_validPolicyNodeSet":Ljava/util/Set;
    .local v0, "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_38
    if-gtz v8, :cond_4e

    if-eqz v0, :cond_4d

    goto :goto_39

    .line 1837
    :cond_4d
    const-string v2, "CertPathReviewer.invalidPolicy"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1838
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    throw v4
    :try_end_25
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_25 .. :try_end_25} :catch_16

    .line 1843
    .end local v0    # "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v14    # "index":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v20    # "policySet":Ljava/util/Set;
    :catch_16
    move-exception v0

    goto :goto_3a

    .line 1841
    .restart local v0    # "intersection":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v14    # "index":I
    :cond_4e
    :goto_39
    nop

    .line 1847
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v0, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    goto :goto_3b

    .line 1843
    .end local v0    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .end local v14    # "index":I
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_17
    move-exception v0

    move-object/from16 v6, v28

    goto :goto_3a

    .line 1671
    .restart local v14    # "index":I
    :catch_18
    move-exception v0

    .line 1673
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :try_start_26
    invoke-static {v15}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1674
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v6, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v6, v14}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    .end local v3    # "userInitialPolicySet":Ljava/util/Set;
    .end local v5    # "policyNodes":[Ljava/util/List;
    .end local v8    # "explicitPolicy":I
    .end local v10    # "inhibitAnyPolicy":I
    .end local v11    # "policyMapping":I
    .end local v12    # "acceptablePolicies":Ljava/util/Set;
    .end local v13    # "cert":Ljava/security/cert/X509Certificate;
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    throw v4
    :try_end_26
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_26 .. :try_end_26} :catch_17

    .line 1843
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v14    # "index":I
    .restart local v3    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v5    # "policyNodes":[Ljava/util/List;
    .restart local v10    # "inhibitAnyPolicy":I
    .restart local v11    # "policyMapping":I
    .restart local v12    # "acceptablePolicies":Ljava/util/Set;
    .restart local v13    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v19    # "explicitPolicy":I
    .restart local v20    # "policySet":Ljava/util/Set;
    .restart local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :catch_19
    move-exception v0

    move/from16 v8, v19

    move-object/from16 v6, v28

    goto :goto_3a

    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v28    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .restart local v8    # "explicitPolicy":I
    .local v9, "policySet":Ljava/util/Set;
    :catch_1a
    move-exception v0

    move-object/from16 v20, v9

    .line 1845
    .end local v9    # "policySet":Ljava/util/Set;
    .local v0, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    .restart local v20    # "policySet":Ljava/util/Set;
    :goto_3a
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v4

    invoke-virtual {v1, v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1846
    const/4 v2, 0x0

    move-object v0, v2

    .line 1848
    .end local v6    # "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    .local v0, "validPolicyTree":Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :goto_3b
    return-void

    nop

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
    .locals 28

    .line 729
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 730
    .local v2, "trust":Ljava/security/cert/TrustAnchor;
    const/4 v3, 0x0

    .line 734
    .local v3, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v5, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v10, 0x2

    new-array v5, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v5, v11

    const/4 v12, 0x1

    aput-object v4, v5, v12

    const-string v0, "CertPathReviewer.certPathValidDate"

    invoke-static {v0, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 736
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 742
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :try_start_0
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v12

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    .line 744
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v0

    move-object v5, v0

    .line 745
    .local v5, "trustColl":Ljava/util/Collection;
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v0

    if-le v0, v12, :cond_0

    .line 748
    const-string v0, "CertPathReviewer.conflictingTrustAnchors"

    .line 750
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 751
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    aput-object v7, v8, v12

    .line 748
    invoke-static {v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 752
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 753
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto/16 :goto_2

    .line 754
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    const-string v0, "CertPathReviewer.noTrustAnchorFound"

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 758
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    iget-object v7, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 759
    invoke-virtual {v7}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v6, v8, v11

    aput-object v7, v8, v12

    .line 756
    invoke-static {v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 760
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 761
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_2

    .line 765
    :cond_1
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object v2, v0

    .line 766
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 768
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    .local v0, "trustPublicKey":Ljava/security/PublicKey;
    goto :goto_0

    .line 772
    .end local v0    # "trustPublicKey":Ljava/security/PublicKey;
    :cond_2
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v0

    .line 777
    .local v6, "trustPublicKey":Ljava/security/PublicKey;
    :goto_0
    :try_start_1
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 778
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-static {v4, v6, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/SignatureException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :goto_1
    goto :goto_2

    .line 785
    :catch_0
    move-exception v0

    goto :goto_2

    .line 780
    :catch_1
    move-exception v0

    .line 782
    .local v0, "e":Ljava/security/SignatureException;
    :try_start_2
    const-string v7, "CertPathReviewer.trustButInvalidCert"

    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 783
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "e":Ljava/security/SignatureException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_1

    .line 795
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "trustColl":Ljava/util/Collection;
    .end local v6    # "trustPublicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v0

    .line 797
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v4, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 799
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v5, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v5, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v4, v6, v11

    aput-object v5, v6, v12

    .line 797
    const-string v4, "CertPathReviewer.unknown"

    invoke-static {v4, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    .line 800
    .local v4, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v13, v2

    goto :goto_3

    .line 791
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v4    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :catch_2
    move-exception v0

    .line 793
    .local v0, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 801
    .end local v0    # "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    :goto_2
    move-object v13, v2

    .line 803
    .end local v2    # "trust":Ljava/security/cert/TrustAnchor;
    .local v13, "trust":Ljava/security/cert/TrustAnchor;
    :goto_3
    const/4 v14, 0x5

    if-eqz v13, :cond_6

    .line 806
    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 809
    .local v2, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_3

    .line 811
    :try_start_3
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    move-object v3, v0

    .end local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v0, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    goto :goto_4

    .line 815
    .end local v0    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .restart local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v0

    .line 823
    :goto_4
    goto :goto_5

    .line 818
    :catch_3
    move-exception v0

    .line 820
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    .line 821
    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v5, v12, [Ljava/lang/Object;

    aput-object v4, v5, v11

    .line 820
    const-string v4, "CertPathReviewer.trustDNInvalid"

    invoke-static {v4, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    .line 822
    .restart local v4    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 826
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .end local v4    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_5
    if-eqz v2, :cond_5

    .line 828
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 829
    .local v0, "ku":[Z
    if-eqz v0, :cond_5

    array-length v4, v0

    if-le v4, v14, :cond_4

    aget-boolean v4, v0, v14

    if-nez v4, :cond_5

    .line 831
    :cond_4
    const-string v4, "CertPathReviewer.trustKeyUsage"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    .line 832
    .restart local v4    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 839
    .end local v0    # "ku":[Z
    .end local v2    # "sign":Ljava/security/cert/X509Certificate;
    .end local v4    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_5
    move-object v15, v3

    goto :goto_6

    .line 803
    :cond_6
    move-object v15, v3

    .line 839
    .end local v3    # "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    .local v15, "trustPrincipal":Ljavax/security/auth/x500/X500Principal;
    :goto_6
    const/4 v0, 0x0

    .line 840
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    move-object v2, v15

    .line 842
    .local v2, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .line 844
    .local v3, "sign":Ljava/security/cert/X509Certificate;
    const/4 v4, 0x0

    .line 845
    .local v4, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v5, 0x0

    .line 846
    .local v5, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 848
    .local v6, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    if-eqz v13, :cond_8

    .line 850
    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 852
    if-eqz v3, :cond_7

    .line 854
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v7, v0

    goto :goto_7

    .line 858
    :cond_7
    invoke-virtual {v13}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    move-object v7, v0

    .line 863
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    :goto_7
    :try_start_4
    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    move-object v4, v0

    .line 864
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object v5, v0

    .line 865
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_4
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v6, v0

    .line 872
    move-object v0, v7

    goto :goto_8

    .line 867
    :catch_4
    move-exception v0

    .line 869
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    const-string v8, "CertPathReviewer.trustPubKeyError"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 870
    .local v8, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    .line 871
    const/4 v4, 0x0

    move-object v0, v7

    .line 877
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    :cond_8
    :goto_8
    const/4 v7, 0x0

    .line 880
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    iget-object v8, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v12

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v18, v6

    move v9, v8

    move-object v6, v0

    move-object v5, v3

    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v3    # "sign":Ljava/security/cert/X509Certificate;
    .end local v4    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v5, "sign":Ljava/security/cert/X509Certificate;
    .local v6, "workingPublicKey":Ljava/security/PublicKey;
    .local v9, "index":I
    .local v16, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v17, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v18, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    :goto_9
    if-ltz v9, :cond_1c

    .line 885
    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int v3, v0, v9

    .line 893
    .local v3, "i":I
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 895
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    const-string v7, "CertPathReviewer.signatureNotVerified"

    const/4 v8, 0x3

    if-eqz v6, :cond_9

    .line 899
    :try_start_5
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 900
    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {v4, v6, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/security/GeneralSecurityException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    .line 902
    :catch_5
    move-exception v0

    .line 904
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    nop

    .line 905
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v19, v8, v11

    aput-object v0, v8, v12

    aput-object v20, v8, v10

    .line 904
    invoke-static {v7, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 906
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 907
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_a
    const/16 v19, 0x0

    const/16 v24, 0x5

    const/16 v25, 0x2

    const/16 v26, 0x1

    goto/16 :goto_e

    .line 909
    :cond_9
    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 913
    :try_start_6
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/GeneralSecurityException; {:try_start_6 .. :try_end_6} :catch_7

    const/16 v19, 0x0

    :try_start_7
    iget-object v11, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 914
    invoke-virtual {v11}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v11

    .line 913
    invoke-static {v4, v0, v11}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 915
    const-string v0, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 916
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_7
    .catch Ljava/security/GeneralSecurityException; {:try_start_7 .. :try_end_7} :catch_6

    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_c

    .line 918
    :catch_6
    move-exception v0

    goto :goto_b

    :catch_7
    move-exception v0

    const/16 v19, 0x0

    .line 920
    .local v0, "ex":Ljava/security/GeneralSecurityException;
    :goto_b
    nop

    .line 921
    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v20

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v11, v8, v19

    aput-object v0, v8, v12

    aput-object v20, v8, v10

    .line 920
    invoke-static {v7, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 922
    .restart local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 923
    .end local v0    # "ex":Ljava/security/GeneralSecurityException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_c
    const/16 v24, 0x5

    const/16 v25, 0x2

    const/16 v26, 0x1

    goto/16 :goto_e

    .line 927
    :cond_a
    const/16 v19, 0x0

    const-string v0, "CertPathReviewer.NoIssuerPublicKey"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 929
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    sget-object v7, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v7

    .line 930
    .local v7, "akiBytes":[B
    if-eqz v7, :cond_d

    .line 932
    nop

    .line 933
    invoke-static {v7}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v11

    .line 932
    invoke-static {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v11

    .line 934
    .local v11, "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v20

    .line 935
    .local v20, "issuerNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    if-eqz v20, :cond_c

    .line 937
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v21

    aget-object v21, v21, v19

    .line 938
    .local v21, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v22

    .line 939
    .local v22, "serial":Ljava/math/BigInteger;
    if-eqz v22, :cond_b

    .line 941
    const/16 v23, 0x3

    new-instance v8, Lorg/bouncycastle/pkix/util/LocaleString;

    const/16 v24, 0x5

    const-string v14, "missingIssuer"

    const/16 v25, 0x2

    const-string v10, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v8, v10, v14}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lorg/bouncycastle/pkix/util/LocaleString;

    const/16 v26, 0x1

    const-string v12, "missingSerial"

    invoke-direct {v14, v10, v12}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v19

    const-string v8, " \""

    aput-object v8, v10, v26

    aput-object v21, v10, v25

    const-string v8, "\" "

    aput-object v8, v10, v23

    const/4 v8, 0x4

    aput-object v14, v10, v8

    const-string v8, " "

    aput-object v8, v10, v24

    const/4 v8, 0x6

    aput-object v22, v10, v8

    .line 943
    .local v10, "extraArgs":[Ljava/lang/Object;
    invoke-virtual {v0, v10}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    goto :goto_d

    .line 939
    .end local v10    # "extraArgs":[Ljava/lang/Object;
    :cond_b
    const/16 v24, 0x5

    const/16 v25, 0x2

    const/16 v26, 0x1

    goto :goto_d

    .line 935
    .end local v21    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v22    # "serial":Ljava/math/BigInteger;
    :cond_c
    const/16 v24, 0x5

    const/16 v25, 0x2

    const/16 v26, 0x1

    goto :goto_d

    .line 930
    .end local v11    # "aki":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v20    # "issuerNames":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :cond_d
    const/16 v24, 0x5

    const/16 v25, 0x2

    const/16 v26, 0x1

    .line 947
    :goto_d
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 953
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v7    # "akiBytes":[B
    :goto_e
    :try_start_8
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v4, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_f

    .line 961
    :catch_8
    move-exception v0

    .line 963
    .local v0, "cee":Ljava/security/cert/CertificateExpiredException;
    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    .line 964
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v19

    .line 963
    const-string v7, "CertPathReviewer.certificateExpired"

    invoke-static {v7, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 965
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_10

    .line 955
    .end local v0    # "cee":Ljava/security/cert/CertificateExpiredException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :catch_9
    move-exception v0

    .line 957
    .local v0, "cnve":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    .line 958
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v8, 0x1

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v7, v10, v19

    .line 957
    const-string v7, "CertPathReviewer.certificateNotYetValid"

    invoke-static {v7, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 959
    .restart local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 966
    .end local v0    # "cnve":Ljava/security/cert/CertificateNotYetValidException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_f
    nop

    .line 969
    :goto_10
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 972
    const/4 v7, 0x0

    .line 975
    .local v7, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_9
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 976
    .local v0, "crl_dp":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_e

    .line 978
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v8
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_a

    move-object v7, v8

    .line 985
    .end local v0    # "crl_dp":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_e
    move-object v10, v7

    goto :goto_11

    .line 981
    :catch_a
    move-exception v0

    .line 983
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v8, "CertPathReviewer.crlDistPtExtError"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 984
    .restart local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move-object v10, v7

    .line 988
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_11
    const/4 v7, 0x0

    .line 991
    .local v7, "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_start_a
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 992
    .local v0, "auth_info_acc":Lorg/bouncycastle/asn1/ASN1Primitive;
    if-eqz v0, :cond_f

    .line 994
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;

    move-result-object v8
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_a .. :try_end_a} :catch_b

    move-object v7, v8

    .line 1001
    .end local v0    # "auth_info_acc":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_f
    move-object v11, v7

    goto :goto_12

    .line 997
    :catch_b
    move-exception v0

    .line 999
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v8, "CertPathReviewer.crlAuthInfoAccError"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 1000
    .restart local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v8, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move-object v11, v7

    .line 1003
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .local v11, "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :goto_12
    invoke-virtual {v1, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v7

    .line 1004
    .local v7, "crlDistPointUrls":Ljava/util/Vector;
    invoke-virtual {v1, v11}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v8

    .line 1009
    .local v8, "ocspUrls":Ljava/util/Vector;
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1010
    .local v0, "urlIt":Ljava/util/Iterator;
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_10

    .line 1012
    new-instance v12, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    .line 1013
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v20, v0

    const/4 v14, 0x1

    .end local v0    # "urlIt":Ljava/util/Iterator;
    .local v20, "urlIt":Ljava/util/Iterator;
    new-array v0, v14, [Ljava/lang/Object;

    aput-object v12, v0, v19

    .line 1012
    const-string v12, "CertPathReviewer.crlDistPoint"

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1014
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1015
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    move-object/from16 v0, v20

    goto :goto_13

    .line 1018
    .end local v20    # "urlIt":Ljava/util/Iterator;
    .local v0, "urlIt":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v20, v0

    .end local v0    # "urlIt":Ljava/util/Iterator;
    .restart local v20    # "urlIt":Ljava/util/Iterator;
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1019
    .end local v20    # "urlIt":Ljava/util/Iterator;
    .local v12, "urlIt":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1021
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    .line 1022
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v0, v14}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v20, v0

    const/4 v14, 0x1

    new-array v0, v14, [Ljava/lang/Object;

    aput-object v20, v0, v19

    .line 1021
    const-string v14, "CertPathReviewer.ocspLocation"

    invoke-static {v14, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1023
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1024
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_14

    .line 1030
    :cond_11
    move-object v14, v2

    .end local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v14, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :try_start_b
    iget-object v2, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_e

    move/from16 v20, v3

    move-object v3, v4

    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .local v20, "i":I
    :try_start_c
    iget-object v4, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_d

    move/from16 v27, v20

    move-object/from16 v20, v10

    move/from16 v10, v27

    .local v10, "i":I
    .local v20, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_d
    invoke-virtual/range {v1 .. v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_c

    .line 1035
    goto :goto_16

    .line 1032
    :catch_c
    move-exception v0

    goto :goto_15

    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v20, "i":I
    :catch_d
    move-exception v0

    move/from16 v27, v20

    move-object/from16 v20, v10

    move/from16 v10, v27

    .local v10, "i":I
    .local v20, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    goto :goto_15

    .end local v20    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v3, "i":I
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v10, "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_e
    move-exception v0

    move-object/from16 v20, v10

    move v10, v3

    move-object v3, v4

    .line 1034
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v0, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .local v10, "i":I
    .restart local v20    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_15
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_16

    .line 969
    .end local v0    # "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    .end local v7    # "crlDistPointUrls":Ljava/util/Vector;
    .end local v8    # "ocspUrls":Ljava/util/Vector;
    .end local v10    # "i":I
    .end local v11    # "authInfoAcc":Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .end local v12    # "urlIt":Ljava/util/Iterator;
    .end local v14    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v20    # "crlDistPoints":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v3, "i":I
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    :cond_12
    move-object v14, v2

    move v10, v3

    move-object v3, v4

    .line 1039
    .end local v2    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .local v3, "cert":Ljava/security/cert/X509Certificate;
    .restart local v10    # "i":I
    .restart local v14    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :goto_16
    if-eqz v14, :cond_13

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1041
    nop

    .line 1042
    invoke-virtual {v14}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1043
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v0, v7, v19

    const/16 v26, 0x1

    aput-object v2, v7, v26

    .line 1041
    const-string v0, "CertPathReviewer.certWrongIssuer"

    invoke-static {v0, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1044
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_17

    .line 1039
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_13
    const/4 v4, 0x2

    .line 1050
    :goto_17
    iget v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-eq v10, v0, :cond_1a

    .line 1053
    const-string v0, "CertPathReviewer.noCACert"

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v2

    const/4 v8, 0x1

    if-ne v2, v8, :cond_15

    .line 1055
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1056
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_18

    .line 1053
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_14
    const/4 v8, 0x1

    .line 1064
    :cond_15
    :goto_18
    :try_start_e
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2

    .line 1066
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v2, :cond_16

    .line 1068
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v7

    if-nez v7, :cond_17

    .line 1070
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1071
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1072
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_19

    .line 1076
    :cond_16
    const-string v0, "CertPathReviewer.noBasicConstraints"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 1077
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_f

    .line 1084
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_17
    :goto_19
    goto :goto_1a

    .line 1080
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_f
    move-exception v0

    .line 1082
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v2, "CertPathReviewer.errorProcesingBC"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1083
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1088
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_1a
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 1090
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_19

    array-length v2, v0

    const/4 v11, 0x5

    if-le v2, v11, :cond_18

    aget-boolean v2, v0, v11

    if-nez v2, :cond_1b

    .line 1092
    :cond_18
    const-string v2, "CertPathReviewer.noCertSign"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 1093
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v2, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_1b

    .line 1090
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_19
    const/4 v11, 0x5

    goto :goto_1b

    .line 1050
    .end local v0    # "keyUsage":[Z
    :cond_1a
    const/4 v8, 0x1

    const/4 v11, 0x5

    .line 1099
    :cond_1b
    :goto_1b
    move-object v5, v3

    .line 1103
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    .line 1109
    .end local v14    # "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    .local v2, "workingIssuerName":Ljavax/security/auth/x500/X500Principal;
    :try_start_f
    iget-object v0, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v0, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;

    move-result-object v0

    move-object v6, v0

    .line 1110
    invoke-static {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    move-object/from16 v16, v0

    .line 1111
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    move-object/from16 v17, v0

    .line 1112
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0
    :try_end_f
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_f .. :try_end_f} :catch_10

    .line 1121
    .end local v18    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v0, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    move-object/from16 v18, v0

    goto :goto_1c

    .line 1114
    .end local v0    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v18    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    :catch_10
    move-exception v0

    .line 1116
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    const-string v7, "CertPathReviewer.pubKeyError"

    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 1117
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1118
    const/4 v12, 0x0

    .line 1119
    .end local v16    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v12, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/4 v14, 0x0

    .line 1120
    .end local v17    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v14, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/16 v16, 0x0

    move-object/from16 v17, v14

    move-object/from16 v18, v16

    move-object/from16 v16, v12

    .line 880
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v12    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v14    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v16    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v17    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_1c
    add-int/lit8 v9, v9, -0x1

    move-object v7, v3

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x5

    goto/16 :goto_9

    .line 1125
    .end local v3    # "cert":Ljava/security/cert/X509Certificate;
    .end local v9    # "index":I
    .end local v10    # "i":I
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    :cond_1c
    iput-object v13, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1126
    iput-object v6, v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 1127
    return-void
.end method

.method private static createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 2566
    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2567
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    const-class v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2569
    return-object v0
.end method

.method private static createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "arguments"
        }
    .end annotation

    .line 2574
    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0, p1}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2575
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    const-class v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 2577
    return-object v0
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 8
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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 2468
    const/4 v0, 0x0

    .line 2471
    .local v0, "result":Ljava/security/cert/X509CRL;
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2473
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

    .line 2475
    :cond_0
    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 2476
    .local v4, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v4, v2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2478
    invoke-virtual {v4, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2479
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 2480
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_2

    .line 2482
    const-string v5, "X.509"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 2483
    .local v5, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509CRL;

    move-object v0, v6

    .line 2484
    .end local v5    # "cf":Ljava/security/cert/CertificateFactory;
    nop

    .line 2498
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    :cond_1
    nop

    .line 2499
    return-object v0

    .line 2487
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

    .line 2491
    .end local v3    # "url":Ljava/net/URL;
    .end local v4    # "conn":Ljava/net/HttpURLConnection;
    .restart local v0    # "result":Ljava/security/cert/X509CRL;
    .restart local p1    # "location":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 2493
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v4, p1}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    .line 2496
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v2

    aput-object v5, v7, v1

    const/4 v1, 0x2

    aput-object v3, v7, v1

    const/4 v1, 0x3

    aput-object v6, v7, v1

    .line 2493
    const-string v1, "CertPathReviewer.loadCrlDistPointError"

    invoke-static {v1, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2497
    .local v1, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 19
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

    .line 1955
    move-object/from16 v1, p0

    move/from16 v2, p2

    const/4 v0, 0x0

    .line 1957
    .local v0, "unknownStatement":Z
    :try_start_0
    sget-object v4, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v5, p1

    :try_start_1
    invoke-static {v5, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1958
    .local v4, "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 1960
    invoke-virtual {v4, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v7

    .line 1961
    .local v7, "stmt":Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1964
    const-string v8, "CertPathReviewer.QcEuCompliance"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 1965
    .local v8, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v8, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1966
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    move-object/from16 v17, v4

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1967
    :cond_0
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_1

    move-object/from16 v17, v4

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1971
    :cond_1
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1974
    const-string v8, "CertPathReviewer.QcSSCD"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 1975
    .restart local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v8, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1976
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    move-object/from16 v17, v4

    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1977
    :cond_2
    sget-object v8, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_4

    .line 1980
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v8

    .line 1981
    .local v8, "limit":Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    .line 1982
    .local v11, "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v14
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v17, v4

    const/16 v16, 0x0

    .end local v4    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v17, "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    :try_start_2
    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    mul-double v12, v12, v3

    .line 1984
    .local v12, "value":D
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_3

    .line 1986
    const-string v3, "CertPathReviewer.QcLimitValueAlpha"

    .line 1987
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    const/16 v18, 0x1

    new-instance v10, Ljava/lang/Double;

    invoke-direct {v10, v12, v13}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v15, v10}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v14, v4, v16

    aput-object v15, v4, v18

    aput-object v8, v4, v9

    .line 1986
    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .local v3, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_1

    .line 1993
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_3
    const/16 v18, 0x1

    const-string v3, "CertPathReviewer.QcLimitValueNum"

    .line 1994
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v10

    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v10

    invoke-static {v10}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    new-instance v14, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    new-instance v15, Ljava/lang/Double;

    invoke-direct {v15, v12, v13}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v14, v15}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v10, v4, v16

    aput-object v14, v4, v18

    aput-object v8, v4, v9

    .line 1993
    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 1998
    .restart local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_1
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 1999
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v8    # "limit":Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    .end local v11    # "currency":Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .end local v12    # "value":D
    goto :goto_2

    .line 2002
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v4    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_4
    move-object/from16 v17, v4

    const/16 v16, 0x0

    const/16 v18, 0x1

    .end local v4    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    const-string v3, "CertPathReviewer.QcUnknownStatement"

    .line 2003
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v8, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v4, v9, v16

    aput-object v8, v9, v18

    .line 2002
    invoke-static {v3, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 2004
    .restart local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2005
    const/4 v0, 0x1

    .line 1958
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v7    # "stmt":Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v4, v17

    goto/16 :goto_0

    .line 2011
    .end local v0    # "unknownStatement":Z
    .end local v6    # "j":I
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1958
    .restart local v0    # "unknownStatement":Z
    .restart local v4    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v6    # "j":I
    :cond_5
    move-object/from16 v17, v4

    .line 2009
    .end local v4    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v6    # "j":I
    .restart local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    xor-int/lit8 v3, v0, 0x1

    return v3

    .line 2011
    .end local v0    # "unknownStatement":Z
    .end local v17    # "qcSt":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v5, p1

    :goto_3
    const/16 v16, 0x0

    .line 2013
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_4
    const-string v3, "CertPathReviewer.QcStatementExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    .line 2014
    .restart local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2017
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v3    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    return v16
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 373
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void
.end method

.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
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

    .line 378
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 382
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    return-void

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 359
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 2
    .param p1, "msg"    # Lorg/bouncycastle/pkix/util/ErrorBundle;
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

    .line 364
    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge p2, v0, :cond_0

    .line 368
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    return-void

    .line 366
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 28
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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 2067
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move/from16 v6, p7

    const-string v7, "CertPathReviewer.distrPtExtError"

    const-string v8, "CertPathReviewer.crlExtractionError"

    const-string v9, "CertPathReviewer.crlIssuerException"

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    move-object v10, v0

    .line 2071
    .local v10, "crlselect":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    :try_start_0
    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_15

    .line 2077
    nop

    .line 2079
    invoke-virtual {v10, v3}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 2084
    :try_start_1
    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v0

    .line 2085
    .local v0, "crl_coll":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2087
    .local v15, "crl_iter":Ljava/util/Iterator;
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v16
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v16, :cond_1

    .line 2090
    const/16 v16, 0x0

    :try_start_2
    new-instance v14, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v14}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    invoke-static {v14, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v14

    .line 2091
    .end local v0    # "crl_coll":Ljava/util/Collection;
    .local v14, "crl_coll":Ljava/util/Collection;
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2092
    .local v0, "it":Ljava/util/Iterator;
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 2093
    .local v18, "nonMatchingCrlNames":Ljava/util/List;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v17, :cond_0

    .line 2095
    :try_start_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/X509CRL;
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    const/16 v19, 0x1

    :try_start_4
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v13
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_0

    move-object/from16 v12, v18

    const/16 v17, 0x2

    .end local v18    # "nonMatchingCrlNames":Ljava/util/List;
    .local v12, "nonMatchingCrlNames":Ljava/util/List;
    :try_start_5
    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v18, v12

    goto :goto_0

    .line 2106
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v12    # "nonMatchingCrlNames":Ljava/util/List;
    .end local v14    # "crl_coll":Ljava/util/Collection;
    .end local v15    # "crl_iter":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    const/16 v17, 0x2

    goto :goto_1

    :catch_1
    move-exception v0

    const/16 v17, 0x2

    const/16 v19, 0x1

    goto :goto_1

    .line 2097
    .restart local v0    # "it":Ljava/util/Iterator;
    .restart local v14    # "crl_coll":Ljava/util/Collection;
    .restart local v15    # "crl_iter":Ljava/util/Iterator;
    .restart local v18    # "nonMatchingCrlNames":Ljava/util/List;
    :cond_0
    move-object/from16 v12, v18

    const/16 v17, 0x2

    const/16 v19, 0x1

    .end local v18    # "nonMatchingCrlNames":Ljava/util/List;
    .restart local v12    # "nonMatchingCrlNames":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 2098
    .local v13, "numbOfCrls":I
    const-string v11, "CertPathReviewer.noCrlInCertstore"

    move-object/from16 v20, v0

    .end local v0    # "it":Ljava/util/Iterator;
    .local v20, "it":Ljava/util/Iterator;
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2100
    move-object/from16 v21, v7

    :try_start_6
    invoke-virtual {v10}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v7, v12}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    .line 2102
    invoke-static {v13}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v24, v0

    move-object/from16 v23, v7

    const/4 v7, 0x3

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v24, v0, v16

    aput-object v23, v0, v19

    aput-object v22, v0, v17

    .line 2098
    invoke-static {v11, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2103
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 2106
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v12    # "nonMatchingCrlNames":Ljava/util/List;
    .end local v13    # "numbOfCrls":I
    .end local v14    # "crl_coll":Ljava/util/Collection;
    .end local v15    # "crl_iter":Ljava/util/Iterator;
    .end local v20    # "it":Ljava/util/Iterator;
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    :goto_1
    move-object/from16 v21, v7

    goto :goto_4

    :catch_4
    move-exception v0

    move-object/from16 v21, v7

    goto :goto_3

    .line 2087
    .local v0, "crl_coll":Ljava/util/Collection;
    .restart local v15    # "crl_iter":Ljava/util/Iterator;
    :cond_1
    move-object/from16 v21, v7

    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v19, 0x1

    .line 2112
    .end local v0    # "crl_coll":Ljava/util/Collection;
    :goto_2
    goto :goto_5

    .line 2106
    .end local v15    # "crl_iter":Ljava/util/Iterator;
    :catch_5
    move-exception v0

    move-object/from16 v21, v7

    const/16 v16, 0x0

    :goto_3
    const/16 v17, 0x2

    const/16 v19, 0x1

    .line 2108
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_4
    nop

    .line 2109
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    new-array v14, v13, [Ljava/lang/Object;

    aput-object v7, v14, v16

    aput-object v11, v14, v19

    aput-object v12, v14, v17

    .line 2108
    invoke-static {v8, v14}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 2110
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2111
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 2114
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .restart local v15    # "crl_iter":Ljava/util/Iterator;
    :goto_5
    const/4 v0, 0x0

    .line 2115
    .local v0, "validCrlFound":Z
    const/4 v7, 0x0

    .line 2116
    .local v7, "crl":Ljava/security/cert/X509CRL;
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 2118
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Ljava/security/cert/X509CRL;

    .line 2120
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v11

    .line 2121
    .local v11, "thisUpdate":Ljava/util/Date;
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v12

    .line 2122
    .local v12, "nextUpdate":Ljava/util/Date;
    new-instance v13, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v13, v11}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v14, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v14, v12}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    move/from16 v22, v0

    move-object/from16 v20, v7

    const/4 v7, 0x2

    .end local v0    # "validCrlFound":Z
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .local v20, "crl":Ljava/security/cert/X509CRL;
    .local v22, "validCrlFound":Z
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v13, v0, v16

    aput-object v14, v0, v19

    .line 2124
    .local v0, "arguments":[Ljava/lang/Object;
    if-eqz v12, :cond_3

    invoke-virtual {v4, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_7

    .line 2132
    :cond_2
    const-string v7, "CertPathReviewer.localInvalidCRL"

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 2133
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2134
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v11    # "thisUpdate":Ljava/util/Date;
    .end local v12    # "nextUpdate":Ljava/util/Date;
    move-object/from16 v7, v20

    move/from16 v0, v22

    const/16 v17, 0x2

    goto :goto_6

    .line 2126
    .restart local v0    # "arguments":[Ljava/lang/Object;
    .restart local v11    # "thisUpdate":Ljava/util/Date;
    .restart local v12    # "nextUpdate":Ljava/util/Date;
    :cond_3
    :goto_7
    const/4 v7, 0x1

    .line 2127
    .end local v22    # "validCrlFound":Z
    .local v7, "validCrlFound":Z
    const-string v13, "CertPathReviewer.localValidCRL"

    invoke-static {v13, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v13

    .line 2128
    .local v13, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v13, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2129
    move v0, v7

    move-object/from16 v7, v20

    goto :goto_8

    .line 2116
    .end local v11    # "thisUpdate":Ljava/util/Date;
    .end local v12    # "nextUpdate":Ljava/util/Date;
    .end local v13    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "validCrlFound":Z
    .local v7, "crl":Ljava/security/cert/X509CRL;
    :cond_4
    move/from16 v22, v0

    .line 2138
    :goto_8
    if-nez v0, :cond_a

    .line 2140
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    .line 2142
    .local v11, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    const/4 v12, 0x0

    .line 2143
    .local v12, "onlineCRL":Ljava/security/cert/X509CRL;
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move-object v14, v12

    move v12, v0

    .line 2144
    .end local v0    # "validCrlFound":Z
    .local v12, "validCrlFound":Z
    .local v13, "urlIt":Ljava/util/Iterator;
    .local v14, "onlineCRL":Ljava/security/cert/X509CRL;
    :goto_9
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2148
    :try_start_7
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2149
    .local v0, "location":Ljava/lang/String;
    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v20

    move-object/from16 v14, v20

    .line 2150
    if-eqz v14, :cond_8

    .line 2152
    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v20
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_b

    move-object/from16 v22, v20

    .line 2155
    .local v22, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v20, v7

    move-object/from16 v7, v22

    .end local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .local v7, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    :try_start_8
    invoke-virtual {v11, v7}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_5

    .line 2157
    move-object/from16 v22, v7

    .end local v7    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    const-string v7, "CertPathReviewer.onlineCRLWrongCA"
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_a

    move-object/from16 v23, v8

    :try_start_9
    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_6

    .line 2158
    move-object/from16 v24, v9

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v9, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    move-object/from16 v25, v8

    invoke-virtual {v11}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v8, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v26, v8

    move-object/from16 v27, v9

    const/4 v8, 0x3

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v25, v9, v16

    aput-object v27, v9, v19

    const/16 v17, 0x2

    aput-object v26, v9, v17

    .line 2157
    invoke-static {v7, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v7

    .line 2160
    .local v7, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v7, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2161
    const/4 v7, 0x3

    goto/16 :goto_e

    .line 2184
    .end local v0    # "location":Ljava/lang/String;
    .end local v7    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    :catch_6
    move-exception v0

    goto :goto_b

    .line 2164
    .restart local v0    # "location":Ljava/lang/String;
    .local v7, "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    :cond_5
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .end local v7    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v7

    .line 2165
    .local v7, "thisUpdate":Ljava/util/Date;
    invoke-virtual {v14}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v8

    .line 2166
    .local v8, "nextUpdate":Ljava/util/Date;
    new-instance v9, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v9, v7}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v25, v7

    .end local v7    # "thisUpdate":Ljava/util/Date;
    .local v25, "thisUpdate":Ljava/util/Date;
    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v7, v8}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    move-object/from16 v26, v7

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v7, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_9

    move-object/from16 v18, v0

    move-object/from16 v27, v7

    const/4 v7, 0x3

    .end local v0    # "location":Ljava/lang/String;
    .local v18, "location":Ljava/lang/String;
    :try_start_b
    new-array v0, v7, [Ljava/lang/Object;

    aput-object v9, v0, v16

    aput-object v26, v0, v19

    const/16 v17, 0x2

    aput-object v27, v0, v17

    .line 2169
    .local v0, "arguments":[Ljava/lang/Object;
    if-eqz v8, :cond_7

    invoke-virtual {v4, v8}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_a

    .line 2179
    :cond_6
    const-string v9, "CertPathReviewer.onlineInvalidCRL"

    invoke-static {v9, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v9

    .line 2181
    .local v9, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v9, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_d

    .line 2184
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v8    # "nextUpdate":Ljava/util/Date;
    .end local v9    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v18    # "location":Ljava/lang/String;
    .end local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "thisUpdate":Ljava/util/Date;
    :catch_7
    move-exception v0

    goto :goto_f

    .line 2171
    .restart local v0    # "arguments":[Ljava/lang/Object;
    .restart local v8    # "nextUpdate":Ljava/util/Date;
    .restart local v18    # "location":Ljava/lang/String;
    .restart local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .restart local v25    # "thisUpdate":Ljava/util/Date;
    :cond_7
    :goto_a
    const/4 v9, 0x1

    .line 2172
    .end local v12    # "validCrlFound":Z
    .local v9, "validCrlFound":Z
    :try_start_c
    const-string v12, "CertPathReviewer.onlineValidCRL"

    invoke-static {v12, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v12

    .line 2174
    .local v12, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v12, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_8

    .line 2175
    move-object v7, v14

    .line 2176
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .local v7, "crl":Ljava/security/cert/X509CRL;
    goto :goto_10

    .line 2184
    .end local v0    # "arguments":[Ljava/lang/Object;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .end local v8    # "nextUpdate":Ljava/util/Date;
    .end local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v18    # "location":Ljava/lang/String;
    .end local v22    # "crlIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v25    # "thisUpdate":Ljava/util/Date;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    :catch_8
    move-exception v0

    move v12, v9

    goto :goto_f

    .end local v9    # "validCrlFound":Z
    .local v12, "validCrlFound":Z
    :catch_9
    move-exception v0

    goto :goto_c

    :catch_a
    move-exception v0

    move-object/from16 v23, v8

    :goto_b
    move-object/from16 v24, v9

    :goto_c
    const/4 v7, 0x3

    goto :goto_f

    .line 2150
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "location":Ljava/lang/String;
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    :cond_8
    move-object/from16 v18, v0

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    const/4 v7, 0x3

    .line 2187
    .end local v0    # "location":Ljava/lang/String;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    :goto_d
    nop

    .line 2144
    :goto_e
    move-object/from16 v7, v20

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    goto/16 :goto_9

    .line 2184
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    :catch_b
    move-exception v0

    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    const/4 v7, 0x3

    .line 2186
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    :goto_f
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    invoke-virtual {v1, v8, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2187
    .end local v0    # "cpre":Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
    move-object/from16 v7, v20

    move-object/from16 v8, v23

    move-object/from16 v9, v24

    goto/16 :goto_9

    .line 2144
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    :cond_9
    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    move v9, v12

    goto :goto_10

    .line 2138
    .end local v11    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v12    # "validCrlFound":Z
    .end local v13    # "urlIt":Ljava/util/Iterator;
    .end local v14    # "onlineCRL":Ljava/security/cert/X509CRL;
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .local v0, "validCrlFound":Z
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    :cond_a
    move-object/from16 v20, v7

    move-object/from16 v23, v8

    move-object/from16 v24, v9

    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .restart local v20    # "crl":Ljava/security/cert/X509CRL;
    move v9, v0

    .line 2193
    .end local v0    # "validCrlFound":Z
    .end local v20    # "crl":Ljava/security/cert/X509CRL;
    .restart local v7    # "crl":Ljava/security/cert/X509CRL;
    .restart local v9    # "validCrlFound":Z
    :goto_10
    if-eqz v7, :cond_1c

    .line 2195
    if-eqz p4, :cond_c

    .line 2197
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 2199
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_c

    array-length v8, v0

    const/4 v11, 0x6

    if-le v8, v11, :cond_b

    aget-boolean v8, v0, v11

    if-eqz v8, :cond_b

    goto :goto_11

    .line 2201
    :cond_b
    const-string v8, "CertPathReviewer.noCrlSigningPermited"

    invoke-static {v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v8

    .line 2202
    .local v8, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v11, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v11, v8}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v11

    .line 2206
    .end local v0    # "keyUsage":[Z
    .end local v8    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_c
    :goto_11
    if-eqz v5, :cond_1b

    .line 2210
    :try_start_d
    const-string v0, "BC"

    invoke-virtual {v7, v5, v0}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_14

    .line 2216
    nop

    .line 2224
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v8

    .line 2225
    .local v8, "crl_entry":Ljava/security/cert/X509CRLEntry;
    if-eqz v8, :cond_10

    .line 2227
    const/4 v11, 0x0

    .line 2229
    .local v11, "reason":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2234
    :try_start_e
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object v0
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_c

    .line 2240
    .local v0, "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    nop

    .line 2241
    if-eqz v0, :cond_d

    .line 2243
    sget-object v12, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v13

    aget-object v11, v12, v13

    goto :goto_12

    .line 2236
    .end local v0    # "reasonCode":Lorg/bouncycastle/asn1/ASN1Enumerated;
    :catch_c
    move-exception v0

    .line 2238
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v12, "CertPathReviewer.crlReasonExtError"

    invoke-static {v12}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v12

    .line 2239
    .local v12, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v13, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v13, v12, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v13

    .line 2247
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_d
    :goto_12
    if-nez v11, :cond_e

    .line 2249
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/4 v12, 0x7

    aget-object v11, v0, v12

    .line 2253
    :cond_e
    new-instance v0, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v12, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v12, v11}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2255
    .local v0, "ls":Lorg/bouncycastle/pkix/util/LocaleString;
    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v12

    if-eqz v12, :cond_f

    .line 2263
    new-instance v12, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    .line 2264
    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v16

    aput-object v0, v13, v19

    .line 2263
    const-string v12, "CertPathReviewer.revokedAfterValidation"

    invoke-static {v12, v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v12

    .line 2265
    .restart local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v12, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2267
    .end local v0    # "ls":Lorg/bouncycastle/pkix/util/LocaleString;
    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    goto :goto_13

    .line 2257
    .restart local v0    # "ls":Lorg/bouncycastle/pkix/util/LocaleString;
    .restart local v11    # "reason":Ljava/lang/String;
    :cond_f
    new-instance v12, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    .line 2258
    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v12, v13, v16

    aput-object v0, v13, v19

    .line 2257
    const-string v12, "CertPathReviewer.certRevoked"

    invoke-static {v12, v13}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v12

    .line 2259
    .restart local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v13, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v13, v12}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v13

    .line 2270
    .end local v0    # "ls":Lorg/bouncycastle/pkix/util/LocaleString;
    .end local v11    # "reason":Ljava/lang/String;
    .end local v12    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_10
    const-string v0, "CertPathReviewer.notRevoked"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2271
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2277
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :goto_13
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v11

    .line 2278
    .local v11, "nextUpdate":Ljava/util/Date;
    if-eqz v11, :cond_11

    invoke-virtual {v4, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 2280
    new-instance v0, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v0, v11}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v0, v12, v16

    const-string v0, "CertPathReviewer.crlUpdateAvailable"

    invoke-static {v0, v12}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2282
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    invoke-virtual {v1, v0, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    .line 2291
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_11
    :try_start_f
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_f .. :try_end_f} :catch_13

    move-object v12, v0

    .line 2297
    .local v12, "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2301
    :try_start_10
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_10
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_12

    move-object v13, v0

    .line 2307
    .local v13, "dci":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2309
    if-eqz v13, :cond_15

    .line 2311
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    move-object v14, v0

    .line 2315
    .local v14, "baseSelect":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    :try_start_11
    invoke-static {v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 2321
    nop

    .line 2323
    move-object v0, v13

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 2326
    :try_start_12
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v7, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v0

    const-wide/16 v16, 0x1

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v14, v0}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_12
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_12 .. :try_end_12} :catch_f

    .line 2332
    nop

    .line 2334
    const/4 v1, 0x0

    .line 2338
    .local v1, "foundBase":Z
    :try_start_13
    invoke-static {v14, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_13
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_13 .. :try_end_13} :catch_e

    move-object/from16 v16, v0

    .line 2344
    .local v16, "it":Ljava/util/Iterator;
    nop

    .line 2345
    :goto_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2347
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move/from16 v17, v1

    .end local v1    # "foundBase":Z
    .local v17, "foundBase":Z
    move-object v1, v0

    check-cast v1, Ljava/security/cert/X509CRL;

    .line 2352
    .local v1, "base":Ljava/security/cert/X509CRL;
    :try_start_14
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0
    :try_end_14
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_14 .. :try_end_14} :catch_d

    .line 2358
    .local v0, "baseIdp":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 2360
    invoke-static {v12, v0}, Lorg/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 2362
    const/16 v17, 0x1

    .line 2363
    move/from16 v1, v17

    goto :goto_15

    .line 2365
    .end local v0    # "baseIdp":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v1    # "base":Ljava/security/cert/X509CRL;
    :cond_12
    move/from16 v1, v17

    goto :goto_14

    .line 2354
    .restart local v1    # "base":Ljava/security/cert/X509CRL;
    :catch_d
    move-exception v0

    .line 2356
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    move-object/from16 v18, v1

    .end local v1    # "base":Ljava/security/cert/X509CRL;
    .local v18, "base":Ljava/security/cert/X509CRL;
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2357
    .local v1, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2

    .line 2345
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v17    # "foundBase":Z
    .end local v18    # "base":Ljava/security/cert/X509CRL;
    .local v1, "foundBase":Z
    :cond_13
    move/from16 v17, v1

    .line 2367
    :goto_15
    if-eqz v1, :cond_14

    goto :goto_16

    .line 2369
    :cond_14
    const-string v0, "CertPathReviewer.noBaseCRL"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2370
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    .line 2340
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v16    # "it":Ljava/util/Iterator;
    :catch_e
    move-exception v0

    move/from16 v17, v1

    .line 2342
    .end local v1    # "foundBase":Z
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v17    # "foundBase":Z
    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2343
    .local v1, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2

    .line 2328
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v17    # "foundBase":Z
    :catch_f
    move-exception v0

    .line 2330
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v1, "CertPathReviewer.crlNbrExtError"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2331
    .restart local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2

    .line 2317
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :catch_10
    move-exception v0

    .line 2319
    .local v0, "e":Ljava/io/IOException;
    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2320
    .restart local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2

    .line 2374
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v14    # "baseSelect":Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;
    :cond_15
    :goto_16
    if-eqz v12, :cond_1c

    .line 2376
    invoke-static {v12}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1

    .line 2377
    .local v1, "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v2, 0x0

    .line 2380
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_15
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0
    :try_end_15
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_15 .. :try_end_15} :catch_11

    .line 2386
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v0, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2388
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v2

    if-eqz v2, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_17

    .line 2390
    :cond_16
    const-string v2, "CertPathReviewer.crlOnlyUserCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 2391
    .local v2, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v14, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v14, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v14

    .line 2394
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_17
    :goto_17
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v2

    if-eqz v2, :cond_19

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_18

    goto :goto_18

    .line 2396
    :cond_18
    const-string v2, "CertPathReviewer.crlOnlyCaCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 2397
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v14, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v14, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v14

    .line 2400
    .end local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_19
    :goto_18
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_19

    .line 2402
    :cond_1a
    const-string v2, "CertPathReviewer.crlOnlyAttrCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    .line 2403
    .restart local v2    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v14, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v14, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v14

    .line 2382
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_11
    move-exception v0

    .line 2384
    .local v0, "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v14, "CertPathReviewer.crlBCExtError"

    invoke-static {v14}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v14

    .line 2385
    .local v14, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    move-object/from16 v16, v1

    .end local v1    # "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v16, "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v1, v14, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v1

    .line 2303
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v13    # "dci":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v14    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v16    # "p":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_12
    move-exception v0

    .line 2305
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const-string v1, "CertPathReviewer.deltaCrlExtError"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2306
    .local v1, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    .line 2293
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v12    # "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_13
    move-exception v0

    .line 2295
    .restart local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2296
    .restart local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v2

    .line 2212
    .end local v0    # "ae":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v8    # "crl_entry":Ljava/security/cert/X509CRLEntry;
    .end local v11    # "nextUpdate":Ljava/util/Date;
    :catch_14
    move-exception v0

    .line 2214
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CertPathReviewer.crlVerifyFailed"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2215
    .restart local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2

    .line 2220
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_1b
    const-string v0, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2221
    .local v0, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v1

    .line 2408
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    :cond_1c
    :goto_19
    if-eqz v9, :cond_1d

    .line 2413
    return-void

    .line 2410
    :cond_1d
    const-string v0, "CertPathReviewer.noValidCrlFound"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    .line 2411
    .restart local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v1

    .line 2073
    .end local v0    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    .end local v7    # "crl":Ljava/security/cert/X509CRL;
    .end local v9    # "validCrlFound":Z
    .end local v15    # "crl_iter":Ljava/util/Iterator;
    :catch_15
    move-exception v0

    move-object/from16 v24, v9

    .line 2075
    .local v0, "e":Ljava/io/IOException;
    invoke-static/range {v24 .. v24}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    .line 2076
    .restart local v1    # "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v2
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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 2053
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    .line 2054
    return-void
.end method

.method protected doChecks()V
    .locals 3

    .line 387
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_1

    .line 394
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 395
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 397
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 399
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 400
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 397
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 404
    .end local v0    # "i":I
    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkSignatures()V

    .line 407
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkNameConstraints()V

    .line 410
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPathLength()V

    .line 413
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPolicy()V

    .line 416
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCriticalExtensions()V

    .line 419
    :cond_1
    return-void

    .line 389
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

    .line 2417
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2419
    .local v0, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_2

    .line 2421
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    .line 2422
    .local v1, "distPoints":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 2424
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v3

    .line 2425
    .local v3, "dp_name":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 2427
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 2428
    .local v4, "generalNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_1

    .line 2430
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_0

    .line 2432
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v6

    .line 2433
    .local v6, "url":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2428
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2422
    .end local v3    # "dp_name":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4    # "generalNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2439
    .end local v1    # "distPoints":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    .line 247
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

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

    .line 273
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 274
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    .line 260
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 261
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

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

    .line 300
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 301
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    .line 287
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 288
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

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

    .line 2444
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 2446
    .local v0, "urls":Ljava/util/Vector;
    if-eqz p1, :cond_1

    .line 2448
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v1

    .line 2449
    .local v1, "ads":[Lorg/bouncycastle/asn1/x509/AccessDescription;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 2451
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v3

    sget-object v4, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2453
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 2454
    .local v3, "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 2456
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v4

    .line 2457
    .local v4, "url":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2449
    .end local v3    # "name":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2463
    .end local v1    # "ads":[Lorg/bouncycastle/asn1/x509/AccessDescription;
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    .line 311
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 312
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 322
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 323
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    .line 333
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 334
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 2504
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2505
    .local v0, "trustColl":Ljava/util/Collection;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2507
    .local v1, "it":Ljava/util/Iterator;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2511
    .local v2, "certSelectX509":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    .line 2512
    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    .line 2514
    .local v3, "ext":[B
    if-eqz v3, :cond_1

    .line 2516
    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 2517
    .local v4, "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v5

    .line 2520
    .local v5, "authID":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    .line 2521
    .local v6, "serial":Ljava/math/BigInteger;
    if-eqz v6, :cond_0

    .line 2523
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    goto :goto_0

    .line 2527
    :cond_0
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v7

    .line 2528
    .local v7, "keyID":[B
    if-eqz v7, :cond_1

    .line 2530
    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    .end local v3    # "ext":[B
    .end local v4    # "oct":Lorg/bouncycastle/asn1/ASN1OctetString;
    .end local v5    # "authID":Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;
    .end local v6    # "serial":Ljava/math/BigInteger;
    .end local v7    # "keyID":[B
    :cond_1
    :goto_0
    nop

    .line 2541
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 2544
    .local v3, "trust":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2546
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2548
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2551
    :cond_2
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2553
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 2554
    .local v4, "certIssuer":Ljavax/security/auth/x500/X500Principal;
    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2555
    .local v5, "caName":Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2557
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 2560
    .end local v3    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v4    # "certIssuer":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "caName":Ljavax/security/auth/x500/X500Principal;
    :cond_3
    :goto_2
    goto :goto_1

    .line 2561
    :cond_4
    return-object v0

    .line 2535
    :catch_0
    move-exception v3

    .line 2537
    .local v3, "ex":Ljava/io/IOException;
    const-string v4, "CertPathReviewer.trustAnchorIssuerError"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    .line 2538
    .local v4, "msg":Lorg/bouncycastle/pkix/util/ErrorBundle;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v5, v4}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

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
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_6

    .line 131
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    .line 134
    if-eqz p1, :cond_5

    .line 139
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, "cs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 145
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

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 149
    .local v3, "ta":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v3    # "ta":Ljava/security/cert/TrustAnchor;
    goto :goto_0

    .line 152
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "certs":Ljava/util/List;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 156
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 158
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .end local v3    # "i":I
    :cond_2
    :try_start_0
    const-string v3, "X.509"

    const-string v4, "BC"

    invoke-static {v3, v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    .line 165
    .local v3, "cf":Ljava/security/cert/CertificateFactory;
    invoke-virtual {v3, v2}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v3    # "cf":Ljava/security/cert/CertificateFactory;
    nop

    .line 171
    iput-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 172
    .end local v0    # "tas":Ljava/util/Set;
    .end local v2    # "certs":Ljava/util/List;
    goto :goto_2

    .line 167
    .restart local v0    # "tas":Ljava/util/Set;
    .restart local v2    # "certs":Ljava/util/List;
    :catch_0
    move-exception v3

    .line 169
    .local v3, "e":Ljava/security/GeneralSecurityException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "unable to rebuild certpath"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 175
    .end local v0    # "tas":Ljava/util/Set;
    .end local v2    # "certs":Ljava/util/List;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    .line 176
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 179
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    .line 180
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 186
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 194
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    .line 195
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getValidityDate(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    .line 205
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 206
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 207
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 208
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 209
    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    .line 210
    return-void

    .line 182
    :cond_4
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    .line 183
    const-string v2, "CertPathReviewer.emptyCertPath"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v0

    .line 136
    .end local v1    # "cs":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidCertPath()Z
    .locals 3

    .line 344
    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    .line 345
    const/4 v0, 0x1

    .line 346
    .local v0, "valid":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 348
    iget-object v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    const/4 v0, 0x0

    .line 351
    goto :goto_1

    .line 346
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return v0
.end method

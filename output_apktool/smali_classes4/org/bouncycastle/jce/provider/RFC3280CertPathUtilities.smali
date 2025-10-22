.class Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field public static final CERTIFICATE_POLICIES:Ljava/lang/String;

.field public static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field public static final CRL_NUMBER:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final INHIBIT_ANY_POLICY:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5

.field public static final KEY_USAGE:Ljava/lang/String;

.field public static final NAME_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field public static final POLICY_MAPPINGS:Ljava/lang/String;

.field public static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;

.field private static final revChkClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 67
    const-class v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;

    const-string v1, "java.security.cert.PKIXRevocationChecker"

    invoke-static {v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/ClassUtil;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    .line 388
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->certificatePolicies:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 390
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyMappings:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 392
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 394
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 396
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 398
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 400
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 402
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 404
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 406
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->subjectAlternativeName:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 408
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->nameConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 410
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    .line 412
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 414
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLNumber:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 2231
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

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCRL(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 23
    .param p0, "params"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p2, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p3, "currentDate"    # Ljava/util/Date;
    .param p4, "validityDate"    # Ljava/util/Date;
    .param p5, "cert"    # Ljava/security/cert/X509Certificate;
    .param p6, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p7, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p8, "certStatus"    # Lorg/bouncycastle/jce/provider/CertStatus;
    .param p9, "reasonMask"    # Lorg/bouncycastle/jce/provider/ReasonsMask;
    .param p10, "certPathCerts"    # Ljava/util/List;
    .param p11, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
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
            "params",
            "dp",
            "paramsPKIX",
            "currentDate",
            "validityDate",
            "cert",
            "defaultCRLSignCert",
            "defaultCRLSignKey",
            "certStatus",
            "reasonMask",
            "certPathCerts",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1674
    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v3, p5

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    if-nez p3, :cond_0

    .line 1676
    nop

    .line 1678
    :cond_0
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    cmp-long v0, v4, v7

    if-gtz v0, :cond_c

    .line 1691
    move-object/from16 v12, p0

    invoke-static {v12, v1, v3, v6, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v13

    .line 1692
    .local v13, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 1693
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 1694
    .local v2, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    move-object/from16 v16, v2

    .line 1696
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v14, "crl_iter":Ljava/util/Iterator;
    .local v15, "validCrlFound":Z
    .local v16, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_a

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1700
    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 1703
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    .line 1711
    .local v4, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v4, v11}, Lorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v5, :cond_1

    .line 1713
    goto :goto_0

    .line 1717
    :cond_1
    move-object/from16 v5, p7

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object v2, v0

    move-object v0, v4

    const/16 v12, 0xb

    move-object/from16 v4, p6

    .end local v4    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v0, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_1
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v17
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v17

    .line 1720
    .local v4, "keys":Ljava/util/Set;
    :try_start_2
    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v5

    .line 1722
    .local v5, "key":Ljava/security/PublicKey;
    const/4 v7, 0x0

    .line 1724
    .local v7, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1727
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v12
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v4

    move-object/from16 v4, p11

    .end local v4    # "keys":Ljava/util/Set;
    .local v18, "keys":Ljava/util/Set;
    :try_start_3
    invoke-static {v9, v2, v8, v12, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v8

    .line 1730
    .local v8, "deltaCRLs":Ljava/util/Set;
    invoke-static {v8, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v12

    move-object v7, v12

    goto :goto_1

    .line 1724
    .end local v8    # "deltaCRLs":Ljava/util/Set;
    .end local v18    # "keys":Ljava/util/Set;
    .restart local v4    # "keys":Ljava/util/Set;
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v4, p11

    .line 1746
    .end local v4    # "keys":Ljava/util/Set;
    .restart local v18    # "keys":Ljava/util/Set;
    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_4

    .line 1753
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    cmp-long v8, v19, v21

    if-ltz v8, :cond_3

    goto :goto_2

    .line 1755
    :cond_3
    new-instance v8, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "No valid CRL for current time found."

    invoke-direct {v8, v12}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 1759
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_4
    :goto_2
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1762
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 1765
    invoke-static {v7, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1768
    invoke-static {v9, v7, v3, v10, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 1771
    invoke-static {v9, v2, v3, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    .line 1774
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v8

    const/16 v12, 0x8

    if-ne v8, v12, :cond_5

    .line 1776
    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1780
    :cond_5
    invoke-virtual {v11, v0}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V

    .line 1782
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1783
    .local v8, "criticalExtensions":Ljava/util/Set;
    if-eqz v8, :cond_7

    .line 1785
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v12

    .line 1786
    sget-object v12, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1787
    sget-object v12, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1789
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_6

    move-object/from16 v17, v0

    goto :goto_3

    .line 1791
    :cond_6
    new-instance v12, Lorg/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v17, v0

    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v17, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    const-string v0, "CRL contains unsupported critical extensions."

    invoke-direct {v12, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v12

    .line 1783
    .end local v17    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_7
    move-object/from16 v17, v0

    .line 1795
    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v17    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    :goto_3
    if-eqz v7, :cond_9

    .line 1797
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    .line 1798
    if-eqz v8, :cond_9

    .line 1800
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 1801
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1802
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1803
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 1805
    :cond_8
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v12, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v12}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "cert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local p10    # "certPathCerts":Ljava/util/List;
    .end local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v0
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1810
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p7    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p8    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local p9    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local p10    # "certPathCerts":Ljava/util/List;
    .restart local p11    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_9
    :goto_4
    const/4 v15, 0x1

    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .end local v17    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v18    # "keys":Ljava/util/Set;
    goto :goto_6

    .line 1812
    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v4, v8

    goto :goto_5

    :catch_2
    move-exception v0

    move-object/from16 v4, p11

    .line 1814
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_5
    move-object/from16 v16, v0

    .line 1815
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_6
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 1696
    :cond_a
    move-object/from16 v4, p11

    .line 1817
    if-eqz v15, :cond_b

    .line 1821
    return-void

    .line 1819
    :cond_b
    throw v16

    .line 1680
    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_c
    move-object/from16 v4, p11

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static checkCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 22
    .param p0, "params"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .param p5, "sign"    # Ljava/security/cert/X509Certificate;
    .param p6, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p7, "certPathCerts"    # Ljava/util/List;
    .param p8, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "params",
            "paramsPKIX",
            "currentDate",
            "validityDate",
            "cert",
            "sign",
            "workingPublicKey",
            "certPathCerts",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Lorg/bouncycastle/jce/provider/RecoverableCertPathValidatorException;
        }
    .end annotation

    .line 1856
    const/4 v1, 0x0

    .line 1857
    .local v1, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 1860
    .local v2, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    move-object/from16 v8, p4

    invoke-static {v8, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-object v2, v0

    .line 1866
    nop

    .line 1868
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v15, p1

    invoke-direct {v0, v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v3, v0

    .line 1871
    .local v3, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    nop

    .line 1872
    :try_start_1
    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    .line 1871
    move-object/from16 v7, p3

    move-object/from16 v14, p8

    invoke-static {v2, v0, v7, v14}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;

    move-result-object v0

    .line 1873
    .local v0, "extras":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_6

    if-eqz v5, :cond_0

    .line 1875
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v3, v5}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1878
    .end local v0    # "extras":Ljava/util/List;
    .end local v4    # "it":Ljava/util/Iterator;
    :catch_0
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v1

    goto/16 :goto_8

    .line 1882
    :cond_0
    nop

    .line 1883
    new-instance v11, Lorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v11}, Lorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 1884
    .local v11, "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    new-instance v12, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 1885
    .local v12, "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v5

    .line 1887
    .local v5, "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v4, 0x0

    .line 1889
    .local v4, "validCrlFound":Z
    const/16 v6, 0xb

    if-eqz v2, :cond_3

    .line 1891
    const/4 v9, 0x0

    .line 1894
    .local v9, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_3
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v9, v0

    .line 1899
    nop

    .line 1900
    if-eqz v9, :cond_2

    .line 1902
    const/4 v0, 0x0

    move-object/from16 v16, v1

    move/from16 v17, v4

    move v1, v0

    .end local v4    # "validCrlFound":Z
    .local v1, "i":I
    .local v16, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v17, "validCrlFound":Z
    :goto_1
    array-length v0, v9

    if-ge v1, v0, :cond_1

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v6, :cond_1

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1906
    :try_start_4
    aget-object v4, v9, v1
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v6, p2

    move-object/from16 v10, p6

    move-object/from16 v13, p7

    move/from16 v20, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    const/16 v1, 0xb

    move-object/from16 v3, p0

    move-object/from16 v9, p5

    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .local v19, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v20, "i":I
    :try_start_5
    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v21, v5

    .line 1908
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v21, "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    const/4 v0, 0x1

    .line 1913
    .end local v17    # "validCrlFound":Z
    .local v0, "validCrlFound":Z
    move/from16 v17, v0

    goto :goto_3

    .line 1910
    .end local v0    # "validCrlFound":Z
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v17    # "validCrlFound":Z
    :catch_1
    move-exception v0

    move-object/from16 v21, v5

    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_2

    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v20    # "i":I
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "i":I
    .restart local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :catch_2
    move-exception v0

    move/from16 v20, v1

    move-object/from16 v18, v3

    move-object/from16 v19, v9

    const/16 v1, 0xb

    move-object/from16 v21, v5

    .line 1912
    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v20    # "i":I
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_2
    move-object v3, v0

    move-object/from16 v16, v3

    .line 1902
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_3
    add-int/lit8 v0, v20, 0x1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v14, p8

    move-object/from16 v3, v18

    move-object/from16 v9, v19

    move-object/from16 v5, v21

    const/16 v6, 0xb

    move v1, v0

    .end local v20    # "i":I
    .local v0, "i":I
    goto :goto_1

    .end local v0    # "i":I
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "i":I
    .restart local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :cond_1
    move/from16 v20, v1

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object/from16 v19, v9

    const/16 v1, 0xb

    .end local v1    # "i":I
    .end local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v20    # "i":I
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_5

    .line 1900
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v20    # "i":I
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v1, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v4    # "validCrlFound":Z
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :cond_2
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object/from16 v19, v9

    move-object v3, v1

    const/16 v1, 0xb

    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v3, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_4

    .line 1896
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v19    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :catch_3
    move-exception v0

    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object v3, v1

    .line 1898
    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v0, "e":Ljava/lang/Exception;
    .local v3, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Distribution points could not be read."

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1889
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v9    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3
    move-object/from16 v18, v3

    move-object/from16 v21, v5

    move-object v3, v1

    const/16 v1, 0xb

    .line 1924
    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v5    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v3, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_4
    move-object/from16 v16, v3

    move/from16 v17, v4

    .end local v3    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "validCrlFound":Z
    :goto_5
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v1, :cond_4

    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1936
    :try_start_6
    invoke-static/range {p4 .. p4}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1941
    .local v0, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    nop

    .line 1942
    :try_start_7
    new-instance v4, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v3, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v6, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v7, 0x4

    invoke-direct {v6, v7, v0}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v6, 0x0

    invoke-direct {v3, v6, v5}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v5}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 1944
    .local v4, "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 1945
    .local v5, "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v3, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v13, p7

    move-object/from16 v14, p8

    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->checkCRL(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 1947
    const/16 v17, 0x1

    .line 1952
    .end local v0    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v4    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v5    # "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v0, v16

    goto :goto_7

    .line 1949
    :catch_4
    move-exception v0

    goto :goto_6

    .line 1938
    :catch_5
    move-exception v0

    .line 1940
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v11    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local v12    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "sign":Ljava/security/cert/X509Certificate;
    .end local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .end local p7    # "certPathCerts":Ljava/util/List;
    .end local p8    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v3
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 1951
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v2    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v11    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local v12    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "validCrlFound":Z
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p0    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "sign":Ljava/security/cert/X509Certificate;
    .restart local p6    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local p7    # "certPathCerts":Ljava/util/List;
    .restart local p8    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :goto_6
    move-object/from16 v16, v0

    goto :goto_7

    .line 1955
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    move-object/from16 v0, v16

    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_7
    if-nez v17, :cond_6

    .line 1957
    instance-of v1, v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    if-eqz v1, :cond_5

    .line 1959
    throw v0

    .line 1962
    :cond_5
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "No valid CRL found."

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1964
    :cond_6
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 1972
    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v3

    const/16 v4, 0xc

    if-nez v3, :cond_7

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    if-ne v3, v1, :cond_7

    .line 1974
    invoke-virtual {v11, v4}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 1976
    :cond_7
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v1

    if-eq v1, v4, :cond_8

    .line 1980
    return-void

    .line 1978
    :cond_8
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Certificate status could not be determined."

    invoke-direct {v1, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1966
    :cond_9
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss Z"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1967
    .local v1, "df":Ljava/text/SimpleDateFormat;
    const-string v3, "UTC"

    invoke-static {v3}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1968
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Certificate revocation after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1969
    .local v3, "message":Ljava/lang/String;
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v5

    aget-object v4, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1970
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1878
    .end local v0    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v11    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local v12    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v17    # "validCrlFound":Z
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v21    # "finalParams":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v1, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :catch_6
    move-exception v0

    move-object/from16 v18, v3

    move-object v3, v1

    .line 1880
    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :goto_8
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1863
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v18    # "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_7
    move-exception v0

    move-object/from16 v15, p1

    move-object v3, v1

    .line 1865
    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v3    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "CRL distribution point extension could not be read."

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 26
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyNodes"    # [Ljava/util/List;
    .param p3, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyMapping"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "policyNodes",
            "validPolicyTree",
            "policyMapping"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 788
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 789
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 790
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 792
    .local v6, "n":I
    sub-int v9, v6, v2

    .line 795
    .local v9, "i":I
    const/4 v7, 0x0

    .line 798
    .local v7, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v15, v0

    .line 805
    .end local v7    # "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v15, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 806
    move-object/from16 v0, p3

    .line 807
    .local v0, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    if-eqz v15, :cond_13

    .line 809
    move-object v7, v15

    .line 810
    .local v7, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 811
    .local v8, "m_idp":Ljava/util/Map;
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 813
    .local v10, "s_idp":Ljava/util/Set;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_0
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 815
    invoke-virtual {v7, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 816
    .local v12, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v13

    .line 817
    .local v13, "id_p":Ljava/lang/String;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v14

    .line 820
    .local v14, "sd_p":Ljava/lang/String;
    invoke-interface {v8, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    .line 822
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v17, v16

    .line 823
    .local v17, "tmp":Ljava/util/Set;
    move-object/from16 v16, v0

    move-object/from16 v0, v17

    .end local v17    # "tmp":Ljava/util/Set;
    .local v0, "tmp":Ljava/util/Set;
    .local v16, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-interface {v8, v13, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 825
    invoke-interface {v10, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 829
    .end local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    move-object/from16 v16, v0

    .end local v0    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 830
    .local v0, "tmp":Ljava/util/Set;
    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 813
    .end local v0    # "tmp":Ljava/util/Set;
    .end local v12    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13    # "id_p":Ljava/lang/String;
    .end local v14    # "sd_p":Ljava/lang/String;
    :goto_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, v16

    goto :goto_0

    .end local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v0, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_1
    move-object/from16 v16, v0

    .line 834
    .end local v0    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "j":I
    .restart local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 835
    .local v17, "it_idp":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 837
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    .line 842
    .restart local v13    # "id_p":Ljava/lang/String;
    if-lez p4, :cond_b

    .line 844
    const/4 v0, 0x0

    .line 845
    .local v0, "idp_found":Z
    aget-object v11, v3, v9

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 846
    .local v11, "nodes_i":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 848
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 849
    .local v12, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 851
    const/4 v0, 0x1

    .line 852
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Set;

    iput-object v14, v12, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 853
    move/from16 v18, v0

    goto :goto_4

    .line 855
    .end local v12    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2
    goto :goto_3

    .line 846
    :cond_3
    move/from16 v18, v0

    .line 857
    .end local v0    # "idp_found":Z
    .local v18, "idp_found":Z
    :goto_4
    if-nez v18, :cond_a

    .line 859
    aget-object v0, v3, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 860
    .end local v11    # "nodes_i":Ljava/util/Iterator;
    .local v19, "nodes_i":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 862
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v20, v0

    check-cast v20, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 863
    .local v20, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    const-string v11, "2.5.29.32.0"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 865
    const/4 v12, 0x0

    .line 866
    .local v12, "pq":Ljava/util/Set;
    const/4 v14, 0x0

    .line 869
    .local v14, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_1
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v21, v0

    .line 876
    .end local v14    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v21, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 877
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v22

    .line 878
    .local v22, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 880
    const/4 v14, 0x0

    .line 883
    .local v14, "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :try_start_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v14, v0

    .line 889
    nop

    .line 890
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 894
    nop

    .line 895
    :try_start_3
    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v12, v0

    .line 903
    move-object/from16 v23, v4

    goto :goto_7

    .line 897
    :catch_0
    move-exception v0

    .line 900
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v11, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    move-object/from16 v23, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v23, "certs":Ljava/util/List;
    const-string v4, "Policy qualifier info set could not be decoded."

    invoke-direct {v11, v4, v0, v1, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v11

    .line 890
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_4
    move-object/from16 v23, v4

    .line 906
    .end local v4    # "certs":Ljava/util/List;
    .end local v14    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v23    # "certs":Ljava/util/List;
    goto :goto_6

    .line 885
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    .restart local v14    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :catch_1
    move-exception v0

    move-object/from16 v23, v4

    .line 887
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "ex":Ljava/lang/Exception;
    .restart local v23    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Policy information could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 878
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v14    # "pinfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_5
    move-object/from16 v23, v4

    .line 907
    .end local v4    # "certs":Ljava/util/List;
    .restart local v23    # "certs":Ljava/util/List;
    :goto_7
    const/4 v0, 0x0

    .line 908
    .local v0, "ci":Z
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 910
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    sget-object v14, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v14, v0

    goto :goto_8

    .line 908
    :cond_6
    move v14, v0

    .line 914
    .end local v0    # "ci":Z
    .local v14, "ci":Z
    :goto_8
    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 915
    .local v0, "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 917
    move-object v4, v7

    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v7, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 918
    invoke-interface {v8, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/Set;

    move-object/from16 v25, v10

    move-object/from16 v10, v24

    move-object/from16 v24, v8

    move-object v8, v11

    move-object v11, v0

    .end local v0    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v11, "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v24, "m_idp":Ljava/util/Map;
    .local v25, "s_idp":Ljava/util/Set;
    invoke-direct/range {v7 .. v14}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 919
    .local v7, "c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11, v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 920
    aget-object v0, v3, v9

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    .end local v7    # "c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto :goto_9

    .line 915
    .end local v4    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v11    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .restart local v0    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_7
    move-object v11, v0

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v0    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .restart local v4    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v11    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    goto :goto_9

    .line 872
    .end local v11    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v21    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    .local v14, "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_2
    move-exception v0

    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 874
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Certificate policies extension could not be decoded."

    invoke-direct {v7, v8, v0, v1, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 863
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v12    # "pq":Ljava/util/Set;
    .end local v14    # "policies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_8
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 924
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .end local v20    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    move-object/from16 v4, v23

    goto/16 :goto_5

    .line 860
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_9
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    goto :goto_9

    .line 857
    .end local v19    # "nodes_i":Ljava/util/Iterator;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    .local v11, "nodes_i":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .line 930
    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .end local v11    # "nodes_i":Ljava/util/Iterator;
    .end local v18    # "idp_found":Z
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    :goto_9
    goto/16 :goto_f

    .line 931
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .restart local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v8    # "m_idp":Ljava/util/Map;
    .restart local v10    # "s_idp":Ljava/util/Set;
    :cond_b
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    if-gtz p4, :cond_11

    .line 933
    aget-object v0, v3, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 934
    .local v0, "nodes_i":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 937
    .local v7, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 939
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 940
    .local v8, "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8, v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 941
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 942
    add-int/lit8 v10, v9, -0x1

    .local v10, "k":I
    :goto_b
    if-ltz v10, :cond_e

    .line 944
    aget-object v11, v3, v10

    .line 945
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    move-object/from16 v14, v16

    .end local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "l":I
    .local v14, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    move-object/from16 v18, v0

    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .local v18, "nodes_i":Ljava/util/Iterator;
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v12, v0, :cond_d

    .line 947
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 948
    .local v0, "node2":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v16

    if-nez v16, :cond_c

    .line 950
    invoke-static {v14, v3, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v14

    .line 952
    if-nez v14, :cond_c

    .line 954
    move-object/from16 v16, v14

    goto :goto_d

    .line 945
    .end local v0    # "node2":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, v18

    goto :goto_c

    :cond_d
    move-object/from16 v16, v14

    .line 942
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "l":I
    .end local v14    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_d
    add-int/lit8 v10, v10, -0x1

    move-object/from16 v0, v18

    goto :goto_b

    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .local v0, "nodes_i":Ljava/util/Iterator;
    :cond_e
    move-object/from16 v18, v0

    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .restart local v18    # "nodes_i":Ljava/util/Iterator;
    goto :goto_e

    .line 937
    .end local v8    # "p_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "k":I
    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .restart local v0    # "nodes_i":Ljava/util/Iterator;
    :cond_f
    move-object/from16 v18, v0

    .line 960
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v7    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v18    # "nodes_i":Ljava/util/Iterator;
    :goto_e
    move-object/from16 v0, v18

    goto :goto_a

    .line 934
    .end local v18    # "nodes_i":Ljava/util/Iterator;
    .restart local v0    # "nodes_i":Ljava/util/Iterator;
    :cond_10
    move-object/from16 v18, v0

    .line 962
    .end local v0    # "nodes_i":Ljava/util/Iterator;
    .end local v13    # "id_p":Ljava/lang/String;
    :cond_11
    :goto_f
    move-object v7, v4

    move-object/from16 v4, v23

    move-object/from16 v8, v24

    move-object/from16 v10, v25

    goto/16 :goto_2

    .line 835
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v4, "certs":Ljava/util/List;
    .local v7, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "m_idp":Ljava/util/Map;
    .local v10, "s_idp":Ljava/util/Set;
    :cond_12
    move-object/from16 v23, v4

    move-object v4, v7

    move-object/from16 v24, v8

    move-object/from16 v25, v10

    .end local v7    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8    # "m_idp":Ljava/util/Map;
    .end local v10    # "s_idp":Ljava/util/Set;
    .local v4, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v23    # "certs":Ljava/util/List;
    .restart local v24    # "m_idp":Ljava/util/Map;
    .restart local v25    # "s_idp":Ljava/util/Set;
    move-object/from16 v0, v16

    goto :goto_10

    .line 807
    .end local v16    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v17    # "it_idp":Ljava/util/Iterator;
    .end local v23    # "certs":Ljava/util/List;
    .end local v24    # "m_idp":Ljava/util/Map;
    .end local v25    # "s_idp":Ljava/util/Set;
    .local v0, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "certs":Ljava/util/List;
    :cond_13
    move-object/from16 v16, v0

    move-object/from16 v23, v4

    .line 964
    .end local v4    # "certs":Ljava/util/List;
    .restart local v23    # "certs":Ljava/util/List;
    :goto_10
    return-object v0

    .line 801
    .end local v0    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v15    # "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v23    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    .local v7, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_3
    move-exception v0

    move-object/from16 v23, v4

    .line 803
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "ex":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v23    # "certs":Ljava/util/List;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v8, v0, v1, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertA(Ljava/security/cert/CertPath;I)V
    .locals 10
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 972
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 973
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 978
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 981
    .local v2, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 988
    .end local v2    # "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 989
    if-eqz v3, :cond_2

    .line 991
    move-object v2, v3

    .line 993
    .local v2, "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 995
    const/4 v5, 0x0

    .line 996
    .local v5, "issuerDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    const/4 v6, 0x0

    .line 999
    .local v6, "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :try_start_1
    invoke-virtual {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    .line 1001
    .local v7, "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    move-object v5, v8

    .line 1002
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1008
    .end local v6    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "mapping":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    nop

    .line 1010
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const-string v7, "2.5.29.32.0"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v9, 0x0

    if-nez v6, :cond_1

    .line 1016
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 993
    .end local v5    # "issuerDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v8    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1019
    .restart local v5    # "issuerDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v8    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v6, v7, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1013
    :cond_1
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v6, v7, v9, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1004
    .end local v8    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v6    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :catch_0
    move-exception v7

    .line 1006
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v9, "Policy mappings extension contents could not be decoded."

    invoke-direct {v8, v9, v7, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 1023
    .end local v2    # "mappings":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v4    # "j":I
    .end local v5    # "issuerDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v6    # "subjectDomainPolicy":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 984
    .end local v3    # "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pm":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 986
    .local v3, "ex":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy mappings extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V
    .locals 9
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "nameConstraintValidator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1572
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1573
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1577
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1580
    .local v2, "nc":Lorg/bouncycastle/asn1/x509/NameConstraints;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 1582
    .local v3, "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v3, :cond_0

    .line 1584
    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v2, v4

    .line 1591
    .end local v3    # "ncSeq":Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_0
    nop

    .line 1592
    if-eqz v2, :cond_2

    .line 1598
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v3

    .line 1599
    .local v3, "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v3, :cond_1

    .line 1603
    :try_start_1
    invoke-virtual {p2, v3}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1609
    goto :goto_0

    .line 1605
    :catch_0
    move-exception v4

    .line 1607
    .local v4, "ex":Ljava/lang/Exception;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Permitted subtrees cannot be build from name constraints extension."

    invoke-direct {v5, v6, v4, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1615
    .end local v4    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v4

    .line 1616
    .local v4, "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    if-eqz v4, :cond_2

    .line 1618
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-eq v5, v6, :cond_2

    .line 1621
    :try_start_2
    aget-object v6, v4, v5

    invoke-virtual {p2, v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1627
    nop

    .line 1618
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1623
    :catch_1
    move-exception v6

    .line 1625
    .local v6, "ex":Ljava/lang/Exception;
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Excluded subtrees cannot be build from name constraints extension."

    invoke-direct {v7, v8, v6, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1630
    .end local v3    # "permitted":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v4    # "excluded":[Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    .end local v5    # "i":I
    .end local v6    # "ex":Ljava/lang/Exception;
    :cond_2
    return-void

    .line 1587
    :catch_2
    move-exception v3

    .line 1589
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Name constraints extension could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertH1(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "explicitPolicy"
        }
    .end annotation

    .line 2167
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2168
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2172
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2177
    if-eqz p2, :cond_0

    .line 2179
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2182
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH2(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "policyMapping"
        }
    .end annotation

    .line 2190
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2191
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2195
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2200
    if-eqz p2, :cond_0

    .line 2202
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2205
    :cond_0
    return p2
.end method

.method protected static prepareNextCertH3(Ljava/security/cert/CertPath;II)I
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "inhibitAnyPolicy"
        }
    .end annotation

    .line 2213
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2214
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2218
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2223
    if-eqz p2, :cond_0

    .line 2225
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2228
    :cond_0
    return p2
.end method

.method protected static prepareNextCertI1(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "explicitPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1464
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1465
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1469
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1472
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1479
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1483
    if-eqz v3, :cond_2

    .line 1485
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1487
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1491
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1492
    .local v4, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    if-nez v5, :cond_1

    .line 1494
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1495
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1497
    return v5

    .line 1499
    :cond_0
    goto :goto_1

    .line 1506
    .end local v4    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1502
    :catch_0
    move-exception v4

    .line 1504
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1509
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1475
    .end local v3    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 1477
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertI2(Ljava/security/cert/CertPath;II)I
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "policyMapping"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "policyMapping"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1518
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1519
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1523
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1526
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1533
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1537
    if-eqz v3, :cond_2

    .line 1539
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 1541
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1545
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v4

    .line 1546
    .local v4, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 1548
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1549
    .local v5, "tmpInt":I
    if-ge v5, p2, :cond_0

    .line 1551
    return v5

    .line 1553
    :cond_0
    goto :goto_1

    .line 1560
    .end local v4    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "tmpInt":I
    :cond_1
    goto :goto_0

    .line 1556
    :catch_0
    move-exception v4

    .line 1558
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v6, "Policy constraints extension contents cannot be decoded."

    invoke-direct {v5, v6, v4, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 1563
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_1
    return p2

    .line 1529
    .end local v3    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 1531
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertJ(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "inhibitAnyPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "inhibitAnyPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1988
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1989
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1993
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1996
    .local v2, "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2003
    .end local v2    # "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    .local v3, "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    nop

    .line 2005
    if-eqz v3, :cond_0

    .line 2007
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 2009
    .local v2, "_inhibitAnyPolicy":I
    if-ge v2, p2, :cond_0

    .line 2011
    return v2

    .line 2014
    .end local v2    # "_inhibitAnyPolicy":I
    :cond_0
    return p2

    .line 1999
    .end local v3    # "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    .local v2, "iap":Lorg/bouncycastle/asn1/ASN1Integer;
    :catch_0
    move-exception v3

    .line 2001
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Inhibit any-policy extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertK(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2022
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2023
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2027
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2030
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2037
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v3, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2038
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    .line 2040
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2049
    return-void

    .line 2042
    :cond_0
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Not a CA certificate"

    invoke-direct {v4, v5, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2047
    :cond_1
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v4, v5, v2, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2033
    .end local v3    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .restart local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v3

    .line 2035
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertL(Ljava/security/cert/CertPath;II)I
    .locals 5
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "maxPathLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2057
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2058
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2062
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2064
    if-lez p2, :cond_0

    .line 2069
    add-int/lit8 v2, p2, -0x1

    return v2

    .line 2066
    :cond_0
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Max path length not greater than zero"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 2071
    :cond_1
    return p2
.end method

.method protected static prepareNextCertM(Ljava/security/cert/CertPath;II)I
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "maxPathLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "maxPathLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2080
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2081
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2086
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2089
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2096
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v3, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 2097
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2099
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    .line 2100
    .local v2, "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v2, :cond_0

    .line 2102
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 2105
    .end local v2    # "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    :cond_0
    return p2

    .line 2092
    .end local v3    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_0
    move-exception v3

    .line 2094
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Basic constraints extension cannot be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static prepareNextCertN(Ljava/security/cert/CertPath;I)V
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2113
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2114
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2119
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    .line 2121
    .local v2, "keyUsage":[Z
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x5

    if-le v3, v4, :cond_0

    aget-boolean v3, v2, v4

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2123
    :cond_0
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Issuer certificate keyusage extension is critical and does not permit key signing."

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3

    .line 2127
    :cond_1
    :goto_0
    return-void
.end method

.method protected static prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "criticalExtensions"    # Ljava/util/Set;
    .param p3, "pathCheckers"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "criticalExtensions",
            "pathCheckers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2136
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2137
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2143
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2144
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2148
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    goto :goto_0

    .line 2150
    :catch_0
    move-exception v3

    .line 2152
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2155
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2160
    return-void

    .line 2157
    :cond_1
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static processCRLB1(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 9
    .param p0, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dp",
            "cert",
            "crl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 289
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 290
    .local v0, "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x0

    .line 291
    .local v1, "isIndirect":Z
    if-eqz v0, :cond_0

    .line 293
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    const/4 v1, 0x1

    .line 302
    :cond_0
    :try_start_0
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    .local v2, "issuerBytes":[B
    nop

    .line 309
    const/4 v3, 0x0

    .line 310
    .local v3, "matchIssuer":Z
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 312
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 313
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 315
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 319
    :try_start_1
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v6, :cond_1

    .line 321
    const/4 v3, 0x1

    .line 328
    :cond_1
    goto :goto_1

    .line 324
    :catch_0
    move-exception v6

    .line 326
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 313
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 331
    .end local v5    # "j":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 333
    :cond_4
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 335
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 339
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 337
    .restart local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 342
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_7
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v4

    .line 343
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    .line 342
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 345
    const/4 v3, 0x1

    .line 348
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 352
    return-void

    .line 350
    :cond_9
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v4, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    .end local v2    # "issuerBytes":[B
    .end local v3    # "matchIssuer":Z
    :catch_1
    move-exception v2

    .line 306
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception encoding CRL issuer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processCRLB2(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V
    .locals 11
    .param p0, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dp",
            "cert",
            "crl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 106
    const/4 v0, 0x0

    .line 109
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p2, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 115
    .end local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 118
    if-eqz v1, :cond_15

    .line 120
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 123
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 124
    .local v0, "dpName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "names":Ljava/util/List;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 128
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 129
    .local v3, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 131
    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 134
    .end local v3    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 136
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 139
    .local v3, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 140
    .local v5, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 142
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 148
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_1
    nop

    .line 149
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 150
    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 145
    :catch_0
    move-exception v4

    .line 147
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Could not read CRL issuer."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 152
    .end local v3    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 155
    .local v3, "matches":Z
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v5

    const-string v6, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz v5, :cond_a

    .line 157
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 158
    const/4 v5, 0x0

    .line 159
    .local v5, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 161
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 163
    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 165
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 167
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 171
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 174
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_2
    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 179
    move-object v5, v4

    .line 181
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v7, v5

    if-ge v4, v7, :cond_6

    .line 183
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 184
    .local v7, "e":Ljava/util/Enumeration;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 185
    .local v8, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 187
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 189
    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 190
    new-instance v9, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v10}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    aput-object v9, v5, v4

    .line 181
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v8    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 176
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_1
    move-exception v5

    .line 178
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Could not read certificate issuer."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 193
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v5, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    if-eqz v5, :cond_8

    .line 195
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 197
    aget-object v7, v5, v4

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 199
    const/4 v3, 0x1

    .line 200
    goto :goto_7

    .line 195
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 204
    .end local v4    # "j":I
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 209
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_a

    .line 206
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_9
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v4, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 220
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 221
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    array-length v7, v4

    if-ge v5, v7, :cond_c

    .line 223
    aget-object v7, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 225
    const/4 v3, 0x1

    .line 226
    goto :goto_9

    .line 221
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 229
    .end local v5    # "j":I
    :cond_c
    :goto_9
    if-eqz v3, :cond_d

    goto :goto_a

    .line 231
    :cond_d
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v5, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 217
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_e
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v4, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    .end local v0    # "dpName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v2    # "names":Ljava/util/List;
    .end local v3    # "matches":Z
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 239
    .local v0, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Extension;

    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 245
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 247
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    .line 250
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    .line 252
    :cond_10
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "CA Cert CRL only contains user certificates."

    invoke-direct {v0, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    :cond_11
    :goto_b
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v0

    if-eqz v0, :cond_13

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_c

    .line 258
    :cond_12
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "End CRL only contains CA certificates."

    invoke-direct {v0, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_13
    :goto_c
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_d

    .line 265
    :cond_14
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v0, v3}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .restart local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_2
    move-exception v2

    .line 244
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Basic constraints extension could not be decoded."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 268
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_d
    return-void

    .line 112
    .end local v1    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 114
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 8
    .param p0, "deltaCRL"    # Ljava/security/cert/X509CRL;
    .param p1, "completeCRL"    # Ljava/security/cert/X509CRL;
    .param p2, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deltaCRL",
            "completeCRL",
            "pkixParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 647
    if-nez p0, :cond_0

    .line 649
    return-void

    .line 652
    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->hasUnsupportedCriticalExtension()Z

    move-result v0

    if-nez v0, :cond_9

    .line 657
    const/4 v0, 0x0

    .line 660
    .local v0, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p1, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 666
    .end local v0    # "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 668
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 671
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 677
    const/4 v0, 0x0

    .line 680
    .local v0, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 687
    .end local v0    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v2, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 689
    const/4 v0, 0x0

    .line 690
    .local v0, "match":Z
    if-nez v1, :cond_1

    .line 692
    if-nez v2, :cond_2

    .line 694
    const/4 v0, 0x1

    goto :goto_0

    .line 699
    :cond_1
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 701
    const/4 v0, 0x1

    .line 704
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 711
    const/4 v3, 0x0

    .line 714
    .local v3, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p1, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 721
    .end local v3    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v4, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 723
    const/4 v3, 0x0

    .line 726
    .local v3, "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v5, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    invoke-static {p0, v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 733
    .end local v3    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v5, "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 735
    if-eqz v4, :cond_5

    .line 740
    if-eqz v5, :cond_4

    .line 745
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 747
    :cond_3
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v3, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 742
    :cond_4
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 737
    :cond_5
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    .end local v5    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v3    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v5

    .line 731
    .local v5, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 717
    .end local v4    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v3, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_1
    move-exception v4

    .line 719
    .local v4, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v5, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v6, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 706
    .end local v3    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_6
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 683
    .end local v2    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_2
    move-exception v2

    .line 685
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 673
    .end local v0    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Complete CRL issuer does not match delta CRL issuer."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 751
    :cond_8
    :goto_1
    return-void

    .line 663
    .end local v1    # "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 665
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 654
    .end local v0    # "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v1, "delta CRL has unsupported critical extensions"

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/jce/provider/ReasonsMask;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crl",
            "dp"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 359
    const/4 v0, 0x0

    .line 362
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 370
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v2, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lorg/bouncycastle/jce/provider/ReasonsMask;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v0

    return-object v0

    .line 375
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    .line 377
    sget-object v0, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    return-object v0

    .line 380
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_3

    .line 381
    sget-object v0, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_0

    .line 382
    :cond_3
    new-instance v0, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    :goto_0
    if-nez v1, :cond_4

    .line 383
    sget-object v2, Lorg/bouncycastle/jce/provider/ReasonsMask;->allReasons:Lorg/bouncycastle/jce/provider/ReasonsMask;

    goto :goto_1

    .line 384
    :cond_4
    new-instance v2, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    .line 382
    :goto_1
    invoke-virtual {v0, v2}, Lorg/bouncycastle/jce/provider/ReasonsMask;->intersect(Lorg/bouncycastle/jce/provider/ReasonsMask;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v0

    .line 380
    return-object v0

    .line 365
    .end local v1    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v1

    .line 367
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 17
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "cert"    # Ljava/lang/Object;
    .param p2, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p4, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p5, "certPathCerts"    # Ljava/util/List;
    .param p6, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
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
            "crl",
            "cert",
            "defaultCRLSignCert",
            "defaultCRLSignKey",
            "paramsPKIX",
            "certPathCerts",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 457
    move-object/from16 v1, p2

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v2, v0

    .line 460
    .local v2, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/X500Name;->getEncoded()[B

    move-result-object v0

    .line 461
    .local v0, "issuerPrincipal":[B
    invoke-virtual {v2, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d

    .line 467
    .end local v0    # "issuerPrincipal":[B
    nop

    .line 469
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v2}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v3

    .line 472
    .local v3, "selector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v4, v0

    .line 475
    .local v4, "coll":Ljava/util/LinkedHashSet;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 476
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v4, v3, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_c

    .line 481
    nop

    .line 483
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-virtual {v4}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 487
    .local v5, "cert_it":Ljava/util/Iterator;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 488
    .local v6, "validCerts":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 490
    .local v7, "validKeys":Ljava/util/List;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 492
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 498
    .local v8, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    move-object/from16 v9, p3

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    goto :goto_0

    .line 506
    :cond_0
    move-object/from16 v9, p3

    :try_start_2
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->revChkClass:Ljava/lang/Class;

    const/4 v10, 0x1

    if-eqz v0, :cond_1

    .line 507
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;

    invoke-direct {v0, v10}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi_8;-><init>(Z)V

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;

    invoke-direct {v0, v10}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;-><init>(Z)V

    .line 508
    .local v0, "builder":Ljava/security/cert/CertPathBuilderSpi;
    :goto_1
    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 509
    .local v11, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v11, v8}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 511
    new-instance v12, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-object/from16 v13, p4

    :try_start_3
    invoke-direct {v12, v13}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v14, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v14, v11}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 512
    invoke-virtual {v14}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v12
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 523
    .local v12, "paramsBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v14, p5

    :try_start_4
    invoke-interface {v14, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/4 v10, 0x0

    if-eqz v15, :cond_2

    .line 525
    invoke-virtual {v12, v10}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_2

    .line 529
    :cond_2
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 532
    :goto_2
    new-instance v15, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v10

    invoke-direct {v15, v10}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v10

    .line 534
    .local v10, "extParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v0, v10}, Ljava/security/cert/CertPathBuilderSpi;->engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    .line 535
    .local v15, "certs":Ljava/util/List;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 536
    move-object/from16 v1, p6

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    .local v16, "builder":Ljava/security/cert/CertPathBuilderSpi;
    :try_start_5
    invoke-static {v15, v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 549
    nop

    .line 550
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "extParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v11    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    .end local v12    # "paramsBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v15    # "certs":Ljava/util/List;
    .end local v16    # "builder":Ljava/security/cert/CertPathBuilderSpi;
    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 546
    .restart local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    goto :goto_5

    .line 542
    :catch_1
    move-exception v0

    goto :goto_8

    .line 538
    :catch_2
    move-exception v0

    goto :goto_b

    .line 546
    :catch_3
    move-exception v0

    goto :goto_4

    .line 542
    :catch_4
    move-exception v0

    goto :goto_7

    .line 538
    :catch_5
    move-exception v0

    goto :goto_a

    .line 546
    :catch_6
    move-exception v0

    goto :goto_3

    .line 542
    :catch_7
    move-exception v0

    goto :goto_6

    .line 538
    :catch_8
    move-exception v0

    goto :goto_9

    .line 546
    :catch_9
    move-exception v0

    move-object/from16 v13, p4

    :goto_3
    move-object/from16 v14, p5

    :goto_4
    move-object/from16 v1, p6

    .line 548
    .local v0, "e":Ljava/lang/Exception;
    :goto_5
    new-instance v10, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 542
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v0

    move-object/from16 v13, p4

    :goto_6
    move-object/from16 v14, p5

    :goto_7
    move-object/from16 v1, p6

    .line 544
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_8
    new-instance v10, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v10, v11, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 538
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_b
    move-exception v0

    move-object/from16 v13, p4

    :goto_9
    move-object/from16 v14, p5

    :goto_a
    move-object/from16 v1, p6

    .line 540
    .local v0, "e":Ljava/security/cert/CertPathBuilderException;
    :goto_b
    new-instance v10, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v11, "CertPath for CRL signer failed to validate."

    invoke-direct {v10, v11, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 552
    .end local v0    # "e":Ljava/security/cert/CertPathBuilderException;
    .end local v8    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_3
    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v1, p6

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 554
    .local v0, "checkKeys":Ljava/util/Set;
    const/4 v8, 0x0

    .line 555
    .local v8, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_c
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 557
    invoke-interface {v6, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 558
    .local v11, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 560
    .local v12, "keyUsage":[Z
    if-eqz v12, :cond_5

    array-length v15, v12

    const/4 v1, 0x6

    if-le v15, v1, :cond_4

    aget-boolean v1, v12, v1

    if-nez v1, :cond_5

    .line 562
    :cond_4
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v15, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v1, v15}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    move-object v8, v1

    .end local v8    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v1, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    goto :goto_d

    .line 567
    .end local v1    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_5
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    .end local v11    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "keyUsage":[Z
    :goto_d
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p6

    goto :goto_c

    .line 571
    .end local v10    # "i":I
    :cond_6
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v8, :cond_7

    goto :goto_e

    .line 573
    :cond_7
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v10, "Cannot find a valid issuer certificate."

    invoke-direct {v1, v10}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    :cond_8
    :goto_e
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v8, :cond_9

    goto :goto_f

    .line 577
    :cond_9
    throw v8

    .line 580
    :cond_a
    :goto_f
    return-object v0

    .line 478
    .end local v0    # "checkKeys":Ljava/util/Set;
    .end local v5    # "cert_it":Ljava/util/Iterator;
    .end local v6    # "validCerts":Ljava/util/List;
    .end local v7    # "validKeys":Ljava/util/List;
    .end local v8    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :catch_c
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 480
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v5, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v5, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 463
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v3    # "selector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v4    # "coll":Ljava/util/LinkedHashSet;
    :catch_d
    move-exception v0

    move-object/from16 v9, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 465
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Subject criteria for certificate selector to find issuer certificate for CRL could not be set."

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;
    .locals 4
    .param p0, "crl"    # Ljava/security/cert/X509CRL;
    .param p1, "keys"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "crl",
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 588
    const/4 v0, 0x0

    .line 589
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 594
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    return-object v2

    .line 597
    :catch_0
    move-exception v3

    .line 599
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 601
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 602
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;
    .locals 4
    .param p0, "deltacrls"    # Ljava/util/Set;
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deltacrls",
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 610
    const/4 v0, 0x0

    .line 612
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 617
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    return-object v2

    .line 620
    :catch_0
    move-exception v3

    .line 622
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 624
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 626
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    if-nez v0, :cond_1

    .line 630
    const/4 v1, 0x0

    return-object v1

    .line 628
    :cond_1
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/bouncycastle/jce/provider/CertStatus;
    .param p4, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "validDate",
            "deltacrl",
            "cert",
            "certStatus",
            "pkixParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 761
    invoke-virtual {p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 763
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    .line 765
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
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
            "completecrl",
            "cert",
            "certStatus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 774
    invoke-virtual {p3}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 776
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    .line 778
    :cond_0
    return-void
.end method

.method protected static processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V
    .locals 14
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "revocationChecker"    # Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .param p4, "index"    # I
    .param p5, "workingPublicKey"    # Ljava/security/PublicKey;
    .param p6, "verificationAlreadyPerformed"    # Z
    .param p7, "workingIssuerName"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p8, "sign"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "certPath",
            "paramsPKIX",
            "validityDate",
            "revocationChecker",
            "index",
            "workingPublicKey",
            "verificationAlreadyPerformed",
            "workingIssuerName",
            "sign"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1390
    move-object/from16 v1, p3

    move/from16 v6, p4

    const-string v2, "Could not validate certificate: "

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v9

    .line 1391
    .local v9, "certs":Ljava/util/List;
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 1395
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-nez p6, :cond_0

    .line 1401
    nop

    .line 1402
    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1401
    move-object/from16 v8, p5

    :try_start_1
    invoke-static {v10, v8, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1407
    goto :goto_1

    .line 1404
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v8, p5

    .line 1406
    .local v0, "e":Ljava/security/GeneralSecurityException;
    :goto_0
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Could not validate certificate signature."

    invoke-direct {v2, v3, v0, p0, v6}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1395
    .end local v0    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    move-object/from16 v8, p5

    .line 1413
    :goto_1
    nop

    .line 1414
    :try_start_2
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v0
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_5

    .line 1413
    move-object/from16 v11, p2

    :try_start_3
    invoke-static {v11, v0, p0, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidCertDateFromValidityModel(Ljava/util/Date;ILjava/security/cert/CertPath;I)Ljava/util/Date;

    move-result-object v4
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1419
    .local v4, "validCertDate":Ljava/util/Date;
    nop

    .line 1425
    :try_start_4
    invoke-virtual {v10, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1434
    nop

    .line 1439
    if-eqz v1, :cond_1

    .line 1441
    new-instance v2, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    move-object v5, p0

    move-object v3, p1

    move-object/from16 v7, p8

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;->initialize(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;)V

    .line 1444
    invoke-interface {v1, v10}, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;->check(Ljava/security/cert/Certificate;)V

    .line 1450
    :cond_1
    invoke-static {v10}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getIssuerPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 1451
    .local v0, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    move-object/from16 v3, p7

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1456
    return-void

    .line 1453
    :cond_2
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "IssuerName("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, ") does not match SubjectName("

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") of signing certificate."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8, p0, v6}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2

    .line 1431
    .end local v0    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    :catch_2
    move-exception v0

    move-object/from16 v3, p7

    .line 1433
    .local v0, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v0, p0, v6}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1427
    .end local v0    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_3
    move-exception v0

    move-object/from16 v3, p7

    .line 1429
    .local v0, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v0}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v2, v0, p0, v6}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 1416
    .end local v0    # "e":Ljava/security/cert/CertificateExpiredException;
    .end local v4    # "validCertDate":Ljava/util/Date;
    :catch_4
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object/from16 v11, p2

    :goto_2
    move-object/from16 v3, p7

    .line 1418
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v4, "Could not validate time of certificate."

    invoke-direct {v2, v4, v0, p0, v6}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v2
.end method

.method protected static processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V
    .locals 17
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "nameConstraintValidator"    # Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .param p3, "isForCRLCheck"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "nameConstraintValidator",
            "isForCRLCheck"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1078
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v4

    .line 1079
    .local v4, "certs":Ljava/util/List;
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 1080
    .local v5, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    .line 1082
    .local v6, "n":I
    sub-int v7, v6, v2

    .line 1091
    .local v7, "i":I
    invoke-static {v5}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-lt v7, v6, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v16, v4

    goto/16 :goto_3

    .line 1093
    :cond_1
    :goto_0
    invoke-static {v5}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v8

    .line 1098
    .local v8, "principal":Lorg/bouncycastle/asn1/x500/X500Name;
    :try_start_0
    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-object v9, v0

    .line 1104
    .local v9, "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1108
    :try_start_1
    invoke-virtual {v3, v9}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 1109
    invoke-virtual {v3, v9}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_1 .. :try_end_1} :catch_4

    .line 1115
    nop

    .line 1117
    const/4 v10, 0x0

    .line 1120
    .local v10, "altName":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :try_start_2
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v5, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v10, v0

    .line 1127
    nop

    .line 1128
    invoke-static {v9}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    sget-object v11, Lorg/bouncycastle/asn1/x500/style/BCStyle;->EmailAddress:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v11}, Lorg/bouncycastle/asn1/x500/X500Name;->getRDNs(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)[Lorg/bouncycastle/asn1/x500/RDN;

    move-result-object v11

    .line 1129
    .local v11, "emails":[Lorg/bouncycastle/asn1/x500/RDN;
    const/4 v0, 0x0

    move v12, v0

    .local v12, "eI":I
    :goto_1
    array-length v0, v11

    if-eq v12, v0, :cond_2

    .line 1132
    aget-object v0, v11, v12

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/RDN;->getFirst()Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x500/AttributeTypeAndValue;->getValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1String;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1String;->getString()Ljava/lang/String;

    move-result-object v13

    .line 1133
    .local v13, "email":Ljava/lang/String;
    new-instance v0, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v14, 0x1

    invoke-direct {v0, v14, v13}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILjava/lang/String;)V

    move-object v14, v0

    .line 1136
    .local v14, "emailAsGeneralName":Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_3
    invoke-virtual {v3, v14}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 1137
    invoke-virtual {v3, v14}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1143
    nop

    .line 1129
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lorg/bouncycastle/asn1/x509/GeneralName;
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1139
    .restart local v13    # "email":Ljava/lang/String;
    .restart local v14    # "emailAsGeneralName":Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_0
    move-exception v0

    .line 1141
    .local v0, "ex":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v15, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v16, v4

    .end local v4    # "certs":Ljava/util/List;
    .local v16, "certs":Ljava/util/List;
    const-string v4, "Subtree check for certificate subject alternative email failed."

    invoke-direct {v15, v4, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v15

    .line 1129
    .end local v0    # "ex":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v13    # "email":Ljava/lang/String;
    .end local v14    # "emailAsGeneralName":Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :cond_2
    move-object/from16 v16, v4

    .line 1145
    .end local v4    # "certs":Ljava/util/List;
    .end local v12    # "eI":I
    .restart local v16    # "certs":Ljava/util/List;
    if-eqz v10, :cond_3

    .line 1147
    const/4 v4, 0x0

    .line 1150
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_4
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v0

    .line 1156
    nop

    .line 1157
    const/4 v0, 0x0

    move v12, v0

    .local v12, "j":I
    :goto_2
    array-length v0, v4

    if-ge v12, v0, :cond_3

    .line 1162
    :try_start_5
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    .line 1163
    aget-object v0, v4, v12

    invoke-virtual {v3, v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_5
    .catch Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1169
    nop

    .line 1157
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1165
    :catch_1
    move-exception v0

    .line 1167
    .local v0, "e":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    new-instance v13, Ljava/security/cert/CertPathValidatorException;

    const-string v14, "Subtree check for certificate subject alternative name failed."

    invoke-direct {v13, v14, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v13

    .line 1152
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v12    # "j":I
    :catch_2
    move-exception v0

    .line 1154
    .local v0, "e":Ljava/lang/Exception;
    new-instance v12, Ljava/security/cert/CertPathValidatorException;

    const-string v13, "Subject alternative name contents could not be decoded."

    invoke-direct {v12, v13, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v12

    .line 1173
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v8    # "principal":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v9    # "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v10    # "altName":Lorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v11    # "emails":[Lorg/bouncycastle/asn1/x500/RDN;
    :cond_3
    :goto_3
    return-void

    .line 1123
    .end local v16    # "certs":Ljava/util/List;
    .local v4, "certs":Ljava/util/List;
    .restart local v8    # "principal":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v9    # "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v10    # "altName":Lorg/bouncycastle/asn1/x509/GeneralNames;
    :catch_3
    move-exception v0

    move-object/from16 v16, v4

    .line 1125
    .end local v4    # "certs":Ljava/util/List;
    .restart local v0    # "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v11, "Subject alternative name extension could not be decoded."

    invoke-direct {v4, v11, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1111
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v10    # "altName":Lorg/bouncycastle/asn1/x509/GeneralNames;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_4
    move-exception v0

    move-object/from16 v16, v4

    .line 1113
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "Subtree check for certificate subject failed."

    invoke-direct {v4, v10, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 1100
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidatorException;
    .end local v9    # "dns":Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v16    # "certs":Ljava/util/List;
    .restart local v4    # "certs":Ljava/util/List;
    :catch_5
    move-exception v0

    move-object/from16 v16, v4

    .line 1102
    .end local v4    # "certs":Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v16    # "certs":Ljava/util/List;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v9, "Exception extracting subject name when checking subtrees."

    invoke-direct {v4, v9, v0, v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 26
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "acceptablePolicies"    # Ljava/util/Set;
    .param p3, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "inhibitAnyPolicy"    # I
    .param p6, "isForCRLCheck"    # Z
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
            "certPath",
            "index",
            "acceptablePolicies",
            "validPolicyTree",
            "policyNodes",
            "inhibitAnyPolicy",
            "isForCRLCheck"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1185
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual {v1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v5

    .line 1186
    .local v5, "certs":Ljava/util/List;
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 1187
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 1189
    .local v7, "n":I
    sub-int v10, v7, v2

    .line 1194
    .local v10, "i":I
    const/4 v8, 0x0

    .line 1197
    .local v8, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v6, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v16, v0

    .line 1204
    .end local v8    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v16, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1205
    if-eqz v16, :cond_16

    if-eqz p3, :cond_16

    .line 1210
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v8

    .line 1211
    .local v8, "e":Ljava/util/Enumeration;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v9, v0

    .line 1213
    .local v9, "pols":Ljava/util/Set;
    :goto_0
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    const-string v11, "2.5.29.32.0"

    if-eqz v0, :cond_1

    .line 1215
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v12

    .line 1216
    .local v12, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v13

    .line 1218
    .local v13, "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1220
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    const/4 v11, 0x0

    .line 1225
    .local v11, "pq":Ljava/util/Set;
    :try_start_1
    invoke-virtual {v12}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1231
    .end local v11    # "pq":Ljava/util/Set;
    .local v0, "pq":Ljava/util/Set;
    nop

    .line 1233
    invoke-static {v10, v4, v13, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v11

    .line 1235
    .local v11, "match":Z
    if-nez v11, :cond_0

    .line 1237
    invoke-static {v10, v4, v13, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V

    goto :goto_1

    .line 1227
    .end local v0    # "pq":Ljava/util/Set;
    .local v11, "pq":Ljava/util/Set;
    :catch_0
    move-exception v0

    .line 1229
    .local v0, "ex":Ljava/security/cert/CertPathValidatorException;
    new-instance v14, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v15, "Policy qualifier info set could not be build."

    invoke-direct {v14, v15, v0, v1, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v14

    .line 1240
    .end local v0    # "ex":Ljava/security/cert/CertPathValidatorException;
    .end local v11    # "pq":Ljava/util/Set;
    .end local v12    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v13    # "pOid":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :cond_0
    :goto_1
    goto :goto_0

    .line 1242
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v3, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    .line 1249
    :cond_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1250
    .local v0, "it":Ljava/util/Iterator;
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1252
    .local v12, "t1":Ljava/util/Set;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1254
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    .line 1256
    .local v13, "o":Ljava/lang/Object;
    invoke-interface {v9, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1258
    invoke-interface {v12, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1260
    .end local v13    # "o":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 1261
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1262
    invoke-interface {v3, v12}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 1244
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v12    # "t1":Ljava/util/Set;
    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->clear()V

    .line 1245
    invoke-interface {v3, v9}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1268
    :goto_4
    if-gtz p5, :cond_8

    if-lt v10, v7, :cond_6

    if-eqz p6, :cond_7

    :cond_6
    invoke-static {v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_5

    .line 1334
    :cond_7
    move-object/from16 v23, v9

    goto/16 :goto_d

    .line 1270
    :cond_8
    :goto_5
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 1272
    .end local v8    # "e":Ljava/util/Enumeration;
    .local v0, "e":Ljava/util/Enumeration;
    :goto_6
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 1274
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v17

    .line 1276
    .local v17, "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 1278
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v13

    .line 1279
    .local v13, "_apq":Ljava/util/Set;
    add-int/lit8 v8, v10, -0x1

    aget-object v8, v4, v8

    .line 1281
    .local v8, "_nodes":Ljava/util/List;
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_f

    .line 1283
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1285
    .local v12, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1286
    .local v18, "_policySetIter":Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1288
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 1291
    .local v14, "_tmp":Ljava/lang/Object;
    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1293
    move-object v15, v14

    check-cast v15, Ljava/lang/String;

    .local v15, "_policy":Ljava/lang/String;
    goto :goto_9

    .line 1295
    .end local v15    # "_policy":Ljava/lang/String;
    :cond_9
    instance-of v15, v14, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v15, :cond_d

    .line 1297
    move-object v15, v14

    check-cast v15, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v15}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    .line 1304
    .restart local v15    # "_policy":Ljava/lang/String;
    :goto_9
    const/16 v19, 0x0

    .line 1305
    .local v19, "_found":Z
    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v20

    .line 1307
    .local v20, "_childrenIter":Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_b

    .line 1309
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1311
    .local v21, "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .local v22, "e":Ljava/util/Enumeration;
    invoke-virtual/range {v21 .. v21}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1313
    const/4 v0, 0x1

    move/from16 v19, v0

    .line 1315
    .end local v21    # "_child":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_a
    move-object/from16 v0, v22

    goto :goto_a

    .line 1317
    .end local v22    # "e":Ljava/util/Enumeration;
    .restart local v0    # "e":Ljava/util/Enumeration;
    :cond_b
    move-object/from16 v22, v0

    .end local v0    # "e":Ljava/util/Enumeration;
    .restart local v22    # "e":Ljava/util/Enumeration;
    if-nez v19, :cond_c

    .line 1319
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 1320
    .local v0, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1322
    move-object/from16 v21, v8

    .end local v8    # "_nodes":Ljava/util/List;
    .local v21, "_nodes":Ljava/util/List;
    new-instance v8, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-object/from16 v23, v9

    .end local v9    # "pols":Ljava/util/Set;
    .local v23, "pols":Ljava/util/Set;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v24, v14

    move-object v14, v15

    .end local v15    # "_policy":Ljava/lang/String;
    .local v14, "_policy":Ljava/lang/String;
    .local v24, "_tmp":Ljava/lang/Object;
    const/4 v15, 0x0

    move/from16 v25, v11

    move-object v11, v0

    move/from16 v0, v25

    .local v0, "k":I
    .local v11, "_newChildExpectedPolicies":Ljava/util/Set;
    invoke-direct/range {v8 .. v15}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1324
    .local v8, "_newChild":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v12, v8}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1325
    aget-object v9, v4, v10

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1317
    .end local v0    # "k":I
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v23    # "pols":Ljava/util/Set;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .local v8, "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .local v11, "k":I
    .local v14, "_tmp":Ljava/lang/Object;
    .restart local v15    # "_policy":Ljava/lang/String;
    :cond_c
    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    move-object/from16 v24, v14

    move-object v14, v15

    .line 1327
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v14    # "_tmp":Ljava/lang/Object;
    .end local v15    # "_policy":Ljava/lang/String;
    .end local v19    # "_found":Z
    .end local v20    # "_childrenIter":Ljava/util/Iterator;
    .restart local v0    # "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v23    # "pols":Ljava/util/Set;
    :goto_b
    move v11, v0

    move-object/from16 v8, v21

    move-object/from16 v0, v22

    move-object/from16 v9, v23

    goto :goto_8

    .line 1295
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v11    # "k":I
    .restart local v14    # "_tmp":Ljava/lang/Object;
    :cond_d
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    move-object/from16 v24, v14

    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v14    # "_tmp":Ljava/lang/Object;
    .local v0, "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    .restart local v24    # "_tmp":Ljava/lang/Object;
    move-object/from16 v0, v22

    goto/16 :goto_8

    .line 1286
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .end local v24    # "_tmp":Ljava/lang/Object;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    .restart local v11    # "k":I
    :cond_e
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    .line 1281
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .end local v12    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18    # "_policySetIter":Ljava/util/Iterator;
    .local v0, "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    add-int/lit8 v11, v0, 0x1

    move-object/from16 v0, v22

    .end local v0    # "k":I
    .restart local v11    # "k":I
    goto/16 :goto_7

    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .local v0, "e":Ljava/util/Enumeration;
    .restart local v8    # "_nodes":Ljava/util/List;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_f
    move-object/from16 v22, v0

    move-object/from16 v21, v8

    move-object/from16 v23, v9

    move v0, v11

    .line 1329
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v8    # "_nodes":Ljava/util/List;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v11    # "k":I
    .restart local v21    # "_nodes":Ljava/util/List;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    goto :goto_c

    .line 1276
    .end local v13    # "_apq":Ljava/util/Set;
    .end local v21    # "_nodes":Ljava/util/List;
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_10
    move-object/from16 v22, v0

    move-object/from16 v23, v9

    .line 1331
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .end local v17    # "pInfo":Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    goto/16 :goto_6

    .line 1272
    .end local v22    # "e":Ljava/util/Enumeration;
    .end local v23    # "pols":Ljava/util/Set;
    .restart local v0    # "e":Ljava/util/Enumeration;
    .restart local v9    # "pols":Ljava/util/Set;
    :cond_11
    move-object/from16 v22, v0

    move-object/from16 v23, v9

    .line 1334
    .end local v0    # "e":Ljava/util/Enumeration;
    .end local v9    # "pols":Ljava/util/Set;
    .restart local v22    # "e":Ljava/util/Enumeration;
    .restart local v23    # "pols":Ljava/util/Set;
    :goto_c
    move-object/from16 v8, v22

    .end local v22    # "e":Ljava/util/Enumeration;
    .local v8, "e":Ljava/util/Enumeration;
    :goto_d
    move-object/from16 v0, p3

    .line 1338
    .local v0, "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v9, v10, -0x1

    .local v9, "j":I
    :goto_e
    if-ltz v9, :cond_14

    .line 1340
    aget-object v11, v4, v9

    .line 1342
    .local v11, "nodes":Ljava/util/List;
    const/4 v12, 0x0

    .local v12, "k":I
    :goto_f
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_13

    .line 1344
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1345
    .local v13, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v14

    if-nez v14, :cond_12

    .line 1347
    invoke-static {v0, v4, v13}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 1349
    if-nez v0, :cond_12

    .line 1351
    goto :goto_10

    .line 1342
    .end local v13    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    .line 1338
    .end local v11    # "nodes":Ljava/util/List;
    .end local v12    # "k":I
    :cond_13
    :goto_10
    add-int/lit8 v9, v9, -0x1

    goto :goto_e

    .line 1360
    .end local v9    # "j":I
    :cond_14
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v9

    .line 1362
    .local v9, "criticalExtensionOids":Ljava/util/Set;
    if-eqz v9, :cond_15

    .line 1364
    sget-object v11, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    .line 1366
    .local v11, "critical":Z
    aget-object v12, v4, v10

    .line 1367
    .local v12, "nodes":Ljava/util/List;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_11
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_15

    .line 1369
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1370
    .local v14, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v14, v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1367
    .end local v14    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    .line 1373
    .end local v11    # "critical":Z
    .end local v12    # "nodes":Ljava/util/List;
    .end local v13    # "j":I
    :cond_15
    return-object v0

    .line 1375
    .end local v0    # "_validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "e":Ljava/util/Enumeration;
    .end local v9    # "criticalExtensionOids":Ljava/util/Set;
    .end local v23    # "pols":Ljava/util/Set;
    :cond_16
    const/4 v0, 0x0

    return-object v0

    .line 1200
    .end local v16    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v8, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v0

    .line 1202
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v9, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v11, "Could not read certificate policies extension from certificate."

    invoke-direct {v9, v11, v0, v1, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9
.end method

.method protected static processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 6
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "validPolicyTree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1048
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1049
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 1053
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 1056
    .local v2, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    .end local v2    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v3, "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 1064
    if-nez v3, :cond_0

    .line 1066
    const/4 p2, 0x0

    .line 1068
    :cond_0
    return-object p2

    .line 1059
    .end local v3    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v2    # "certPolicies":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v3

    .line 1061
    .local v3, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Could not read certificate policies extension from certificate."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
.end method

.method protected static processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V
    .locals 3
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p3, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "validPolicyTree",
            "explicitPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 1035
    if-gtz p3, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1037
    :cond_0
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v1, "No valid policy tree found when one expected."

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 1040
    :cond_1
    :goto_0
    return-void
.end method

.method protected static wrapupCertA(ILjava/security/cert/X509Certificate;)I
    .locals 1
    .param p0, "explicitPolicy"    # I
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "explicitPolicy",
            "cert"
        }
    .end annotation

    .line 2252
    invoke-static {p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2254
    add-int/lit8 p0, p0, -0x1

    .line 2256
    :cond_0
    return p0
.end method

.method protected static wrapupCertB(Ljava/security/cert/CertPath;II)I
    .locals 8
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "explicitPolicy"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "explicitPolicy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2265
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2266
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2271
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 2274
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_0
    sget-object v3, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2280
    .end local v2    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v3, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    nop

    .line 2281
    if-eqz v3, :cond_1

    .line 2283
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 2285
    .local v2, "policyConstraints":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2287
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 2288
    .local v4, "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 2293
    :pswitch_0
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2300
    .local v6, "tmpInt":I
    nop

    .line 2301
    if-nez v6, :cond_0

    .line 2303
    return v5

    .line 2295
    .end local v6    # "tmpInt":I
    :catch_0
    move-exception v5

    .line 2297
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Policy constraints requireExplicitPolicy field could not be decoded."

    invoke-direct {v6, v7, v5, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 2307
    .end local v4    # "constraint":Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    goto :goto_0

    .line 2309
    .end local v2    # "policyConstraints":Ljava/util/Enumeration;
    :cond_1
    return p2

    .line 2277
    .end local v3    # "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    .local v2, "pc":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_1
    move-exception v3

    .line 2279
    .local v3, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v5, "Policy constraints could not be decoded."

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected static wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V
    .locals 7
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "index"    # I
    .param p2, "pathCheckers"    # Ljava/util/List;
    .param p3, "criticalExtensions"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "certPath",
            "index",
            "pathCheckers",
            "criticalExtensions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2319
    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 2320
    .local v0, "certs":Ljava/util/List;
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 2322
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 2323
    .local v2, "tmpIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2327
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v3, v1, p3}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2336
    goto :goto_0

    .line 2333
    :catch_0
    move-exception v3

    .line 2335
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "Additional certificate path checker failed."

    invoke-direct {v4, v5, v3, p0, p1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2329
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 2331
    .local v3, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 2339
    .end local v3    # "e":Ljava/security/cert/CertPathValidatorException;
    :cond_0
    invoke-interface {p3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2344
    return-void

    .line 2341
    :cond_1
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Certificate has unsupported critical extension: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5, p0, p1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v3
.end method

.method protected static wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .locals 13
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "userInitialPolicySet"    # Ljava/util/Set;
    .param p3, "index"    # I
    .param p4, "policyNodes"    # [Ljava/util/List;
    .param p5, "validPolicyTree"    # Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .param p6, "acceptablePolicies"    # Ljava/util/Set;
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
            "certPath",
            "paramsPKIX",
            "userInitialPolicySet",
            "index",
            "policyNodes",
            "validPolicyTree",
            "acceptablePolicies"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 2356
    move/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 2365
    .local v2, "n":I
    const/4 v3, 0x0

    const-string v4, "Explicit policy requested but none available."

    if-nez p5, :cond_1

    .line 2367
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2372
    const/4 v3, 0x0

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    .local v3, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2369
    .end local v3    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_0
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v3, p0, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 2374
    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v5

    const-string v6, "2.5.29.32.0"

    if-eqz v5, :cond_c

    .line 2377
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2379
    invoke-interface/range {p6 .. p6}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2386
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2388
    .local v3, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 2390
    aget-object v5, v1, v4

    .line 2392
    .local v5, "_nodeDepth":Ljava/util/List;
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 2394
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2396
    .local v8, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 2398
    invoke-virtual {v8}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v9

    .line 2399
    .local v9, "_iter":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 2401
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2392
    .end local v8    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v9    # "_iter":Ljava/util/Iterator;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2388
    .end local v5    # "_nodeDepth":Ljava/util/List;
    .end local v7    # "k":I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2407
    .end local v4    # "j":I
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2408
    .local v4, "_vpnsIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2411
    .local v5, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    .line 2413
    .local v6, "_validPolicy":Ljava/lang/String;
    move-object/from16 v7, p6

    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 2419
    .end local v5    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "_validPolicy":Ljava/lang/String;
    goto :goto_3

    .line 2420
    :cond_5
    move-object/from16 v7, p6

    if-eqz p5, :cond_a

    .line 2422
    add-int/lit8 v5, v2, -0x1

    move v6, v5

    move-object/from16 v5, p5

    .end local p5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "j":I
    :goto_4
    if-ltz v6, :cond_b

    .line 2424
    aget-object v8, v1, v6

    .line 2426
    .local v8, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    .line 2428
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2429
    .local v10, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2431
    invoke-static {v5, v1, v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2426
    .end local v10    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 2422
    .end local v8    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    .line 2381
    .end local v3    # "_validPolicyNodeSet":Ljava/util/Set;
    .end local v4    # "_vpnsIter":Ljava/util/Iterator;
    .end local v5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "j":I
    .restart local p5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_8
    move-object/from16 v7, p6

    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v3, p0, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v5

    .line 2377
    :cond_9
    move-object/from16 v7, p6

    .line 2440
    :cond_a
    move-object/from16 v5, p5

    .end local p5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b
    move-object v3, v5

    .local v3, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_c

    .line 2457
    .end local v3    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local p5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c
    move-object/from16 v7, p6

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 2459
    .local v3, "_validPolicyNodeSet":Ljava/util/Set;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v5, v1

    if-ge v4, v5, :cond_10

    .line 2461
    aget-object v5, v1, v4

    .line 2463
    .local v5, "_nodeDepth":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    .line 2465
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2467
    .local v9, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 2469
    invoke-virtual {v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v10

    .line 2470
    .local v10, "_iter":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    .line 2472
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2473
    .local v11, "_c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_d

    .line 2475
    invoke-interface {v3, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2477
    .end local v11    # "_c_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_d
    goto :goto_8

    .line 2463
    .end local v9    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v10    # "_iter":Ljava/util/Iterator;
    :cond_e
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 2459
    .end local v5    # "_nodeDepth":Ljava/util/List;
    .end local v8    # "k":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2485
    .end local v4    # "j":I
    :cond_10
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object/from16 v5, p5

    .line 2486
    .end local p5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "_vpnsIter":Ljava/util/Iterator;
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 2488
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2489
    .local v6, "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v8

    .line 2491
    .local v8, "_validPolicy":Ljava/lang/String;
    invoke-interface {p2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_11

    .line 2493
    invoke-static {v5, v1, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2495
    .end local v6    # "_node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "_validPolicy":Ljava/lang/String;
    :cond_11
    goto :goto_9

    .line 2500
    :cond_12
    if-eqz v5, :cond_15

    .line 2502
    add-int/lit8 v6, v2, -0x1

    .local v6, "j":I
    :goto_a
    if-ltz v6, :cond_15

    .line 2504
    aget-object v8, v1, v6

    .line 2506
    .local v8, "nodes":Ljava/util/List;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_14

    .line 2508
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 2509
    .local v10, "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v10}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v11

    if-nez v11, :cond_13

    .line 2511
    invoke-static {v5, v1, v10}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 2506
    .end local v10    # "node":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto :goto_b

    .line 2502
    .end local v8    # "nodes":Ljava/util/List;
    .end local v9    # "k":I
    :cond_14
    add-int/lit8 v6, v6, -0x1

    goto :goto_a

    .line 2518
    .end local v6    # "j":I
    :cond_15
    move-object v6, v5

    move-object v3, v6

    .line 2520
    .end local v4    # "_vpnsIter":Ljava/util/Iterator;
    .local v3, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_c
    return-object v3
.end method

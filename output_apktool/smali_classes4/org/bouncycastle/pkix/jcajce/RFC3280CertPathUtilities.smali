.class Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3280CertPathUtilities.java"


# static fields
.field public static final AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

.field public static final BASIC_CONSTRAINTS:Ljava/lang/String;

.field protected static final CRL_SIGN:I = 0x6

.field public static final DELTA_CRL_INDICATOR:Ljava/lang/String;

.field public static final FRESHEST_CRL:Ljava/lang/String;

.field public static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

.field protected static final KEY_CERT_SIGN:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 359
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 361
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->FRESHEST_CRL:Ljava/lang/String;

    .line 363
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 365
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 367
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->AUTHORITY_KEY_IDENTIFIER:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/pkix/jcajce/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 22
    .param p0, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "cert"    # Ljava/security/cert/X509Certificate;
    .param p5, "defaultCRLSignCert"    # Ljava/security/cert/X509Certificate;
    .param p6, "defaultCRLSignKey"    # Ljava/security/PublicKey;
    .param p7, "certStatus"    # Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .param p8, "reasonMask"    # Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .param p9, "certPathCerts"    # Ljava/util/List;
    .param p10, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
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
            0x0
        }
        names = {
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;,
            Lorg/bouncycastle/pkix/jcajce/CRLNotFoundException;
        }
    .end annotation

    .line 858
    move-object/from16 v1, p0

    move-object/from16 v9, p3

    move-object/from16 v3, p4

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p2 .. p2}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_b

    .line 871
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v3, v9, v0, v2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getCompleteCRLs(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v12

    .line 872
    .local v12, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 873
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 874
    .local v2, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    move v14, v0

    move-object v15, v2

    .line 876
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v13, "crl_iter":Ljava/util/Iterator;
    .local v14, "validCrlFound":Z
    .local v15, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_9

    invoke-virtual {v11}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_9

    .line 880
    :try_start_0
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 883
    .local v0, "crl":Ljava/security/cert/X509CRL;
    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    move-result-object v4

    .line 891
    .local v4, "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    invoke-virtual {v4, v11}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)Z

    move-result v5
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    .line 893
    goto :goto_0

    .line 897
    :cond_0
    move-object/from16 v6, p1

    move-object/from16 v5, p6

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object v2, v0

    move-object v0, v4

    move-object/from16 v16, v12

    const/16 v12, 0xb

    move-object/from16 v4, p5

    .end local v4    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .end local v12    # "crls":Ljava/util/Set;
    .local v0, "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .local v2, "crl":Ljava/security/cert/X509CRL;
    .local v16, "crls":Ljava/util/Set;
    :try_start_1
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v17

    move-object/from16 v4, v17

    .line 900
    .local v4, "keys":Ljava/util/Set;
    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v5

    .line 902
    .local v5, "key":Ljava/security/PublicKey;
    const/4 v7, 0x0

    .line 904
    .local v7, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 907
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v12

    invoke-static {v9, v2, v8, v12}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v8

    .line 910
    .local v8, "deltaCRLs":Ljava/util/Set;
    invoke-static {v8, v5}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v12

    move-object v7, v12

    .line 926
    .end local v8    # "deltaCRLs":Ljava/util/Set;
    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v8

    const/4 v12, 0x1

    if-eq v8, v12, :cond_3

    .line 933
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    cmp-long v8, v18, v20

    if-ltz v8, :cond_2

    goto :goto_1

    .line 935
    :cond_2
    new-instance v8, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v12, "No valid CRL for current time found."

    invoke-direct {v8, v12}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v14    # "validCrlFound":Z
    .end local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v16    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .end local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .end local p9    # "certPathCerts":Ljava/util/List;
    .end local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v8

    .line 939
    .restart local v13    # "crl_iter":Ljava/util/Iterator;
    .restart local v14    # "validCrlFound":Z
    .restart local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v16    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .restart local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local p9    # "certPathCerts":Ljava/util/List;
    .restart local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_3
    :goto_1
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLB1(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 942
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLB2(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 945
    invoke-static {v7, v2, v6}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 948
    invoke-static {v9, v7, v3, v10, v6}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 951
    invoke-static {v9, v2, v3, v10}, Lorg/bouncycastle/pkix/jcajce/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;)V

    .line 954
    invoke-virtual {v10}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v8

    const/16 v12, 0x8

    if-ne v8, v12, :cond_4

    .line 956
    const/16 v12, 0xb

    invoke-virtual {v10, v12}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->setCertStatus(I)V

    .line 960
    :cond_4
    invoke-virtual {v11, v0}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->addReasons(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)V

    .line 962
    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 963
    .local v8, "criticalExtensions":Ljava/util/Set;
    if-eqz v8, :cond_6

    .line 965
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v12

    .line 966
    sget-object v12, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 967
    sget-object v12, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v12}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v8, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 969
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object/from16 v17, v0

    goto :goto_2

    .line 971
    :cond_5
    new-instance v12, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    move-object/from16 v17, v0

    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .local v17, "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    const-string v0, "CRL contains unsupported critical extensions."

    invoke-direct {v12, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v14    # "validCrlFound":Z
    .end local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v16    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .end local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .end local p9    # "certPathCerts":Ljava/util/List;
    .end local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v12

    .line 963
    .end local v17    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local v0    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local v13    # "crl_iter":Ljava/util/Iterator;
    .restart local v14    # "validCrlFound":Z
    .restart local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v16    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .restart local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local p9    # "certPathCerts":Ljava/util/List;
    .restart local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_6
    move-object/from16 v17, v0

    .line 975
    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local v17    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    :goto_2
    if-eqz v7, :cond_8

    .line 977
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    move-object v8, v0

    .line 978
    if-eqz v8, :cond_8

    .line 980
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v8}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    move-object v8, v0

    .line 981
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 982
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->deltaCRLIndicator:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 983
    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    .line 985
    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v12, "Delta CRL contains unsupported critical extension."

    invoke-direct {v0, v12}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v14    # "validCrlFound":Z
    .end local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v16    # "crls":Ljava/util/Set;
    .end local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "cert":Ljava/security/cert/X509Certificate;
    .end local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .end local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .end local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .end local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .end local p9    # "certPathCerts":Ljava/util/List;
    .end local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v0
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 990
    .restart local v13    # "crl_iter":Ljava/util/Iterator;
    .restart local v14    # "validCrlFound":Z
    .restart local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v16    # "crls":Ljava/util/Set;
    .restart local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "defaultCRLSignCert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "defaultCRLSignKey":Ljava/security/PublicKey;
    .restart local p7    # "certStatus":Lorg/bouncycastle/pkix/jcajce/CertStatus;
    .restart local p8    # "reasonMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .restart local p9    # "certPathCerts":Ljava/util/List;
    .restart local p10    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_8
    :goto_3
    const/4 v14, 0x1

    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v4    # "keys":Ljava/util/Set;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .end local v17    # "interimReasonsMask":Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    goto :goto_5

    .line 992
    :catch_0
    move-exception v0

    goto :goto_4

    .end local v16    # "crls":Ljava/util/Set;
    .restart local v12    # "crls":Ljava/util/Set;
    :catch_1
    move-exception v0

    move-object/from16 v6, p1

    move-object/from16 v16, v12

    .line 994
    .end local v12    # "crls":Ljava/util/Set;
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v16    # "crls":Ljava/util/Set;
    :goto_4
    move-object v15, v0

    .line 995
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_5
    move-object/from16 v12, v16

    goto/16 :goto_0

    .line 876
    .end local v16    # "crls":Ljava/util/Set;
    .restart local v12    # "crls":Ljava/util/Set;
    :cond_9
    move-object/from16 v6, p1

    move-object/from16 v16, v12

    .line 997
    .end local v12    # "crls":Ljava/util/Set;
    .restart local v16    # "crls":Ljava/util/Set;
    if-eqz v14, :cond_a

    .line 1001
    return-void

    .line 999
    :cond_a
    throw v15

    .line 860
    .end local v13    # "crl_iter":Ljava/util/Iterator;
    .end local v14    # "validCrlFound":Z
    .end local v15    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v16    # "crls":Ljava/util/Set;
    :cond_b
    move-object/from16 v6, p1

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static processCRLA1i(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)Ljava/util/Set;
    .locals 6
    .param p0, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "currentDate"    # Ljava/util/Date;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "currentDate",
            "cert",
            "crl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 589
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 590
    .local v0, "set":Ljava/util/Set;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 592
    const/4 v1, 0x0

    .line 595
    .local v1, "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 596
    invoke-static {p2, v2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v2
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_3

    .line 601
    .end local v1    # "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v2, "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    nop

    .line 602
    if-nez v2, :cond_0

    .line 606
    :try_start_1
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->freshestCRL:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p3, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v1
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, v1

    .line 612
    goto :goto_0

    .line 609
    :catch_0
    move-exception v1

    .line 611
    .local v1, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from CRL."

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 614
    .end local v1    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 616
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .local v1, "crlStores":Ljava/util/List;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 622
    :try_start_2
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 628
    nop

    .line 633
    :try_start_3
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, p3, v3, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 638
    goto :goto_1

    .line 635
    :catch_1
    move-exception v3

    .line 637
    .local v3, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v5, "Exception obtaining delta CRLs."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 624
    .end local v3    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :catch_2
    move-exception v3

    .line 626
    .restart local v3    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v5, "No new delta CRL locations could be added from Freshest CRL extension."

    invoke-direct {v4, v5, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 598
    .end local v2    # "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v3    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v1, "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_3
    move-exception v2

    .line 600
    .local v2, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Freshest CRL extension could not be decoded from certificate."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 641
    .end local v1    # "freshestCRL":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v2    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_1
    :goto_1
    return-object v0
.end method

.method protected static processCRLA1ii(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509CRL;)[Ljava/util/Set;
    .locals 7
    .param p0, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p1, "currentDate"    # Ljava/util/Date;
    .param p2, "validityDate"    # Ljava/util/Date;
    .param p3, "cert"    # Ljava/security/cert/X509Certificate;
    .param p4, "crl"    # Ljava/security/cert/X509CRL;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "paramsPKIX",
            "currentDate",
            "validityDate",
            "cert",
            "crl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 652
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 653
    .local v0, "crlselect":Ljava/security/cert/X509CRLSelector;
    invoke-virtual {v0, p3}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 657
    :try_start_0
    invoke-virtual {p4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 662
    nop

    .line 664
    new-instance v1, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    invoke-direct {v1, v0}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;-><init>(Ljava/security/cert/CRLSelector;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->setCompleteCRLEnabled(Z)Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;

    move-result-object v1

    .line 666
    .local v1, "extSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v3

    .line 667
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v4

    .line 666
    invoke-static {v1, p2, v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;Ljava/util/Date;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v3

    .line 668
    .local v3, "completeSet":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 670
    .local v4, "deltaSet":Ljava/util/Set;
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 675
    :try_start_1
    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v5

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v6

    invoke-static {p2, p4, v5, v6}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 680
    goto :goto_0

    .line 677
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Exception obtaining delta CRLs."

    invoke-direct {v5, v6, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 682
    .end local v2    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_0
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/util/Set;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    aput-object v4, v5, v2

    return-object v5

    .line 659
    .end local v1    # "extSelect":Lorg/bouncycastle/jcajce/PKIXCRLStoreSelector;
    .end local v3    # "completeSet":Ljava/util/Set;
    .end local v4    # "deltaSet":Ljava/util/Set;
    :catch_1
    move-exception v1

    .line 661
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot extract issuer from CRL."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 266
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 267
    .local v0, "idp":Lorg/bouncycastle/asn1/ASN1Primitive;
    const/4 v1, 0x0

    .line 268
    .local v1, "isIndirect":Z
    if-eqz v0, :cond_0

    .line 270
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->isIndirectCRL()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    const/4 v1, 0x1

    .line 277
    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    .line 280
    .local v2, "issuerBytes":[B
    const/4 v3, 0x0

    .line 281
    .local v3, "matchIssuer":Z
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 283
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 284
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    .line 286
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 290
    :try_start_0
    aget-object v6, v4, v5

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v6

    invoke-static {v6, v2}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 292
    const/4 v3, 0x1

    .line 299
    :cond_1
    goto :goto_1

    .line 295
    :catch_0
    move-exception v6

    .line 297
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v8, "CRL issuer information from distribution point cannot be decoded."

    invoke-direct {v7, v8, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 284
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 302
    .end local v5    # "j":I
    :cond_3
    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    goto :goto_2

    .line 304
    :cond_4
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Distribution point contains cRLIssuer field but CRL is not indirect."

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 306
    :cond_5
    :goto_2
    if-eqz v3, :cond_6

    .line 310
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 308
    .restart local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "CRL issuer of CRL does not match CRL issuer of distribution point."

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_7
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    move-object v5, p1

    check-cast v5, Ljava/security/cert/X509Certificate;

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 315
    const/4 v3, 0x1

    .line 318
    :cond_8
    :goto_3
    if-eqz v3, :cond_9

    .line 322
    return-void

    .line 320
    :cond_9
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v5, "Cannot find matching CRL issuer for certificate."

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 83
    const/4 v0, 0x0

    .line 86
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p2, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 92
    .end local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 95
    if-eqz v1, :cond_15

    .line 97
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 100
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 101
    .local v0, "dpName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v2, "names":Ljava/util/List;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 105
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 106
    .local v3, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 108
    aget-object v5, v3, v4

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 111
    .end local v3    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 113
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 116
    .local v3, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_1
    invoke-virtual {p2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 117
    .local v5, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 119
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 125
    .end local v5    # "e":Ljava/util/Enumeration;
    :cond_1
    nop

    .line 126
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 127
    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v6, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v6, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v6}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 122
    :catch_0
    move-exception v4

    .line 124
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Could not read CRL issuer."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 129
    .end local v3    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    const/4 v3, 0x0

    .line 132
    .local v3, "matches":Z
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v5

    const-string v6, "No match for certificate CRL issuing distribution point name to cRLIssuer CRL distribution point."

    if-eqz v5, :cond_a

    .line 134
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    .line 135
    const/4 v5, 0x0

    .line 136
    .local v5, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-nez v7, :cond_3

    .line 138
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v5

    .line 140
    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v7

    if-ne v7, v4, :cond_6

    .line 142
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 144
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    move-object v5, v4

    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_3

    .line 148
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_4
    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 151
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_start_2
    new-instance v5, Lorg/bouncycastle/asn1/x509/GeneralName;

    move-object v7, p1

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    move-object v5, v4

    .line 158
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :goto_3
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v7, v5

    if-ge v4, v7, :cond_6

    .line 160
    aget-object v7, v5, v4

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-interface {v7}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v7

    .line 161
    .local v7, "e":Ljava/util/Enumeration;
    new-instance v8, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v8}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 162
    .local v8, "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 164
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    goto :goto_5

    .line 166
    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 167
    new-instance v9, Lorg/bouncycastle/asn1/x509/GeneralName;

    new-instance v10, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v10, v8}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v10}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;)V

    aput-object v9, v5, v4

    .line 158
    .end local v7    # "e":Ljava/util/Enumeration;
    .end local v8    # "vec":Lorg/bouncycastle/asn1/ASN1EncodableVector;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 153
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :catch_1
    move-exception v5

    .line 155
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v7, "Could not read certificate issuer."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 170
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    .local v5, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_6
    if-eqz v5, :cond_8

    .line 172
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_6
    array-length v7, v5

    if-ge v4, v7, :cond_8

    .line 174
    aget-object v7, v5, v4

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 176
    const/4 v3, 0x1

    .line 177
    goto :goto_7

    .line 172
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 181
    .end local v4    # "j":I
    :cond_8
    :goto_7
    if-eqz v3, :cond_9

    .line 186
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    goto :goto_a

    .line 183
    .restart local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_9
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v4, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 192
    .end local v5    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_a
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 197
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    .line 198
    .local v4, "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    array-length v7, v4

    if-ge v5, v7, :cond_c

    .line 200
    aget-object v7, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 202
    const/4 v3, 0x1

    .line 203
    goto :goto_9

    .line 198
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 206
    .end local v5    # "j":I
    :cond_c
    :goto_9
    if-eqz v3, :cond_d

    goto :goto_a

    .line 208
    :cond_d
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 194
    .end local v4    # "genNames":[Lorg/bouncycastle/asn1/x509/GeneralName;
    :cond_e
    new-instance v4, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v5, "Either the cRLIssuer or the distributionPoint field must be contained in DistributionPoint."

    invoke-direct {v4, v5}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 213
    .end local v0    # "dpName":Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v2    # "names":Ljava/util/List;
    .end local v3    # "matches":Z
    :cond_f
    :goto_a
    const/4 v0, 0x0

    .line 216
    .local v0, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_3
    move-object v2, p1

    check-cast v2, Ljava/security/cert/X509Extension;

    sget-object v3, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 222
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .local v2, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    nop

    .line 224
    instance-of v0, p1, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_13

    .line 227
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v0

    if-eqz v0, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    .line 229
    :cond_10
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "CA Cert CRL only contains user certificates."

    invoke-direct {v0, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
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

    .line 235
    :cond_12
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "End CRL only contains CA certificates."

    invoke-direct {v0, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :cond_13
    :goto_c
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_d

    .line 242
    :cond_14
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "onlyContainsAttributeCerts boolean is asserted."

    invoke-direct {v0, v3}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    .end local v2    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .restart local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_2
    move-exception v2

    .line 221
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Basic constraints extension could not be decoded."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 245
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_15
    :goto_d
    return-void

    .line 89
    .end local v1    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 699
    if-nez p0, :cond_0

    .line 701
    return-void

    .line 703
    :cond_0
    const/4 v0, 0x0

    .line 706
    .local v0, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 712
    .end local v0    # "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 714
    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 717
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 723
    const/4 v0, 0x0

    .line 726
    .local v0, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_1
    sget-object v2, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 733
    .end local v0    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v2, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 735
    const/4 v0, 0x0

    .line 736
    .local v0, "match":Z
    if-nez v1, :cond_1

    .line 738
    if-nez v2, :cond_2

    .line 740
    const/4 v0, 0x1

    goto :goto_0

    .line 745
    :cond_1
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 747
    const/4 v0, 0x1

    .line 750
    :cond_2
    :goto_0
    if-eqz v0, :cond_6

    .line 757
    const/4 v3, 0x0

    .line 760
    .local v3, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_start_2
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p1, v4}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v4
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 767
    .end local v3    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v4, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 769
    const/4 v3, 0x0

    .line 772
    .local v3, "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_start_3
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v5}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 779
    .end local v3    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .local v5, "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    nop

    .line 781
    if-eqz v4, :cond_5

    .line 786
    if-eqz v5, :cond_4

    .line 791
    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 793
    :cond_3
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier does not match complete CRL authority key identifier."

    invoke-direct {v3, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 788
    :cond_4
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Delta CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 783
    :cond_5
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "CRL authority key identifier is null."

    invoke-direct {v3, v6}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 775
    .end local v5    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .restart local v3    # "deltaKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_0
    move-exception v5

    .line 777
    .local v5, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v6, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v7, "Authority key identifier extension could not be extracted from delta CRL."

    invoke-direct {v6, v7, v5}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 763
    .end local v4    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v5    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v3, "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    :catch_1
    move-exception v4

    .line 765
    .local v4, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v5, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Authority key identifier extension could not be extracted from complete CRL."

    invoke-direct {v5, v6, v4}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 752
    .end local v3    # "completeKeyIdentifier":Lorg/bouncycastle/asn1/ASN1Primitive;
    .end local v4    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_6
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL and complete CRL does not match."

    invoke-direct {v3, v4}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    .end local v2    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_2
    move-exception v2

    .line 731
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v4, "Issuing distribution point extension from delta CRL could not be decoded."

    invoke-direct {v3, v4, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 719
    .end local v0    # "deltaidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "complete CRL issuer does not match delta CRL issuer"

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 797
    :cond_8
    :goto_1
    return-void

    .line 709
    .end local v1    # "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v0, "completeidp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_3
    move-exception v1

    .line 711
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 329
    const/4 v0, 0x0

    .line 332
    .local v0, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :try_start_0
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->issuingDistributionPoint:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-static {p0, v1}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .local v1, "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    nop

    .line 340
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->intersect(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    move-result-object v0

    return-object v0

    .line 345
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_2

    .line 347
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    return-object v0

    .line 350
    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v0

    if-nez v0, :cond_3

    .line 351
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    goto :goto_0

    .line 352
    :cond_3
    new-instance v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    :goto_0
    if-nez v1, :cond_4

    .line 353
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    goto :goto_1

    .line 354
    :cond_4
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getOnlySomeReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V

    .line 352
    :goto_1
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->intersect(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    move-result-object v0

    .line 350
    return-object v0

    .line 335
    .end local v1    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .restart local v0    # "idp":Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v3, "Issuing distribution point extension could not be decoded."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;
    .locals 18
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 408
    move-object/from16 v1, p2

    move-object/from16 v2, p6

    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    move-object v3, v0

    .line 411
    .local v3, "certSelector":Ljava/security/cert/X509CertSelector;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    .line 412
    .local v0, "issuerPrincipal":[B
    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_a

    .line 418
    .end local v0    # "issuerPrincipal":[B
    nop

    .line 420
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v4

    .line 423
    .local v4, "selector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    move-object v5, v0

    .line 426
    .local v5, "coll":Ljava/util/LinkedHashSet;
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertificateStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V

    .line 427
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v4, v0}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->findCertificates(Ljava/util/LinkedHashSet;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_9

    .line 432
    nop

    .line 434
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 437
    .local v6, "validCerts":Ljava/util/List;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v0

    .line 439
    .local v7, "validKeys":Ljava/util/List;
    invoke-virtual {v5}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 440
    .local v8, "cert_it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 442
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 448
    .local v9, "signingCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v9, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    move-object/from16 v10, p3

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    goto :goto_0

    .line 456
    :cond_0
    move-object/from16 v10, p3

    :try_start_2
    const-string v0, "PKIX"

    invoke-interface {v2, v0}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCertPathBuilder(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    .line 457
    .local v0, "builder":Ljava/security/cert/CertPathBuilder;
    new-instance v11, Ljava/security/cert/X509CertSelector;

    invoke-direct {v11}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 458
    .local v11, "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    invoke-virtual {v11, v9}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 460
    new-instance v12, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    :try_end_2
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    move-object/from16 v13, p4

    :try_start_3
    invoke-direct {v12, v13}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    new-instance v14, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v14, v11}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    .line 461
    invoke-virtual {v14}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v12
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 472
    .local v12, "paramsBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    move-object/from16 v14, p5

    :try_start_4
    invoke-interface {v14, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    const/4 v1, 0x0

    if-eqz v15, :cond_1

    .line 474
    invoke-virtual {v12, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    goto :goto_1

    .line 478
    :cond_1
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setRevocationEnabled(Z)V

    .line 481
    :goto_1
    new-instance v15, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v1

    invoke-direct {v15, v1}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v15}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v1

    .line 483
    .local v1, "extParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    invoke-virtual {v0, v1}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v15

    invoke-interface {v15}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v15

    invoke-virtual {v15}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v15

    .line 484
    .local v15, "certs":Ljava/util/List;
    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 485
    move-object/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v17, "builder":Ljava/security/cert/CertPathBuilder;
    invoke-static {v15, v0, v2}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 498
    nop

    .line 499
    .end local v1    # "extParams":Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;
    .end local v9    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v11    # "tmpCertSelector":Ljava/security/cert/X509CertSelector;
    .end local v12    # "paramsBuilder":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v15    # "certs":Ljava/util/List;
    .end local v17    # "builder":Ljava/security/cert/CertPathBuilder;
    move-object/from16 v1, p2

    goto :goto_0

    .line 495
    .restart local v9    # "signingCert":Ljava/security/cert/X509Certificate;
    :catch_0
    move-exception v0

    goto :goto_3

    .line 491
    :catch_1
    move-exception v0

    goto :goto_5

    .line 487
    :catch_2
    move-exception v0

    goto :goto_7

    .line 495
    :catch_3
    move-exception v0

    goto :goto_2

    .line 491
    :catch_4
    move-exception v0

    goto :goto_4

    .line 487
    :catch_5
    move-exception v0

    goto :goto_6

    .line 495
    :catch_6
    move-exception v0

    move-object/from16 v13, p4

    :goto_2
    move-object/from16 v14, p5

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 491
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v0

    move-object/from16 v13, p4

    :goto_4
    move-object/from16 v14, p5

    .line 493
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    :goto_5
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v11, "Public key of issuer certificate of CRL could not be retrieved."

    invoke-direct {v1, v11, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 487
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    :catch_8
    move-exception v0

    move-object/from16 v13, p4

    :goto_6
    move-object/from16 v14, p5

    .line 489
    .local v0, "e":Ljava/security/cert/CertPathBuilderException;
    :goto_7
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v11, "CertPath for CRL signer failed to validate."

    invoke-direct {v1, v11, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 501
    .end local v0    # "e":Ljava/security/cert/CertPathBuilderException;
    .end local v9    # "signingCert":Ljava/security/cert/X509Certificate;
    :cond_2
    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 503
    .local v0, "checkKeys":Ljava/util/Set;
    const/4 v1, 0x0

    .line 504
    .local v1, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_8
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_6

    .line 506
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 507
    .local v11, "signCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 509
    .local v12, "keyUsage":[Z
    if-eqz v12, :cond_4

    array-length v15, v12

    move-object/from16 v16, v1

    .end local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .local v16, "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    const/4 v1, 0x6

    if-le v15, v1, :cond_3

    aget-boolean v1, v12, v1

    if-nez v1, :cond_5

    .line 511
    :cond_3
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v15, "Issuer certificate key usage extension does not permit CRL signing."

    invoke-direct {v1, v15}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    goto :goto_9

    .line 509
    :cond_4
    move-object/from16 v16, v1

    .line 516
    .end local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :cond_5
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v16

    .line 504
    .end local v11    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v12    # "keyUsage":[Z
    .end local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .restart local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_6
    move-object/from16 v16, v1

    .line 520
    .end local v1    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v9    # "i":I
    .restart local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v16, :cond_7

    goto :goto_a

    .line 522
    :cond_7
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v9, "Cannot find a valid issuer certificate."

    invoke-direct {v1, v9}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 524
    :cond_8
    :goto_a
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v16, :cond_9

    goto :goto_b

    .line 526
    :cond_9
    throw v16

    .line 529
    :cond_a
    :goto_b
    return-object v0

    .line 429
    .end local v0    # "checkKeys":Ljava/util/Set;
    .end local v6    # "validCerts":Ljava/util/List;
    .end local v7    # "validKeys":Ljava/util/List;
    .end local v8    # "cert_it":Ljava/util/Iterator;
    .end local v16    # "lastException":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    :catch_9
    move-exception v0

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 431
    .local v0, "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v6, "Issuer certificate for CRL cannot be searched."

    invoke-direct {v1, v6, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 414
    .end local v0    # "e":Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
    .end local v4    # "selector":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    .end local v5    # "coll":Ljava/util/LinkedHashSet;
    :catch_a
    move-exception v0

    move-object/from16 v10, p3

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    .line 416
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string/jumbo v4, "subject criteria for certificate selector to find issuer certificate for CRL could not be set"

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 537
    const/4 v0, 0x0

    .line 538
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 540
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/PublicKey;

    .line 543
    .local v2, "key":Ljava/security/PublicKey;
    :try_start_0
    invoke-virtual {p0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    return-object v2

    .line 546
    :catch_0
    move-exception v3

    .line 548
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 550
    .end local v2    # "key":Ljava/security/PublicKey;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 551
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "Cannot verify CRL."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 559
    const/4 v0, 0x0

    .line 561
    .local v0, "lastException":Ljava/lang/Exception;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 563
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 566
    .local v2, "crl":Ljava/security/cert/X509CRL;
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    return-object v2

    .line 569
    :catch_0
    move-exception v3

    .line 571
    .local v3, "e":Ljava/lang/Exception;
    move-object v0, v3

    .line 573
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 575
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_0
    if-nez v0, :cond_1

    .line 579
    const/4 v1, 0x0

    return-object v1

    .line 577
    :cond_1
    new-instance v1, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;

    const-string v2, "Cannot verify delta CRL."

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 1
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "deltacrl"    # Ljava/security/cert/X509CRL;
    .param p2, "cert"    # Ljava/lang/Object;
    .param p3, "certStatus"    # Lorg/bouncycastle/pkix/jcajce/CertStatus;
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
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 807
    invoke-virtual {p4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 809
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;)V

    .line 811
    :cond_0
    return-void
.end method

.method protected static processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;)V
    .locals 2
    .param p0, "validDate"    # Ljava/util/Date;
    .param p1, "completecrl"    # Ljava/security/cert/X509CRL;
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
            "completecrl",
            "cert",
            "certStatus"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/AnnotatedException;
        }
    .end annotation

    .line 820
    invoke-virtual {p3}, Lorg/bouncycastle/pkix/jcajce/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 822
    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pkix/jcajce/RevocationUtilities;->getCertStatus(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/pkix/jcajce/CertStatus;)V

    .line 824
    :cond_0
    return-void
.end method

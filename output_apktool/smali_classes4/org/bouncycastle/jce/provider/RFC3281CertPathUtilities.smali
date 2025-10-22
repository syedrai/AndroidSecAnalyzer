.class Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;
.super Ljava/lang/Object;
.source "RFC3281CertPathUtilities.java"


# static fields
.field private static final AUTHORITY_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

.field private static final NO_REV_AVAIL:Ljava/lang/String;

.field private static final TARGET_INFORMATION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->targetInformation:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 56
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 58
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->noRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 59
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 62
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    .line 65
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    .line 64
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static additionalChecks(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/util/Set;Ljava/util/Set;)V
    .locals 6
    .param p0, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p1, "prohibitedACAttributes"    # Ljava/util/Set;
    .param p2, "necessaryACAttributes"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "attrCert",
            "prohibitedACAttributes",
            "necessaryACAttributes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 302
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "."

    if-eqz v1, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    .local v1, "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v3

    if-nez v3, :cond_0

    .line 312
    .end local v1    # "oid":Ljava/lang/String;
    goto :goto_0

    .line 308
    .restart local v1    # "oid":Ljava/lang/String;
    :cond_0
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute certificate contains prohibited attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 313
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "oid":Ljava/lang/String;
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 314
    .restart local v0    # "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    .restart local v1    # "oid":Ljava/lang/String;
    invoke-interface {p0, v1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/X509Attribute;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 323
    .end local v1    # "oid":Ljava/lang/String;
    goto :goto_1

    .line 319
    .restart local v1    # "oid":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attribute certificate does not contain necessary attribute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 324
    .end local v0    # "it":Ljava/util/Iterator;
    .end local v1    # "oid":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private static checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 23
    .param p0, "dp"    # Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .param p1, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p2, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p3, "currentDate"    # Ljava/util/Date;
    .param p4, "validityDate"    # Ljava/util/Date;
    .param p5, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p6, "certStatus"    # Lorg/bouncycastle/jce/provider/CertStatus;
    .param p7, "reasonMask"    # Lorg/bouncycastle/jce/provider/ReasonsMask;
    .param p8, "certPathCerts"    # Ljava/util/List;
    .param p9, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
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
            0x0
        }
        names = {
            "dp",
            "attrCert",
            "paramsPKIX",
            "currentDate",
            "validityDate",
            "issuerCert",
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

    .line 593
    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NoRevAvail:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 595
    return-void

    .line 598
    :cond_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gtz v0, :cond_a

    .line 611
    new-instance v4, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;

    const/4 v8, -0x1

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v9, p5

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/security/cert/CertPath;ILjava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    move-object v9, v6

    move-object v6, v5

    move-object v10, v4

    .line 613
    .local v10, "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    invoke-static {v10, v1, v3, v6, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getCompleteCRLs(Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Set;

    move-result-object v13

    .line 614
    .local v13, "crls":Ljava/util/Set;
    const/4 v0, 0x0

    .line 615
    .local v0, "validCrlFound":Z
    const/4 v2, 0x0

    .line 616
    .local v2, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v15, v0

    move-object/from16 v16, v2

    .line 618
    .end local v0    # "validCrlFound":Z
    .end local v2    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v14, "crl_iter":Ljava/util/Iterator;
    .local v15, "validCrlFound":Z
    .local v16, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 619
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_7

    .line 620
    invoke-virtual {v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_6

    .line 624
    :try_start_0
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    .line 627
    .local v0, "crl":Ljava/security/cert/X509CRL;
    nop

    .line 628
    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLD(Ljava/security/cert/X509CRL;Lorg/bouncycastle/asn1/x509/DistributionPoint;)Lorg/bouncycastle/jce/provider/ReasonsMask;

    move-result-object v4

    .line 636
    .local v4, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    invoke-virtual {v4, v12}, Lorg/bouncycastle/jce/provider/ReasonsMask;->hasNewReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)Z

    move-result v5
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v5, :cond_1

    .line 638
    goto :goto_0

    .line 642
    :cond_1
    move-object v5, v4

    .end local v4    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v5, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    const/4 v4, 0x0

    move-object v7, v5

    .end local v5    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v7, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    const/4 v5, 0x0

    move-object/from16 v8, p9

    move-object v2, v0

    move-object v0, v7

    move-object/from16 v17, v10

    const/16 v10, 0xb

    move-object/from16 v7, p8

    .end local v7    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .local v0, "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .local v2, "crl":Ljava/security/cert/X509CRL;
    .local v17, "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :try_start_1
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLF(Ljava/security/cert/X509CRL;Ljava/lang/Object;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v4
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3

    .line 644
    .local v4, "keys":Ljava/util/Set;
    :try_start_2
    invoke-static {v2, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLG(Ljava/security/cert/X509CRL;Ljava/util/Set;)Ljava/security/PublicKey;

    move-result-object v5

    .line 646
    .local v5, "key":Ljava/security/PublicKey;
    const/4 v7, 0x0

    .line 648
    .local v7, "deltaCRL":Ljava/security/cert/X509CRL;
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isUseDeltasEnabled()Z

    move-result v8
    :try_end_2
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v8, :cond_2

    .line 651
    :try_start_3
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCRLStores()Ljava/util/List;

    move-result-object v10
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v4, p3

    move-object/from16 v7, p9

    .end local v4    # "keys":Ljava/util/Set;
    .end local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    .local v18, "keys":Ljava/util/Set;
    .local v19, "deltaCRL":Ljava/security/cert/X509CRL;
    :try_start_4
    invoke-static {v4, v2, v8, v10, v7}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getDeltaCRLs(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/util/List;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/Set;

    move-result-object v8

    .line 654
    .local v8, "deltaCRLs":Ljava/util/Set;
    invoke-static {v8, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLH(Ljava/util/Set;Ljava/security/PublicKey;)Ljava/security/cert/X509CRL;

    move-result-object v10

    .end local v19    # "deltaCRL":Ljava/security/cert/X509CRL;
    .local v10, "deltaCRL":Ljava/security/cert/X509CRL;
    goto :goto_1

    .line 710
    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v8    # "deltaCRLs":Ljava/util/Set;
    .end local v10    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "keys":Ljava/util/Set;
    :catch_0
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_3

    .line 648
    .restart local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v2    # "crl":Ljava/security/cert/X509CRL;
    .restart local v4    # "keys":Ljava/util/Set;
    .restart local v5    # "key":Ljava/security/PublicKey;
    .restart local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    :cond_2
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    move-object/from16 v4, p3

    move-object/from16 v7, p9

    .end local v4    # "keys":Ljava/util/Set;
    .end local v7    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v18    # "keys":Ljava/util/Set;
    .restart local v19    # "deltaCRL":Ljava/security/cert/X509CRL;
    move-object/from16 v10, v19

    .line 671
    .end local v19    # "deltaCRL":Ljava/security/cert/X509CRL;
    .restart local v10    # "deltaCRL":Ljava/security/cert/X509CRL;
    :goto_1
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getValidityModel()I

    move-result v8

    const/4 v4, 0x1

    if-eq v8, v4, :cond_4

    .line 678
    invoke-interface {v3}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v19

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v4

    .line 679
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    cmp-long v4, v19, v21

    if-ltz v4, :cond_3

    goto :goto_2

    .line 681
    :cond_3
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v8, "No valid CRL for current time found."

    invoke-direct {v4, v8}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .end local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local p3    # "currentDate":Ljava/util/Date;
    .end local p4    # "validityDate":Ljava/util/Date;
    .end local p5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local p7    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local p8    # "certPathCerts":Ljava/util/List;
    .end local p9    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v4

    .line 686
    .restart local v13    # "crls":Ljava/util/Set;
    .restart local v14    # "crl_iter":Ljava/util/Iterator;
    .restart local v15    # "validCrlFound":Z
    .restart local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local p0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local p1    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local p3    # "currentDate":Ljava/util/Date;
    .restart local p4    # "validityDate":Ljava/util/Date;
    .restart local p5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local p7    # "reasonMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local p8    # "certPathCerts":Ljava/util/List;
    .restart local p9    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :cond_4
    :goto_2
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB1(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 689
    invoke-static {v1, v3, v2}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLB2(Lorg/bouncycastle/asn1/x509/DistributionPoint;Ljava/lang/Object;Ljava/security/cert/X509CRL;)V

    .line 692
    invoke-static {v10, v2, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLC(Ljava/security/cert/X509CRL;Ljava/security/cert/X509CRL;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 695
    invoke-static {v9, v10, v3, v11, v6}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLI(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 698
    invoke-static {v9, v2, v3, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCRLJ(Ljava/util/Date;Ljava/security/cert/X509CRL;Ljava/lang/Object;Lorg/bouncycastle/jce/provider/CertStatus;)V

    .line 701
    invoke-virtual {v11}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v4

    const/16 v8, 0x8

    if-ne v4, v8, :cond_5

    .line 703
    const/16 v4, 0xb

    invoke-virtual {v11, v4}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 707
    :cond_5
    invoke-virtual {v12, v0}, Lorg/bouncycastle/jce/provider/ReasonsMask;->addReasons(Lorg/bouncycastle/jce/provider/ReasonsMask;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_1

    .line 708
    const/4 v15, 0x1

    .end local v0    # "interimReasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v2    # "crl":Ljava/security/cert/X509CRL;
    .end local v5    # "key":Ljava/security/PublicKey;
    .end local v10    # "deltaCRL":Ljava/security/cert/X509CRL;
    .end local v18    # "keys":Ljava/util/Set;
    goto :goto_5

    .line 710
    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    :goto_3
    move-object/from16 v7, p9

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v7, v8

    goto :goto_4

    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .local v10, "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :catch_4
    move-exception v0

    move-object/from16 v7, p9

    move-object/from16 v17, v10

    .line 712
    .end local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :goto_4
    move-object/from16 v16, v0

    .line 713
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_5
    move-object/from16 v10, v17

    goto/16 :goto_0

    .line 620
    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :cond_6
    move-object/from16 v7, p9

    move-object/from16 v17, v10

    .end local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    goto :goto_6

    .line 619
    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :cond_7
    move-object/from16 v7, p9

    move-object/from16 v17, v10

    .end local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    goto :goto_6

    .line 618
    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :cond_8
    move-object/from16 v7, p9

    move-object/from16 v17, v10

    .line 715
    .end local v10    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    .restart local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :goto_6
    if-eqz v15, :cond_9

    .line 719
    return-void

    .line 717
    :cond_9
    throw v16

    .line 600
    .end local v13    # "crls":Ljava/util/Set;
    .end local v14    # "crl_iter":Ljava/util/Iterator;
    .end local v15    # "validCrlFound":Z
    .end local v16    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v17    # "params":Lorg/bouncycastle/jcajce/PKIXCertRevocationCheckerParameters;
    :cond_a
    move-object/from16 v6, p2

    move-object/from16 v9, p4

    move-object/from16 v7, p9

    new-instance v0, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v2, "Validation time is in future."

    invoke-direct {v0, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static checkCRLs(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 20
    .param p0, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p1, "paramsPKIX"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p2, "currentDate"    # Ljava/util/Date;
    .param p3, "validityDate"    # Ljava/util/Date;
    .param p4, "issuerCert"    # Ljava/security/cert/X509Certificate;
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
            "attrCert",
            "paramsPKIX",
            "currentDate",
            "validityDate",
            "issuerCert",
            "certPathCerts",
            "helper"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 135
    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 138
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->NO_REV_AVAIL:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_a

    .line 140
    const/4 v2, 0x0

    .line 143
    .local v2, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    .line 144
    invoke-static {v1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_7

    move-object v10, v0

    .line 151
    .end local v2    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v10, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    nop

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 157
    .local v11, "crlStores":Ljava/util/List;
    nop

    .line 158
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getNamedCRLStoreMap()Ljava/util/Map;

    move-result-object v0

    .line 157
    move-object/from16 v4, p3

    move-object/from16 v9, p6

    invoke-static {v10, v0, v4, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAdditionalStoresFromCRLDistributionPoint(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Ljava/util/Map;Ljava/util/Date;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_6

    .line 165
    nop

    .line 167
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object/from16 v3, p1

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    move-object v12, v0

    .line 169
    .local v12, "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 171
    move-object v2, v11

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXCRLStore;

    invoke-virtual {v12, v2}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->addCRLStore(Lorg/bouncycastle/jcajce/PKIXCRLStore;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    goto :goto_0

    .line 174
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v12}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v13

    .line 176
    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v13, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    new-instance v6, Lorg/bouncycastle/jce/provider/CertStatus;

    invoke-direct {v6}, Lorg/bouncycastle/jce/provider/CertStatus;-><init>()V

    .line 177
    .local v6, "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    new-instance v7, Lorg/bouncycastle/jce/provider/ReasonsMask;

    invoke-direct {v7}, Lorg/bouncycastle/jce/provider/ReasonsMask;-><init>()V

    .line 179
    .local v7, "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    const/4 v14, 0x0

    .line 180
    .local v14, "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    const/4 v2, 0x0

    .line 182
    .local v2, "validCrlFound":Z
    const-string v15, "No valid CRL for distribution point found."

    const/16 v3, 0xb

    if-eqz v10, :cond_3

    .line 184
    const/4 v5, 0x0

    .line 187
    .local v5, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    :try_start_2
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v0

    .line 193
    nop

    .line 196
    const/4 v0, 0x0

    move/from16 v16, v2

    .line 198
    .end local v2    # "validCrlFound":Z
    .local v0, "i":I
    .local v16, "validCrlFound":Z
    :goto_1
    :try_start_3
    array-length v2, v5

    if-ge v0, v2, :cond_2

    .line 197
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 198
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    nop

    .line 201
    invoke-virtual {v13}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    .line 203
    .local v2, "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move v8, v0

    .end local v0    # "i":I
    .local v8, "i":I
    aget-object v0, v5, v8
    :try_end_3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v3, p2

    move-object/from16 v17, v5

    move/from16 v18, v8

    move-object/from16 v19, v10

    const/16 v10, 0xb

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    .end local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v8    # "i":I
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v17, "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v18, "i":I
    .local v19, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_4
    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 205
    const/16 v16, 0x1

    .line 198
    .end local v2    # "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    add-int/lit8 v0, v18, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v9, p6

    move-object/from16 v5, v17

    move-object/from16 v10, v19

    const/16 v3, 0xb

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 208
    .end local v0    # "i":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 197
    .end local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v0    # "i":I
    .restart local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_1
    move/from16 v18, v0

    move-object/from16 v17, v5

    move-object/from16 v19, v10

    const/16 v10, 0xb

    .end local v0    # "i":I
    .end local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v18    # "i":I
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    goto :goto_2

    .line 198
    .end local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v18    # "i":I
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v0    # "i":I
    .restart local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_2
    move/from16 v18, v0

    move-object/from16 v17, v5

    move-object/from16 v19, v10

    const/16 v10, 0xb

    .line 212
    .end local v0    # "i":I
    .end local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_2
    goto :goto_4

    .line 208
    .end local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_1
    move-exception v0

    move-object/from16 v17, v5

    move-object/from16 v19, v10

    const/16 v10, 0xb

    .line 210
    .end local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :goto_3
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v1, v15, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v1

    goto :goto_4

    .line 189
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    .end local v17    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v2, "validCrlFound":Z
    .restart local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_2
    move-exception v0

    move-object/from16 v19, v10

    .line 191
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Distribution points could not be read."

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 182
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "dps":[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_3
    move-object/from16 v19, v10

    const/16 v10, 0xb

    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    move/from16 v16, v2

    .line 221
    .end local v2    # "validCrlFound":Z
    .restart local v16    # "validCrlFound":Z
    :goto_4
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v10, :cond_5

    .line 222
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    if-nez v0, :cond_4

    .line 234
    :try_start_5
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 241
    .local v0, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    nop

    .line 242
    :try_start_6
    new-instance v1, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    new-instance v2, Lorg/bouncycastle/asn1/x509/DistributionPointName;

    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralNames;

    new-instance v4, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;-><init>(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3}, Lorg/bouncycastle/asn1/x509/DistributionPointName;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v3}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V

    .line 246
    .local v1, "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    nop

    .line 247
    invoke-virtual {v13}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :try_end_6
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_3

    .line 249
    .local v2, "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v17, v0

    move-object v0, v1

    move-object/from16 v1, p0

    .end local v1    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v0, "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .local v17, "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    :try_start_7
    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRL(Lorg/bouncycastle/asn1/x509/DistributionPoint;Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jce/provider/CertStatus;Lorg/bouncycastle/jce/provider/ReasonsMask;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 251
    const/16 v16, 0x1

    .line 257
    .end local v0    # "dp":Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2    # "paramsPKIXClone":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v17    # "issuer":Lorg/bouncycastle/asn1/x500/X500Name;
    goto :goto_6

    .line 253
    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_5

    .line 236
    :catch_4
    move-exception v0

    move-object/from16 v1, p0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v3, "Issuer from certificate for CRL could not be reencoded."

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v11    # "crlStores":Ljava/util/List;
    .end local v12    # "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v13    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v14    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local p0    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local p2    # "currentDate":Ljava/util/Date;
    .end local p3    # "validityDate":Ljava/util/Date;
    .end local p4    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local p5    # "certPathCerts":Ljava/util/List;
    .end local p6    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    throw v2
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_5

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local v7    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v11    # "crlStores":Ljava/util/List;
    .restart local v12    # "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v13    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v14    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v16    # "validCrlFound":Z
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local p0    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .restart local p2    # "currentDate":Ljava/util/Date;
    .restart local p3    # "validityDate":Ljava/util/Date;
    .restart local p4    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local p5    # "certPathCerts":Ljava/util/List;
    .restart local p6    # "helper":Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    :catch_5
    move-exception v0

    .line 255
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :goto_5
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v15, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v14, v2

    goto :goto_6

    .line 222
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_4
    move-object/from16 v1, p0

    goto :goto_6

    .line 221
    :cond_5
    move-object/from16 v1, p0

    .line 260
    :goto_6
    if-eqz v16, :cond_9

    .line 265
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v10, :cond_8

    .line 274
    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/ReasonsMask;->isAllReasons()Z

    move-result v0

    const/16 v2, 0xc

    if-nez v0, :cond_6

    .line 275
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-ne v0, v10, :cond_6

    .line 277
    invoke-virtual {v6, v2}, Lorg/bouncycastle/jce/provider/CertStatus;->setCertStatus(I)V

    .line 279
    :cond_6
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v0

    if-eq v0, v2, :cond_7

    .line 285
    .end local v6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v11    # "crlStores":Ljava/util/List;
    .end local v12    # "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v14    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    goto/16 :goto_8

    .line 281
    .restart local v6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .restart local v7    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .restart local v11    # "crlStores":Ljava/util/List;
    .restart local v12    # "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .restart local v14    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v16    # "validCrlFound":Z
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Attribute certificate status could not be determined."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :cond_8
    nop

    .line 268
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getRevocationDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute certificate revocation after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "message":Ljava/lang/String;
    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->crlReasons:[Ljava/lang/String;

    .line 271
    invoke-virtual {v6}, Lorg/bouncycastle/jce/provider/CertStatus;->getCertStatus()I

    move-result v3

    aget-object v2, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 262
    .end local v0    # "message":Ljava/lang/String;
    :cond_9
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v2, "No valid CRL found."

    invoke-direct {v0, v2, v14}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 160
    .end local v6    # "certStatus":Lorg/bouncycastle/jce/provider/CertStatus;
    .end local v7    # "reasonsMask":Lorg/bouncycastle/jce/provider/ReasonsMask;
    .end local v12    # "bldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    .end local v13    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v14    # "lastException":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v16    # "validCrlFound":Z
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :catch_6
    move-exception v0

    move-object/from16 v3, p1

    move-object/from16 v19, v10

    .line 162
    .end local v10    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "No additional CRL locations could be decoded from CRL distribution point extension."

    invoke-direct {v2, v4, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 146
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v11    # "crlStores":Ljava/util/List;
    .end local v19    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .local v2, "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_7
    move-exception v0

    move-object/from16 v3, p1

    .line 148
    .restart local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v5, "CRL distribution point extension could not be read."

    invoke-direct {v4, v5, v0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 288
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v2    # "crldp":Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :cond_a
    move-object/from16 v3, p1

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_b

    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->AUTHORITY_INFO_ACCESS:Ljava/lang/String;

    .line 289
    invoke-interface {v1, v0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_7

    .line 291
    :cond_b
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "No rev avail extension is set, but also an AC revocation pointer."

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_c
    move-object/from16 v3, p1

    .line 296
    :goto_7
    move-object v13, v3

    .end local p1    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v13    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_8
    return-void
.end method

.method protected static processAttrCert1(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPath;
    .locals 11
    .param p0, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p1, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrCert",
            "pkixParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 440
    const-string v0, "Support class could not be created."

    const/4 v1, 0x0

    .line 442
    .local v1, "result":Ljava/security/cert/CertPathBuilderResult;
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 443
    .local v2, "holderPKCs":Ljava/util/LinkedHashSet;
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v3

    const-string v4, "Unable to encode X500 principal."

    const-string v5, "Public key certificate for attribute certificate cannot be searched."

    if-eqz v3, :cond_3

    .line 445
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 446
    .local v3, "selector":Ljava/security/cert/X509CertSelector;
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V

    .line 447
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getIssuer()[Ljava/security/Principal;

    move-result-object v6

    .line 448
    .local v6, "principals":[Ljava/security/Principal;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_1

    .line 452
    :try_start_0
    aget-object v8, v6, v7

    instance-of v8, v8, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_0

    .line 454
    aget-object v8, v6, v7

    check-cast v8, Ljavax/security/auth/x500/X500Principal;

    .line 455
    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    .line 454
    invoke-virtual {v3, v8}, Ljava/security/cert/X509CertSelector;->setIssuer([B)V

    .line 457
    :cond_0
    new-instance v8, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v8, v3}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v8}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v8

    .line 458
    .local v8, "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v8    # "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    nop

    .line 448
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 460
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 462
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 472
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 474
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Public key certificate specified in base certificate ID for attribute certificate cannot be found."

    invoke-direct {v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 478
    .end local v3    # "selector":Ljava/security/cert/X509CertSelector;
    .end local v6    # "principals":[Ljava/security/Principal;
    :cond_3
    :goto_1
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 480
    new-instance v3, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v3}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 481
    .local v3, "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/x509/AttributeCertificateHolder;->getEntityNames()[Ljava/security/Principal;

    move-result-object v6

    .line 482
    .restart local v6    # "principals":[Ljava/security/Principal;
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v8, v6

    if-ge v7, v8, :cond_5

    .line 486
    :try_start_1
    aget-object v8, v6, v7

    instance-of v8, v8, Ljavax/security/auth/x500/X500Principal;

    if-eqz v8, :cond_4

    .line 488
    aget-object v8, v6, v7

    check-cast v8, Ljavax/security/auth/x500/X500Principal;

    .line 489
    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    .line 488
    invoke-virtual {v3, v8}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setIssuer([B)V

    .line 491
    :cond_4
    new-instance v8, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v8, v3}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v8}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v8

    .line 492
    .restart local v8    # "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    invoke-virtual {p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertStores()Ljava/util/List;

    move-result-object v9

    invoke-static {v2, v8, v9}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCertificates(Ljava/util/Set;Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;Ljava/util/List;)V
    :try_end_1
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 504
    .end local v8    # "certSelect":Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;
    nop

    .line 482
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 500
    :catch_2
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v5, v4, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 494
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 496
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v4, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v4, v5, v0}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 506
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7    # "i":I
    :cond_5
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_3

    .line 508
    :cond_6
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Public key certificate specified in entity name for attribute certificate cannot be found."

    invoke-direct {v0, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 513
    .end local v3    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .end local v6    # "principals":[Ljava/security/Principal;
    :cond_7
    :goto_3
    new-instance v3, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v3, p1}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 515
    .local v3, "paramsBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    const/4 v4, 0x0

    .line 516
    .local v4, "lastException":Ljava/security/cert/CertPathValidatorException;
    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 518
    new-instance v6, Lorg/bouncycastle/x509/X509CertStoreSelector;

    invoke-direct {v6}, Lorg/bouncycastle/x509/X509CertStoreSelector;-><init>()V

    .line 519
    .local v6, "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v7}, Lorg/bouncycastle/x509/X509CertStoreSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 520
    new-instance v7, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;

    invoke-direct {v7, v6}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;-><init>(Ljava/security/cert/CertSelector;)V

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector$Builder;->build()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTargetConstraints(Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 521
    const/4 v7, 0x0

    .line 524
    .local v7, "builder":Ljava/security/cert/CertPathBuilder;
    :try_start_2
    const-string v8, "PKIX"

    const-string v9, "BC"

    invoke-static {v8, v9}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v8
    :try_end_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_6

    .line 535
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .local v8, "builder":Ljava/security/cert/CertPathBuilder;
    nop

    .line 538
    :try_start_3
    new-instance v7, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v7
    :try_end_3
    .catch Ljava/security/cert/CertPathBuilderException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_3} :catch_4

    .line 550
    .end local v1    # "result":Ljava/security/cert/CertPathBuilderResult;
    .local v7, "result":Ljava/security/cert/CertPathBuilderResult;
    move-object v1, v7

    goto :goto_5

    .line 546
    .end local v7    # "result":Ljava/security/cert/CertPathBuilderResult;
    .restart local v1    # "result":Ljava/security/cert/CertPathBuilderResult;
    :catch_4
    move-exception v0

    .line 549
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 540
    .end local v0    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_5
    move-exception v7

    .line 542
    .local v7, "e":Ljava/security/cert/CertPathBuilderException;
    new-instance v9, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Certification path for public key certificate of attribute certificate could not be build."

    invoke-direct {v9, v10, v7}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    .end local v4    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .end local v7    # "e":Ljava/security/cert/CertPathBuilderException;
    .local v9, "lastException":Ljava/security/cert/CertPathValidatorException;
    move-object v4, v9

    .line 551
    .end local v6    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .end local v8    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v9    # "lastException":Ljava/security/cert/CertPathValidatorException;
    .restart local v4    # "lastException":Ljava/security/cert/CertPathValidatorException;
    :goto_5
    goto :goto_4

    .line 531
    .restart local v6    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .local v7, "builder":Ljava/security/cert/CertPathBuilder;
    :catch_6
    move-exception v8

    .line 533
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v9, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v9, v0, v8}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 526
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_7
    move-exception v8

    .line 528
    .local v8, "e":Ljava/security/NoSuchProviderException;
    new-instance v9, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v9, v0, v8}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 552
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "selector":Lorg/bouncycastle/x509/X509CertStoreSelector;
    .end local v7    # "builder":Ljava/security/cert/CertPathBuilder;
    .end local v8    # "e":Ljava/security/NoSuchProviderException;
    :cond_8
    if-nez v4, :cond_9

    .line 556
    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0

    .line 554
    :cond_9
    throw v4
.end method

.method protected static processAttrCert2(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 4
    .param p0, "certPath"    # Ljava/security/cert/CertPath;
    .param p1, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "certPath",
            "pkixParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 387
    const-string v0, "Support class could not be created."

    const/4 v1, 0x0

    .line 390
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    :try_start_0
    const-string v2, "PKIX"

    const-string v3, "BC"

    invoke-static {v2, v3}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 401
    .end local v1    # "validator":Ljava/security/cert/CertPathValidator;
    .local v0, "validator":Ljava/security/cert/CertPathValidator;
    nop

    .line 404
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v1
    :try_end_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 412
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 406
    .end local v1    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_1
    move-exception v1

    .line 408
    .local v1, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v3, "Certification path for issuer certificate of attribute certificate could not be validated."

    invoke-direct {v2, v3, v1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 397
    .end local v0    # "validator":Ljava/security/cert/CertPathValidator;
    .local v1, "validator":Ljava/security/cert/CertPathValidator;
    :catch_2
    move-exception v2

    .line 399
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 392
    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_3
    move-exception v2

    .line 394
    .local v2, "e":Ljava/security/NoSuchProviderException;
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V
    .locals 3
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acIssuerCert",
            "pkixParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    .line 371
    .local v0, "keyUsage":[Z
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    if-nez v1, :cond_2

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    aget-boolean v1, v0, v2

    if-eqz v1, :cond_1

    goto :goto_0

    .line 373
    :cond_1
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Attribute certificate issuer public key cannot be used to validate digital signatures."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 381
    return-void

    .line 378
    :cond_3
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    const-string v2, "Attribute certificate issuer is also a public key certificate issuer."

    invoke-direct {v1, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected static processAttrCert4(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V
    .locals 6
    .param p0, "acIssuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "trustedACIssuers"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acIssuerCert",
            "trustedACIssuers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 348
    move-object v0, p1

    .line 349
    .local v0, "set":Ljava/util/Set;
    const/4 v1, 0x0

    .line 350
    .local v1, "trusted":Z
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 353
    .local v3, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    const-string v5, "RFC2253"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 355
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 357
    :cond_0
    const/4 v1, 0x1

    .line 359
    .end local v3    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    goto :goto_0

    .line 360
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_3

    .line 365
    return-void

    .line 362
    :cond_3
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Attribute certificate issuer is not directly trusted."

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static processAttrCert5(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/util/Date;)V
    .locals 3
    .param p0, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p1, "validityDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrCert",
            "validityDate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 331
    const-string v0, "Attribute certificate is not valid."

    :try_start_0
    invoke-interface {p0, p1}, Lorg/bouncycastle/x509/X509AttributeCertificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    nop

    .line 343
    return-void

    .line 338
    :catch_0
    move-exception v1

    .line 340
    .local v1, "e":Ljava/security/cert/CertificateNotYetValidException;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 333
    .end local v1    # "e":Ljava/security/cert/CertificateNotYetValidException;
    :catch_1
    move-exception v1

    .line 335
    .local v1, "e":Ljava/security/cert/CertificateExpiredException;
    new-instance v2, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected static processAttrCert7(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;)V
    .locals 5
    .param p0, "attrCert"    # Lorg/bouncycastle/x509/X509AttributeCertificate;
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "holderCertPath"    # Ljava/security/cert/CertPath;
    .param p3, "pkixParams"    # Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .param p4, "attrCertCheckers"    # Ljava/util/Set;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "attrCert",
            "certPath",
            "holderCertPath",
            "pkixParams",
            "attrCertCheckers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .line 75
    const-string v0, "Target information extension could not be read."

    invoke-interface {p0}, Lorg/bouncycastle/x509/X509AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 80
    .local v1, "set":Ljava/util/Set;
    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    :try_start_0
    sget-object v2, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    .line 85
    invoke-static {p0, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    .line 84
    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/TargetInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TargetInformation;
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    goto :goto_0

    .line 92
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 87
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 89
    .local v2, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v3, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    invoke-direct {v3, v0, v2}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v2    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_0
    :goto_0
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->TARGET_INFORMATION:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 100
    .local v0, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/x509/PKIXAttrCertChecker;

    invoke-virtual {v2, p0, p1, p2, v1}, Lorg/bouncycastle/x509/PKIXAttrCertChecker;->check(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Ljava/util/Collection;)V

    goto :goto_1

    .line 105
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    return-void

    .line 107
    :cond_2
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attribute certificate contains unsupported critical extensions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class public Lorg/bouncycastle/jce/provider/PKIXAttrCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXAttrCertPathValidatorSpi.java"


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 32
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 36
    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 16
    .param p1, "certPath"    # Ljava/security/cert/CertPath;
    .param p2, "params"    # Ljava/security/cert/CertPathParameters;
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
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 66
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-nez v2, :cond_1

    instance-of v2, v1, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-class v3, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 70
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parameters must be a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " instance."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 72
    :cond_1
    :goto_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 73
    .local v2, "attrCertCheckers":Ljava/util/Set;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 74
    .local v3, "prohibitedACAttrbiutes":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 75
    .local v4, "necessaryACAttributes":Ljava/util/Set;
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 78
    .local v5, "trustedACIssuers":Ljava/util/Set;
    instance-of v6, v1, Ljava/security/cert/PKIXParameters;

    if-eqz v6, :cond_3

    .line 80
    new-instance v6, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v7, v1

    check-cast v7, Ljava/security/cert/PKIXParameters;

    invoke-direct {v6, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 82
    .local v6, "paramsPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v7, v1, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v7, :cond_2

    .line 84
    move-object v7, v1

    check-cast v7, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 86
    .local v7, "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v7}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 87
    invoke-virtual {v7}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v8

    invoke-virtual {v6, v8}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 88
    invoke-virtual {v7}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getAttrCertCheckers()Ljava/util/Set;

    move-result-object v2

    .line 89
    invoke-virtual {v7}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getProhibitedACAttributes()Ljava/util/Set;

    move-result-object v3

    .line 90
    invoke-virtual {v7}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getNecessaryACAttributes()Ljava/util/Set;

    move-result-object v4

    .line 93
    .end local v7    # "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_2
    invoke-virtual {v6}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v6

    .line 94
    .local v6, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v7, v6

    goto :goto_1

    .line 97
    .end local v6    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_3
    move-object v6, v1

    check-cast v6, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v7, v6

    .line 100
    .local v7, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    .line 101
    .local v8, "currentDate":Ljava/util/Date;
    invoke-static {v7, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 103
    .local v9, "validityDate":Ljava/util/Date;
    invoke-virtual {v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v13

    .line 104
    .local v13, "certSelect":Lorg/bouncycastle/util/Selector;
    instance-of v6, v13, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    if-eqz v6, :cond_4

    .line 112
    move-object v6, v13

    check-cast v6, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    .line 113
    invoke-virtual {v6}, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;->getAttributeCert()Lorg/bouncycastle/x509/X509AttributeCertificate;

    move-result-object v6

    .line 115
    .local v6, "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    invoke-static {v6, v7}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert1(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPath;

    move-result-object v14

    .line 116
    .local v14, "holderCertPath":Ljava/security/cert/CertPath;
    invoke-static {v0, v7}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert2(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v15

    .line 117
    .local v15, "result":Ljava/security/cert/CertPathValidatorResult;
    nop

    .line 118
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/X509Certificate;

    .line 119
    .local v10, "issuerCert":Ljava/security/cert/X509Certificate;
    invoke-static {v10, v7}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert3(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    .line 120
    invoke-static {v10, v5}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert4(Ljava/security/cert/X509Certificate;Ljava/util/Set;)V

    .line 121
    invoke-static {v6, v9}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert5(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/util/Date;)V

    .line 123
    invoke-static {v6, v0, v14, v7, v2}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->processAttrCert7(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/security/cert/CertPath;Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;)V

    .line 124
    invoke-static {v6, v3, v4}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->additionalChecks(Lorg/bouncycastle/x509/X509AttributeCertificate;Ljava/util/Set;Ljava/util/Set;)V

    .line 126
    nop

    .line 127
    invoke-virtual {v0}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v11

    move-object/from16 v12, p0

    iget-object v0, v12, Lorg/bouncycastle/jce/provider/PKIXAttrCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 126
    move-object v12, v0

    invoke-static/range {v6 .. v12}, Lorg/bouncycastle/jce/provider/RFC3281CertPathUtilities;->checkCRLs(Lorg/bouncycastle/x509/X509AttributeCertificate;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/util/List;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    .line 128
    return-object v15

    .line 106
    .end local v6    # "attrCert":Lorg/bouncycastle/x509/X509AttributeCertificate;
    .end local v10    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local v14    # "holderCertPath":Ljava/security/cert/CertPath;
    .end local v15    # "result":Ljava/security/cert/CertPathValidatorResult;
    :cond_4
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-class v6, Lorg/bouncycastle/x509/X509AttributeCertStoreSelector;

    .line 108
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 109
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TargetConstraints must be an instance of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v11, " for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " class."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

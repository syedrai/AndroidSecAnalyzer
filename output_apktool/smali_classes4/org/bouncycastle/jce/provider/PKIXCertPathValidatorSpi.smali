.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;-><init>(Z)V

    .line 50
    return-void
.end method

.method public constructor <init>(Z)V
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

    .line 53
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 44
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 54
    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    .line 55
    return-void
.end method

.method static checkCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .line 500
    instance-of v0, p0, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    const-string/jumbo v1, "unable to process TBSCertificate"

    if-eqz v0, :cond_1

    .line 502
    const/4 v0, 0x0

    .line 505
    .local v0, "cause":Ljava/lang/RuntimeException;
    :try_start_0
    move-object v2, p0

    check-cast v2, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    invoke-interface {v2}, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;->getTBSCertificateNative()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 507
    return-void

    .line 513
    :cond_0
    goto :goto_0

    .line 510
    :catch_0
    move-exception v2

    .line 512
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v0, v2

    .line 515
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 520
    .end local v0    # "cause":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 529
    nop

    .line 530
    return-void

    .line 526
    :catch_1
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 522
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 524
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 40
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

    .line 64
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    instance-of v0, v11, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v3, v11

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 68
    .local v0, "paramsPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v3, v11, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_0

    .line 70
    move-object v3, v11

    check-cast v3, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 72
    .local v3, "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 73
    invoke-virtual {v3}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 76
    .end local v3    # "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 77
    .local v0, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v3, v0

    goto :goto_0

    .line 78
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_1
    instance-of v0, v11, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_2

    .line 80
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v3, v0

    .restart local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    .line 82
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_2
    instance-of v0, v11, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_19

    .line 84
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v3, v0

    .line 91
    .local v3, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 104
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 105
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 107
    .local v13, "n":I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_17

    .line 115
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v15, v0

    .line 116
    .local v15, "currentDate":Ljava/util/Date;
    const/4 v5, -0x1

    invoke-static {v3, v15}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 121
    .local v4, "validityDate":Ljava/util/Date;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v16

    .line 129
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 130
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-static {v0, v7, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    move-object v7, v0

    .line 132
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    if-eqz v7, :cond_16

    .line 137
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 142
    nop

    .line 145
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 151
    const/4 v8, 0x0

    .line 162
    .local v8, "index":I
    add-int/lit8 v0, v13, 0x1

    new-array v9, v0, [Ljava/util/ArrayList;

    .line 163
    .local v9, "policyNodes":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_1
    array-length v10, v9

    if-ge v0, v10, :cond_3

    .line 165
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    aput-object v10, v9, v0

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 168
    .end local v0    # "j":I
    :cond_3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 170
    .local v10, "policySet":Ljava/util/Set;
    const-string v0, "2.5.29.32.0"

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 172
    new-instance v17, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    const-string v23, "2.5.29.32.0"

    const/16 v24, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v10

    .end local v10    # "policySet":Ljava/util/Set;
    .local v20, "policySet":Ljava/util/Set;
    invoke-direct/range {v17 .. v24}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v10, v17

    .line 175
    .local v10, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v0, 0x0

    const/16 v17, 0x1

    aget-object v6, v9, v0

    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    new-instance v6, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    .line 185
    .local v6, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 187
    .local v18, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 189
    const/16 v19, 0x0

    .local v19, "explicitPolicy":I
    goto :goto_2

    .line 193
    .end local v19    # "explicitPolicy":I
    :cond_4
    add-int/lit8 v19, v13, 0x1

    .line 201
    .restart local v19    # "explicitPolicy":I
    :goto_2
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 203
    const/16 v21, 0x0

    .local v21, "inhibitAnyPolicy":I
    goto :goto_3

    .line 207
    .end local v21    # "inhibitAnyPolicy":I
    :cond_5
    add-int/lit8 v21, v13, 0x1

    .line 215
    .restart local v21    # "inhibitAnyPolicy":I
    :goto_3
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v22

    if-eqz v22, :cond_6

    .line 217
    const/16 v22, 0x0

    .local v22, "policyMapping":I
    goto :goto_4

    .line 221
    .end local v22    # "policyMapping":I
    :cond_6
    add-int/lit8 v22, v13, 0x1

    .line 230
    .restart local v22    # "policyMapping":I
    :goto_4
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v23

    .line 233
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v23, :cond_7

    .line 235
    :try_start_1
    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 236
    .local v24, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v23 .. v23}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v25
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_5

    .line 244
    .end local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    goto/16 :goto_11

    .line 240
    :cond_7
    :try_start_2
    invoke-static {v7}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 241
    .restart local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v25
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    .line 248
    .restart local v25    # "workingPublicKey":Ljava/security/PublicKey;
    :goto_5
    nop

    .line 250
    const/16 v26, 0x0

    .line 253
    .local v26, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_3
    invoke-static/range {v25 .. v25}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4

    .line 259
    .end local v26    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v5, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    nop

    .line 260
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v26

    .line 261
    .local v26, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v27

    .line 266
    .local v27, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    move/from16 v28, v13

    .line 272
    .local v28, "maxPathLength":I
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v29

    if-eqz v29, :cond_9

    .line 273
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v14

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    move-object/from16 v0, v30

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v0}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_8

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    goto :goto_6

    .line 275
    :cond_8
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v14, "Target certificate in certification path does not match targetConstraints."

    move-object/from16 v30, v3

    move-object/from16 v32, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .local v30, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v32, "validityDate":Ljava/util/Date;
    invoke-direct {v0, v14, v4, v2, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 272
    .end local v30    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v32    # "validityDate":Ljava/util/Date;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_9
    move-object/from16 v30, v3

    move-object/from16 v32, v4

    .line 282
    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .restart local v30    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v32    # "validityDate":Ljava/util/Date;
    :goto_6
    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v14

    .line 283
    .local v14, "pathCheckers":Ljava/util/List;
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .line 284
    .local v33, "certIter":Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_7

    .line 293
    :cond_a
    const/4 v3, 0x0

    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 295
    new-instance v0, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;

    iget-object v4, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v4}, Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object v4, v0

    .local v0, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    goto :goto_8

    .line 299
    .end local v0    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :cond_b
    const/4 v0, 0x0

    move-object v4, v0

    .line 302
    .local v4, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    :goto_8
    const/4 v0, 0x0

    .line 304
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v8, v19

    move-object/from16 v19, v5

    move v5, v8

    move/from16 v8, v22

    move/from16 v11, v28

    move/from16 v22, v21

    move-object/from16 v21, v10

    move-object/from16 v10, v23

    move-object/from16 v23, v6

    move/from16 v6, v31

    .end local v28    # "maxPathLength":I
    .local v5, "explicitPolicy":I
    .local v6, "index":I
    .local v8, "policyMapping":I
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v19, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v21, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v22, "inhibitAnyPolicy":I
    .local v23, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :goto_9
    if-ltz v6, :cond_12

    .line 311
    move-object/from16 v28, v15

    .end local v15    # "currentDate":Ljava/util/Date;
    .local v28, "currentDate":Ljava/util/Date;
    sub-int v15, v13, v6

    .line 319
    .local v15, "i":I
    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v31

    move-object/from16 v34, v12

    .end local v12    # "certs":Ljava/util/List;
    .local v34, "certs":Ljava/util/List;
    move-object/from16 v12, v31

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 320
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_a

    :cond_c
    const/4 v0, 0x0

    :goto_a
    move/from16 v31, v0

    .line 324
    .local v31, "verificationAlreadyPerformed":Z
    :try_start_4
    invoke-static {v12}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 329
    nop

    .line 335
    move-object/from16 v35, v7

    move/from16 v36, v8

    move-object/from16 v17, v9

    move-object/from16 v9, v24

    move-object/from16 v7, v25

    move-object/from16 v3, v30

    move/from16 v8, v31

    const/16 v31, 0x0

    move-object/from16 v24, v12

    move-object/from16 v30, v14

    move-object/from16 v14, v23

    const/4 v12, 0x1

    move/from16 v23, v11

    move v11, v5

    move-object v5, v4

    move-object/from16 v4, v32

    .end local v12    # "cert":Ljava/security/cert/X509Certificate;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v31    # "verificationAlreadyPerformed":Z
    .end local v32    # "validityDate":Ljava/util/Date;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "validityDate":Ljava/util/Date;
    .local v5, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    .local v8, "verificationAlreadyPerformed":Z
    .local v9, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v11, "explicitPolicy":I
    .local v14, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v17, "policyNodes":[Ljava/util/List;
    .local v23, "maxPathLength":I
    .local v24, "cert":Ljava/security/cert/X509Certificate;
    .local v30, "pathCheckers":Ljava/util/List;
    .local v35, "trust":Ljava/security/cert/TrustAnchor;
    .local v36, "policyMapping":I
    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    .line 338
    move-object/from16 v39, v5

    move-object/from16 v38, v7

    move-object/from16 v37, v9

    move-object/from16 v25, v10

    move-object v9, v3

    move v3, v6

    move v10, v8

    .end local v4    # "validityDate":Ljava/util/Date;
    .end local v5    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .end local v6    # "index":I
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "verificationAlreadyPerformed":Z
    .local v3, "index":I
    .local v9, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v10, "verificationAlreadyPerformed":Z
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .local v37, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v38, "workingPublicKey":Ljava/security/PublicKey;
    .local v39, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    iget-boolean v0, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    invoke-static {v2, v3, v14, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    .line 340
    iget-boolean v8, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->isForCRLCheck:Z

    move-object/from16 v6, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v21

    move/from16 v7, v22

    .end local v17    # "policyNodes":[Ljava/util/List;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "inhibitAnyPolicy":I
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "inhibitAnyPolicy":I
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 343
    move v5, v7

    .end local v7    # "inhibitAnyPolicy":I
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "inhibitAnyPolicy":I
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 345
    invoke-static {v2, v3, v0, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 350
    if-eq v15, v13, :cond_11

    .line 352
    if-eqz v24, :cond_f

    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    if-ne v7, v12, :cond_f

    .line 355
    if-ne v15, v12, :cond_d

    invoke-virtual/range {v35 .. v35}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    move-object/from16 v8, v24

    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v8, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 357
    move-object/from16 v17, v4

    move-object/from16 v22, v9

    move/from16 v12, v23

    move-object/from16 v9, v30

    move/from16 v4, v36

    const/16 v18, 0x1

    goto/16 :goto_d

    .line 355
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v24    # "cert":Ljava/security/cert/X509Certificate;
    :cond_d
    move-object/from16 v8, v24

    .line 359
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    :cond_e
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v12, "Version 1 certificates can\'t be used as CA ones."

    move-object/from16 v17, v4

    const/4 v4, 0x0

    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .local v17, "acceptablePolicies":Ljava/util/Set;
    invoke-direct {v7, v12, v4, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 352
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v4    # "acceptablePolicies":Ljava/util/Set;
    .restart local v24    # "cert":Ljava/security/cert/X509Certificate;
    :cond_f
    move-object/from16 v17, v4

    move-object/from16 v8, v24

    .line 363
    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 365
    move/from16 v4, v36

    .end local v36    # "policyMapping":I
    .local v4, "policyMapping":I
    invoke-static {v2, v3, v6, v0, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v7

    .line 368
    .end local v0    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v7, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {v2, v3, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 371
    invoke-static {v2, v3, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 372
    .end local v11    # "explicitPolicy":I
    .local v0, "explicitPolicy":I
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 373
    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 378
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v11

    .line 379
    .end local v0    # "explicitPolicy":I
    .restart local v11    # "explicitPolicy":I
    invoke-static {v2, v3, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v4

    .line 382
    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 385
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 388
    move/from16 v12, v23

    const/16 v18, 0x1

    .end local v23    # "maxPathLength":I
    .local v12, "maxPathLength":I
    invoke-static {v2, v3, v12}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 391
    .end local v12    # "maxPathLength":I
    .local v0, "maxPathLength":I
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v12

    .line 394
    .end local v0    # "maxPathLength":I
    .restart local v12    # "maxPathLength":I
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 396
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 397
    .local v0, "criticalExtensions":Ljava/util/Set;
    if-eqz v0, :cond_10

    .line 399
    move/from16 v21, v4

    .end local v4    # "policyMapping":I
    .local v21, "policyMapping":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 402
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 403
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 404
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 405
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 406
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 407
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 408
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 409
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 410
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 411
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_b

    .line 415
    .end local v21    # "policyMapping":I
    .restart local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "policyMapping":I
    :cond_10
    move/from16 v21, v4

    .end local v4    # "policyMapping":I
    .restart local v21    # "policyMapping":I
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 419
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :goto_b
    move-object/from16 v22, v9

    move-object/from16 v9, v30

    .end local v30    # "pathCheckers":Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v22, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-static {v2, v3, v4, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 422
    move-object/from16 v23, v8

    .line 425
    .end local v25    # "sign":Ljava/security/cert/X509Certificate;
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    invoke-static/range {v23 .. v23}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v24

    .line 430
    .end local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v24, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    :try_start_5
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v30, v4

    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v30, "criticalExtensions":Ljava/util/Set;
    :try_start_6
    iget-object v4, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1

    .line 435
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    nop

    .line 437
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 439
    .end local v19    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v19

    .line 441
    .end local v26    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .local v19, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v25

    move-object/from16 v26, v19

    move-object/from16 v10, v23

    move-object/from16 v27, v25

    move-object/from16 v25, v0

    move-object/from16 v19, v4

    move/from16 v4, v21

    move-object/from16 v21, v7

    move v0, v5

    move v5, v11

    move v11, v12

    .end local v27    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v25, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_e

    .line 432
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v4    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v25    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v19, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v26    # "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .restart local v27    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_1
    move-exception v0

    goto :goto_c

    .end local v30    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :catch_2
    move-exception v0

    move-object/from16 v30, v4

    .line 434
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v30    # "criticalExtensions":Ljava/util/Set;
    :goto_c
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    invoke-direct {v4, v1, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 350
    .end local v7    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "maxPathLength":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "policyMapping":I
    .end local v22    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v9, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v23, "maxPathLength":I
    .local v24, "cert":Ljava/security/cert/X509Certificate;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .local v30, "pathCheckers":Ljava/util/List;
    .restart local v36    # "policyMapping":I
    .restart local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    :cond_11
    move-object/from16 v17, v4

    move-object/from16 v22, v9

    move/from16 v12, v23

    move-object/from16 v8, v24

    move-object/from16 v9, v30

    move/from16 v4, v36

    const/16 v18, 0x1

    .line 304
    .end local v10    # "verificationAlreadyPerformed":Z
    .end local v23    # "maxPathLength":I
    .end local v24    # "cert":Ljava/security/cert/X509Certificate;
    .end local v30    # "pathCheckers":Ljava/util/List;
    .end local v36    # "policyMapping":I
    .local v4, "policyMapping":I
    .restart local v8    # "cert":Ljava/security/cert/X509Certificate;
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v12    # "maxPathLength":I
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_d
    move-object/from16 v21, v0

    move-object/from16 v10, v25

    move-object/from16 v24, v37

    move-object/from16 v25, v38

    move v0, v5

    move v5, v11

    move v11, v12

    .end local v12    # "maxPathLength":I
    .end local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "inhibitAnyPolicy":I
    .local v5, "explicitPolicy":I
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v21, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v24, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    :goto_e
    add-int/lit8 v1, v3, -0x1

    move-object/from16 v23, v14

    move-object/from16 v18, v17

    move-object/from16 v30, v22

    move-object/from16 v15, v28

    move-object/from16 v12, v34

    move-object/from16 v7, v35

    const/4 v3, 0x0

    const/16 v17, 0x1

    move/from16 v22, v0

    move-object v0, v8

    move-object v14, v9

    move v8, v4

    move-object v9, v6

    move-object/from16 v4, v39

    move v6, v1

    move-object/from16 v1, p0

    .end local v3    # "index":I
    .local v1, "index":I
    goto/16 :goto_9

    .line 326
    .end local v0    # "inhibitAnyPolicy":I
    .end local v1    # "index":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v39    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v4, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v6, "index":I
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "policyMapping":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    .local v14, "pathCheckers":Ljava/util/List;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "inhibitAnyPolicy":I
    .local v23, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v30, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v31    # "verificationAlreadyPerformed":Z
    :catch_3
    move-exception v0

    move-object/from16 v39, v4

    move v3, v6

    move-object/from16 v35, v7

    move v4, v8

    move-object v6, v9

    move-object v8, v12

    move-object v9, v14

    move-object/from16 v17, v18

    move-object/from16 v7, v21

    move-object/from16 v14, v23

    move-object/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v25, v10

    move v12, v11

    move/from16 v10, v31

    move v11, v5

    move/from16 v5, v22

    move-object/from16 v22, v30

    .line 328
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v23    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v30    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v31    # "verificationAlreadyPerformed":Z
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v3    # "index":I
    .local v4, "policyMapping":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v10, "verificationAlreadyPerformed":Z
    .local v11, "explicitPolicy":I
    .local v12, "maxPathLength":I
    .local v14, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v39    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    move-object/from16 v18, v0

    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v18, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    move/from16 v36, v4

    .end local v4    # "policyMapping":I
    .restart local v36    # "policyMapping":I
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v1, v0, v4, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 449
    .end local v3    # "index":I
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v36    # "policyMapping":I
    .end local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v39    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .local v4, "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v5, "explicitPolicy":I
    .local v6, "index":I
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "policyMapping":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v12, "certs":Ljava/util/List;
    .local v14, "pathCheckers":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v18, "acceptablePolicies":Ljava/util/Set;
    .restart local v21    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v22, "inhibitAnyPolicy":I
    .restart local v23    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    .restart local v30    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_12
    move-object/from16 v39, v4

    move v3, v6

    move-object/from16 v35, v7

    move/from16 v36, v8

    move-object v6, v9

    move-object/from16 v34, v12

    move-object v9, v14

    move-object/from16 v28, v15

    move-object/from16 v17, v18

    move-object/from16 v7, v21

    move-object/from16 v14, v23

    move-object/from16 v37, v24

    move-object/from16 v38, v25

    move-object/from16 v25, v10

    move v12, v11

    move v11, v5

    move/from16 v5, v22

    move-object/from16 v22, v30

    .end local v4    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .end local v8    # "policyMapping":I
    .end local v10    # "sign":Ljava/security/cert/X509Certificate;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .end local v21    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v23    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v30    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v3    # "index":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v11, "explicitPolicy":I
    .local v12, "maxPathLength":I
    .local v14, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .local v22, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v25, "sign":Ljava/security/cert/X509Certificate;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    .restart local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v36    # "policyMapping":I
    .restart local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .restart local v39    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    invoke-static {v11, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v1

    .line 451
    .end local v11    # "explicitPolicy":I
    .local v1, "explicitPolicy":I
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4, v1}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v1

    .line 460
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    .line 462
    .local v4, "criticalExtensions":Ljava/util/Set;
    if-eqz v4, :cond_13

    .line 464
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 466
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v8, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 467
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 468
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 469
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 470
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 472
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 473
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 474
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 475
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 476
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 477
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v10, v8

    goto :goto_f

    .line 481
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .restart local v4    # "criticalExtensions":Ljava/util/Set;
    :cond_13
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v10, v8

    .line 484
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v10, "criticalExtensions":Ljava/util/Set;
    :goto_f
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4, v9, v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 486
    move/from16 v21, v5

    .end local v5    # "inhibitAnyPolicy":I
    .local v21, "inhibitAnyPolicy":I
    add-int/lit8 v5, v3, 0x1

    move v11, v3

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    move-object/from16 v3, v22

    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v22    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v3, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v8, "acceptablePolicies":Ljava/util/Set;
    .local v11, "index":I
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 489
    .end local v8    # "acceptablePolicies":Ljava/util/Set;
    .local v5, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    if-gtz v1, :cond_15

    if-eqz v5, :cond_14

    move-object/from16 v16, v0

    goto :goto_10

    .line 494
    :cond_14
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v15, "Path processing failed on policy."

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {v8, v15, v0, v2, v11}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 489
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_15
    move-object/from16 v16, v0

    .line 491
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    :goto_10
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v15, v35

    .end local v35    # "trust":Ljava/security/cert/TrustAnchor;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    invoke-direct {v0, v15, v5, v8}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    .line 255
    .end local v1    # "explicitPolicy":I
    .end local v5    # "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "index":I
    .end local v14    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v27    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v33    # "certIter":Ljava/util/Iterator;
    .end local v34    # "certs":Ljava/util/List;
    .end local v36    # "policyMapping":I
    .end local v37    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v38    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v39    # "revocationChecker":Lorg/bouncycastle/jce/provider/ProvCrlRevocationChecker;
    .local v4, "validityDate":Ljava/util/Date;
    .local v6, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "index":I
    .local v9, "policyNodes":[Ljava/util/List;
    .local v10, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v12, "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v19, "explicitPolicy":I
    .local v22, "policyMapping":I
    .local v23, "sign":Ljava/security/cert/X509Certificate;
    .restart local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v25, "workingPublicKey":Ljava/security/PublicKey;
    .local v26, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_4
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    .line 257
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "policyNodes":[Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .restart local v14    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Algorithm identifier of public key of trust anchor could not be read."

    invoke-direct {v1, v7, v0, v2, v5}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 244
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v14    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v24    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v25    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v26    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .local v6, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v9    # "policyNodes":[Ljava/util/List;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v18    # "acceptablePolicies":Ljava/util/Set;
    :catch_5
    move-exception v0

    move-object/from16 v32, v4

    move-object v14, v6

    move-object v6, v9

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    move-object/from16 v17, v18

    move-object v15, v7

    .line 246
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v9    # "policyNodes":[Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v18    # "acceptablePolicies":Ljava/util/Set;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .restart local v14    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v17    # "acceptablePolicies":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :goto_11
    new-instance v1, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v7, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v1, v7, v0, v2, v5}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 134
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v6    # "policyNodes":[Ljava/util/List;
    .end local v8    # "index":I
    .end local v10    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v14    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "acceptablePolicies":Ljava/util/Set;
    .end local v19    # "explicitPolicy":I
    .end local v20    # "policySet":Ljava/util/Set;
    .end local v21    # "inhibitAnyPolicy":I
    .end local v22    # "policyMapping":I
    .end local v23    # "sign":Ljava/security/cert/X509Certificate;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :cond_16
    move-object/from16 v32, v4

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    const/16 v18, 0x1

    move-object v15, v7

    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :try_start_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v6, 0x0

    invoke-direct {v0, v1, v6, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v13    # "n":I
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .end local p1    # "certPath":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v0
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 139
    .end local v15    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v13    # "n":I
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    .restart local p1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :catch_6
    move-exception v0

    goto :goto_12

    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :catch_7
    move-exception v0

    move-object/from16 v32, v4

    move-object/from16 v34, v12

    move-object/from16 v28, v15

    move-object/from16 v4, v16

    const/16 v18, 0x1

    .line 141
    .end local v12    # "certs":Ljava/util/List;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .restart local v28    # "currentDate":Ljava/util/Date;
    .restart local v32    # "validityDate":Ljava/util/Date;
    .restart local v34    # "certs":Ljava/util/List;
    :goto_12
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface/range {v34 .. v34}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v1, v5, v6, v2, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 109
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v28    # "currentDate":Ljava/util/Date;
    .end local v32    # "validityDate":Ljava/util/Date;
    .end local v34    # "certs":Ljava/util/List;
    .restart local v12    # "certs":Ljava/util/List;
    :cond_17
    const/4 v5, -0x1

    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 93
    .end local v12    # "certs":Ljava/util/List;
    .end local v13    # "n":I
    :cond_18
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_19
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-class v1, Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parameters must be a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " instance."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

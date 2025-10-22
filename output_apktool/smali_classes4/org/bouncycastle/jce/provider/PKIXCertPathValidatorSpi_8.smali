.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi_8.java"


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final isForCRLCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;-><init>(Z)V

    .line 52
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

    .line 55
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    .line 46
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 56
    iput-boolean p1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    .line 57
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

    .line 518
    instance-of v0, p0, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    const-string/jumbo v1, "unable to process TBSCertificate"

    if-eqz v0, :cond_1

    .line 520
    const/4 v0, 0x0

    .line 523
    .local v0, "cause":Ljava/lang/RuntimeException;
    :try_start_0
    move-object v2, p0

    check-cast v2, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;

    invoke-interface {v2}, Lorg/bouncycastle/jcajce/interfaces/BCX509Certificate;->getTBSCertificateNative()Lorg/bouncycastle/asn1/x509/TBSCertificate;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 525
    return-void

    .line 531
    :cond_0
    goto :goto_0

    .line 528
    :catch_0
    move-exception v2

    .line 530
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v0, v2

    .line 533
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_0
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 538
    .end local v0    # "cause":Ljava/lang/RuntimeException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificate;
    :try_end_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    nop

    .line 548
    return-void

    .line 544
    :catch_1
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 540
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 542
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Lorg/bouncycastle/jce/provider/AnnotatedException;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public bridge synthetic engineGetRevocationChecker()Ljava/security/cert/CertPathChecker;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;

    move-result-object v0

    return-object v0
.end method

.method public engineGetRevocationChecker()Ljava/security/cert/PKIXCertPathChecker;
    .locals 2

    .line 61
    new-instance v0, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .locals 41
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

    .line 71
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    instance-of v0, v11, Ljava/security/cert/PKIXParameters;

    if-eqz v0, :cond_1

    .line 73
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-object v3, v11

    check-cast v3, Ljava/security/cert/PKIXParameters;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Ljava/security/cert/PKIXParameters;)V

    .line 75
    .local v0, "paramsPKIXBldr":Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;
    instance-of v3, v11, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    if-eqz v3, :cond_0

    .line 77
    move-object v3, v11

    check-cast v3, Lorg/bouncycastle/x509/ExtendedPKIXParameters;

    .line 79
    .local v3, "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    invoke-virtual {v3}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->isUseDeltasEnabled()Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setUseDeltasEnabled(Z)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 80
    invoke-virtual {v3}, Lorg/bouncycastle/x509/ExtendedPKIXParameters;->getValidityModel()I

    move-result v4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setValidityModel(I)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    .line 83
    .end local v3    # "extPKIX":Lorg/bouncycastle/x509/ExtendedPKIXParameters;
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    .line 84
    .local v0, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    move-object v3, v0

    goto :goto_0

    .line 85
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_1
    instance-of v0, v11, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    if-eqz v0, :cond_2

    .line 87
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedBuilderParameters;->getBaseParameters()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v0

    move-object v3, v0

    .restart local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    goto :goto_0

    .line 89
    .end local v0    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_2
    instance-of v0, v11, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    if-eqz v0, :cond_1b

    .line 91
    move-object v0, v11

    check-cast v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-object v3, v0

    .line 98
    .local v3, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 111
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v12

    .line 112
    .local v12, "certs":Ljava/util/List;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    .line 114
    .local v13, "n":I
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v4, -0x1

    if-nez v0, :cond_19

    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    move-object v15, v0

    .line 123
    .local v15, "currentDate":Ljava/util/Date;
    const/4 v5, -0x1

    invoke-static {v3, v15}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidityDate(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    .line 128
    .local v4, "validityDate":Ljava/util/Date;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v16

    .line 136
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    const/4 v6, 0x1

    :try_start_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 137
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v7

    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v8

    .line 136
    invoke-static {v0, v7, v8}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;Ljava/lang/String;)Ljava/security/cert/TrustAnchor;

    move-result-object v0

    move-object v7, v0

    .line 139
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    if-eqz v7, :cond_18

    .line 144
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_7

    .line 149
    nop

    .line 152
    new-instance v0, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    invoke-direct {v0, v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;-><init>(Lorg/bouncycastle/jcajce/PKIXExtendedParameters;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->setTrustAnchor(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters$Builder;->build()Lorg/bouncycastle/jcajce/PKIXExtendedParameters;

    move-result-object v3

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v8, "pathCheckers":Ljava/util/List;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 157
    .local v17, "certIter":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_6

    .line 159
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/PKIXCertPathChecker;

    .line 161
    .local v9, "checker":Ljava/security/cert/PKIXCertPathChecker;
    invoke-virtual {v9, v10}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    .line 163
    instance-of v10, v9, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v10, :cond_5

    .line 165
    if-nez v0, :cond_4

    .line 169
    instance-of v10, v9, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;

    if-eqz v10, :cond_3

    .line 170
    move-object v10, v9

    check-cast v10, Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;

    goto :goto_2

    :cond_3
    new-instance v10, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;

    invoke-direct {v10, v9}, Lorg/bouncycastle/jce/provider/WrappedRevocationChecker;-><init>(Ljava/security/cert/PKIXCertPathChecker;)V

    :goto_2
    move-object v0, v10

    .end local v0    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v10, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    goto :goto_3

    .line 167
    .end local v10    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .restart local v0    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    :cond_4
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    const-string v6, "only one PKIXRevocationChecker allowed"

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 174
    :cond_5
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v9    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :goto_3
    goto :goto_1

    .line 178
    :cond_6
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isRevocationEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    if-nez v0, :cond_7

    .line 180
    new-instance v9, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;

    const/16 v18, 0x1

    iget-object v6, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-direct {v9, v6}, Lorg/bouncycastle/jce/provider/ProvRevocationChecker;-><init>(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    move-object v0, v9

    move-object v6, v0

    goto :goto_4

    .line 178
    :cond_7
    const/16 v18, 0x1

    .line 187
    move-object v6, v0

    .end local v0    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v6, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    :goto_4
    const/4 v9, 0x0

    .line 198
    .local v9, "index":I
    add-int/lit8 v0, v13, 0x1

    new-array v14, v0, [Ljava/util/ArrayList;

    .line 199
    .local v14, "policyNodes":[Ljava/util/List;
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_5
    array-length v5, v14

    if-ge v0, v5, :cond_8

    .line 201
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    aput-object v5, v14, v0

    .line 199
    add-int/lit8 v0, v0, 0x1

    const/4 v5, -0x1

    goto :goto_5

    .line 204
    .end local v0    # "j":I
    :cond_8
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v5, v0

    .line 206
    .local v5, "policySet":Ljava/util/Set;
    const-string v0, "2.5.29.32.0"

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    new-instance v21, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/HashSet;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashSet;-><init>()V

    const-string v27, "2.5.29.32.0"

    const/16 v28, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    move-object/from16 v24, v5

    .end local v5    # "policySet":Ljava/util/Set;
    .local v24, "policySet":Ljava/util/Set;
    invoke-direct/range {v21 .. v28}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    move-object/from16 v5, v21

    .line 211
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    aget-object v0, v14, v10

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;-><init>()V

    move-object/from16 v21, v0

    .line 221
    .local v21, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v22, v0

    .line 223
    .local v22, "acceptablePolicies":Ljava/util/Set;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isExplicitPolicyRequired()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 225
    const/4 v0, 0x0

    move/from16 v23, v0

    .local v0, "explicitPolicy":I
    goto :goto_6

    .line 229
    .end local v0    # "explicitPolicy":I
    :cond_9
    add-int/lit8 v0, v13, 0x1

    move/from16 v23, v0

    .line 237
    .local v23, "explicitPolicy":I
    :goto_6
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isAnyPolicyInhibited()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 239
    const/4 v0, 0x0

    move/from16 v25, v0

    .local v0, "inhibitAnyPolicy":I
    goto :goto_7

    .line 243
    .end local v0    # "inhibitAnyPolicy":I
    :cond_a
    add-int/lit8 v0, v13, 0x1

    move/from16 v25, v0

    .line 251
    .local v25, "inhibitAnyPolicy":I
    :goto_7
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->isPolicyMappingInhibited()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 253
    const/4 v0, 0x0

    move/from16 v26, v0

    .local v0, "policyMapping":I
    goto :goto_8

    .line 257
    .end local v0    # "policyMapping":I
    :cond_b
    add-int/lit8 v0, v13, 0x1

    move/from16 v26, v0

    .line 266
    .local v26, "policyMapping":I
    :goto_8
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v27

    .line 269
    .local v27, "sign":Ljava/security/cert/X509Certificate;
    if-eqz v27, :cond_c

    .line 271
    :try_start_1
    invoke-static/range {v27 .. v27}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 272
    .local v0, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v28
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object/from16 v29, v28

    move-object/from16 v28, v0

    .local v28, "workingPublicKey":Ljava/security/PublicKey;
    goto :goto_9

    .line 280
    .end local v0    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v28    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v0

    move-object v10, v4

    move-object/from16 v37, v6

    move v1, v9

    move-object/from16 v35, v12

    move-object v6, v14

    move-object/from16 v18, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v21

    const/4 v12, -0x1

    move-object v15, v7

    move-object v9, v8

    goto/16 :goto_13

    .line 276
    :cond_c
    :try_start_2
    invoke-static {v7}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getCA(Ljava/security/cert/TrustAnchor;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    .line 277
    .restart local v0    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    invoke-virtual {v7}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v28
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    move-object/from16 v29, v28

    move-object/from16 v28, v0

    .line 284
    .end local v0    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v28, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v29, "workingPublicKey":Ljava/security/PublicKey;
    :goto_9
    nop

    .line 286
    const/16 v30, 0x0

    .line 289
    .local v30, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_start_3
    invoke-static/range {v29 .. v29}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_4

    .line 295
    .end local v30    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v0, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    nop

    .line 296
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v20

    .line 297
    .local v20, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v30

    .line 302
    .local v30, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    move/from16 v31, v13

    .line 308
    .local v31, "maxPathLength":I
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v32

    if-eqz v32, :cond_e

    .line 309
    move-object/from16 v32, v0

    .end local v0    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v32, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v3}, Lorg/bouncycastle/jcajce/PKIXExtendedParameters;->getTargetConstraints()Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;

    move-result-object v0

    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v10, v33

    check-cast v10, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0, v10}, Lorg/bouncycastle/jcajce/PKIXCertStoreSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-eqz v0, :cond_d

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    const/4 v3, 0x0

    goto :goto_a

    .line 311
    :cond_d
    new-instance v0, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v10, "Target certificate in certification path does not match targetConstraints."

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .local v33, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v34, "validityDate":Ljava/util/Date;
    invoke-direct {v0, v10, v4, v2, v3}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 308
    .end local v32    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v33    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v34    # "validityDate":Ljava/util/Date;
    .restart local v0    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "validityDate":Ljava/util/Date;
    :cond_e
    move-object/from16 v32, v0

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    const/4 v3, 0x0

    .line 320
    .end local v0    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "validityDate":Ljava/util/Date;
    .restart local v32    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v33    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v34    # "validityDate":Ljava/util/Date;
    :goto_a
    const/4 v0, 0x0

    .line 322
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v9, v20

    move-object/from16 v20, v5

    move/from16 v5, v23

    move-object/from16 v23, v9

    move-object/from16 v10, v27

    move-object/from16 v9, v28

    move/from16 v11, v31

    .end local v27    # "sign":Ljava/security/cert/X509Certificate;
    .end local v28    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v31    # "maxPathLength":I
    .local v4, "index":I
    .local v5, "explicitPolicy":I
    .local v9, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v20, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v23, "workingPublicKeyAlgorithm":Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    :goto_b
    if-ltz v4, :cond_14

    .line 329
    move-object/from16 v31, v14

    .end local v14    # "policyNodes":[Ljava/util/List;
    .local v31, "policyNodes":[Ljava/util/List;
    sub-int v14, v13, v4

    .line 337
    .local v14, "i":I
    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v35, v12

    .end local v12    # "certs":Ljava/util/List;
    .local v35, "certs":Ljava/util/List;
    move-object/from16 v12, v27

    check-cast v12, Ljava/security/cert/X509Certificate;

    .line 338
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v12, "cert":Ljava/security/cert/X509Certificate;
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_f

    const/4 v0, 0x1

    goto :goto_c

    :cond_f
    const/4 v0, 0x0

    :goto_c
    move/from16 v27, v0

    .line 342
    .local v27, "verificationAlreadyPerformed":Z
    :try_start_4
    invoke-static {v12}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->checkCertificate(Ljava/security/cert/X509Certificate;)V
    :try_end_4
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_3

    .line 347
    nop

    .line 353
    move-object/from16 v36, v7

    move-object/from16 v18, v15

    move-object/from16 v7, v29

    move-object/from16 v3, v33

    move v15, v5

    move-object v5, v6

    move-object/from16 v33, v8

    move/from16 v8, v27

    move v6, v4

    move/from16 v27, v26

    move-object/from16 v4, v34

    const/16 v34, 0x0

    move/from16 v26, v11

    const/4 v11, 0x1

    .end local v11    # "maxPathLength":I
    .end local v29    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v34    # "validityDate":Ljava/util/Date;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "validityDate":Ljava/util/Date;
    .local v5, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v6, "index":I
    .local v7, "workingPublicKey":Ljava/security/PublicKey;
    .local v8, "verificationAlreadyPerformed":Z
    .local v15, "explicitPolicy":I
    .local v18, "currentDate":Ljava/util/Date;
    .local v26, "maxPathLength":I
    .local v27, "policyMapping":I
    .local v33, "pathCheckers":Ljava/util/List;
    .local v36, "trust":Ljava/security/cert/TrustAnchor;
    invoke-static/range {v2 .. v10}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertA(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Date;Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;ILjava/security/PublicKey;ZLorg/bouncycastle/asn1/x500/X500Name;Ljava/security/cert/X509Certificate;)V

    .line 356
    move-object/from16 v37, v5

    move-object/from16 v39, v7

    move/from16 v28, v8

    move-object/from16 v38, v9

    move-object/from16 v29, v10

    move-object v9, v3

    move-object v10, v4

    move v3, v6

    .end local v4    # "validityDate":Ljava/util/Date;
    .end local v5    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .end local v6    # "index":I
    .end local v7    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v8    # "verificationAlreadyPerformed":Z
    .local v3, "index":I
    .local v9, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v10, "validityDate":Ljava/util/Date;
    .local v28, "verificationAlreadyPerformed":Z
    .local v29, "sign":Ljava/security/cert/X509Certificate;
    .local v37, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v38, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v39, "workingPublicKey":Ljava/security/PublicKey;
    iget-boolean v0, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    move-object/from16 v4, v21

    .end local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v4, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    invoke-static {v2, v3, v4, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertBC(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;Z)V

    .line 358
    iget-boolean v8, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->isForCRLCheck:Z

    move-object/from16 v40, v4

    move-object/from16 v5, v20

    move-object/from16 v4, v22

    move/from16 v7, v25

    move-object/from16 v6, v31

    .end local v20    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22    # "acceptablePolicies":Ljava/util/Set;
    .end local v25    # "inhibitAnyPolicy":I
    .end local v31    # "policyNodes":[Ljava/util/List;
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "inhibitAnyPolicy":I
    .local v40, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertD(Ljava/security/cert/CertPath;ILjava/util/Set;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;IZ)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 361
    move v5, v7

    .end local v7    # "inhibitAnyPolicy":I
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v5, "inhibitAnyPolicy":I
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertE(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v0

    .line 363
    invoke-static {v2, v3, v0, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->processCertF(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXPolicyNode;I)V

    .line 368
    if-eq v14, v13, :cond_13

    .line 370
    if-eqz v12, :cond_11

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v7

    if-ne v7, v11, :cond_11

    .line 373
    if-ne v14, v11, :cond_10

    invoke-virtual/range {v36 .. v36}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v7

    invoke-virtual {v12, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 375
    move-object/from16 v22, v4

    move-object/from16 v20, v9

    move/from16 v7, v27

    move-object/from16 v9, v33

    move-object/from16 v11, v40

    const/16 v21, 0x1

    goto/16 :goto_f

    .line 377
    :cond_10
    new-instance v7, Ljava/security/cert/CertPathValidatorException;

    const-string v8, "Version 1 certificates can\'t be used as CA ones."

    const/4 v11, 0x0

    invoke-direct {v7, v8, v11, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 381
    :cond_11
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertA(Ljava/security/cert/CertPath;I)V

    .line 383
    move/from16 v7, v27

    .end local v27    # "policyMapping":I
    .local v7, "policyMapping":I
    invoke-static {v2, v3, v6, v0, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareCertB(Ljava/security/cert/CertPath;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;I)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v8

    .line 386
    .end local v0    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v11, v40

    const/16 v21, 0x1

    .end local v40    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v11, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    invoke-static {v2, v3, v11}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertG(Ljava/security/cert/CertPath;ILorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;)V

    .line 389
    invoke-static {v2, v3, v15}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH1(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 390
    .end local v15    # "explicitPolicy":I
    .local v0, "explicitPolicy":I
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH2(Ljava/security/cert/CertPath;II)I

    move-result v7

    .line 391
    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertH3(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 396
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI1(Ljava/security/cert/CertPath;II)I

    move-result v15

    .line 397
    .end local v0    # "explicitPolicy":I
    .restart local v15    # "explicitPolicy":I
    invoke-static {v2, v3, v7}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertI2(Ljava/security/cert/CertPath;II)I

    move-result v7

    .line 400
    invoke-static {v2, v3, v5}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertJ(Ljava/security/cert/CertPath;II)I

    move-result v5

    .line 403
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertK(Ljava/security/cert/CertPath;I)V

    .line 406
    move-object/from16 v20, v9

    move/from16 v9, v26

    .end local v26    # "maxPathLength":I
    .local v9, "maxPathLength":I
    .local v20, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    invoke-static {v2, v3, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertL(Ljava/security/cert/CertPath;II)I

    move-result v0

    .line 409
    .end local v9    # "maxPathLength":I
    .local v0, "maxPathLength":I
    invoke-static {v2, v3, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertM(Ljava/security/cert/CertPath;II)I

    move-result v9

    .line 412
    .end local v0    # "maxPathLength":I
    .restart local v9    # "maxPathLength":I
    invoke-static {v2, v3}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertN(Ljava/security/cert/CertPath;I)V

    .line 414
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 415
    .local v0, "criticalExtensions":Ljava/util/Set;
    if-eqz v0, :cond_12

    .line 417
    move-object/from16 v22, v4

    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "acceptablePolicies":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 420
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 421
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 422
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 423
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 424
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 425
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 426
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 427
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 428
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 429
    sget-object v0, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_d

    .line 433
    .end local v22    # "acceptablePolicies":Ljava/util/Set;
    .restart local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "acceptablePolicies":Ljava/util/Set;
    :cond_12
    move-object/from16 v22, v4

    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .restart local v22    # "acceptablePolicies":Ljava/util/Set;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 437
    .end local v0    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :goto_d
    move/from16 v25, v9

    move-object/from16 v9, v33

    .end local v33    # "pathCheckers":Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .local v25, "maxPathLength":I
    invoke-static {v2, v3, v4, v9}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->prepareNextCertO(Ljava/security/cert/CertPath;ILjava/util/Set;Ljava/util/List;)V

    .line 440
    move-object/from16 v26, v12

    .line 443
    .end local v29    # "sign":Ljava/security/cert/X509Certificate;
    .local v26, "sign":Ljava/security/cert/X509Certificate;
    invoke-static/range {v26 .. v26}, Lorg/bouncycastle/jce/provider/PrincipalUtils;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v27

    .line 448
    .end local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v27, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    :try_start_5
    invoke-virtual {v2}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v31, v4

    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v31, "criticalExtensions":Ljava/util/Set;
    :try_start_6
    iget-object v4, v1, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi_8;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getNextWorkingKey(Ljava/util/List;ILorg/bouncycastle/jcajce/util/JcaJceHelper;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_1

    .line 453
    .end local v39    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "workingPublicKey":Ljava/security/PublicKey;
    nop

    .line 455
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    .line 457
    .end local v32    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v4, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v23

    .line 459
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v29

    move-object/from16 v39, v0

    move-object/from16 v32, v4

    move-object v0, v8

    move-object/from16 v38, v27

    move-object/from16 v30, v29

    move-object/from16 v29, v26

    move v1, v5

    move v5, v15

    move/from16 v26, v7

    .end local v30    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .local v29, "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    goto :goto_10

    .line 450
    .end local v0    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v4    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v29    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v30    # "workingPublicKeyParameters":Lorg/bouncycastle/asn1/ASN1Encodable;
    .restart local v32    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v39    # "workingPublicKey":Ljava/security/PublicKey;
    :catch_1
    move-exception v0

    goto :goto_e

    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .local v4, "criticalExtensions":Ljava/util/Set;
    :catch_2
    move-exception v0

    move-object/from16 v31, v4

    .line 452
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v31    # "criticalExtensions":Ljava/util/Set;
    :goto_e
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Next working key could not be retrieved."

    invoke-direct {v4, v1, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 368
    .end local v7    # "policyMapping":I
    .end local v8    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v20    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v22    # "acceptablePolicies":Ljava/util/Set;
    .end local v25    # "maxPathLength":I
    .end local v31    # "criticalExtensions":Ljava/util/Set;
    .local v0, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v4, "acceptablePolicies":Ljava/util/Set;
    .local v9, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v26, "maxPathLength":I
    .local v27, "policyMapping":I
    .local v29, "sign":Ljava/security/cert/X509Certificate;
    .restart local v33    # "pathCheckers":Ljava/util/List;
    .restart local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v40    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :cond_13
    move-object/from16 v22, v4

    move-object/from16 v20, v9

    move/from16 v7, v27

    move-object/from16 v9, v33

    move-object/from16 v11, v40

    const/16 v21, 0x1

    .line 322
    .end local v4    # "acceptablePolicies":Ljava/util/Set;
    .end local v27    # "policyMapping":I
    .end local v28    # "verificationAlreadyPerformed":Z
    .end local v33    # "pathCheckers":Ljava/util/List;
    .end local v40    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v7    # "policyMapping":I
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v20    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v22    # "acceptablePolicies":Ljava/util/Set;
    :goto_f
    move/from16 v25, v26

    move v1, v5

    move v5, v15

    move/from16 v26, v7

    .end local v7    # "policyMapping":I
    .end local v15    # "explicitPolicy":I
    .local v1, "inhibitAnyPolicy":I
    .local v5, "explicitPolicy":I
    .restart local v25    # "maxPathLength":I
    .local v26, "policyMapping":I
    :goto_10
    add-int/lit8 v4, v3, -0x1

    move-object v14, v6

    move-object v8, v9

    move-object/from16 v34, v10

    move-object/from16 v21, v11

    move-object/from16 v15, v18

    move-object/from16 v33, v20

    move/from16 v11, v25

    move-object/from16 v10, v29

    move-object/from16 v7, v36

    move-object/from16 v6, v37

    move-object/from16 v9, v38

    move-object/from16 v29, v39

    const/4 v3, 0x0

    const/16 v18, 0x1

    move-object/from16 v20, v0

    move/from16 v25, v1

    move-object v0, v12

    move-object/from16 v12, v35

    move-object/from16 v1, p0

    .end local v3    # "index":I
    .local v4, "index":I
    goto/16 :goto_b

    .line 344
    .end local v0    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1    # "inhibitAnyPolicy":I
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .end local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v39    # "workingPublicKey":Ljava/security/PublicKey;
    .local v6, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "pathCheckers":Ljava/util/List;
    .local v9, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v15, "currentDate":Ljava/util/Date;
    .local v20, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v25, "inhibitAnyPolicy":I
    .local v27, "verificationAlreadyPerformed":Z
    .local v29, "workingPublicKey":Ljava/security/PublicKey;
    .local v31, "policyNodes":[Ljava/util/List;
    .local v33, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v34    # "validityDate":Ljava/util/Date;
    :catch_3
    move-exception v0

    move v3, v4

    move-object/from16 v37, v6

    move-object/from16 v36, v7

    move-object/from16 v38, v9

    move-object/from16 v18, v15

    move-object/from16 v1, v20

    move/from16 v7, v26

    move/from16 v28, v27

    move-object/from16 v39, v29

    move-object/from16 v6, v31

    move-object/from16 v20, v33

    move v15, v5

    move-object v9, v8

    move-object/from16 v29, v10

    move/from16 v26, v11

    move-object/from16 v11, v21

    move/from16 v5, v25

    move-object/from16 v10, v34

    .line 346
    .end local v4    # "index":I
    .end local v8    # "pathCheckers":Ljava/util/List;
    .end local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v25    # "inhibitAnyPolicy":I
    .end local v27    # "verificationAlreadyPerformed":Z
    .end local v31    # "policyNodes":[Ljava/util/List;
    .end local v33    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v34    # "validityDate":Ljava/util/Date;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v1, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v3    # "index":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "policyMapping":I
    .local v9, "pathCheckers":Ljava/util/List;
    .local v10, "validityDate":Ljava/util/Date;
    .local v11, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "explicitPolicy":I
    .restart local v18    # "currentDate":Ljava/util/Date;
    .local v20, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v26, "maxPathLength":I
    .restart local v28    # "verificationAlreadyPerformed":Z
    .local v29, "sign":Ljava/security/cert/X509Certificate;
    .restart local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .restart local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v39    # "workingPublicKey":Ljava/security/PublicKey;
    new-instance v4, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v19, v0

    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v19, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v4, v8, v0, v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    .line 467
    .end local v1    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3    # "index":I
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v19    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v28    # "verificationAlreadyPerformed":Z
    .end local v35    # "certs":Ljava/util/List;
    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .end local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v39    # "workingPublicKey":Ljava/security/PublicKey;
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "index":I
    .local v5, "explicitPolicy":I
    .local v6, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v8    # "pathCheckers":Ljava/util/List;
    .local v9, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v10, "sign":Ljava/security/cert/X509Certificate;
    .local v11, "maxPathLength":I
    .local v12, "certs":Ljava/util/List;
    .local v14, "policyNodes":[Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v20, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .restart local v25    # "inhibitAnyPolicy":I
    .local v26, "policyMapping":I
    .local v29, "workingPublicKey":Ljava/security/PublicKey;
    .restart local v33    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v34    # "validityDate":Ljava/util/Date;
    :cond_14
    move v3, v4

    move-object/from16 v37, v6

    move-object/from16 v36, v7

    move-object/from16 v38, v9

    move-object/from16 v35, v12

    move-object v6, v14

    move-object/from16 v18, v15

    move-object/from16 v1, v20

    move/from16 v7, v26

    move-object/from16 v39, v29

    move-object/from16 v20, v33

    move v15, v5

    move-object v9, v8

    move-object/from16 v29, v10

    move/from16 v26, v11

    move-object/from16 v11, v21

    move/from16 v5, v25

    move-object/from16 v10, v34

    .end local v4    # "index":I
    .end local v8    # "pathCheckers":Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v14    # "policyNodes":[Ljava/util/List;
    .end local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v25    # "inhibitAnyPolicy":I
    .end local v33    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v34    # "validityDate":Ljava/util/Date;
    .restart local v1    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v3    # "index":I
    .local v5, "inhibitAnyPolicy":I
    .local v6, "policyNodes":[Ljava/util/List;
    .local v7, "policyMapping":I
    .local v9, "pathCheckers":Ljava/util/List;
    .local v10, "validityDate":Ljava/util/Date;
    .local v11, "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "explicitPolicy":I
    .restart local v18    # "currentDate":Ljava/util/Date;
    .local v20, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v26, "maxPathLength":I
    .local v29, "sign":Ljava/security/cert/X509Certificate;
    .restart local v35    # "certs":Ljava/util/List;
    .restart local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .restart local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .restart local v39    # "workingPublicKey":Ljava/security/PublicKey;
    invoke-static {v15, v0}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertA(ILjava/security/cert/X509Certificate;)I

    move-result v4

    .line 469
    .end local v15    # "explicitPolicy":I
    .local v4, "explicitPolicy":I
    add-int/lit8 v8, v3, 0x1

    invoke-static {v2, v8, v4}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertB(Ljava/security/cert/CertPath;II)I

    move-result v12

    .line 478
    .end local v4    # "explicitPolicy":I
    .local v12, "explicitPolicy":I
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v4

    .line 480
    .local v4, "criticalExtensions":Ljava/util/Set;
    if-eqz v4, :cond_15

    .line 482
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 484
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v8, "criticalExtensions":Ljava/util/Set;
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 485
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 487
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 488
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 489
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 490
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 491
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 492
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 493
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 494
    sget-object v4, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->CRL_DISTRIBUTION_POINTS:Ljava/lang/String;

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 495
    sget-object v4, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object v14, v8

    goto :goto_11

    .line 499
    .end local v8    # "criticalExtensions":Ljava/util/Set;
    .restart local v4    # "criticalExtensions":Ljava/util/Set;
    :cond_15
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    move-object v14, v8

    .line 502
    .end local v4    # "criticalExtensions":Ljava/util/Set;
    .local v14, "criticalExtensions":Ljava/util/Set;
    :goto_11
    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4, v9, v14}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertF(Ljava/security/cert/CertPath;ILjava/util/List;Ljava/util/Set;)V

    .line 504
    add-int/lit8 v4, v3, 0x1

    move/from16 v25, v5

    move/from16 v27, v7

    move-object/from16 v8, v22

    move-object v7, v1

    move v1, v3

    move v5, v4

    move-object/from16 v4, v16

    move-object/from16 v3, v20

    .end local v5    # "inhibitAnyPolicy":I
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v20    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v22    # "acceptablePolicies":Ljava/util/Set;
    .local v1, "index":I
    .local v3, "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v7, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v8, "acceptablePolicies":Ljava/util/Set;
    .restart local v25    # "inhibitAnyPolicy":I
    .local v27, "policyMapping":I
    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/jce/provider/RFC3280CertPathUtilities;->wrapupCertG(Ljava/security/cert/CertPath;Lorg/bouncycastle/jcajce/PKIXExtendedParameters;Ljava/util/Set;I[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;Ljava/util/Set;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 507
    .end local v8    # "acceptablePolicies":Ljava/util/Set;
    .local v5, "intersection":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v22    # "acceptablePolicies":Ljava/util/Set;
    if-gtz v12, :cond_17

    if-eqz v5, :cond_16

    move-object/from16 v16, v0

    goto :goto_12

    .line 512
    :cond_16
    new-instance v8, Ljava/security/cert/CertPathValidatorException;

    const-string v15, "Path processing failed on policy."

    move-object/from16 v16, v0

    const/4 v0, 0x0

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .local v16, "cert":Ljava/security/cert/X509Certificate;
    invoke-direct {v8, v15, v0, v2, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v8

    .line 507
    .end local v16    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_17
    move-object/from16 v16, v0

    .line 509
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v16    # "cert":Ljava/security/cert/X509Certificate;
    :goto_12
    new-instance v0, Ljava/security/cert/PKIXCertPathValidatorResult;

    invoke-virtual/range {v16 .. v16}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    move-object/from16 v15, v36

    .end local v36    # "trust":Ljava/security/cert/TrustAnchor;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    invoke-direct {v0, v15, v5, v8}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v0

    .line 291
    .end local v1    # "index":I
    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v32    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v35    # "certs":Ljava/util/List;
    .end local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .end local v38    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v39    # "workingPublicKey":Ljava/security/PublicKey;
    .local v4, "validityDate":Ljava/util/Date;
    .local v5, "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .local v6, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v7, "trust":Ljava/security/cert/TrustAnchor;
    .local v8, "pathCheckers":Ljava/util/List;
    .local v9, "index":I
    .local v12, "certs":Ljava/util/List;
    .local v14, "policyNodes":[Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .local v16, "userInitialPolicySet":Ljava/util/Set;
    .restart local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v23, "explicitPolicy":I
    .local v26, "policyMapping":I
    .local v27, "sign":Ljava/security/cert/X509Certificate;
    .local v28, "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .local v29, "workingPublicKey":Ljava/security/PublicKey;
    .local v30, "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :catch_4
    move-exception v0

    move-object v10, v4

    move-object/from16 v37, v6

    move v1, v9

    move-object/from16 v35, v12

    move-object v6, v14

    move-object/from16 v18, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v21

    move-object v15, v7

    move-object v9, v8

    .line 293
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v8    # "pathCheckers":Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v14    # "policyNodes":[Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v0, "e":Ljava/security/cert/CertPathValidatorException;
    .restart local v1    # "index":I
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v10    # "validityDate":Ljava/util/Date;
    .restart local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v18    # "currentDate":Ljava/util/Date;
    .restart local v35    # "certs":Ljava/util/List;
    .restart local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Algorithm identifier of public key of trust anchor could not be read."

    const/4 v12, -0x1

    invoke-direct {v7, v8, v0, v2, v12}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 280
    .end local v0    # "e":Ljava/security/cert/CertPathValidatorException;
    .end local v1    # "index":I
    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v28    # "workingIssuerName":Lorg/bouncycastle/asn1/x500/X500Name;
    .end local v29    # "workingPublicKey":Ljava/security/PublicKey;
    .end local v30    # "workingAlgId":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v35    # "certs":Ljava/util/List;
    .end local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v4, "validityDate":Ljava/util/Date;
    .local v6, "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v8    # "pathCheckers":Ljava/util/List;
    .local v9, "index":I
    .restart local v12    # "certs":Ljava/util/List;
    .restart local v14    # "policyNodes":[Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    :catch_5
    move-exception v0

    move-object v10, v4

    move-object/from16 v37, v6

    move v1, v9

    move-object/from16 v35, v12

    move-object v6, v14

    move-object/from16 v18, v15

    move-object/from16 v4, v16

    move-object/from16 v11, v21

    const/4 v12, -0x1

    move-object v15, v7

    move-object v9, v8

    .line 282
    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v8    # "pathCheckers":Ljava/util/List;
    .end local v12    # "certs":Ljava/util/List;
    .end local v14    # "policyNodes":[Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .end local v21    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v0, "ex":Ljava/lang/RuntimeException;
    .restart local v1    # "index":I
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .local v6, "policyNodes":[Ljava/util/List;
    .local v9, "pathCheckers":Ljava/util/List;
    .restart local v10    # "validityDate":Ljava/util/Date;
    .restart local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v18    # "currentDate":Ljava/util/Date;
    .restart local v35    # "certs":Ljava/util/List;
    .restart local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    :goto_13
    new-instance v7, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;

    const-string v8, "Subject of trust anchor could not be (re)encoded."

    invoke-direct {v7, v8, v0, v2, v12}, Lorg/bouncycastle/jce/exception/ExtCertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v7

    .line 141
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v1    # "index":I
    .end local v5    # "validPolicyTree":Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v6    # "policyNodes":[Ljava/util/List;
    .end local v9    # "pathCheckers":Ljava/util/List;
    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v11    # "nameConstraintValidator":Lorg/bouncycastle/jce/provider/PKIXNameConstraintValidator;
    .end local v17    # "certIter":Ljava/util/Iterator;
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v22    # "acceptablePolicies":Ljava/util/Set;
    .end local v23    # "explicitPolicy":I
    .end local v24    # "policySet":Ljava/util/Set;
    .end local v25    # "inhibitAnyPolicy":I
    .end local v26    # "policyMapping":I
    .end local v27    # "sign":Ljava/security/cert/X509Certificate;
    .end local v35    # "certs":Ljava/util/List;
    .end local v37    # "revocationChecker":Lorg/bouncycastle/jcajce/PKIXCertRevocationChecker;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :cond_18
    move-object v10, v4

    move-object/from16 v35, v12

    move-object/from16 v18, v15

    move-object/from16 v4, v16

    const/16 v21, 0x1

    move-object v15, v7

    .end local v7    # "trust":Ljava/security/cert/TrustAnchor;
    .end local v12    # "certs":Ljava/util/List;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .restart local v10    # "validityDate":Ljava/util/Date;
    .local v15, "trust":Ljava/security/cert/TrustAnchor;
    .restart local v18    # "currentDate":Ljava/util/Date;
    .restart local v35    # "certs":Ljava/util/List;
    :try_start_7
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Trust anchor for certification path not found."

    const/4 v5, -0x1

    const/4 v11, 0x0

    invoke-direct {v0, v1, v11, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v13    # "n":I
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v35    # "certs":Ljava/util/List;
    .end local p1    # "certPath":Ljava/security/cert/CertPath;
    .end local p2    # "params":Ljava/security/cert/CertPathParameters;
    throw v0
    :try_end_7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7 .. :try_end_7} :catch_6

    .line 146
    .end local v15    # "trust":Ljava/security/cert/TrustAnchor;
    .restart local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    .restart local v4    # "userInitialPolicySet":Ljava/util/Set;
    .restart local v10    # "validityDate":Ljava/util/Date;
    .restart local v13    # "n":I
    .restart local v18    # "currentDate":Ljava/util/Date;
    .restart local v35    # "certs":Ljava/util/List;
    .restart local p1    # "certPath":Ljava/security/cert/CertPath;
    .restart local p2    # "params":Ljava/security/cert/CertPathParameters;
    :catch_6
    move-exception v0

    goto :goto_14

    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v35    # "certs":Ljava/util/List;
    .local v4, "validityDate":Ljava/util/Date;
    .restart local v12    # "certs":Ljava/util/List;
    .local v15, "currentDate":Ljava/util/Date;
    .restart local v16    # "userInitialPolicySet":Ljava/util/Set;
    :catch_7
    move-exception v0

    move-object v10, v4

    move-object/from16 v35, v12

    move-object/from16 v18, v15

    move-object/from16 v4, v16

    const/16 v21, 0x1

    .line 148
    .end local v12    # "certs":Ljava/util/List;
    .end local v15    # "currentDate":Ljava/util/Date;
    .end local v16    # "userInitialPolicySet":Ljava/util/Set;
    .local v0, "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .local v4, "userInitialPolicySet":Ljava/util/Set;
    .restart local v10    # "validityDate":Ljava/util/Date;
    .restart local v18    # "currentDate":Ljava/util/Date;
    .restart local v35    # "certs":Ljava/util/List;
    :goto_14
    new-instance v1, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Throwable;

    move-result-object v6

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-direct {v1, v5, v6, v2, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v1

    .line 116
    .end local v0    # "e":Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v4    # "userInitialPolicySet":Ljava/util/Set;
    .end local v10    # "validityDate":Ljava/util/Date;
    .end local v18    # "currentDate":Ljava/util/Date;
    .end local v35    # "certs":Ljava/util/List;
    .restart local v12    # "certs":Ljava/util/List;
    :cond_19
    new-instance v0, Ljava/security/cert/CertPathValidatorException;

    const-string v1, "Certification path is empty."

    const/4 v5, -0x1

    const/4 v11, 0x0

    invoke-direct {v0, v1, v11, v2, v5}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v0

    .line 100
    .end local v12    # "certs":Ljava/util/List;
    .end local v13    # "n":I
    :cond_1a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "trustAnchors is null, this is not allowed for certification path validation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    .end local v3    # "paramsPKIX":Lorg/bouncycastle/jcajce/PKIXExtendedParameters;
    :cond_1b
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

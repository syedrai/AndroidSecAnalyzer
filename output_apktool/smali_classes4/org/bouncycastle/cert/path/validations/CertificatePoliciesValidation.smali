.class public Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
.super Ljava/lang/Object;
.source "CertificatePoliciesValidation.java"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private explicitPolicy:I

.field private inhibitAnyPolicy:I

.field private policyMapping:I


# direct methods
.method constructor <init>(I)V
    .locals 1
    .param p1, "pathLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathLength"
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(IZZZ)V

    .line 24
    return-void
.end method

.method constructor <init>(IZZZ)V
    .locals 2
    .param p1, "pathLength"    # I
    .param p2, "isExplicitPolicyRequired"    # Z
    .param p3, "isAnyPolicyInhibited"    # Z
    .param p4, "isPolicyMappingInhibited"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pathLength",
            "isExplicitPolicyRequired",
            "isAnyPolicyInhibited",
            "isPolicyMappingInhibited"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 34
    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    goto :goto_0

    .line 38
    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 44
    :goto_0
    if-eqz p3, :cond_1

    .line 46
    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    goto :goto_1

    .line 50
    :cond_1
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 56
    :goto_1
    if-eqz p4, :cond_2

    .line 58
    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    goto :goto_2

    .line 62
    :cond_2
    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 64
    :goto_2
    return-void
.end method

.method private countDown(I)I
    .locals 1
    .param p1, "policyCounter"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "policyCounter"
        }
    .end annotation

    .line 129
    if-eqz p1, :cond_0

    .line 131
    add-int/lit8 v0, p1, -0x1

    return v0

    .line 134
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    .line 139
    new-instance v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;-><init>(I)V

    .line 141
    .local v0, "v":Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    iget v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    iput v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 142
    iget v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    iput v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 143
    iget v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    iput v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 145
    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 2
    .param p1, "other"    # Lorg/bouncycastle/util/Memoable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .line 150
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;

    .line 152
    .local v0, "v":Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;
    iget v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 153
    iget v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 154
    iget v1, v0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    iput v1, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 155
    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 5
    .param p1, "context"    # Lorg/bouncycastle/cert/path/CertPathValidationContext;
    .param p2, "certificate"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    .line 69
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->policyConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 70
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 72
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->isEndEntity()Z

    move-result v0

    if-nez v0, :cond_2

    .line 74
    invoke-static {p2}, Lorg/bouncycastle/cert/path/validations/ValidationUtils;->isSelfIssued(Lorg/bouncycastle/cert/X509CertificateHolder;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 80
    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 81
    iget v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->countDown(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 86
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/PolicyConstraints;

    move-result-object v0

    .line 88
    .local v0, "policyConstraints":Lorg/bouncycastle/asn1/x509/PolicyConstraints;
    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->getRequireExplicitPolicyMapping()Ljava/math/BigInteger;

    move-result-object v1

    .line 91
    .local v1, "requireExplicitPolicyMapping":Ljava/math/BigInteger;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    if-ge v2, v3, :cond_0

    .line 95
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->explicitPolicy:I

    .line 99
    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/PolicyConstraints;->getInhibitPolicyMapping()Ljava/math/BigInteger;

    move-result-object v2

    .line 100
    .local v2, "inhibitPolicyMapping":Ljava/math/BigInteger;
    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iget v4, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    if-ge v3, v4, :cond_1

    .line 104
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    iput v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->policyMapping:I

    .line 112
    .end local v1    # "requireExplicitPolicyMapping":Ljava/math/BigInteger;
    .end local v2    # "inhibitPolicyMapping":Ljava/math/BigInteger;
    :cond_1
    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->inhibitAnyPolicy:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p2, v1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/Extension;

    move-result-object v1

    .line 114
    .local v1, "ext":Lorg/bouncycastle/asn1/x509/Extension;
    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Extension;->getParsedValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v2

    .line 118
    .local v2, "extValue":I
    iget v3, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    if-ge v2, v3, :cond_2

    .line 120
    iput v2, p0, Lorg/bouncycastle/cert/path/validations/CertificatePoliciesValidation;->inhibitAnyPolicy:I

    .line 125
    .end local v0    # "policyConstraints":Lorg/bouncycastle/asn1/x509/PolicyConstraints;
    .end local v1    # "ext":Lorg/bouncycastle/asn1/x509/Extension;
    .end local v2    # "extValue":I
    :cond_2
    return-void
.end method

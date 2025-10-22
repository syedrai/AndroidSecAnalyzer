.class public Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;
.source "BasicConstraintsValidation.java"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z

.field private maxPathLength:Ljava/lang/Integer;

.field private previousCertWasCA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isMandatory"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMandatory"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    .line 18
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    .line 19
    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 28
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 29
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    .line 77
    new-instance v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    invoke-direct {v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>()V

    .line 78
    .local v0, "result":Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 79
    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    .line 80
    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    .line 81
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

    .line 86
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    .line 87
    .local v0, "otherBCV":Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
    iget-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    .line 88
    iget-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    .line 89
    iget-object v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    .line 90
    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 4
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

    .line 34
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 37
    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    if-eqz v0, :cond_7

    .line 44
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    .line 45
    .local v0, "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    .line 50
    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-eqz v2, :cond_4

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 52
    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ltz v2, :cond_3

    .line 56
    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    goto :goto_1

    .line 54
    :cond_3
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v2, "Basic constraints violated: path length exceeded"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v1

    .line 64
    .local v1, "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    if-eqz v1, :cond_6

    .line 66
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v2

    .line 67
    .local v2, "newPathLength":I
    iget-object v3, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 69
    :cond_5
    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    .line 73
    .end local v1    # "pathLenConstraint":Lorg/bouncycastle/asn1/ASN1Integer;
    .end local v2    # "newPathLength":I
    :cond_6
    return-void

    .line 39
    .end local v0    # "bc":Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :cond_7
    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Basic constraints violated: issuer is not a CA"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

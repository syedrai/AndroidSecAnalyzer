.class public Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;
.super Ljava/lang/Object;
.source "KeyUsageValidation.java"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

    .line 19
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isMandatory"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isMandatory"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    .line 24
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    .line 54
    new-instance v0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;-><init>(Z)V

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

    .line 59
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;

    .line 61
    .local v0, "v":Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;
    iget-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    .line 62
    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3
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

    .line 29
    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->keyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->isEndEntity()Z

    move-result v0

    if-nez v0, :cond_3

    .line 33
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/KeyUsage;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/KeyUsage;

    move-result-object v0

    .line 35
    .local v0, "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    if-eqz v0, :cond_1

    .line 37
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/x509/KeyUsage;->hasUsages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 39
    :cond_0
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v2, "Issuer certificate KeyUsage extension does not permit key signing"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 44
    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/KeyUsageValidation;->isMandatory:Z

    if-nez v1, :cond_2

    goto :goto_0

    .line 46
    :cond_2
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v2, "KeyUsage extension not present in CA certificate"

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 50
    .end local v0    # "usage":Lorg/bouncycastle/asn1/x509/KeyUsage;
    :cond_3
    :goto_0
    return-void
.end method

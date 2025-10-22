.class public Lorg/bouncycastle/cert/path/validations/CRLValidation;
.super Ljava/lang/Object;
.source "CRLValidation.java"

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private crls:Lorg/bouncycastle/util/Store;

.field private workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;


# direct methods
.method static bridge synthetic -$$Nest$fgetworkingIssuerName(Lorg/bouncycastle/cert/path/validations/CRLValidation;)Lorg/bouncycastle/asn1/x500/X500Name;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    return-object p0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/util/Store;)V
    .locals 0
    .param p1, "trustAnchorName"    # Lorg/bouncycastle/asn1/x500/X500Name;
    .param p2, "crls"    # Lorg/bouncycastle/util/Store;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trustAnchorName",
            "crls"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    .line 26
    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 3

    .line 68
    new-instance v0, Lorg/bouncycastle/cert/path/validations/CRLValidation;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/cert/path/validations/CRLValidation;-><init>(Lorg/bouncycastle/asn1/x500/X500Name;Lorg/bouncycastle/util/Store;)V

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

    .line 73
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/cert/path/validations/CRLValidation;

    .line 75
    .local v0, "v":Lorg/bouncycastle/cert/path/validations/CRLValidation;
    iget-object v1, v0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 76
    iget-object v1, v0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    .line 77
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

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->crls:Lorg/bouncycastle/util/Store;

    new-instance v1, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;

    invoke-direct {v1, p0}, Lorg/bouncycastle/cert/path/validations/CRLValidation$1;-><init>(Lorg/bouncycastle/cert/path/validations/CRLValidation;)V

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    .line 47
    .local v0, "matches":Ljava/util/Collection;
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/X509CRLHolder;

    .line 57
    .local v2, "crl":Lorg/bouncycastle/cert/X509CRLHolder;
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/cert/X509CRLHolder;->getRevokedCertificate(Ljava/math/BigInteger;)Lorg/bouncycastle/cert/X509CRLEntryHolder;

    move-result-object v3

    if-nez v3, :cond_0

    .line 61
    .end local v2    # "crl":Lorg/bouncycastle/cert/X509CRLHolder;
    goto :goto_0

    .line 59
    .restart local v2    # "crl":Lorg/bouncycastle/cert/X509CRLHolder;
    :cond_0
    new-instance v3, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v4, "Certificate revoked"

    invoke-direct {v3, v4}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "crl":Lorg/bouncycastle/cert/X509CRLHolder;
    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    .line 64
    return-void

    .line 49
    :cond_2
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationException;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/validations/CRLValidation;->workingIssuerName:Lorg/bouncycastle/asn1/x500/X500Name;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CRL for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

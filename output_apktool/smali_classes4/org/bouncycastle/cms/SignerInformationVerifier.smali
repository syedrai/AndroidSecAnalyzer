.class public Lorg/bouncycastle/cms/SignerInformationVerifier;
.super Ljava/lang/Object;
.source "SignerInformationVerifier.java"


# instance fields
.field private digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

.field private verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0
    .param p1, "sigNameGenerator"    # Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;
    .param p2, "sigAlgorithmFinder"    # Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;
    .param p3, "verifierProvider"    # Lorg/bouncycastle/operator/ContentVerifierProvider;
    .param p4, "digestProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sigNameGenerator",
            "sigAlgorithmFinder",
            "verifierProvider",
            "digestProvider"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 23
    iput-object p3, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    .line 24
    iput-object p4, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 25
    return-void
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->getAssociatedCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    return-object v0
.end method

.method public getContentVerifier(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 6
    .param p1, "signingAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digestAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "signingAlgorithm",
            "digestAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigNameGenerator:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    invoke-interface {v0, p2, p1}, Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;->getSignatureName(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "signatureName":Ljava/lang/String;
    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->sigAlgorithmFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    invoke-interface {v1, v0}, Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    .line 43
    .local v1, "baseAlgID":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {v2, v3}, Lorg/bouncycastle/operator/ContentVerifierProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/ContentVerifier;

    move-result-object v2

    return-object v2
.end method

.method public getDigestCalculator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 1
    .param p1, "algorithmIdentifier"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmIdentifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    .line 29
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInformationVerifier;->verifierProvider:Lorg/bouncycastle/operator/ContentVerifierProvider;

    invoke-interface {v0}, Lorg/bouncycastle/operator/ContentVerifierProvider;->hasAssociatedCertificate()Z

    move-result v0

    return v0
.end method

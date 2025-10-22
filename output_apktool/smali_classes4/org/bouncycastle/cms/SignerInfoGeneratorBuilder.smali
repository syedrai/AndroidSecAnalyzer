.class public Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
.super Ljava/lang/Object;
.source "SignerInfoGeneratorBuilder.java"


# instance fields
.field private contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private directSignature:Z

.field private sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

.field private signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

.field private unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "digestProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "digestProvider"
        }
    .end annotation

    .line 36
    new-instance v0, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0}, Lorg/bouncycastle/cms/DefaultCMSSignatureEncryptionAlgorithmFinder;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;-><init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V
    .locals 1
    .param p1, "digestProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .param p2, "sigEncAlgFinder"    # Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "digestProvider",
            "sigEncAlgFinder"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    .line 49
    return-void
.end method

.method private createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 8
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "sigId"    # Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentSigner",
            "sigId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    move-object v4, v0

    .local v0, "digester":Lorg/bouncycastle/operator/DigestCalculator;
    goto :goto_0

    .line 149
    .end local v0    # "digester":Lorg/bouncycastle/operator/DigestCalculator;
    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digestProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    iget-object v1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->digAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    move-object v4, v0

    .line 152
    .local v4, "digester":Lorg/bouncycastle/operator/DigestCalculator;
    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lorg/bouncycastle/cms/SignerInfoGenerator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    invoke-direct {v0, p2, p1, v1, v2}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;)V

    return-object v0

    .line 157
    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-eqz v0, :cond_2

    move-object v3, p1

    move-object v2, p2

    goto :goto_1

    .line 167
    :cond_2
    new-instance v1, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    new-instance v6, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {v6}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    const/4 v7, 0x0

    move-object v3, p1

    move-object v2, p2

    .end local p1    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p2    # "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .local v2, "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .local v3, "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1

    .line 157
    .end local v2    # "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .end local v3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .restart local p1    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .restart local p2    # "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    :cond_3
    move-object v3, p1

    move-object v2, p2

    .line 159
    .end local p1    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    .end local p2    # "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .restart local v2    # "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    .restart local v3    # "contentSigner":Lorg/bouncycastle/operator/ContentSigner;
    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    if-nez p1, :cond_4

    .line 161
    new-instance p1, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;

    invoke-direct {p1}, Lorg/bouncycastle/cms/DefaultSignedAttributeTableGenerator;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 164
    :cond_4
    new-instance v1, Lorg/bouncycastle/cms/SignerInfoGenerator;

    iget-object v5, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->sigEncAlgFinder:Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;

    iget-object v6, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    iget-object v7, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/cms/SignerInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/SignerIdentifier;Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/cms/CMSSignatureEncryptionAlgorithmFinder;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)V

    return-object v1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 3
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentSigner",
            "certHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 113
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    .line 115
    .local v0, "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    .line 117
    .local v1, "sigInfoGen":Lorg/bouncycastle/cms/SignerInfoGenerator;
    invoke-virtual {v1, p2}, Lorg/bouncycastle/cms/SignerInfoGenerator;->setAssociatedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)V

    .line 119
    return-object v1
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;[B)Lorg/bouncycastle/cms/SignerInfoGenerator;
    .locals 2
    .param p1, "contentSigner"    # Lorg/bouncycastle/operator/ContentSigner;
    .param p2, "subjectKeyIdentifier"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentSigner",
            "subjectKeyIdentifier"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 134
    new-instance v0, Lorg/bouncycastle/asn1/cms/SignerIdentifier;

    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/SignerIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 136
    .local v0, "sigId":Lorg/bouncycastle/asn1/cms/SignerIdentifier;
    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->createGenerator(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cms/SignerIdentifier;)Lorg/bouncycastle/cms/SignerInfoGenerator;

    move-result-object v1

    return-object v1
.end method

.method public setContentDigest(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0
    .param p1, "contentDigest"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentDigest"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->contentDigest:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    return-object p0
.end method

.method public setDirectSignature(Z)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0
    .param p1, "hasNoSignedAttributes"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasNoSignedAttributes"
        }
    .end annotation

    .line 59
    iput-boolean p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->directSignature:Z

    .line 61
    return-object p0
.end method

.method public setSignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0
    .param p1, "signedGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedGen"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->signedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 86
    return-object p0
.end method

.method public setUnsignedAttributeGenerator(Lorg/bouncycastle/cms/CMSAttributeTableGenerator;)Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;
    .locals 0
    .param p1, "unsignedGen"    # Lorg/bouncycastle/cms/CMSAttributeTableGenerator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unsignedGen"
        }
    .end annotation

    .line 97
    iput-object p1, p0, Lorg/bouncycastle/cms/SignerInfoGeneratorBuilder;->unsignedGen:Lorg/bouncycastle/cms/CMSAttributeTableGenerator;

    .line 99
    return-object p0
.end method

.class public Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;
.super Ljava/lang/Object;
.source "BcRSASignerInfoVerifierBuilder.java"


# instance fields
.field private contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;

.field private digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

.field private sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .param p1, "sigAlgNameGen"    # Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;
    .param p2, "sigAlgIdFinder"    # Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;
    .param p3, "digestAlgorithmFinder"    # Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;
    .param p4, "digestCalculatorProvider"    # Lorg/bouncycastle/operator/DigestCalculatorProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sigAlgNameGen",
            "sigAlgIdFinder",
            "digestAlgorithmFinder",
            "digestCalculatorProvider"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    .line 24
    new-instance v0, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;

    invoke-direct {v0, p3}, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;

    .line 25
    iput-object p4, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    .line 26
    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 5
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "certHolder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;->build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .locals 5
    .param p1, "pubKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pubKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/bouncycastle/cms/SignerInformationVerifier;

    iget-object v1, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgNameGen:Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;

    iget-object v2, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->sigAlgIdFinder:Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;

    iget-object v3, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->contentVerifierProviderBuilder:Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;

    invoke-virtual {v3, p1}, Lorg/bouncycastle/operator/bc/BcRSAContentVerifierProviderBuilder;->build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentVerifierProvider;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/bc/BcRSASignerInfoVerifierBuilder;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/cms/SignerInformationVerifier;-><init>(Lorg/bouncycastle/cms/CMSSignatureAlgorithmNameGenerator;Lorg/bouncycastle/operator/SignatureAlgorithmIdentifierFinder;Lorg/bouncycastle/operator/ContentVerifierProvider;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method

.class public abstract Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;
.super Ljava/lang/Object;
.source "BcContentVerifierProviderBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$SigVerifier;
    }
.end annotation


# instance fields
.field protected digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;


# direct methods
.method static bridge synthetic -$$Nest$mcreateSignatureStream(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->createSignatureStream(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iput-object v0, p0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    .line 22
    return-void
.end method

.method private createSignatureStream(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/bc/BcSignerOutputStream;
    .locals 2
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;->createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;

    move-result-object v0

    .line 87
    .local v0, "sig":Lorg/bouncycastle/crypto/Signer;
    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lorg/bouncycastle/crypto/Signer;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 89
    new-instance v1, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/operator/bc/BcSignerOutputStream;-><init>(Lorg/bouncycastle/crypto/Signer;)V

    return-object v1
.end method


# virtual methods
.method public build(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1
    .param p1, "certHolder"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
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

    .line 27
    new-instance v0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$1;-><init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-object v0
.end method

.method public build(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/operator/ContentVerifierProvider;
    .locals 1
    .param p1, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 60
    new-instance v0, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$2;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder$2;-><init>(Lorg/bouncycastle/operator/bc/BcContentVerifierProviderBuilder;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0
.end method

.method protected abstract createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sigAlgId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method protected abstract extractKeyParameters(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKeyInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

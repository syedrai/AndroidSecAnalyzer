.class public Lorg/bouncycastle/operator/bc/BcDSAContentSignerBuilder;
.super Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;
.source "BcDSAContentSignerBuilder.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "sigAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigAlgId",
            "digAlgId"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/operator/bc/BcContentSignerBuilder;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 16
    return-void
.end method


# virtual methods
.method protected createSigner(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/Signer;
    .locals 3
    .param p1, "sigAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "digAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sigAlgId",
            "digAlgId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lorg/bouncycastle/operator/bc/BcDSAContentSignerBuilder;->digestProvider:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    invoke-interface {v0, p2}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v0

    .line 23
    .local v0, "dig":Lorg/bouncycastle/crypto/Digest;
    new-instance v1, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v2, Lorg/bouncycastle/crypto/signers/DSASigner;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/DSASigner;-><init>()V

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    return-object v1
.end method

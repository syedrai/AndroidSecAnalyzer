.class public Lorg/bouncycastle/cms/bc/BcRSAKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;
.source "BcRSAKeyTransRecipientInfoGenerator.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3
    .param p1, "recipientCert"    # Lorg/bouncycastle/cert/X509CertificateHolder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientCert"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;-><init>(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V

    .line 22
    return-void
.end method

.method public constructor <init>([BLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "encAlgId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "publicKey"    # Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "encAlgId",
            "publicKey"
        }
    .end annotation

    .line 15
    new-instance v0, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/bc/BcRSAAsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/bc/BcKeyTransRecipientInfoGenerator;-><init>([BLorg/bouncycastle/operator/bc/BcAsymmetricKeyWrapper;)V

    .line 16
    return-void
.end method

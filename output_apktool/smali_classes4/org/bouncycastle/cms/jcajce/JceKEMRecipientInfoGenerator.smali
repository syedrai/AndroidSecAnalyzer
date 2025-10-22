.class public Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;
.source "JceKEMRecipientInfoGenerator.java"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 3
    .param p1, "recipientCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "symWrapAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientCert",
            "symWrapAlgorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    new-instance v1, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/cms/KEMKeyWrapper;)V

    .line 22
    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 1
    .param p1, "subjectKeyIdentifier"    # [B
    .param p2, "publicKey"    # Ljava/security/PublicKey;
    .param p3, "symWrapAlgorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subjectKeyIdentifier",
            "publicKey",
            "symWrapAlgorithm"
        }
    .end annotation

    .line 26
    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;-><init>(Ljava/security/PublicKey;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;-><init>([BLorg/bouncycastle/cms/KEMKeyWrapper;)V

    .line 27
    return-void
.end method


# virtual methods
.method public setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
    .locals 1
    .param p1, "algorithm"    # Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .param p2, "algorithmName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "algorithmName"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->setAlgorithmMapping(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    .line 74
    return-object p0
.end method

.method public setKDF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
    .locals 1
    .param p1, "kdfAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdfAlgorithm"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->setKDF(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    .line 54
    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
    .locals 1
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->setProvider(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    .line 33
    return-object p0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
    .locals 1
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->setProvider(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    .line 40
    return-object p0
.end method

.method public setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;
    .locals 1
    .param p1, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "random"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/JceKEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;->setSecureRandom(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/JceCMSKEMKeyWrapper;

    .line 47
    return-object p0
.end method

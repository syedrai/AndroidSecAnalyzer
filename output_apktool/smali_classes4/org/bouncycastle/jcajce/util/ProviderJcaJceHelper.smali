.class public Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;
.super Ljava/lang/Object;
.source "ProviderJcaJceHelper.java"

# interfaces
.implements Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# instance fields
.field protected final provider:Ljava/security/Provider;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    .line 41
    return-void
.end method


# virtual methods
.method public createAlgorithmParameterGenerator(Ljava/lang/String;)Ljava/security/AlgorithmParameterGenerator;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/AlgorithmParameterGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameterGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createAlgorithmParameters(Ljava/lang/String;)Ljava/security/AlgorithmParameters;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public createCertPathBuilder(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathBuilder;

    move-result-object v0

    return-object v0
.end method

.method public createCertPathValidator(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;

    move-result-object v0

    return-object v0
.end method

.method public createCertStore(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/security/cert/CertStoreParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, p2, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v0

    return-object v0
.end method

.method public createCertificateFactory(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    return-object v0
.end method

.method public createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public createDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public createExemptionMechanism(Ljava/lang/String;)Ljavax/crypto/ExemptionMechanism;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/ExemptionMechanism;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/ExemptionMechanism;

    move-result-object v0

    return-object v0
.end method

.method public createKeyAgreement(Ljava/lang/String;)Ljavax/crypto/KeyAgreement;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/KeyAgreement;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyAgreement;

    move-result-object v0

    return-object v0
.end method

.method public createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public createKeyGenerator(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createKeyPairGenerator(Ljava/lang/String;)Ljava/security/KeyPairGenerator;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyPairGenerator;

    move-result-object v0

    return-object v0
.end method

.method public createKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public createMac(Ljava/lang/String;)Ljavax/crypto/Mac;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method

.method public createMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public createSecretKeyFactory(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    return-object v0
.end method

.method public createSecureRandom(Ljava/lang/String;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method

.method public createSignature(Ljava/lang/String;)Ljava/security/Signature;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;->provider:Ljava/security/Provider;

    invoke-static {p1, v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

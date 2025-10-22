.class public Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
.super Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;
.source "JcaSignedPublicKeyAndChallenge.java"


# instance fields
.field helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1
    .param p1, "struct"    # Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;
    .param p2, "helper"    # Lorg/bouncycastle/jcajce/util/JcaJceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "struct",
            "helper"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;)V

    .line 38
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 43
    iput-object p2, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 44
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Lorg/bouncycastle/mozilla/SignedPublicKeyAndChallenge;-><init>([B)V

    .line 38
    new-instance v0, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/DefaultJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 49
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;->getPublicKeyAndChallenge()Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/mozilla/PublicKeyAndChallenge;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    .line 67
    .local v0, "subjectPublicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 70
    .local v1, "xspec":Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    .line 72
    .local v2, "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v3, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createKeyFactory(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 74
    .local v3, "factory":Ljava/security/KeyFactory;
    invoke-virtual {v3, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 76
    .end local v0    # "subjectPublicKeyInfo":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .end local v1    # "xspec":Ljava/security/spec/X509EncodedKeySpec;
    .end local v2    # "keyAlg":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v3    # "factory":Ljava/security/KeyFactory;
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "error encoding public key"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setProvider(Ljava/lang/String;)Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 3
    .param p1, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "providerName"
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object v1, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v2, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;

    invoke-direct {v2, p1}, Lorg/bouncycastle/jcajce/util/NamedJcaJceHelper;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.method public setProvider(Ljava/security/Provider;)Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;
    .locals 3
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "provider"
        }
    .end annotation

    .line 58
    new-instance v0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;

    iget-object v1, p0, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;->spkacSeq:Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;

    new-instance v2, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;

    invoke-direct {v2, p1}, Lorg/bouncycastle/jcajce/util/ProviderJcaJceHelper;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mozilla/jcajce/JcaSignedPublicKeyAndChallenge;-><init>(Lorg/bouncycastle/asn1/mozilla/SignedPublicKeyAndChallenge;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-object v0
.end method

.class public Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;
.source "JceKeyAgreeEnvelopedRecipient.java"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0
    .param p1, "recipientKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeRecipient;-><init>(Ljava/security/PrivateKey;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 5
    .param p1, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "senderPublicKey"    # Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .param p4, "userKeyingMaterial"    # Lorg/bouncycastle/asn1/ASN1OctetString;
    .param p5, "encryptedContentKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "contentEncryptionAlgorithm",
            "senderPublicKey",
            "userKeyingMaterial",
            "encryptedContentKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 28
    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Ljava/security/Key;

    move-result-object v0

    .line 30
    move-object v1, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local v0, "secretKey":Ljava/security/Key;
    .local v1, "encryptedContentKey":[B
    .local p2, "keyEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p3, "contentEncryptionAlgorithm":Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .local p4, "senderPublicKey":Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .local p5, "userKeyingMaterial":Lorg/bouncycastle/asn1/ASN1OctetString;
    iget-object v2, p1, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v2, v0, p3}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 32
    .local v2, "dataCipher":Ljavax/crypto/Cipher;
    new-instance v3, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v4, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient$1;

    invoke-direct {v4, p0, p3, v2}, Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKeyAgreeEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v3
.end method

.class public Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;
.source "JceKEKEnvelopedRecipient.java"


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0
    .param p1, "recipientKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientKey"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JceKEKRecipient;-><init>(Ljavax/crypto/SecretKey;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
    .param p1, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "encryptedContentEncryptionKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "contentEncryptionAlgorithm",
            "encryptedContentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object v0

    .line 28
    .local v0, "secretKey":Ljava/security/Key;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 30
    .local v1, "dataCipher":Ljavax/crypto/Cipher;
    new-instance v2, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v3, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;

    invoke-direct {v3, p0, p2, v1}, Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKEKEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v2
.end method

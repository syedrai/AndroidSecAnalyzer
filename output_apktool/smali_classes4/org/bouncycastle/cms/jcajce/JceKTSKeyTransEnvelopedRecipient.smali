.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;
.source "JceKTSKeyTransEnvelopedRecipient.java"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/cms/KeyTransRecipientId;)V
    .locals 1
    .param p1, "recipientKey"    # Ljava/security/PrivateKey;
    .param p2, "recipientId"    # Lorg/bouncycastle/cms/KeyTransRecipientId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recipientKey",
            "recipientId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->getPartyVInfoFromRID(Lorg/bouncycastle/cms/KeyTransRecipientId;)[B

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipient;-><init>(Ljava/security/PrivateKey;[B)V

    .line 29
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

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Ljava/security/Key;

    move-result-object v0

    .line 36
    .local v0, "secretKey":Ljava/security/Key;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;->contentHelper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentCipher(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 38
    .local v1, "dataCipher":Ljavax/crypto/Cipher;
    new-instance v2, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v3, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient$1;

    invoke-direct {v3, p0, p2, v1}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljavax/crypto/Cipher;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v2
.end method

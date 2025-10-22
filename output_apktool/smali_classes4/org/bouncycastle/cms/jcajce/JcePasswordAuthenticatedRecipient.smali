.class public Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;
.super Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;
.source "JcePasswordAuthenticatedRecipient.java"


# direct methods
.method public constructor <init>([C)V
    .locals 0
    .param p1, "password"    # [C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/JcePasswordRecipient;-><init>([C)V

    .line 22
    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
    .param p1, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentMacAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p3, "derivedKey"    # [B
    .param p4, "encryptedContentEncryptionKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0,
            0x0
        }
        names = {
            "keyEncryptionAlgorithm",
            "contentMacAlgorithm",
            "derivedKey",
            "encryptedContentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Ljava/security/Key;

    move-result-object v0

    .line 29
    .local v0, "secretKey":Ljava/security/Key;
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;->helper:Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;

    invoke-virtual {v1, v0, p2}, Lorg/bouncycastle/cms/jcajce/EnvelopedDataHelper;->createContentMac(Ljava/security/Key;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljavax/crypto/Mac;

    move-result-object v1

    .line 31
    .local v1, "dataMac":Ljavax/crypto/Mac;
    new-instance v2, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v3, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;

    invoke-direct {v3, p0, p2, v0, v1}, Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient$1;-><init>(Lorg/bouncycastle/cms/jcajce/JcePasswordAuthenticatedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/MacCalculator;)V

    return-object v2
.end method

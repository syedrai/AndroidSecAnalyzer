.class public Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;
.super Lorg/bouncycastle/cms/bc/BcPasswordRecipient;
.source "BcPasswordEnvelopedRecipient.java"


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

    .line 19
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/bc/BcPasswordRecipient;-><init>([C)V

    .line 20
    return-void
.end method


# virtual methods
.method public getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/cms/RecipientOperator;
    .locals 4
    .param p1, "keyEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .param p2, "contentEncryptionAlgorithm"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
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
            "contentEncryptionAlgorithm",
            "derivedKey",
            "encryptedContentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;->extractSecretKey(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[B)Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    .line 27
    .local v0, "secretKey":Lorg/bouncycastle/crypto/params/KeyParameter;
    const/4 v1, 0x0

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/cms/bc/EnvelopedDataHelper;->createContentCipher(ZLorg/bouncycastle/crypto/CipherParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Ljava/lang/Object;

    move-result-object v1

    .line 29
    .local v1, "dataCipher":Ljava/lang/Object;
    new-instance v2, Lorg/bouncycastle/cms/RecipientOperator;

    new-instance v3, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;

    invoke-direct {v3, p0, p2, v1}, Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient$1;-><init>(Lorg/bouncycastle/cms/bc/BcPasswordEnvelopedRecipient;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/lang/Object;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/cms/RecipientOperator;-><init>(Lorg/bouncycastle/operator/InputDecryptor;)V

    return-object v2
.end method

.class public Lorg/bouncycastle/its/ETSIEncryptedDataBuilder;
.super Ljava/lang/Object;
.source "ETSIEncryptedDataBuilder.java"


# instance fields
.field private final recipientInfoBuilders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/ETSIEncryptedDataBuilder;->recipientInfoBuilders:Ljava/util/List;

    .line 18
    return-void
.end method


# virtual methods
.method public addRecipientInfoBuilder(Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;)V
    .locals 1
    .param p1, "recipientInfoBuilder"    # Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientInfoBuilder"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/its/ETSIEncryptedDataBuilder;->recipientInfoBuilders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method

.method public build(Lorg/bouncycastle/its/operator/ETSIDataEncryptor;[B)Lorg/bouncycastle/its/ETSIEncryptedData;
    .locals 9
    .param p1, "encryptor"    # Lorg/bouncycastle/its/operator/ETSIDataEncryptor;
    .param p2, "content"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "encryptor",
            "content"
        }
    .end annotation

    .line 27
    invoke-interface {p1, p2}, Lorg/bouncycastle/its/operator/ETSIDataEncryptor;->encrypt([B)[B

    move-result-object v0

    .line 28
    .local v0, "opaque":[B
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ETSIDataEncryptor;->getKey()[B

    move-result-object v1

    .line 29
    .local v1, "key":[B
    invoke-interface {p1}, Lorg/bouncycastle/its/operator/ETSIDataEncryptor;->getNonce()[B

    move-result-object v2

    .line 31
    .local v2, "nonce":[B
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo$Builder;

    move-result-object v3

    .line 32
    .local v3, "builder":Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo$Builder;
    iget-object v4, p0, Lorg/bouncycastle/its/ETSIEncryptedDataBuilder;->recipientInfoBuilders:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;

    .line 34
    .local v5, "recipientInfoBuilder":Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;
    const/4 v6, 0x1

    new-array v6, v6, [Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    const/4 v7, 0x0

    invoke-virtual {v5, v1}, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->build([B)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo$Builder;->addRecipients([Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo$Builder;

    .line 35
    .end local v5    # "recipientInfoBuilder":Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;
    goto :goto_0

    .line 39
    :cond_0
    new-instance v4, Lorg/bouncycastle/its/ETSIEncryptedData;

    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;

    move-result-object v5

    .line 40
    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo$Builder;->createSequenceOfRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->setRecipients(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;

    move-result-object v5

    .line 41
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    move-result-object v6

    .line 42
    invoke-virtual {v6, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->setCcmCiphertext([B)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    move-result-object v6

    .line 43
    invoke-virtual {v6, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->setNonce([B)Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;

    move-result-object v6

    .line 44
    invoke-virtual {v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext$Builder;->createAesCcmCiphertext()Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;

    move-result-object v6

    .line 41
    invoke-static {v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;->aes128ccm(Lorg/bouncycastle/oer/its/ieee1609dot2/AesCcmCiphertext;)Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->setCiphertext(Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;

    move-result-object v5

    .line 44
    invoke-virtual {v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->createEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/its/ETSIEncryptedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;)V

    .line 39
    return-object v4
.end method

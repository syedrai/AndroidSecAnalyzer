.class public Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;
.super Ljava/lang/Object;
.source "ETSIRecipientInfoBuilder.java"


# instance fields
.field private final keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

.field private final recipientID:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/ETSIKeyWrapper;[B)V
    .locals 0
    .param p1, "keyWrapper"    # Lorg/bouncycastle/its/ETSIKeyWrapper;
    .param p2, "recipientID"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyWrapper",
            "recipientID"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

    .line 16
    iput-object p2, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->recipientID:[B

    .line 17
    return-void
.end method


# virtual methods
.method public build([B)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;
    .locals 3
    .param p1, "secretKey"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "secretKey"
        }
    .end annotation

    .line 24
    :try_start_0
    invoke-static {}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;->builder()Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->recipientID:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    .line 25
    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->setRecipientId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/ETSIRecipientInfoBuilder;->keyWrapper:Lorg/bouncycastle/its/ETSIKeyWrapper;

    .line 26
    invoke-interface {v1, p1}, Lorg/bouncycastle/its/ETSIKeyWrapper;->wrap([B)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->setEncKey(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;

    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->createPKRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;->certRecipInfo(Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/RecipientInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 29
    :catch_0
    move-exception v0

    .line 31
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

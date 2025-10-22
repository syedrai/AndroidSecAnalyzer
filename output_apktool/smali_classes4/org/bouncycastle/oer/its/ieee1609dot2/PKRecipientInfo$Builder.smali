.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;
.super Ljava/lang/Object;
.source "PKRecipientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

.field private recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPKRecipientInfo()Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;
    .locals 3

    .line 100
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;)V

    return-object v0
.end method

.method public setEncKey(Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;
    .locals 0
    .param p1, "encKey"    # Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encKey"
        }
    .end annotation

    .line 94
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->encKey:Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedDataEncryptionKey;

    .line 95
    return-object p0
.end method

.method public setRecipientId(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;
    .locals 0
    .param p1, "recipientId"    # Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipientId"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PKRecipientInfo$Builder;->recipientId:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    .line 89
    return-object p0
.end method

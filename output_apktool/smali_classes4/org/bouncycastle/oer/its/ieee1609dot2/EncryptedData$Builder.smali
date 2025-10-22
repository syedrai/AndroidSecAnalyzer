.class public Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;
.super Ljava/lang/Object;
.source "EncryptedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

.field private recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createEncryptedData()Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;
    .locals 3

    .line 96
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;

    iget-object v1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    iget-object v2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)V

    return-object v0
.end method

.method public setCiphertext(Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;
    .locals 0
    .param p1, "ciphertext"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ciphertext"
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->ciphertext:Lorg/bouncycastle/oer/its/ieee1609dot2/SymmetricCiphertext;

    .line 91
    return-object p0
.end method

.method public setRecipients(Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;)Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;
    .locals 0
    .param p1, "recipients"    # Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recipients"
        }
    .end annotation

    .line 84
    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/EncryptedData$Builder;->recipients:Lorg/bouncycastle/oer/its/ieee1609dot2/SequenceOfRecipientInfo;

    .line 85
    return-object p0
.end method

.class public interface abstract Lorg/bouncycastle/cms/KEKRecipient;
.super Ljava/lang/Object;
.source "KEKRecipient.java"

# interfaces
.implements Lorg/bouncycastle/cms/Recipient;


# virtual methods
.method public abstract getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncAlg",
            "contentEncryptionAlgorithm",
            "encryptedContentKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

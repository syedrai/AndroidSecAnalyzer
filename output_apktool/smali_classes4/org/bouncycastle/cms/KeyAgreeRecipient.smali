.class public interface abstract Lorg/bouncycastle/cms/KeyAgreeRecipient;
.super Ljava/lang/Object;
.source "KeyAgreeRecipient.java"

# interfaces
.implements Lorg/bouncycastle/cms/Recipient;


# virtual methods
.method public abstract getPrivateKeyAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getRecipientOperator(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/asn1/ASN1OctetString;[B)Lorg/bouncycastle/cms/RecipientOperator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyEncAlg",
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
.end method

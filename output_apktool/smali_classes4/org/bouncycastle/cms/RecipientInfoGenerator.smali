.class public interface abstract Lorg/bouncycastle/cms/RecipientInfoGenerator;
.super Ljava/lang/Object;
.source "RecipientInfoGenerator.java"


# virtual methods
.method public abstract generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentEncryptionKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation
.end method

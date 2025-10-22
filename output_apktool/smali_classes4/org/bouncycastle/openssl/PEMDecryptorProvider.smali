.class public interface abstract Lorg/bouncycastle/openssl/PEMDecryptorProvider;
.super Ljava/lang/Object;
.source "PEMDecryptorProvider.java"


# virtual methods
.method public abstract get(Ljava/lang/String;)Lorg/bouncycastle/openssl/PEMDecryptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dekAlgName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

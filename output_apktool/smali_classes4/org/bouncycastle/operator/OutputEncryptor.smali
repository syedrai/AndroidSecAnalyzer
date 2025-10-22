.class public interface abstract Lorg/bouncycastle/operator/OutputEncryptor;
.super Ljava/lang/Object;
.source "OutputEncryptor.java"


# virtual methods
.method public abstract getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getKey()Lorg/bouncycastle/operator/GenericKey;
.end method

.method public abstract getOutputStream(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encOut"
        }
    .end annotation
.end method

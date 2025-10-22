.class public interface abstract Lorg/bouncycastle/openssl/PEMDecryptor;
.super Ljava/lang/Object;
.source "PEMDecryptor.java"


# virtual methods
.method public abstract decrypt([B[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "iv"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openssl/PEMException;
        }
    .end annotation
.end method

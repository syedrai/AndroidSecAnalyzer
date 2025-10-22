.class public interface abstract Lorg/bouncycastle/its/operator/ETSIDataDecryptor;
.super Ljava/lang/Object;
.source "ETSIDataDecryptor.java"


# virtual methods
.method public abstract decrypt([B[B[B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "wrappedKey",
            "content",
            "nonce"
        }
    .end annotation
.end method

.method public abstract getKey()[B
.end method

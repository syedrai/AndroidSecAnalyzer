.class public interface abstract Lorg/bouncycastle/pqc/crypto/MessageSigner;
.super Ljava/lang/Object;
.source "MessageSigner.java"


# virtual methods
.method public abstract generateSignature([B)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "forSigning",
            "param"
        }
    .end annotation
.end method

.method public abstract verifySignature([B[B)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "signature"
        }
    .end annotation
.end method

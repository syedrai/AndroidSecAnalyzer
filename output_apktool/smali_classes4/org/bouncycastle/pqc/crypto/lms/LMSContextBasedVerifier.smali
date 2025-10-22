.class public interface abstract Lorg/bouncycastle/pqc/crypto/lms/LMSContextBasedVerifier;
.super Ljava/lang/Object;
.source "LMSContextBasedVerifier.java"


# virtual methods
.method public abstract generateLMSContext([B)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation
.end method

.method public abstract verify(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

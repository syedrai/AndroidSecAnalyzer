.class public interface abstract Lorg/bouncycastle/pqc/crypto/lms/LMSContextBasedSigner;
.super Ljava/lang/Object;
.source "LMSContextBasedSigner.java"


# virtual methods
.method public abstract generateLMSContext()Lorg/bouncycastle/pqc/crypto/lms/LMSContext;
.end method

.method public abstract generateSignature(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation
.end method

.method public abstract getUsagesRemaining()J
.end method

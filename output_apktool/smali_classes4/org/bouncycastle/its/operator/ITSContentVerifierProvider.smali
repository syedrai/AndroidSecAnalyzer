.class public interface abstract Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;
.super Ljava/lang/Object;
.source "ITSContentVerifierProvider.java"


# virtual methods
.method public abstract get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureChoice"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public abstract getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
.end method

.method public abstract hasAssociatedCertificate()Z
.end method

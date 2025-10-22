.class public interface abstract Lorg/bouncycastle/cms/SignerInformationVerifierProvider;
.super Ljava/lang/Object;
.source "SignerInformationVerifierProvider.java"


# virtual methods
.method public abstract get(Lorg/bouncycastle/cms/SignerId;)Lorg/bouncycastle/cms/SignerInformationVerifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

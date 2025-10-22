.class public interface abstract Lorg/bouncycastle/cert/path/CertPathValidation;
.super Ljava/lang/Object;
.source "CertPathValidation.java"

# interfaces
.implements Lorg/bouncycastle/util/Memoable;


# virtual methods
.method public abstract validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "certificate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation
.end method

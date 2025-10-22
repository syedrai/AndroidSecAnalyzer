.class public interface abstract Lorg/bouncycastle/crypto/RawAgreement;
.super Ljava/lang/Object;
.source "RawAgreement.java"


# virtual methods
.method public abstract calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "buf",
            "off"
        }
    .end annotation
.end method

.method public abstract getAgreementSize()I
.end method

.method public abstract init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation
.end method

.class public interface abstract Lorg/bouncycastle/pkcs/PKCS12MacCalculatorBuilder;
.super Ljava/lang/Object;
.source "PKCS12MacCalculatorBuilder.java"


# virtual methods
.method public abstract build([C)Lorg/bouncycastle/operator/MacCalculator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "password"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation
.end method

.method public abstract getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

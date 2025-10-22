.class public abstract Lorg/bouncycastle/cms/KEMKeyWrapper;
.super Lorg/bouncycastle/operator/AsymmetricKeyWrapper;
.source "KEMKeyWrapper.java"


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 0
    .param p1, "algorithmId"    # Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithmId"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/operator/AsymmetricKeyWrapper;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 12
    return-void
.end method


# virtual methods
.method public abstract getEncapsulation()[B
.end method

.method public abstract getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

.method public abstract getKekLength()I
.end method

.method public abstract getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
.end method

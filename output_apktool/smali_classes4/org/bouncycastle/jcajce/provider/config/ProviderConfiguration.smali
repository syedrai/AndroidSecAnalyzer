.class public interface abstract Lorg/bouncycastle/jcajce/provider/config/ProviderConfiguration;
.super Ljava/lang/Object;
.source "ProviderConfiguration.java"


# virtual methods
.method public abstract getAcceptableNamedCurves()Ljava/util/Set;
.end method

.method public abstract getAdditionalECParameters()Ljava/util/Map;
.end method

.method public abstract getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation
.end method

.method public abstract getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySize"
        }
    .end annotation
.end method

.method public abstract getEcImplicitlyCa()Lorg/bouncycastle/jce/spec/ECParameterSpec;
.end method

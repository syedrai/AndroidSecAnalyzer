.class public Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi$Base2;
.super Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;
.source "DilithiumKeyPairGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base2"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 131
    sget-object v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;->dilithium2:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/dilithium/DilithiumKeyPairGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumParameters;)V

    .line 132
    return-void
.end method

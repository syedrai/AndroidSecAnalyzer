.class public Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyGeneratorSpi$Kyber512;
.super Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyGeneratorSpi;
.source "KyberKeyGeneratorSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyGeneratorSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kyber512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 137
    sget-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber512:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberKeyGeneratorSpi;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 138
    return-void
.end method

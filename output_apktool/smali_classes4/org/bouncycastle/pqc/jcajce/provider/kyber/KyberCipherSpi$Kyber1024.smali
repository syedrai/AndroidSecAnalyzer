.class public Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi$Kyber1024;
.super Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;
.source "KyberCipherSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Kyber1024"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 361
    sget-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber1024:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/jcajce/provider/kyber/KyberCipherSpi;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    .line 362
    return-void
.end method

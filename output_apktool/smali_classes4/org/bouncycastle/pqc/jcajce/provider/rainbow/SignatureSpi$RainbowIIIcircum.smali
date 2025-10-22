.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$RainbowIIIcircum;
.super Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RainbowIIIcircum"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 196
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 197
    return-void
.end method

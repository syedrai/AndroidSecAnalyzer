.class public Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi$RainbowVcircum;
.super Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RainbowVcircum"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 223
    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;-><init>()V

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/SignatureSpi;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    .line 224
    return-void
.end method

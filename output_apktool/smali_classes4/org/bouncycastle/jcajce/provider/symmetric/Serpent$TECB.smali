.class public Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$TECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "Serpent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Serpent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$TECB$1;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/Serpent$TECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 55
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/provider/symmetric/GOST3412_2015$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "GOST3412_2015.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/GOST3412_2015;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    new-instance v0, Lorg/bouncycastle/crypto/engines/GOST3412_2015Engine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/GOST3412_2015Engine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 26
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/provider/symmetric/Skipjack$Mac;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "Skipjack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Skipjack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mac"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 52
    new-instance v0, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;

    new-instance v1, Lorg/bouncycastle/crypto/engines/SkipjackEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/SkipjackEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/CBCBlockCipherMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 53
    return-void
.end method

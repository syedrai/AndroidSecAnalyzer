.class public Lorg/bouncycastle/jcajce/provider/symmetric/IDEA$CBC;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "IDEA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/IDEA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CBC"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    new-instance v0, Lorg/bouncycastle/crypto/engines/IDEAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/IDEAEngine;-><init>()V

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v0

    const/16 v1, 0x40

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 50
    return-void
.end method

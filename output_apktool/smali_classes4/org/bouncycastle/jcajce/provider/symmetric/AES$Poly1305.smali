.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$Poly1305;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Poly1305"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 225
    new-instance v0, Lorg/bouncycastle/crypto/macs/Poly1305;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/Poly1305;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseMac;-><init>(Lorg/bouncycastle/crypto/Mac;)V

    .line 226
    return-void
.end method

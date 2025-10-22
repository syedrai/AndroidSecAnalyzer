.class public Lorg/bouncycastle/crypto/engines/AESWrapPadEngine;
.super Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;
.source "AESWrapPadEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 9
    return-void
.end method

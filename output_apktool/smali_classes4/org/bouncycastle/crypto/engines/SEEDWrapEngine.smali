.class public Lorg/bouncycastle/crypto/engines/SEEDWrapEngine;
.super Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;
.source "SEEDWrapEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/bouncycastle/crypto/engines/SEEDEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/SEEDEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC3394WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 14
    return-void
.end method

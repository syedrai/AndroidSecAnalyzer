.class public Lorg/bouncycastle/crypto/engines/ARIAWrapPadEngine;
.super Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;
.source "ARIAWrapPadEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    new-instance v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 9
    return-void
.end method

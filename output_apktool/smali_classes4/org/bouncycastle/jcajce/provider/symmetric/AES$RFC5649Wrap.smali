.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$RFC5649Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RFC5649Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 270
    new-instance v0, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/RFC5649WrapEngine;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    .line 271
    return-void
.end method

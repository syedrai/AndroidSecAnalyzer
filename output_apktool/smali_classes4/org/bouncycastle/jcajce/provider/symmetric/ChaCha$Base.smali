.class public Lorg/bouncycastle/jcajce/provider/symmetric/ChaCha$Base;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;
.source "ChaCha.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/ChaCha;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    new-instance v0, Lorg/bouncycastle/crypto/engines/ChaChaEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/ChaChaEngine;-><init>()V

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseStreamCipher;-><init>(Lorg/bouncycastle/crypto/StreamCipher;I)V

    .line 27
    return-void
.end method

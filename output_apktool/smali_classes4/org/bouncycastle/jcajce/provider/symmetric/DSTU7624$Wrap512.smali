.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$Wrap512;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 304
    new-instance v0, Lorg/bouncycastle/crypto/engines/DSTU7624WrapEngine;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/engines/DSTU7624WrapEngine;-><init>(I)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    .line 305
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/provider/symmetric/Camellia$Wrap;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;
.source "Camellia.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/Camellia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Wrap"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    new-instance v0, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/CamelliaWrapEngine;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseWrapCipher;-><init>(Lorg/bouncycastle/crypto/Wrapper;)V

    .line 67
    return-void
.end method

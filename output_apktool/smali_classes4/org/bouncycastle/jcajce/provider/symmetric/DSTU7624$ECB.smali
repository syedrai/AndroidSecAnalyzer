.class public Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "DSTU7624.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$ECB$1;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/DSTU7624$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 51
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$ECB;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ECB"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    new-instance v0, Lorg/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/symmetric/AES$ECB$1;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/jcajce/provider/symmetric/util/BlockCipherProvider;)V

    .line 80
    return-void
.end method

.class public Lorg/bouncycastle/jcajce/provider/symmetric/AES$PBEWithSHA1AESCBC256;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;
.source "AES.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/provider/symmetric/AES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PBEWithSHA1AESCBC256"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 312
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CBCModeCipher;

    move-result-object v2

    const/16 v5, 0x100

    const/16 v6, 0x10

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/jcajce/provider/symmetric/util/BaseBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;IIII)V

    .line 313
    return-void
.end method

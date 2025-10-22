.class public Lorg/bouncycastle/crypto/macs/CMacWithIV;
.super Lorg/bouncycastle/crypto/macs/CMac;
.source "CMacWithIV.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cipher"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 16
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;I)V
    .locals 0
    .param p1, "cipher"    # Lorg/bouncycastle/crypto/BlockCipher;
    .param p2, "macSizeInBits"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cipher",
            "macSizeInBits"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/macs/CMac;-><init>(Lorg/bouncycastle/crypto/BlockCipher;I)V

    .line 21
    return-void
.end method


# virtual methods
.method validate(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 0
    .param p1, "params"    # Lorg/bouncycastle/crypto/CipherParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .line 26
    return-void
.end method

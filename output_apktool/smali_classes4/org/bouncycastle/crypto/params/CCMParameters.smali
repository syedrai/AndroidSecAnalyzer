.class public Lorg/bouncycastle/crypto/params/CCMParameters;
.super Lorg/bouncycastle/crypto/params/AEADParameters;
.source "CCMParameters.java"


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V
    .locals 0
    .param p1, "key"    # Lorg/bouncycastle/crypto/params/KeyParameter;
    .param p2, "macSize"    # I
    .param p3, "nonce"    # [B
    .param p4, "associatedText"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "macSize",
            "nonce",
            "associatedText"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B[B)V

    .line 20
    return-void
.end method

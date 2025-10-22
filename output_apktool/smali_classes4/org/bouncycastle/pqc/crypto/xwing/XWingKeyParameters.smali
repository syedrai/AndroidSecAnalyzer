.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "XWingKeyParameters.java"


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPrivate"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 12
    return-void
.end method

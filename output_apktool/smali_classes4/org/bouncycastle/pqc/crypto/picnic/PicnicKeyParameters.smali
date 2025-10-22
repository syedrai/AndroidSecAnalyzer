.class public Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "PicnicKeyParameters.java"


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivate",
            "parameters"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/picnic/PicnicParameters;

    return-object v0
.end method

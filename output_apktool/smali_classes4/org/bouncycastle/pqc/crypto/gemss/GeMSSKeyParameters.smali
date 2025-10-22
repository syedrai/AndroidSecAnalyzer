.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "GeMSSKeyParameters.java"


# instance fields
.field final parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "parameters"    # Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
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

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    .line 14
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object v0
.end method

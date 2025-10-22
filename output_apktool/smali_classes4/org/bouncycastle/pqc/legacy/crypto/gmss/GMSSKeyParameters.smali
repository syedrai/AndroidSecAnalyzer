.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "GMSSKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isPrivate",
            "params"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSKeyParameters;->params:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSParameters;

    return-object v0
.end method

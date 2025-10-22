.class public Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "SABERKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/saber/SABERParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
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

    .line 13
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    return-object v0
.end method

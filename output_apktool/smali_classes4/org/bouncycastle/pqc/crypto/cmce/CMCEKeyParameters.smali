.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "CMCEKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
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
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    return-object v0
.end method

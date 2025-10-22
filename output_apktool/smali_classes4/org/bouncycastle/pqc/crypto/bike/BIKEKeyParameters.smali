.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "BIKEKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/bike/BIKEParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
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
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    return-object v0
.end method

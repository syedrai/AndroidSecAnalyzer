.class public Lorg/bouncycastle/crypto/params/ECKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/ECDomainParameters;
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

    .line 12
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 14
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    .line 15
    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    .line 19
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method

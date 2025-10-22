.class public Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ElGamalKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/ElGamalParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/ElGamalParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/ElGamalParameters;
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

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 31
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 33
    return v1

    .line 36
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;

    .line 38
    .local v0, "dhKey":Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-nez v2, :cond_2

    .line 40
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 44
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/ElGamalParameters;
    .locals 1

    .line 20
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ElGamalKeyParameters;->params:Lorg/bouncycastle/crypto/params/ElGamalParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ElGamalParameters;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

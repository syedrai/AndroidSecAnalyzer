.class public Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "CramerShoupKeyParameters.java"


# instance fields
.field private params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/CramerShoupParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
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

    .line 11
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 13
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    .line 14
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

    .line 23
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 25
    return v1

    .line 28
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;

    .line 30
    .local v0, "csKey":Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-nez v2, :cond_2

    .line 32
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 36
    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getParameters()Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 44
    .local v0, "code":I
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    if-eqz v1, :cond_0

    .line 46
    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->params:Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 49
    :cond_0
    return v0
.end method

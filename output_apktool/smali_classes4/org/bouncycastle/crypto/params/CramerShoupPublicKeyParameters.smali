.class public Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;
.source "CramerShoupPublicKeyParameters.java"


# instance fields
.field private c:Ljava/math/BigInteger;

.field private d:Ljava/math/BigInteger;

.field private h:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/CramerShoupParameters;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1
    .param p1, "params"    # Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    .param p2, "c"    # Ljava/math/BigInteger;
    .param p3, "d"    # Ljava/math/BigInteger;
    .param p4, "h"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "params",
            "c",
            "d",
            "h"
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;-><init>(ZLorg/bouncycastle/crypto/params/CramerShoupParameters;)V

    .line 15
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    .line 16
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    .line 17
    iput-object p4, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 42
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 44
    return v1

    .line 47
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;

    .line 49
    .local v0, "other":Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getC()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->getH()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getC()Ljava/math/BigInteger;
    .locals 1

    .line 22
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getH()Ljava/math/BigInteger;
    .locals 1

    .line 32
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->c:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/CramerShoupPublicKeyParameters;->h:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-super {p0}, Lorg/bouncycastle/crypto/params/CramerShoupKeyParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

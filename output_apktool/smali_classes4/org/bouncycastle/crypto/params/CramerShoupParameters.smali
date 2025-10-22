.class public Lorg/bouncycastle/crypto/params/CramerShoupParameters;
.super Ljava/lang/Object;
.source "CramerShoupParameters.java"

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private H:Lorg/bouncycastle/crypto/Digest;

.field private g1:Ljava/math/BigInteger;

.field private g2:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/crypto/Digest;)V
    .locals 1
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "g1"    # Ljava/math/BigInteger;
    .param p3, "g2"    # Ljava/math/BigInteger;
    .param p4, "H"    # Lorg/bouncycastle/crypto/Digest;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "p",
            "g1",
            "g2",
            "H"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->p:Ljava/math/BigInteger;

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g1:Ljava/math/BigInteger;

    .line 22
    iput-object p3, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g2:Ljava/math/BigInteger;

    .line 23
    move-object v0, p4

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->H:Lorg/bouncycastle/crypto/Digest;

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->H:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    .line 25
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

    .line 29
    instance-of v0, p1, Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 31
    return v1

    .line 34
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;

    .line 36
    .local v0, "pm":Lorg/bouncycastle/crypto/params/CramerShoupParameters;
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g1:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g2:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getG1()Ljava/math/BigInteger;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getG2()Ljava/math/BigInteger;
    .locals 1

    .line 51
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getH()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    .line 61
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->H:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->p:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/CramerShoupParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

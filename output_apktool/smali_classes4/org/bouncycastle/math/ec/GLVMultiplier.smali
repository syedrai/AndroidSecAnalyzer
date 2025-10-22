.class public Lorg/bouncycastle/math/ec/GLVMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final curve:Lorg/bouncycastle/math/ec/ECCurve;

.field protected final glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .locals 2
    .param p1, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "glvEndomorphism"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 15
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    .line 21
    iput-object p2, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 22
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "k"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->curve:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 32
    .local v0, "n":Ljava/math/BigInteger;
    iget-object v1, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 33
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .local v2, "a":Ljava/math/BigInteger;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 35
    .local v3, "b":Ljava/math/BigInteger;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v4}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    iget-object v4, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v2, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 40
    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 42
    .local v4, "q":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-static {p1, v2, v4, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 28
    .end local v0    # "n":Ljava/math/BigInteger;
    .end local v1    # "ab":[Ljava/math/BigInteger;
    .end local v2    # "a":Ljava/math/BigInteger;
    .end local v3    # "b":Ljava/math/BigInteger;
    .end local v4    # "q":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

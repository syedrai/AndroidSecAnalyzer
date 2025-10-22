.class public Lorg/bouncycastle/math/ec/endo/GLVTypeAEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeAEndomorphism.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final parameters:Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;

.field protected final pointMap:Lorg/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;)V
    .locals 2
    .param p1, "curve"    # Lorg/bouncycastle/math/ec/ECCurve;
    .param p2, "parameters"    # Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "curve",
            "parameters"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAEndomorphism;->parameters:Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;

    .line 23
    new-instance v0, Lorg/bouncycastle/math/ec/ScaleYNegateXPointMap;

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->getI()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/math/ec/ScaleYNegateXPointMap;-><init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAEndomorphism;->pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    .line 24
    return-void
.end method


# virtual methods
.method public decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .locals 1
    .param p1, "k"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "k"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAEndomorphism;->parameters:Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeAParameters;->getSplitParams()Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->decomposeScalar(Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/GLVTypeAEndomorphism;->pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public hasEfficientPointMap()Z
    .locals 1

    .line 38
    const/4 v0, 0x1

    return v0
.end method

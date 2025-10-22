.class Lorg/bouncycastle/math/ec/endo/EndoUtil$1;
.super Ljava/lang/Object;
.source "EndoUtil.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$endomorphism",
            "val$p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Z
    .locals 1
    .param p1, "existingEndo"    # Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;
    .param p2, "endomorphism"    # Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "existingEndo",
            "endomorphism"
        }
    .end annotation

    .line 52
    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 4
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 35
    instance-of v0, p1, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    .local v0, "existingEndo":Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->checkExisting(Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    return-object v0

    .line 42
    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-interface {v1}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-interface {v1, v2}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 44
    .local v1, "mappedPoint":Lorg/bouncycastle/math/ec/ECPoint;
    new-instance v2, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;

    invoke-direct {v2}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;-><init>()V

    .line 45
    .local v2, "result":Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;
    iget-object v3, p0, Lorg/bouncycastle/math/ec/endo/EndoUtil$1;->val$endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)V

    .line 46
    invoke-virtual {v2, v1}, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->setMappedPoint(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 47
    return-object v2
.end method

.class Lorg/bouncycastle/math/ec/WNafUtil$3;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

.field final synthetic val$includeNegated:Z

.field final synthetic val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/WNafPreCompInfo;ZLorg/bouncycastle/math/ec/ECPointMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$fromWNaf",
            "val$includeNegated",
            "val$pointMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 1
    .param p1, "existingWNaf"    # Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "width"    # I
    .param p3, "reqPreCompLen"    # I
    .param p4, "includeNegated"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "existingWNaf",
            "width",
            "reqPreCompLen",
            "includeNegated"
        }
    .end annotation

    .line 648
    if-eqz p1, :cond_1

    .line 649
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_1

    .line 650
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 651
    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 648
    :goto_0
    return v0
.end method

.method private checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z
    .locals 1
    .param p1, "table"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .param p2, "reqLen"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "table",
            "reqLen"
        }
    .end annotation

    .line 656
    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 10
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 598
    instance-of v0, p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 600
    .local v0, "existingWNaf":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v1

    .line 601
    .local v1, "width":I
    iget-object v2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    array-length v2, v2

    .line 603
    .local v2, "reqPreCompLen":I
    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    .line 606
    return-object v0

    .line 613
    :cond_1
    new-instance v3, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v3}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 615
    .local v3, "result":Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    iget-object v4, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPromotionCountdown()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 617
    iget-object v4, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 618
    .local v4, "twiceFrom":Lorg/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_2

    .line 620
    iget-object v5, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v5, v4}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 621
    .local v5, "twice":Lorg/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 624
    .end local v5    # "twice":Lorg/bouncycastle/math/ec/ECPoint;
    :cond_2
    iget-object v5, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 625
    .local v5, "preCompFrom":[Lorg/bouncycastle/math/ec/ECPoint;
    array-length v6, v5

    new-array v6, v6, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 626
    .local v6, "preComp":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v8, v5

    if-ge v7, v8, :cond_3

    .line 628
    iget-object v8, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    aget-object v9, v5, v7

    invoke-interface {v8, v9}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    aput-object v8, v6, v7

    .line 626
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 630
    .end local v7    # "i":I
    :cond_3
    invoke-virtual {v3, v6}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 631
    invoke-virtual {v3, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 633
    iget-boolean v7, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    if-eqz v7, :cond_5

    .line 635
    array-length v7, v6

    new-array v7, v7, [Lorg/bouncycastle/math/ec/ECPoint;

    .line 636
    .local v7, "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_4

    .line 638
    aget-object v9, v6, v8

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v7, v8

    .line 636
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 640
    .end local v8    # "i":I
    :cond_4
    invoke-virtual {v3, v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    .line 643
    .end local v7    # "preCompNeg":[Lorg/bouncycastle/math/ec/ECPoint;
    :cond_5
    return-object v3
.end method

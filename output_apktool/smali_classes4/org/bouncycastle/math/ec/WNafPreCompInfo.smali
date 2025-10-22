.class public Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.super Ljava/lang/Object;
.source "WNafPreCompInfo.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected confWidth:I

.field protected preComp:[Lorg/bouncycastle/math/ec/ECPoint;

.field protected preCompNeg:[Lorg/bouncycastle/math/ec/ECPoint;

.field volatile promotionCountdown:I

.field protected twice:Lorg/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 11
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    .line 17
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    .line 23
    iput-object v1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lorg/bouncycastle/math/ec/ECPoint;

    .line 29
    iput-object v1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lorg/bouncycastle/math/ec/ECPoint;

    .line 31
    iput v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method decrementPromotionCountdown()I
    .locals 1

    .line 35
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 36
    .local v0, "t":I
    if-lez v0, :cond_0

    .line 38
    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 40
    :cond_0
    return v0
.end method

.method public getConfWidth()I
    .locals 1

    .line 60
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    return v0
.end method

.method public getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 80
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method getPromotionCountdown()I
    .locals 1

    .line 45
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    return v0
.end method

.method public getTwice()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 90
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    return v0
.end method

.method public isPromoted()Z
    .locals 1

    .line 55
    iget v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setConfWidth(I)V
    .locals 0
    .param p1, "confWidth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confWidth"
        }
    .end annotation

    .line 65
    iput p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->confWidth:I

    .line 66
    return-void
.end method

.method public setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "preComp"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preComp"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preComp:[Lorg/bouncycastle/math/ec/ECPoint;

    .line 76
    return-void
.end method

.method public setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "preCompNeg"    # [Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preCompNeg"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->preCompNeg:[Lorg/bouncycastle/math/ec/ECPoint;

    .line 86
    return-void
.end method

.method setPromotionCountdown(I)V
    .locals 0
    .param p1, "promotionCountdown"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "promotionCountdown"
        }
    .end annotation

    .line 50
    iput p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->promotionCountdown:I

    .line 51
    return-void
.end method

.method public setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "twice"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "twice"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->twice:Lorg/bouncycastle/math/ec/ECPoint;

    .line 96
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 105
    iput p1, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->width:I

    .line 106
    return-void
.end method

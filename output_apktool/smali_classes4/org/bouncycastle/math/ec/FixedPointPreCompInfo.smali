.class public Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
.super Ljava/lang/Object;
.source "FixedPointPreCompInfo.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected lookupTable:Lorg/bouncycastle/math/ec/ECLookupTable;

.field protected offset:Lorg/bouncycastle/math/ec/ECPoint;

.field protected width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lorg/bouncycastle/math/ec/ECPoint;

    .line 13
    iput-object v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lorg/bouncycastle/math/ec/ECLookupTable;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    return-void
.end method


# virtual methods
.method public getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lorg/bouncycastle/math/ec/ECLookupTable;

    return-object v0
.end method

.method public getOffset()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 44
    iget v0, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    return v0
.end method

.method public setLookupTable(Lorg/bouncycastle/math/ec/ECLookupTable;)V
    .locals 0
    .param p1, "lookupTable"    # Lorg/bouncycastle/math/ec/ECLookupTable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lookupTable"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->lookupTable:Lorg/bouncycastle/math/ec/ECLookupTable;

    .line 30
    return-void
.end method

.method public setOffset(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "offset"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offset"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->offset:Lorg/bouncycastle/math/ec/ECPoint;

    .line 40
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

    .line 49
    iput p1, p0, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->width:I

    .line 50
    return-void
.end method

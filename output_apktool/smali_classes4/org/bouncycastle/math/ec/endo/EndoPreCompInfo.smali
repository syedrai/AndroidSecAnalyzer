.class public Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;
.super Ljava/lang/Object;
.source "EndoPreCompInfo.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompInfo;


# instance fields
.field protected endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .locals 1

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object v0
.end method

.method public getMappedPoint()Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    .line 24
    iget-object v0, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)V
    .locals 0
    .param p1, "endomorphism"    # Lorg/bouncycastle/math/ec/endo/ECEndomorphism;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "endomorphism"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 20
    return-void
.end method

.method public setMappedPoint(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .param p1, "mappedPoint"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mappedPoint"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/math/ec/endo/EndoPreCompInfo;->mappedPoint:Lorg/bouncycastle/math/ec/ECPoint;

    .line 30
    return-void
.end method

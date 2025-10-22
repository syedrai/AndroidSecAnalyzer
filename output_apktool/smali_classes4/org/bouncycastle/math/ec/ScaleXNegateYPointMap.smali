.class public Lorg/bouncycastle/math/ec/ScaleXNegateYPointMap;
.super Ljava/lang/Object;
.source "ScaleXNegateYPointMap.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECPointMap;


# instance fields
.field protected final scale:Lorg/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "scale"    # Lorg/bouncycastle/math/ec/ECFieldElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lorg/bouncycastle/math/ec/ECFieldElement;

    .line 10
    return-void
.end method


# virtual methods
.method public map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "p"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ScaleXNegateYPointMap;->scale:Lorg/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->scaleXNegateY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

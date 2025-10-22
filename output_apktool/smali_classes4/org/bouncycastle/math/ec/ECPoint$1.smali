.class Lorg/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;
.source "ECPoint.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECPoint;

.field final synthetic val$checkOrder:Z

.field final synthetic val$decompressed:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/bouncycastle/math/ec/ECPoint;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$decompressed",
            "val$checkOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 308
    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 2
    .param p1, "existing"    # Lorg/bouncycastle/math/ec/PreCompInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "existing"
        }
    .end annotation

    .line 311
    instance-of v0, p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 312
    .local v0, "info":Lorg/bouncycastle/math/ec/ValidityPrecompInfo;
    :goto_0
    if-nez v0, :cond_1

    .line 314
    new-instance v1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {v1}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    move-object v0, v1

    .line 317
    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    return-object v0

    .line 321
    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 323
    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_3

    .line 325
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 326
    return-object v0

    .line 328
    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    .line 330
    :cond_4
    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v1

    if-nez v1, :cond_6

    .line 332
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    if-nez v1, :cond_5

    .line 334
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    .line 335
    return-object v0

    .line 337
    :cond_5
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    .line 339
    :cond_6
    return-object v0
.end method

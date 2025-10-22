.class Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "MaterialShapeDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/shape/MaterialShapeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpringAnimatedCornerSizeProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/google/android/material/shape/MaterialShapeDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final index:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cornerSizeAtIndex"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    .line 1688
    iput p1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    .line 1689
    return-void
.end method


# virtual methods
.method public getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F
    .locals 2
    .param p1, "drawable"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1693
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetspringAnimatedCornerSizes(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1694
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetspringAnimatedCornerSizes(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aget v0, v0, v1

    goto :goto_0

    .line 1695
    :cond_0
    const/4 v0, 0x0

    .line 1693
    :goto_0
    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "drawable"
        }
    .end annotation

    .line 1682
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->getValue(Lcom/google/android/material/shape/MaterialShapeDrawable;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V
    .locals 2
    .param p1, "drawable"    # Lcom/google/android/material/shape/MaterialShapeDrawable;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "drawable",
            "value"
        }
    .end annotation

    .line 1700
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetspringAnimatedCornerSizes(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetspringAnimatedCornerSizes(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aget v0, v0, v1

    cmpl-float v0, v0, p2

    if-eqz v0, :cond_1

    .line 1702
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetspringAnimatedCornerSizes(Lcom/google/android/material/shape/MaterialShapeDrawable;)[F

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->index:I

    aput p2, v0, v1

    .line 1703
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetonCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1704
    invoke-static {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->-$$Nest$fgetonCornerSizeChangeListener(Lcom/google/android/material/shape/MaterialShapeDrawable;)Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->getCornerSizeDiffX()F

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/material/shape/MaterialShapeDrawable$OnCornerSizeChangeListener;->onCornerSizeChange(F)V

    .line 1706
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    .line 1708
    :cond_1
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "drawable",
            "value"
        }
    .end annotation

    .line 1682
    check-cast p1, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/material/shape/MaterialShapeDrawable$SpringAnimatedCornerSizeProperty;->setValue(Lcom/google/android/material/shape/MaterialShapeDrawable;F)V

    return-void
.end method

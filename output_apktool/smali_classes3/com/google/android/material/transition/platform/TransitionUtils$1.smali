.class Lcom/google/android/material/transition/platform/TransitionUtils$1;
.super Ljava/lang/Object;
.source "TransitionUtils.java"

# interfaces
.implements Lcom/google/android/material/transition/platform/TransitionUtils$CornerSizeBinaryOperator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(Lcom/google/android/material/shape/ShapeAppearanceModel;Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)Lcom/google/android/material/shape/ShapeAppearanceModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$endBounds:Landroid/graphics/RectF;

.field final synthetic val$endFraction:F

.field final synthetic val$fraction:F

.field final synthetic val$startBounds:Landroid/graphics/RectF;

.field final synthetic val$startFraction:F


# direct methods
.method constructor <init>(Landroid/graphics/RectF;Landroid/graphics/RectF;FFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$startBounds",
            "val$endBounds",
            "val$startFraction",
            "val$endFraction",
            "val$fraction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startBounds:Landroid/graphics/RectF;

    iput-object p2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endBounds:Landroid/graphics/RectF;

    iput p3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startFraction:F

    iput p4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endFraction:F

    iput p5, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$fraction:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/google/android/material/shape/CornerSize;Lcom/google/android/material/shape/CornerSize;)Lcom/google/android/material/shape/CornerSize;
    .locals 5
    .param p1, "cornerSize1"    # Lcom/google/android/material/shape/CornerSize;
    .param p2, "cornerSize2"    # Lcom/google/android/material/shape/CornerSize;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cornerSize1",
            "cornerSize2"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startBounds:Landroid/graphics/RectF;

    invoke-interface {p1, v0}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v0

    .line 251
    .local v0, "startCornerSize":F
    iget-object v1, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endBounds:Landroid/graphics/RectF;

    invoke-interface {p2, v1}, Lcom/google/android/material/shape/CornerSize;->getCornerSize(Landroid/graphics/RectF;)F

    move-result v1

    .line 252
    .local v1, "endCornerSize":F
    iget v2, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$startFraction:F

    iget v3, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$endFraction:F

    iget v4, p0, Lcom/google/android/material/transition/platform/TransitionUtils$1;->val$fraction:F

    .line 253
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/material/transition/platform/TransitionUtils;->lerp(FFFFF)F

    move-result v2

    .line 255
    .local v2, "cornerSize":F
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v2}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    return-object v3
.end method

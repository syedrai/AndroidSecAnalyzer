.class Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MaterialMainContainerBackHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->createResetScaleAndTranslationAnimator(Landroid/view/View;)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$collapsedView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/material/motion/MaterialMainContainerBackHelper;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/motion/MaterialMainContainerBackHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$collapsedView"
        }
    .end annotation

    .line 190
    iput-object p2, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;->val$collapsedView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;->val$collapsedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$1;->val$collapsedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_0
    return-void
.end method

.class Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DrawableWithAnimatedVisibilityChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->setShowAnimator(Landroid/animation/ValueAnimator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 374
    iput-object p1, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;->this$0:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 377
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange$1;->this$0:Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;

    invoke-static {v0}, Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;->-$$Nest$mdispatchAnimationStart(Lcom/google/android/material/progressindicator/DrawableWithAnimatedVisibilityChange;)V

    .line 380
    return-void
.end method

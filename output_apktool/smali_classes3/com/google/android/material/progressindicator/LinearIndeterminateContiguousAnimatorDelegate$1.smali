.class Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LinearIndeterminateContiguousAnimatorDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->maybeInitializeAnimators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;


# direct methods
.method constructor <init>(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 83
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {v1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->-$$Nest$fgetnewIndicatorColorIndex(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iget-object v3, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {v3}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->-$$Nest$fgetbaseSpec(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v3, v3

    rem-int/2addr v1, v3

    invoke-static {v0, v1}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->-$$Nest$fputnewIndicatorColorIndex(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;I)V

    .line 86
    iget-object v0, p0, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate$1;->this$0:Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;

    invoke-static {v0, v2}, Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;->-$$Nest$fputdirtyColors(Lcom/google/android/material/progressindicator/LinearIndeterminateContiguousAnimatorDelegate;Z)V

    .line 87
    return-void
.end method

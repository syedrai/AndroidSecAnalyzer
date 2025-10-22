.class public final synthetic Lcom/google/android/material/progressindicator/DeterminateDrawable$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/material/progressindicator/DeterminateDrawable;

.field public synthetic f$1:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iput-object p2, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/progressindicator/DeterminateDrawable;

    iget-object v1, p0, Lcom/google/android/material/progressindicator/DeterminateDrawable$$ExternalSyntheticLambda1;->f$1:Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    invoke-static {v0, v1, p1}, Lcom/google/android/material/progressindicator/DeterminateDrawable;->$r8$lambda$1YuXVMh5PXdDpApuNeAcQhbV4dg(Lcom/google/android/material/progressindicator/DeterminateDrawable;Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;Landroid/animation/ValueAnimator;)V

    return-void
.end method

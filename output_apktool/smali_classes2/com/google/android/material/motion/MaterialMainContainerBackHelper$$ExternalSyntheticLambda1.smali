.class public final synthetic Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public synthetic f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/motion/MaterialMainContainerBackHelper$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/material/internal/ClippableRoundedCornerLayout;

    invoke-static {v0, p1}, Lcom/google/android/material/motion/MaterialMainContainerBackHelper;->lambda$createCornerAnimator$1(Lcom/google/android/material/internal/ClippableRoundedCornerLayout;Landroid/animation/ValueAnimator;)V

    return-void
.end method

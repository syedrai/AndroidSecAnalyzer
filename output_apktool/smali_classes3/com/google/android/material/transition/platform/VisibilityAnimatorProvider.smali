.class public interface abstract Lcom/google/android/material/transition/platform/VisibilityAnimatorProvider;
.super Ljava/lang/Object;
.source "VisibilityAnimatorProvider.java"


# virtual methods
.method public abstract createAppear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneRoot",
            "view"
        }
    .end annotation
.end method

.method public abstract createDisappear(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sceneRoot",
            "view"
        }
    .end annotation
.end method

.class public abstract Lcom/google/android/material/motion/MaterialBackAnimationHelper;
.super Ljava/lang/Object;
.source "MaterialBackAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final CANCEL_DURATION_DEFAULT:I = 0x64

.field private static final HIDE_DURATION_MAX_DEFAULT:I = 0x12c

.field private static final HIDE_DURATION_MIN_DEFAULT:I = 0x96

.field private static final TAG:Ljava/lang/String; = "MaterialBackHelper"


# instance fields
.field private backEvent:Landroidx/activity/BackEventCompat;

.field protected final cancelDuration:I

.field protected final hideDurationMax:I

.field protected final hideDurationMin:I

.field private final progressInterpolator:Landroid/animation/TimeInterpolator;

.field protected final view:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 53
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    .local p1, "view":Landroid/view/View;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/animation/TimeInterpolator;

    .line 54
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->view:Landroid/view/View;

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    .local v0, "context":Landroid/content/Context;
    sget v1, Lcom/google/android/material/motion/R$attr;->motionDurationMedium2:I

    .line 58
    const/16 v2, 0x12c

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->hideDurationMax:I

    .line 60
    sget v1, Lcom/google/android/material/motion/R$attr;->motionDurationShort3:I

    .line 61
    const/16 v2, 0x96

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->hideDurationMin:I

    .line 63
    sget v1, Lcom/google/android/material/motion/R$attr;->motionDurationShort2:I

    .line 64
    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/google/android/material/motion/MotionUtils;->resolveThemeDuration(Landroid/content/Context;II)I

    move-result v1

    iput v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->cancelDuration:I

    .line 66
    return-void
.end method


# virtual methods
.method public interpolateProgress(F)F
    .locals 1
    .param p1, "progress"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 69
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->progressInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method protected onCancelBackProgress()Landroidx/activity/BackEventCompat;
    .locals 2

    .line 95
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    if-nez v0, :cond_0

    .line 96
    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() and updateBackProgress() before cancelBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 101
    .local v0, "finalBackEvent":Landroidx/activity/BackEventCompat;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 102
    return-object v0
.end method

.method public onHandleBackInvoked()Landroidx/activity/BackEventCompat;
    .locals 2

    .line 88
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 89
    .local v0, "finalBackEvent":Landroidx/activity/BackEventCompat;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 90
    return-object v0
.end method

.method protected onStartBackProgress(Landroidx/activity/BackEventCompat;)V
    .locals 0
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backEvent"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 74
    return-void
.end method

.method protected onUpdateBackProgress(Landroidx/activity/BackEventCompat;)Landroidx/activity/BackEventCompat;
    .locals 2
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "backEvent"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/google/android/material/motion/MaterialBackAnimationHelper;, "Lcom/google/android/material/motion/MaterialBackAnimationHelper<TV;>;"
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    if-nez v0, :cond_0

    .line 79
    const-string v0, "MaterialBackHelper"

    const-string v1, "Must call startBackProgress() before updateBackProgress()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 82
    .local v0, "finalBackEvent":Landroidx/activity/BackEventCompat;
    iput-object p1, p0, Lcom/google/android/material/motion/MaterialBackAnimationHelper;->backEvent:Landroidx/activity/BackEventCompat;

    .line 83
    return-object v0
.end method

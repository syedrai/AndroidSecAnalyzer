.class Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat$Api23Impl;
.super Ljava/lang/Object;
.source "AnimatedVectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/graphics/drawable/AnimatedVectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 942
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    return-void
.end method

.method static clearAnimationCallbacks(Ljava/lang/Object;)V
    .locals 1
    .param p0, "animatedVectorDrawable"    # Ljava/lang/Object;

    .line 953
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->clearAnimationCallbacks()V

    .line 954
    return-void
.end method

.method static registerAnimationCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "animatedVectorDrawable"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/Object;

    .line 957
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    .line 959
    return-void
.end method

.method static unregisterAnimationCallback(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "animatedVectorDrawable"    # Ljava/lang/Object;
    .param p1, "callback"    # Ljava/lang/Object;

    .line 948
    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    move-object v1, p1

    check-cast v1, Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    move-result v0

    return v0
.end method

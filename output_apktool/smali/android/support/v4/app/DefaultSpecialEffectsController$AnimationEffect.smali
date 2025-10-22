.class final Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;
.super Landroid/support/v4/app/SpecialEffectsController$Effect;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationEffect"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\u000c\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;",
        "Landroid/support/v4/app/SpecialEffectsController$Effect;",
        "animationInfo",
        "Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;",
        "<init>",
        "(Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;)V",
        "getAnimationInfo",
        "()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;",
        "onCommit",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "onCancel",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 1
    .param p1, "animationInfo"    # Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    const-string v0, "animationInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController$Effect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    return-void
.end method


# virtual methods
.method public final getAnimationInfo()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;
    .locals 1

    .line 535
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    return-object v0
.end method

.method public onCancel(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    .line 602
    .local v0, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 603
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v2, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 605
    .local v2, "viewToAnimate":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 606
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 607
    iget-object v3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v3}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 608
    const/4 v3, 0x2

    invoke-static {v3}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 610
    nop

    .line 611
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animation from operation "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " has been cancelled."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 609
    const-string v4, "FragmentManager"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_0
    return-void
.end method

.method public onCommit(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 540
    return-void

    .line 542
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 543
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v1

    .line 544
    .local v1, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 547
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v3, v2, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 548
    .local v3, "viewToAnimate":Landroid/view/View;
    iget-object v4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v4

    const-string v5, "Required value was null."

    if-eqz v4, :cond_4

    iget-object v4, v4, Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_3

    .line 549
    .local v4, "anim":Landroid/view/animation/Animation;
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v5

    .line 550
    .local v5, "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    sget-object v6, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-eq v5, v6, :cond_1

    .line 553
    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 557
    iget-object v6, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->animationInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v6}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v6

    move-object v7, p0

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v6, v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 561
    new-instance v6, Landroid/support/v4/app/FragmentAnim$EndViewTransitionAnimation;

    invoke-direct {v6, v4, p1, v3}, Landroid/support/v4/app/FragmentAnim$EndViewTransitionAnimation;-><init>(Landroid/view/animation/Animation;Landroid/view/ViewGroup;Landroid/view/View;)V

    check-cast v6, Landroid/view/animation/Animation;

    .line 560
    nop

    .line 562
    .local v6, "animation":Landroid/view/animation/Animation;
    nop

    .line 563
    new-instance v7, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;

    invoke-direct {v7, v1, p1, v3, p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V

    check-cast v7, Landroid/view/animation/Animation$AnimationListener;

    .line 562
    invoke-virtual {v6, v7}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 593
    invoke-virtual {v3, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 594
    const/4 v7, 0x2

    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 595
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Animation from operation "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has started."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "FragmentManager"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v6    # "animation":Landroid/view/animation/Animation;
    :cond_2
    :goto_0
    return-void

    .line 548
    .end local v4    # "anim":Landroid/view/animation/Animation;
    .end local v5    # "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    :cond_3
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

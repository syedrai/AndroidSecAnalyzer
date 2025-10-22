.class final Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;
.super Landroid/support/v4/app/SpecialEffectsController$Effect;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimatorEffect"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0018\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0018\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u00020\t8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\nR\u001c\u0010\u000b\u001a\u0004\u0018\u00010\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u001a"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;",
        "Landroid/support/v4/app/SpecialEffectsController$Effect;",
        "animatorInfo",
        "Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;",
        "<init>",
        "(Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;)V",
        "getAnimatorInfo",
        "()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;",
        "isSeekingSupported",
        "",
        "()Z",
        "animator",
        "Landroid/animation/AnimatorSet;",
        "getAnimator",
        "()Landroid/animation/AnimatorSet;",
        "setAnimator",
        "(Landroid/animation/AnimatorSet;)V",
        "onStart",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "onProgress",
        "backEvent",
        "Landroidx/activity/BackEventCompat;",
        "onCommit",
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
.field private animator:Landroid/animation/AnimatorSet;

.field private final animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;)V
    .locals 1
    .param p1, "animatorInfo"    # Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    const-string v0, "animatorInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController$Effect;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    return-void
.end method


# virtual methods
.method public final getAnimator()Landroid/animation/AnimatorSet;
    .locals 1

    .line 621
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method public final getAnimatorInfo()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;
    .locals 1

    .line 617
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    return-object v0
.end method

.method public isSeekingSupported()Z
    .locals 1

    .line 619
    const/4 v0, 0x1

    return v0
.end method

.method public onCancel(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 711
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    .line 712
    .local v0, "animator":Landroid/animation/AnimatorSet;
    if-nez v0, :cond_0

    .line 714
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v1

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    goto :goto_2

    .line 716
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v1

    .line 717
    .local v1, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isSeeking()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 718
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_2

    .line 719
    sget-object v2, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;->INSTANCE:Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;

    invoke-virtual {v2, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;->reverse(Landroid/animation/AnimatorSet;)V

    goto :goto_0

    .line 722
    :cond_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 724
    :cond_2
    :goto_0
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 726
    nop

    .line 727
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animator from operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has been canceled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 728
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isSeeking()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, " with seeking."

    goto :goto_1

    :cond_3
    const-string v3, "."

    .line 727
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 725
    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    .end local v1    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    :cond_4
    :goto_2
    return-void
.end method

.method public onCommit(Landroid/view/ViewGroup;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    .line 698
    .local v0, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    .line 699
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    if-nez v1, :cond_0

    .line 701
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 702
    return-void

    .line 704
    :cond_0
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 705
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 706
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Animator from operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has started."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FragmentManager"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_1
    return-void
.end method

.method public onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V
    .locals 11
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;
    .param p2, "container"    # Landroid/view/ViewGroup;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    .line 661
    .local v0, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    .line 662
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    if-nez v1, :cond_0

    .line 664
    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v2}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v2, v3}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 665
    return-void

    .line 668
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x22

    if-lt v2, v3, :cond_5

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    if-eqz v2, :cond_5

    .line 669
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v3

    const-string v4, "FragmentManager"

    if-eqz v3, :cond_1

    .line 671
    nop

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding BackProgressCallbacks for Animators to operation "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 670
    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :cond_1
    sget-object v3, Landroid/support/v4/app/DefaultSpecialEffectsController$Api24Impl;->INSTANCE:Landroid/support/v4/app/DefaultSpecialEffectsController$Api24Impl;

    invoke-virtual {v3, v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$Api24Impl;->totalDuration(Landroid/animation/AnimatorSet;)J

    move-result-wide v5

    .line 676
    .local v5, "totalDuration":J
    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v3

    long-to-float v7, v5

    mul-float v3, v3, v7

    float-to-long v7, v3

    .line 679
    .local v7, "time":J
    const-wide/16 v9, 0x0

    cmp-long v3, v7, v9

    if-nez v3, :cond_2

    .line 680
    const-wide/16 v7, 0x1

    .line 682
    :cond_2
    cmp-long v3, v7, v5

    if-nez v3, :cond_3

    .line 683
    const-wide/16 v9, 0x1

    sub-long v7, v5, v9

    .line 685
    :cond_3
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 687
    nop

    .line 688
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting currentPlayTime to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for Animator "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on operation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 689
    nop

    .line 688
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 686
    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_4
    sget-object v2, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;->INSTANCE:Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;

    invoke-virtual {v2, v1, v7, v8}, Landroid/support/v4/app/DefaultSpecialEffectsController$Api26Impl;->setCurrentPlayTime(Landroid/animation/AnimatorSet;J)V

    .line 694
    .end local v5    # "totalDuration":J
    .end local v7    # "time":J
    :cond_5
    return-void
.end method

.method public onStart(Landroid/view/ViewGroup;)V
    .locals 9
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isVisibilityUnchanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    return-void

    .line 628
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 629
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getAnimation(Landroid/content/Context;)Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;->animator:Landroid/animation/AnimatorSet;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    .line 630
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animatorInfo:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    invoke-virtual {v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v6

    .line 631
    .local v6, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 634
    .local v1, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v6}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v2

    sget-object v3, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 635
    .local v5, "isHideOperation":Z
    :goto_1
    iget-object v4, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 636
    .local v4, "viewToAnimate":Landroid/view/View;
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 637
    iget-object v8, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_3

    .line 638
    new-instance v2, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;

    move-object v7, p0

    move-object v3, p1

    .end local p1    # "container":Landroid/view/ViewGroup;
    .local v3, "container":Landroid/view/ViewGroup;
    invoke-direct/range {v2 .. v7}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;-><init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;)V

    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    .line 637
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    .end local v3    # "container":Landroid/view/ViewGroup;
    .restart local p1    # "container":Landroid/view/ViewGroup;
    :cond_3
    move-object v7, p0

    move-object v3, p1

    .line 656
    .end local p1    # "container":Landroid/view/ViewGroup;
    .restart local v3    # "container":Landroid/view/ViewGroup;
    :goto_2
    iget-object p1, v7, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v4}, Landroid/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    .line 657
    :cond_4
    return-void
.end method

.method public final setAnimator(Landroid/animation/AnimatorSet;)V
    .locals 0
    .param p1, "<set-?>"    # Landroid/animation/AnimatorSet;

    .line 621
    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->animator:Landroid/animation/AnimatorSet;

    return-void
.end method

.class public final Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->onStart(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0006"
    }
    d2 = {
        "android/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1",
        "Landroid/animation/AnimatorListenerAdapter;",
        "onAnimationEnd",
        "",
        "anim",
        "Landroid/animation/Animator;",
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
.field final synthetic $container:Landroid/view/ViewGroup;

.field final synthetic $isHideOperation:Z

.field final synthetic $operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

.field final synthetic $viewToAnimate:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;ZLandroid/support/v4/app/SpecialEffectsController$Operation;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;)V
    .locals 0
    .param p1, "$container"    # Landroid/view/ViewGroup;
    .param p2, "$viewToAnimate"    # Landroid/view/View;
    .param p3, "$isHideOperation"    # Z
    .param p4, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p5, "$receiver"    # Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$container:Landroid/view/ViewGroup;

    iput-object p2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$viewToAnimate:Landroid/view/View;

    iput-boolean p3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$isHideOperation:Z

    iput-object p4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    iput-object p5, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;

    .line 638
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "anim"    # Landroid/animation/Animator;

    const-string v0, "anim"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 640
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$viewToAnimate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 641
    iget-boolean v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$isHideOperation:Z

    if-eqz v0, :cond_0

    .line 644
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$viewToAnimate:Landroid/view/View;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 646
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;->getAnimatorInfo()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect;

    check-cast v1, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 647
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 649
    nop

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animator from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimatorEffect$onStart$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has ended."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_1
    return-void
.end method

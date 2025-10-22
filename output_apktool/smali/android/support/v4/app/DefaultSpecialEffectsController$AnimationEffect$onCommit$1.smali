.class public final Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;
.super Ljava/lang/Object;
.source "DefaultSpecialEffectsController.kt"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->onCommit(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "android/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1",
        "Landroid/view/animation/Animation$AnimationListener;",
        "onAnimationStart",
        "",
        "animation",
        "Landroid/view/animation/Animation;",
        "onAnimationEnd",
        "onAnimationRepeat",
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

.field final synthetic $operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

.field final synthetic $viewToAnimate:Landroid/view/View;

.field final synthetic this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;


# direct methods
.method public static synthetic $r8$lambda$LXwCJW8fnoykCpo1ZFduP5zpd5c(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->onAnimationEnd$lambda$0(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V

    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V
    .locals 0
    .param p1, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p2, "$container"    # Landroid/view/ViewGroup;
    .param p3, "$viewToAnimate"    # Landroid/view/View;
    .param p4, "$receiver"    # Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;

    iput-object p1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    iput-object p2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$container:Landroid/view/ViewGroup;

    iput-object p3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$viewToAnimate:Landroid/view/View;

    iput-object p4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;

    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final onAnimationEnd$lambda$0(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V
    .locals 2
    .param p0, "$container"    # Landroid/view/ViewGroup;
    .param p1, "$viewToAnimate"    # Landroid/view/View;
    .param p2, "this$0"    # Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;

    .line 579
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 580
    invoke-virtual {p2}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;->getAnimationInfo()Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/support/v4/app/SpecialEffectsController$Effect;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V

    .line 581
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 5
    .param p1, "animation"    # Landroid/view/animation/Animation;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$container:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$container:Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$viewToAnimate:Landroid/view/View;

    iget-object v3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->this$0:Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;

    new-instance v4, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2, v3}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1$$ExternalSyntheticLambda0;-><init>(Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect;)V

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 582
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 584
    nop

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has ended."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 583
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 565
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 567
    nop

    .line 568
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animation from operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationEffect$onCommit$1;->$operation:Landroid/support/v4/app/SpecialEffectsController$Operation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has reached onAnimationStart."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 566
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_0
    return-void
.end method

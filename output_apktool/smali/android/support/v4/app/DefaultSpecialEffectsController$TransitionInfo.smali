.class final Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;
.super Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransitionInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0011\u001a\u00020\u0005J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\t\u001a\u0004\u0018\u00010\nH\u0002R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000cR\u0013\u0010\u0012\u001a\u0004\u0018\u00010\u00138F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;",
        "Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;",
        "operation",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "isPop",
        "",
        "providesSharedElementTransition",
        "<init>",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation;ZZ)V",
        "transition",
        "",
        "getTransition",
        "()Ljava/lang/Object;",
        "isOverlapAllowed",
        "()Z",
        "sharedElementTransition",
        "getSharedElementTransition",
        "hasSharedElementTransition",
        "handlingImpl",
        "Landroid/support/v4/app/FragmentTransitionImpl;",
        "getHandlingImpl",
        "()Landroid/support/v4/app/FragmentTransitionImpl;",
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
.field private final isOverlapAllowed:Z

.field private final sharedElementTransition:Ljava/lang/Object;

.field private final transition:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation;ZZ)V
    .locals 2
    .param p1, "operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p2, "isPop"    # Z
    .param p3, "providesSharedElementTransition"    # Z

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 455
    invoke-direct {p0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;)V

    .line 458
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_1

    .line 459
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 462
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 463
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v0

    .line 458
    :goto_0
    iput-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    .line 467
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_4

    .line 470
    if-eqz p2, :cond_3

    .line 471
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result v0

    goto :goto_1

    .line 473
    :cond_3
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result v0

    goto :goto_1

    .line 477
    :cond_4
    const/4 v0, 0x1

    .line 467
    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed:Z

    .line 481
    if-eqz p3, :cond_6

    .line 482
    if-eqz p2, :cond_5

    .line 483
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 485
    :cond_5
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v0

    goto :goto_2

    .line 488
    :cond_6
    const/4 v0, 0x0

    .line 481
    :goto_2
    iput-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    .line 451
    return-void
.end method

.method private final getHandlingImpl(Ljava/lang/Object;)Landroid/support/v4/app/FragmentTransitionImpl;
    .locals 3
    .param p1, "transition"    # Ljava/lang/Object;

    .line 513
    if-nez p1, :cond_0

    .line 514
    const/4 v0, 0x0

    return-object v0

    .line 516
    :cond_0
    nop

    .line 517
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-eqz v0, :cond_1

    .line 518
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->PLATFORM_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    return-object v0

    .line 522
    :cond_1
    nop

    .line 523
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    if-eqz v0, :cond_2

    .line 524
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransitionImpl;->canHandle(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    sget-object v0, Landroid/support/v4/app/FragmentTransition;->SUPPORT_IMPL:Landroid/support/v4/app/FragmentTransitionImpl;

    return-object v0

    .line 528
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid framework Transition or AndroidX Transition"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 528
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getHandlingImpl()Landroid/support/v4/app/FragmentTransitionImpl;
    .locals 5

    .line 497
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    invoke-direct {p0, v0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v0

    .line 498
    .local v0, "transitionImpl":Landroid/support/v4/app/FragmentTransitionImpl;
    iget-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    invoke-direct {p0, v1}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getHandlingImpl(Ljava/lang/Object;)Landroid/support/v4/app/FragmentTransitionImpl;

    move-result-object v1

    .line 500
    .local v1, "sharedElementTransitionImpl":Landroid/support/v4/app/FragmentTransitionImpl;
    if-eqz v0, :cond_1

    .line 501
    if-eqz v1, :cond_1

    .line 502
    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 499
    :goto_1
    if-eqz v2, :cond_3

    .line 509
    if-nez v0, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v0

    :goto_2
    return-object v2

    .line 499
    :cond_3
    const/4 v2, 0x0

    .line 504
    .local v2, "$i$a$-require-DefaultSpecialEffectsController$TransitionInfo$handlingImpl$1":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mixing framework transitions and AndroidX transitions is not allowed. Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    nop

    .line 504
    const-string v4, " returned Transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    iget-object v4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 505
    nop

    .line 504
    const-string v4, " which uses a different Transition  type than its shared element transition "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 507
    iget-object v4, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    .line 504
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 507
    nop

    .line 499
    .end local v2    # "$i$a$-require-DefaultSpecialEffectsController$TransitionInfo$handlingImpl$1":I
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final getSharedElementTransition()Ljava/lang/Object;
    .locals 1

    .line 480
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTransition()Ljava/lang/Object;
    .locals 1

    .line 457
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->transition:Ljava/lang/Object;

    return-object v0
.end method

.method public final hasSharedElementTransition()Z
    .locals 1

    .line 492
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isOverlapAllowed()Z
    .locals 1

    .line 466
    iget-boolean v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$TransitionInfo;->isOverlapAllowed:Z

    return v0
.end method

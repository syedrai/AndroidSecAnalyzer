.class final Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;
.super Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;
.source "DefaultSpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DefaultSpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AnimationInfo"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000c\u001a\u00020\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;",
        "Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;",
        "operation",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "isPop",
        "",
        "<init>",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation;Z)V",
        "isAnimLoaded",
        "animation",
        "Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;",
        "getAnimation",
        "context",
        "Landroid/content/Context;",
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
.field private animation:Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

.field private isAnimLoaded:Z

.field private final isPop:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation;Z)V
    .locals 1
    .param p1, "operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;
    .param p2, "isPop"    # Z

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1}, Landroid/support/v4/app/DefaultSpecialEffectsController$SpecialEffectsInfo;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation;)V

    .line 429
    iput-boolean p2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    return-void
.end method


# virtual methods
.method public final getAnimation(Landroid/content/Context;)Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    iget-boolean v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

    goto :goto_1

    .line 439
    :cond_0
    nop

    .line 440
    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 441
    invoke-virtual {p0}, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->getOperation()Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v1

    sget-object v2, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 442
    :goto_0
    iget-boolean v2, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isPop:Z

    .line 438
    invoke-static {p1, v0, v1, v2}, Landroid/support/v4/app/FragmentAnim;->loadAnimation(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZZ)Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

    move-result-object v0

    .line 444
    move-object v1, v0

    .local v1, "it":Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;
    const/4 v2, 0x0

    .line 445
    .local v2, "$i$a$-also-DefaultSpecialEffectsController$AnimationInfo$getAnimation$1":I
    iput-object v1, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->animation:Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;

    .line 446
    iput-boolean v3, p0, Landroid/support/v4/app/DefaultSpecialEffectsController$AnimationInfo;->isAnimLoaded:Z

    .line 447
    nop

    .line 444
    .end local v1    # "it":Landroid/support/v4/app/FragmentAnim$AnimationOrAnimator;
    .end local v2    # "$i$a$-also-DefaultSpecialEffectsController$AnimationInfo$getAnimation$1":I
    nop

    .line 448
    :goto_1
    return-object v0
.end method

.class final Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;
.super Landroid/support/v4/app/SpecialEffectsController$Operation;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentStateManagerOperation"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0002\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\r\u0010\u000c\u001a\u00020\u000bH\u0010\u00a2\u0006\u0002\u0008\rR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "finalState",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "lifecycleImpact",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;",
        "fragmentStateManager",
        "Landroid/support/v4/app/FragmentStateManager;",
        "<init>",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V",
        "onStart",
        "",
        "complete",
        "complete$fragment_release",
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
.field private final fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "finalState"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    .param p3, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    nop

    .line 738
    nop

    .line 739
    nop

    .line 740
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "getFragment(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 737
    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/Fragment;)V

    .line 735
    iput-object p3, p0, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    .line 732
    return-void
.end method


# virtual methods
.method public complete$fragment_release()V
    .locals 2

    .line 787
    invoke-super {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    .line 790
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    .line 791
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->moveToExpectedState()V

    .line 792
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 743
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    return-void

    .line 746
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->onStart()V

    .line 747
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    const-string v2, " for Fragment "

    const-string v3, "FragmentManager"

    const/4 v4, 0x2

    const-string v5, "requireView(...)"

    const-string v6, "getFragment(...)"

    if-ne v0, v1, :cond_5

    .line 748
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 749
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    iget-object v1, v0, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 750
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 751
    invoke-virtual {v0, v1}, Landroid/support/v4/app/Fragment;->setFocusedView(Landroid/view/View;)V

    .line 752
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 754
    nop

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "requestFocus: Saved focused view "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 763
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 764
    iget-object v3, p0, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentStateManager;->addViewToContainer()V

    .line 765
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 769
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_4

    .line 770
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 772
    :cond_4
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getPostOnViewCreatedAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "focusedView":Landroid/view/View;
    .end local v2    # "view":Landroid/view/View;
    goto :goto_1

    .line 773
    :cond_5
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v0

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v0, v1, :cond_7

    .line 774
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->fragmentStateManager:Landroid/support/v4/app/FragmentStateManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 775
    .restart local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 776
    .local v1, "view":Landroid/view/View;
    invoke-static {v4}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 778
    nop

    .line 779
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing focus "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " on view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 784
    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v1    # "view":Landroid/view/View;
    :cond_7
    :goto_1
    return-void
.end method

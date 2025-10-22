.class public Landroid/support/v4/app/SpecialEffectsController$Operation;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/SpecialEffectsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Operation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;,
        Landroid/support/v4/app/SpecialEffectsController$Operation$State;,
        Landroid/support/v4/app/SpecialEffectsController$Operation$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,868:1\n1863#2,2:869\n1863#2,2:871\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController$Operation\n*L\n644#1:869,2\n728#1:871,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u0010\u0018\u00002\u00020\u0001:\u000278B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0008\u0010(\u001a\u00020)H\u0016J\u000e\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-J\u0016\u0010.\u001a\u00020+2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005J\u000e\u0010/\u001a\u00020+2\u0006\u00100\u001a\u00020\u0016J\u000e\u00101\u001a\u00020+2\u0006\u00102\u001a\u00020#J\u000e\u00103\u001a\u00020+2\u0006\u00102\u001a\u00020#J\u0008\u00104\u001a\u00020+H\u0017J\r\u00105\u001a\u00020+H\u0011\u00a2\u0006\u0002\u00086R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\u001b\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR$\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@@X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001a\"\u0004\u0008\u001d\u0010\u001eR\u001e\u0010\u001f\u001a\u00020\u00182\u0006\u0010\u0017\u001a\u00020\u0018@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR\u001a\u0010 \u001a\u00020\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010\u001a\"\u0004\u0008!\u0010\u001eR\u0014\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020#0\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020#0%X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\'\u00a8\u00069"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "",
        "finalState",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "lifecycleImpact",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;",
        "fragment",
        "Landroid/support/v4/app/Fragment;",
        "<init>",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/Fragment;)V",
        "getFinalState",
        "()Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "setFinalState",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation$State;)V",
        "getLifecycleImpact",
        "()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;",
        "setLifecycleImpact",
        "(Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;)V",
        "getFragment",
        "()Landroid/support/v4/app/Fragment;",
        "completionListeners",
        "",
        "Ljava/lang/Runnable;",
        "value",
        "",
        "isCanceled",
        "()Z",
        "isComplete",
        "isSeeking",
        "setSeeking$fragment_release",
        "(Z)V",
        "isStarted",
        "isAwaitingContainerChanges",
        "setAwaitingContainerChanges",
        "_effects",
        "Landroid/support/v4/app/SpecialEffectsController$Effect;",
        "effects",
        "",
        "getEffects$fragment_release",
        "()Ljava/util/List;",
        "toString",
        "",
        "cancel",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "mergeWith",
        "addCompletionListener",
        "listener",
        "addEffect",
        "effect",
        "completeEffect",
        "onStart",
        "complete",
        "complete$fragment_release",
        "State",
        "LifecycleImpact",
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
.field private final _effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private final completionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final effects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Effect;",
            ">;"
        }
    .end annotation
.end field

.field private finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

.field private final fragment:Landroid/support/v4/app/Fragment;

.field private isAwaitingContainerChanges:Z

.field private isCanceled:Z

.field private isComplete:Z

.field private isSeeking:Z

.field private isStarted:Z

.field private lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "finalState"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    .param p3, "fragment"    # Landroid/support/v4/app/Fragment;

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragment"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 487
    iput-object p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 489
    iput-object p2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 491
    iput-object p3, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges:Z

    .line 623
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->effects:Ljava/util/List;

    .line 485
    return-void
.end method


# virtual methods
.method public final addCompletionListener(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 695
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    return-void
.end method

.method public final addEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V
    .locals 1
    .param p1, "effect"    # Landroid/support/v4/app/SpecialEffectsController$Effect;

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 699
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    return-void
.end method

.method public final cancel(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isStarted:Z

    .line 637
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isCanceled:Z

    if-eqz v0, :cond_0

    .line 638
    return-void

    .line 640
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isCanceled:Z

    .line 641
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    goto :goto_1

    .line 644
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->effects:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 869
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController$Effect;

    .local v4, "it":Landroid/support/v4/app/SpecialEffectsController$Effect;
    const/4 v5, 0x0

    .line 644
    .local v5, "$i$a$-forEach-SpecialEffectsController$Operation$cancel$1":I
    invoke-virtual {v4, p1}, Landroid/support/v4/app/SpecialEffectsController$Effect;->cancel(Landroid/view/ViewGroup;)V

    .line 869
    .end local v4    # "it":Landroid/support/v4/app/SpecialEffectsController$Effect;
    .end local v5    # "$i$a$-forEach-SpecialEffectsController$Operation$cancel$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 870
    :cond_2
    nop

    .line 646
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    :goto_1
    return-void
.end method

.method public complete$fragment_release()V
    .locals 6

    .line 720
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isStarted:Z

    .line 721
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isComplete:Z

    if-eqz v0, :cond_0

    .line 722
    return-void

    .line 724
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has called complete."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isComplete:Z

    .line 728
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->completionListeners:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 871
    .local v1, "$i$f$forEach":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/Runnable;

    .local v4, "listener":Ljava/lang/Runnable;
    const/4 v5, 0x0

    .line 728
    .local v5, "$i$a$-forEach-SpecialEffectsController$Operation$complete$1":I
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 871
    .end local v4    # "listener":Ljava/lang/Runnable;
    .end local v5    # "$i$a$-forEach-SpecialEffectsController$Operation$complete$1":I
    nop

    .end local v3    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 872
    :cond_2
    nop

    .line 729
    .end local v0    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$forEach":I
    return-void
.end method

.method public final completeEffect(Landroid/support/v4/app/SpecialEffectsController$Effect;)V
    .locals 1
    .param p1, "effect"    # Landroid/support/v4/app/SpecialEffectsController$Effect;

    const-string v0, "effect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->_effects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    .line 706
    :cond_0
    return-void
.end method

.method public final getEffects$fragment_release()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Effect;",
            ">;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->effects:Ljava/util/List;

    return-object v0
.end method

.method public final getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .locals 1

    .line 487
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    return-object v0
.end method

.method public final getFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .line 491
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public final getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 1

    .line 489
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-object v0
.end method

.method public final isAwaitingContainerChanges()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges:Z

    return v0
.end method

.method public final isCanceled()Z
    .locals 1

    .line 609
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isCanceled:Z

    return v0
.end method

.method public final isComplete()Z
    .locals 1

    .line 612
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isComplete:Z

    return v0
.end method

.method public final isSeeking()Z
    .locals 1

    .line 615
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isSeeking:Z

    return v0
.end method

.method public final isStarted()Z
    .locals 1

    .line 618
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isStarted:Z

    return v0
.end method

.method public final mergeWith(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    .locals 6
    .param p1, "finalState"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifecycleImpact"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 649
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, " mFinalState = "

    const/4 v2, 0x1

    const-string v3, "SpecialEffectsController: For fragment "

    const-string v4, "FragmentManager"

    const/4 v5, 0x2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 681
    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v2, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-eq v0, v2, :cond_3

    .line 682
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 684
    nop

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 685
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    nop

    .line 685
    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 686
    nop

    .line 685
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 683
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    goto/16 :goto_0

    .line 667
    :pswitch_1
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 669
    nop

    .line 670
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 671
    nop

    .line 670
    const-string v1, " -> REMOVED. mLifecycleImpact  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 672
    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 670
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 672
    nop

    .line 670
    const-string v1, " to REMOVING."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 668
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :cond_1
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 677
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 678
    iput-boolean v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges:Z

    goto :goto_0

    .line 651
    :pswitch_2
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v0, v1, :cond_3

    .line 652
    invoke-static {v5}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 654
    nop

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 657
    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 657
    nop

    .line 655
    const-string v1, " to ADDING."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 663
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 664
    iput-boolean v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges:Z

    .line 692
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStart()V
    .locals 1

    .line 711
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isStarted:Z

    .line 712
    return-void
.end method

.method public final setAwaitingContainerChanges(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 621
    iput-boolean p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges:Z

    return-void
.end method

.method public final setFinalState(Landroid/support/v4/app/SpecialEffectsController$Operation$State;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 487
    iput-object p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    return-void
.end method

.method public final setLifecycleImpact(Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    .locals 1
    .param p1, "<set-?>"    # Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 489
    iput-object p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    return-void
.end method

.method public final setSeeking$fragment_release(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 616
    iput-boolean p1, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->isSeeking:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 628
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "identityHash":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Operation {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "} {finalState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 630
    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->finalState:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 630
    nop

    .line 629
    const-string v2, " lifecycleImpact = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->lifecycleImpact:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 631
    nop

    .line 629
    const-string v2, " fragment = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 632
    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController$Operation;->fragment:Landroid/support/v4/app/Fragment;

    .line 629
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

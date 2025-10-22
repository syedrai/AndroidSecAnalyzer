.class public abstract Landroid/support/v4/app/SpecialEffectsController;
.super Ljava/lang/Object;
.source "SpecialEffectsController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/SpecialEffectsController$Companion;,
        Landroid/support/v4/app/SpecialEffectsController$Effect;,
        Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;,
        Landroid/support/v4/app/SpecialEffectsController$Operation;,
        Landroid/support/v4/app/SpecialEffectsController$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSpecialEffectsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,868:1\n295#2,2:869\n295#2,2:871\n543#2,6:873\n1863#2,2:879\n1863#2:881\n1734#2,3:882\n1864#2:885\n1368#2:886\n1454#2,5:887\n1368#2:892\n1454#2,5:893\n1368#2:898\n1454#2,5:899\n1368#2:904\n1454#2,5:905\n*S KotlinDebug\n*F\n+ 1 SpecialEffectsController.kt\nandroidx/fragment/app/SpecialEffectsController\n*L\n66#1:869,2\n71#1:871,2\n168#1:873,6\n302#1:879,2\n312#1:881\n315#1:882,3\n312#1:885\n317#1:886\n317#1:887,5\n421#1:892\n421#1:893,5\n449#1:898\n449#1:899,5\n465#1:904\n465#1:905,5\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008 \u0018\u0000 =2\u00020\u0001:\u0004:;<=B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0012\u0010\u0017\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0016\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u001d\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u0013J \u0010\u001f\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u0006\u0010 \u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013H\u0002J\u000e\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010$\u001a\u00020\rJ\u0006\u0010%\u001a\u00020\u0019J\u0006\u0010&\u001a\u00020\u0019J\u0016\u0010\'\u001a\u00020\r2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0016\u0010)\u001a\u00020\r2\u000c\u0010(\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u0002J\u0015\u0010*\u001a\u00020\u00192\u0006\u0010+\u001a\u00020\nH\u0000\u00a2\u0006\u0002\u0008,J\u0006\u0010-\u001a\u00020\u0019J\u0008\u0010.\u001a\u00020\u0019H\u0002J#\u0010/\u001a\u00020\u00192\u0011\u00100\u001a\r\u0012\t\u0012\u00070\n\u00a2\u0006\u0002\u00082012\u0006\u0010\"\u001a\u00020\rH&J \u00103\u001a\u00020\u00192\u0011\u00100\u001a\r\u0012\t\u0012\u00070\n\u00a2\u0006\u0002\u0008201H\u0010\u00a2\u0006\u0002\u00084J\u001b\u00105\u001a\u00020\u00192\u0011\u00100\u001a\r\u0012\t\u0012\u00070\n\u00a2\u0006\u0002\u0008201H\u0002J\u000e\u00106\u001a\u00020\u00192\u0006\u00107\u001a\u000208J\u0006\u00109\u001a\u00020\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006>"
    }
    d2 = {
        "Landroid/support/v4/app/SpecialEffectsController;",
        "",
        "container",
        "Landroid/view/ViewGroup;",
        "<init>",
        "(Landroid/view/ViewGroup;)V",
        "getContainer",
        "()Landroid/view/ViewGroup;",
        "pendingOperations",
        "",
        "Landroid/support/v4/app/SpecialEffectsController$Operation;",
        "runningOperations",
        "runningNonSeekableTransition",
        "",
        "operationDirectionIsPop",
        "isContainerPostponed",
        "getAwaitingCompletionLifecycleImpact",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;",
        "fragmentStateManager",
        "Landroid/support/v4/app/FragmentStateManager;",
        "findPendingOperation",
        "fragment",
        "Landroid/support/v4/app/Fragment;",
        "findRunningOperation",
        "enqueueAdd",
        "",
        "finalState",
        "Landroid/support/v4/app/SpecialEffectsController$Operation$State;",
        "enqueueShow",
        "enqueueHide",
        "enqueueRemove",
        "enqueue",
        "lifecycleImpact",
        "updateOperationDirection",
        "isPop",
        "markPostponedState",
        "isPendingExecute",
        "forcePostponedExecutePendingOperations",
        "executePendingOperations",
        "isOperationTransitioning",
        "newPendingOperations",
        "isOperationSeekable",
        "applyContainerChangesToOperation",
        "operation",
        "applyContainerChangesToOperation$fragment_release",
        "forceCompleteAllOperations",
        "updateFinalState",
        "collectEffects",
        "operations",
        "",
        "Lkotlin/jvm/JvmSuppressWildcards;",
        "commitEffects",
        "commitEffects$fragment_release",
        "processStart",
        "processProgress",
        "backEvent",
        "Landroidx/activity/BackEventCompat;",
        "completeBack",
        "Operation",
        "FragmentStateManagerOperation",
        "Effect",
        "Companion",
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


# static fields
.field public static final Companion:Landroid/support/v4/app/SpecialEffectsController$Companion;


# instance fields
.field private final container:Landroid/view/ViewGroup;

.field private isContainerPostponed:Z

.field private operationDirectionIsPop:Z

.field private final pendingOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field

.field private runningNonSeekableTransition:Z

.field private final runningOperations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$221-6RsmDPVIDwQb0sfcBAfQ1E4(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/SpecialEffectsController;->enqueue$lambda$4$lambda$2(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FXCyLh4wXZxmYJY38zGINyhgIpU(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/app/SpecialEffectsController;->enqueue$lambda$4$lambda$3(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/support/v4/app/SpecialEffectsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/app/SpecialEffectsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroid/support/v4/app/SpecialEffectsController;->Companion:Landroid/support/v4/app/SpecialEffectsController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "container"    # Landroid/view/ViewGroup;

    const-string v0, "container"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    .line 33
    return-void
.end method

.method private final enqueue(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V
    .locals 5
    .param p1, "finalState"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .param p2, "lifecycleImpact"    # Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    .param p3, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 126
    .local v1, "$i$a$-synchronized-SpecialEffectsController$enqueue$1":I
    :try_start_0
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const-string v3, "getFragment(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/SpecialEffectsController;->findPendingOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    if-nez v2, :cond_1

    .line 130
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p3}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    const-string v3, "getFragment(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Landroid/support/v4/app/SpecialEffectsController;->findRunningOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_0
    const/4 v2, 0x0

    .line 126
    :cond_1
    :goto_0
    nop

    .line 125
    nop

    .line 135
    .local v2, "existingOperation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    if-eqz v2, :cond_2

    .line 138
    invoke-virtual {v2, p1, p2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->mergeWith(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    nop

    .end local v1    # "$i$a$-synchronized-SpecialEffectsController$enqueue$1":I
    .end local v2    # "existingOperation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    monitor-exit v0

    return-void

    .line 142
    .restart local v1    # "$i$a$-synchronized-SpecialEffectsController$enqueue$1":I
    .restart local v2    # "existingOperation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    :cond_2
    :try_start_1
    new-instance v3, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;

    invoke-direct {v3, p1, p2, p3}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;-><init>(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V

    .line 141
    nop

    .line 143
    .local v3, "operation":Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v4, Landroid/support/v4/app/SpecialEffectsController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v3}, Landroid/support/v4/app/SpecialEffectsController$$ExternalSyntheticLambda0;-><init>(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 152
    new-instance v4, Landroid/support/v4/app/SpecialEffectsController$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v3}, Landroid/support/v4/app/SpecialEffectsController$$ExternalSyntheticLambda1;-><init>(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->addCompletionListener(Ljava/lang/Runnable;)V

    .line 156
    nop

    .end local v1    # "$i$a$-synchronized-SpecialEffectsController$enqueue$1":I
    .end local v2    # "existingOperation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v3    # "operation":Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    monitor-exit v0

    .line 157
    return-void

    .line 124
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static final enqueue$lambda$4$lambda$2(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 3
    .param p0, "this$0"    # Landroid/support/v4/app/SpecialEffectsController;
    .param p1, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const-string v2, "mView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 149
    :cond_0
    return-void
.end method

.method private static final enqueue$lambda$4$lambda$3(Landroid/support/v4/app/SpecialEffectsController;Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;)V
    .locals 1
    .param p0, "this$0"    # Landroid/support/v4/app/SpecialEffectsController;
    .param p1, "$operation"    # Landroid/support/v4/app/SpecialEffectsController$FragmentStateManagerOperation;

    .line 153
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method

.method private final findPendingOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 66
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 869
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v4, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v5, 0x0

    .line 67
    .local v5, "$i$a$-firstOrNull-SpecialEffectsController$findPendingOperation$1":I
    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 869
    .end local v4    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v5    # "$i$a$-firstOrNull-SpecialEffectsController$findPendingOperation$1":I
    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    .line 870
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 68
    return-object v3
.end method

.method private final findRunningOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;
    .locals 7
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 71
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$firstOrNull$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 871
    .local v1, "$i$f$firstOrNull":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "element$iv":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v4, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$a$-firstOrNull-SpecialEffectsController$findRunningOperation$1":I
    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v6

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 871
    .end local v4    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v5    # "$i$a$-firstOrNull-SpecialEffectsController$findRunningOperation$1":I
    :goto_0
    if-eqz v6, :cond_0

    goto :goto_1

    .line 872
    .end local v3    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v3, 0x0

    .end local v0    # "$this$firstOrNull$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$firstOrNull":I
    :goto_1
    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 73
    return-object v3
.end method

.method public static final getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;
    .locals 1
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController;->Companion:Landroid/support/v4/app/SpecialEffectsController$Companion;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/SpecialEffectsController$Companion;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/FragmentManager;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v0

    .line 841
    return-object v0
.end method

.method public static final getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsControllerFactory;)Landroid/support/v4/app/SpecialEffectsController;
    .locals 1
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "factory"    # Landroid/support/v4/app/SpecialEffectsControllerFactory;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Landroid/support/v4/app/SpecialEffectsController;->Companion:Landroid/support/v4/app/SpecialEffectsController$Companion;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/app/SpecialEffectsController$Companion;->getOrCreateController(Landroid/view/ViewGroup;Landroid/support/v4/app/SpecialEffectsControllerFactory;)Landroid/support/v4/app/SpecialEffectsController;

    move-result-object v0

    .line 865
    return-object v0
.end method

.method private final isOperationSeekable(Ljava/util/List;)Z
    .locals 15
    .param p1, "newPendingOperations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;)Z"
        }
    .end annotation

    .line 311
    const/4 v0, 0x0

    .local v0, "seekable":Z
    const/4 v0, 0x1

    .line 312
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 881
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v7, v4

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v7, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v8, 0x0

    .line 313
    .local v8, "$i$a$-forEach-SpecialEffectsController$isOperationSeekable$1":I
    nop

    .line 314
    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_3

    .line 315
    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .local v9, "$this$all$iv":Ljava/lang/Iterable;
    const/4 v10, 0x0

    .line 882
    .local v10, "$i$f$all":I
    instance-of v11, v9, Ljava/util/Collection;

    if-eqz v11, :cond_0

    move-object v11, v9

    check-cast v11, Ljava/util/Collection;

    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    .line 883
    :cond_0
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .local v12, "element$iv":Ljava/lang/Object;
    move-object v13, v12

    check-cast v13, Landroid/support/v4/app/SpecialEffectsController$Effect;

    .local v13, "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    const/4 v14, 0x0

    .line 315
    .local v14, "$i$a$-all-SpecialEffectsController$isOperationSeekable$1$1":I
    invoke-virtual {v13}, Landroid/support/v4/app/SpecialEffectsController$Effect;->isSeekingSupported()Z

    move-result v13

    .line 883
    .end local v13    # "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    .end local v14    # "$i$a$-all-SpecialEffectsController$isOperationSeekable$1$1":I
    if-nez v13, :cond_1

    const/4 v9, 0x0

    goto :goto_1

    .line 884
    .end local v12    # "element$iv":Ljava/lang/Object;
    :cond_2
    const/4 v9, 0x1

    .line 315
    .end local v9    # "$this$all$iv":Ljava/lang/Iterable;
    .end local v10    # "$i$f$all":I
    :goto_1
    if-eqz v9, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    nop

    .line 313
    :goto_2
    move v0, v5

    .line 316
    nop

    .line 881
    .end local v7    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v8    # "$i$a$-forEach-SpecialEffectsController$isOperationSeekable$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 885
    :cond_4
    nop

    .line 317
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    if-eqz v0, :cond_6

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 886
    .local v2, "$i$f$flatMap":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v3, Ljava/util/Collection;

    .local v3, "destination$iv$iv":Ljava/util/Collection;
    move-object v4, v1

    .local v4, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v7, 0x0

    .line 887
    .local v7, "$i$f$flatMapTo":I
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 888
    .local v9, "element$iv$iv":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v10, "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v11, 0x0

    .line 317
    .local v11, "$i$a$-flatMap-SpecialEffectsController$isOperationSeekable$2":I
    invoke-virtual {v10}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    .line 888
    .end local v10    # "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v11    # "$i$a$-flatMap-SpecialEffectsController$isOperationSeekable$2":I
    nop

    .line 889
    .local v12, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v3, v12}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 891
    .end local v9    # "element$iv$iv":Ljava/lang/Object;
    .end local v12    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_5
    nop

    .end local v3    # "destination$iv$iv":Ljava/util/Collection;
    .end local v4    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v7    # "$i$f$flatMapTo":I
    check-cast v3, Ljava/util/List;

    .line 886
    nop

    .end local v1    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$flatMap":I
    check-cast v3, Ljava/util/Collection;

    .line 317
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v5, 0x1

    .line 318
    .end local v0    # "seekable":Z
    .local v5, "seekable":Z
    :cond_6
    return v5
.end method

.method private final isOperationTransitioning(Ljava/util/List;)Z
    .locals 8
    .param p1, "newPendingOperations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;)Z"
        }
    .end annotation

    .line 301
    const/4 v0, 0x0

    .local v0, "transitioning":Z
    const/4 v0, 0x1

    .line 302
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 879
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v5, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v6, 0x0

    .line 303
    .local v6, "$i$a$-forEach-SpecialEffectsController$isOperationTransitioning$1":I
    invoke-virtual {v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    iget-boolean v7, v7, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    if-nez v7, :cond_0

    .line 304
    const/4 v0, 0x0

    .line 306
    :cond_0
    nop

    .line 879
    .end local v5    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v6    # "$i$a$-forEach-SpecialEffectsController$isOperationTransitioning$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 880
    :cond_1
    nop

    .line 307
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    return v0
.end method

.method private final processStart(Ljava/util/List;)V
    .locals 10
    .param p1, "operations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;)V"
        }
    .end annotation

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    .line 446
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 447
    .local v2, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v2}, Landroid/support/v4/app/SpecialEffectsController$Operation;->onStart()V

    .line 445
    .end local v2    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    .end local v0    # "i":I
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 898
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 899
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 900
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v7, "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v8, 0x0

    .line 449
    .local v8, "$i$a$-flatMap-SpecialEffectsController$processStart$set$1":I
    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 900
    .end local v7    # "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v8    # "$i$a$-flatMap-SpecialEffectsController$processStart$set$1":I
    nop

    .line 901
    .local v9, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_1

    .line 903
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 898
    nop

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    check-cast v2, Ljava/lang/Iterable;

    .line 449
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 451
    .local v0, "set":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_2

    .line 452
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Effect;

    .line 453
    .local v3, "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/SpecialEffectsController$Effect;->performStart(Landroid/view/ViewGroup;)V

    .line 451
    .end local v3    # "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 455
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method private final updateFinalState()V
    .locals 6

    .line 389
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 391
    .local v1, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v2

    sget-object v3, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    if-ne v2, v3, :cond_0

    .line 392
    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 393
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    const-string v4, "requireView(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    .local v3, "view":Landroid/view/View;
    sget-object v4, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;->from(I)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v4

    .line 395
    .local v4, "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    sget-object v5, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->mergeWith(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;)V

    .end local v1    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "finalState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    goto :goto_0

    .line 398
    :cond_1
    return-void
.end method


# virtual methods
.method public final applyContainerChangesToOperation$fragment_release(Landroid/support/v4/app/SpecialEffectsController$Operation;)V
    .locals 3
    .param p1, "operation"    # Landroid/support/v4/app/SpecialEffectsController$Operation;

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isAwaitingContainerChanges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    const-string v2, "requireView(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->applyState(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 324
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/SpecialEffectsController$Operation;->setAwaitingContainerChanges(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public abstract collectEffects(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public commitEffects$fragment_release(Ljava/util/List;)V
    .locals 10
    .param p1, "operations"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/app/SpecialEffectsController$Operation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "operations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 421
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 892
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 893
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 894
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v7, "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v8, 0x0

    .line 421
    .local v8, "$i$a$-flatMap-SpecialEffectsController$commitEffects$set$1":I
    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 894
    .end local v7    # "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v8    # "$i$a$-flatMap-SpecialEffectsController$commitEffects$set$1":I
    nop

    .line 895
    .local v9, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 897
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 892
    nop

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    check-cast v2, Ljava/lang/Iterable;

    .line 421
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, "set":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "i":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_1

    .line 425
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Effect;

    .line 426
    .local v3, "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/v4/app/SpecialEffectsController$Effect;->onCommit(Landroid/view/ViewGroup;)V

    .line 424
    .end local v3    # "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 429
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_2

    .line 430
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 431
    .local v3, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {p0, v3}, Landroid/support/v4/app/SpecialEffectsController;->applyContainerChangesToOperation$fragment_release(Landroid/support/v4/app/SpecialEffectsController$Operation;)V

    .line 429
    .end local v3    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    .end local v1    # "i":I
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 436
    .local v1, "operationsCopy":Ljava/util/List;
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v3, v1

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_4

    .line 437
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 438
    .local v4, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 439
    invoke-virtual {v4}, Landroid/support/v4/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    .line 436
    .end local v4    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 442
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public final completeBack()V
    .locals 2

    .line 473
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Completing Back "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-direct {p0, v0}, Landroid/support/v4/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 477
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-virtual {p0, v0}, Landroid/support/v4/app/SpecialEffectsController;->commitEffects$fragment_release(Ljava/util/List;)V

    .line 478
    return-void
.end method

.method public final enqueueAdd(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "finalState"    # Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    .param p2, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "finalState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fragmentStateManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    nop

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing add operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ADDING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, p1, v0, p2}, Landroid/support/v4/app/SpecialEffectsController;->enqueue(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V

    .line 84
    return-void
.end method

.method public final enqueueHide(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    nop

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing hide operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->GONE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/app/SpecialEffectsController;->enqueue(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V

    .line 106
    return-void
.end method

.method public final enqueueRemove(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    nop

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing remove operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_0
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->REMOVED:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->REMOVING:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/app/SpecialEffectsController;->enqueue(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V

    .line 117
    return-void
.end method

.method public final enqueueShow(Landroid/support/v4/app/FragmentStateManager;)V
    .locals 2
    .param p1, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    nop

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Enqueuing show operation for fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 91
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    sget-object v0, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    sget-object v1, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->NONE:Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    invoke-direct {p0, v0, v1, p1}, Landroid/support/v4/app/SpecialEffectsController;->enqueue(Landroid/support/v4/app/SpecialEffectsController$Operation$State;Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;Landroid/support/v4/app/FragmentStateManager;)V

    .line 95
    return-void
.end method

.method public final executePendingOperations()V
    .locals 11

    .line 196
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController;->isContainerPostponed:Z

    if-eqz v0, :cond_0

    .line 198
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController;->forceCompleteAllOperations()V

    .line 204
    iput-boolean v1, p0, Landroid/support/v4/app/SpecialEffectsController;->operationDirectionIsPop:Z

    .line 205
    return-void

    .line 207
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v0

    const/4 v2, 0x0

    .line 208
    .local v2, "$i$a$-synchronized-SpecialEffectsController$executePendingOperations$1":I
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v3

    .line 209
    .local v3, "currentlyRunningOperations":Ljava/util/List;
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 212
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 213
    .local v5, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    nop

    .line 214
    iget-object v7, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v7, Ljava/util/Collection;

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    iget-boolean v7, v7, Landroid/support/v4/app/Fragment;->mTransitioning:Z

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 213
    :goto_1
    invoke-virtual {v5, v6}, Landroid/support/v4/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    .end local v5    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    goto :goto_0

    .line 216
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x2

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 225
    .restart local v5    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    iget-boolean v8, p0, Landroid/support/v4/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    if-eqz v8, :cond_6

    .line 226
    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 228
    const-string v7, "FragmentManager"

    .line 229
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Completing non-seekable operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 230
    nop

    .line 229
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 227
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_5
    invoke-virtual {v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->complete$fragment_release()V

    goto :goto_3

    .line 235
    :cond_6
    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 237
    const-string v7, "FragmentManager"

    .line 238
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SpecialEffectsController: Cancelling operation "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 236
    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_7
    iget-object v7, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v5, v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    .line 243
    :goto_3
    iput-boolean v1, p0, Landroid/support/v4/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    .line 244
    invoke-virtual {v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->isComplete()Z

    move-result v7

    if-nez v7, :cond_4

    .line 247
    iget-object v7, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 250
    .end local v5    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    :cond_8
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 251
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController;->updateFinalState()V

    .line 252
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 253
    .local v4, "newPendingOperations":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_9

    .line 254
    nop

    .end local v2    # "$i$a$-synchronized-SpecialEffectsController$executePendingOperations$1":I
    .end local v3    # "currentlyRunningOperations":Ljava/util/List;
    .end local v4    # "newPendingOperations":Ljava/util/List;
    monitor-exit v0

    return-void

    .line 256
    .restart local v2    # "$i$a$-synchronized-SpecialEffectsController$executePendingOperations$1":I
    .restart local v3    # "currentlyRunningOperations":Ljava/util/List;
    .restart local v4    # "newPendingOperations":Ljava/util/List;
    :cond_9
    :try_start_1
    iget-object v5, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 257
    iget-object v5, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    move-object v8, v4

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v5, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 258
    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 260
    const-string v5, "FragmentManager"

    .line 261
    const-string v8, "SpecialEffectsController: Executing pending operations"

    .line 259
    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_a
    iget-boolean v5, p0, Landroid/support/v4/app/SpecialEffectsController;->operationDirectionIsPop:Z

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/app/SpecialEffectsController;->collectEffects(Ljava/util/List;Z)V

    .line 265
    invoke-direct {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->isOperationSeekable(Ljava/util/List;)Z

    move-result v5

    .line 266
    .local v5, "seekable":Z
    invoke-direct {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->isOperationTransitioning(Ljava/util/List;)Z

    move-result v8

    .line 267
    .local v8, "transitioning":Z
    if-eqz v8, :cond_b

    if-nez v5, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x0

    :goto_4
    iput-boolean v6, p0, Landroid/support/v4/app/SpecialEffectsController;->runningNonSeekableTransition:Z

    .line 269
    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 271
    const-string v6, "FragmentManager"

    .line 272
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SpecialEffectsController: Operation seekable = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \ntransition = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 273
    nop

    .line 272
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 270
    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_c
    if-nez v8, :cond_d

    .line 278
    invoke-direct {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 279
    invoke-virtual {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->commitEffects$fragment_release(Ljava/util/List;)V

    goto :goto_6

    .line 281
    :cond_d
    if-eqz v5, :cond_e

    .line 282
    invoke-direct {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 283
    const/4 v6, 0x0

    .local v6, "i":I
    move-object v9, v4

    check-cast v9, Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->size()I

    move-result v9

    :goto_5
    if-ge v6, v9, :cond_e

    .line 284
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 285
    .local v10, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {p0, v10}, Landroid/support/v4/app/SpecialEffectsController;->applyContainerChangesToOperation$fragment_release(Landroid/support/v4/app/SpecialEffectsController$Operation;)V

    .line 283
    .end local v10    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 289
    .end local v6    # "i":I
    :cond_e
    :goto_6
    iput-boolean v1, p0, Landroid/support/v4/app/SpecialEffectsController;->operationDirectionIsPop:Z

    .line 290
    invoke-static {v7}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 292
    const-string v1, "FragmentManager"

    .line 293
    const-string v6, "SpecialEffectsController: Finished executing pending operations"

    .line 291
    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    .end local v4    # "newPendingOperations":Ljava/util/List;
    .end local v5    # "seekable":Z
    .end local v8    # "transitioning":Z
    :cond_f
    nop

    .end local v2    # "$i$a$-synchronized-SpecialEffectsController$executePendingOperations$1":I
    .end local v3    # "currentlyRunningOperations":Ljava/util/List;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit v0

    .line 298
    return-void

    .line 207
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final forceCompleteAllOperations()V
    .locals 12

    .line 329
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "FragmentManager"

    .line 332
    const-string v2, "SpecialEffectsController: Forcing all operations to complete"

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v1

    .line 336
    .local v1, "attachedToWindow":Z
    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v2

    const/4 v3, 0x0

    .line 337
    .local v3, "$i$a$-synchronized-SpecialEffectsController$forceCompleteAllOperations$1":I
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController;->updateFinalState()V

    .line 338
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    invoke-direct {p0, v4}, Landroid/support/v4/app/SpecialEffectsController;->processStart(Ljava/util/List;)V

    .line 341
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    check-cast v4, Ljava/util/Collection;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    .line 342
    .local v4, "runningOperations":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 343
    .local v6, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v6, v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    .end local v6    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    goto :goto_0

    .line 345
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 346
    .restart local v6    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 348
    if-eqz v1, :cond_2

    .line 349
    const-string v8, ""

    goto :goto_2

    .line 351
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not attached to window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 348
    :goto_2
    nop

    .line 347
    nop

    .line 354
    .local v8, "notAttachedMessage":Ljava/lang/String;
    const-string v9, "FragmentManager"

    .line 355
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpecialEffectsController: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 356
    nop

    .line 355
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 357
    const-string v11, "Cancelling running operation "

    .line 355
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 357
    nop

    .line 355
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 353
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    .end local v8    # "notAttachedMessage":Ljava/lang/String;
    :cond_3
    iget-object v8, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8}, Landroid/support/v4/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    .end local v6    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    goto :goto_1

    .line 364
    :cond_4
    iget-object v5, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v5

    .line 365
    .local v5, "pendingOperations":Ljava/util/List;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 366
    .local v8, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-virtual {v8, v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->setSeeking$fragment_release(Z)V

    .end local v8    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    goto :goto_3

    .line 368
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 369
    .local v7, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 371
    if-eqz v1, :cond_6

    .line 372
    const-string v8, ""

    goto :goto_5

    .line 374
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Container "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is not attached to window. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 371
    :goto_5
    nop

    .line 370
    nop

    .line 377
    .local v8, "notAttachedMessage":Ljava/lang/String;
    const-string v9, "FragmentManager"

    .line 378
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SpecialEffectsController: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 379
    nop

    .line 378
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 380
    const-string v11, "Cancelling pending operation "

    .line 378
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 380
    nop

    .line 378
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 376
    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    .end local v8    # "notAttachedMessage":Ljava/lang/String;
    :cond_7
    iget-object v8, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/support/v4/app/SpecialEffectsController$Operation;->cancel(Landroid/view/ViewGroup;)V

    .end local v7    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    goto :goto_4

    .line 385
    :cond_8
    nop

    .end local v3    # "$i$a$-synchronized-SpecialEffectsController$forceCompleteAllOperations$1":I
    .end local v4    # "runningOperations":Ljava/util/List;
    .end local v5    # "pendingOperations":Ljava/util/List;
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit v2

    .line 386
    return-void

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final forcePostponedExecutePendingOperations()V
    .locals 2

    .line 186
    iget-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController;->isContainerPostponed:Z

    if-eqz v0, :cond_1

    .line 187
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    const-string v0, "FragmentManager"

    const-string v1, "SpecialEffectsController: Forcing postponed operations"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/SpecialEffectsController;->isContainerPostponed:Z

    .line 191
    invoke-virtual {p0}, Landroid/support/v4/app/SpecialEffectsController;->executePendingOperations()V

    .line 193
    :cond_1
    return-void
.end method

.method public final getAwaitingCompletionLifecycleImpact(Landroid/support/v4/app/FragmentStateManager;)Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    .locals 5
    .param p1, "fragmentStateManager"    # Landroid/support/v4/app/FragmentStateManager;

    const-string v0, "fragmentStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentStateManager;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    const-string v1, "getFragment(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    invoke-direct {p0, v0}, Landroid/support/v4/app/SpecialEffectsController;->findPendingOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 56
    .local v1, "pendingLifecycleImpact":Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v4/app/SpecialEffectsController;->findRunningOperation(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/SpecialEffectsController$Operation;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getLifecycleImpact()Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;

    move-result-object v2

    .line 58
    .local v2, "runningLifecycleImpact":Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;
    :cond_1
    if-nez v1, :cond_2

    const/4 v3, -0x1

    goto :goto_1

    :cond_2
    sget-object v3, Landroid/support/v4/app/SpecialEffectsController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Landroid/support/v4/app/SpecialEffectsController$Operation$LifecycleImpact;->ordinal()I

    move-result v4

    aget v3, v3, v4

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 61
    :pswitch_0
    move-object v3, v1

    goto :goto_3

    .line 60
    :pswitch_1
    goto :goto_2

    .line 59
    :pswitch_2
    nop

    .line 58
    :goto_2
    move-object v3, v2

    :goto_3
    return-object v3

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final isPendingExecute()Z
    .locals 1

    .line 182
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final markPostponedState()V
    .locals 13

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 165
    .local v1, "$i$a$-synchronized-SpecialEffectsController$markPostponedState$1":I
    :try_start_0
    invoke-direct {p0}, Landroid/support/v4/app/SpecialEffectsController;->updateFinalState()V

    .line 174
    nop

    .line 167
    iget-object v2, p0, Landroid/support/v4/app/SpecialEffectsController;->pendingOperations:Ljava/util/List;

    .line 168
    nop

    .local v2, "$this$lastOrNull$iv":Ljava/util/List;
    const/4 v3, 0x0

    .line 873
    .local v3, "$i$f$lastOrNull":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v4

    .line 874
    .local v4, "iterator$iv":Ljava/util/ListIterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eqz v5, :cond_2

    .line 875
    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    .line 876
    .local v5, "element$iv":Ljava/lang/Object;
    move-object v8, v5

    check-cast v8, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v8, "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v9, 0x0

    .line 170
    .local v9, "$i$a$-lastOrNull-SpecialEffectsController$markPostponedState$1$lastEnteringFragment$1":I
    sget-object v10, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->Companion:Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;

    invoke-virtual {v8}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v11

    iget-object v11, v11, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    const-string v12, "mView"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/support/v4/app/SpecialEffectsController$Operation$State$Companion;->asOperationState(Landroid/view/View;)Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v10

    .line 171
    .local v10, "currentState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    invoke-virtual {v8}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFinalState()Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    move-result-object v11

    sget-object v12, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-ne v11, v12, :cond_1

    .line 172
    sget-object v11, Landroid/support/v4/app/SpecialEffectsController$Operation$State;->VISIBLE:Landroid/support/v4/app/SpecialEffectsController$Operation$State;

    if-eq v10, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    .line 876
    .end local v8    # "operation":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v9    # "$i$a$-lastOrNull-SpecialEffectsController$markPostponedState$1$lastEnteringFragment$1":I
    .end local v10    # "currentState":Landroid/support/v4/app/SpecialEffectsController$Operation$State;
    :goto_0
    if-eqz v11, :cond_0

    goto :goto_1

    .line 878
    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_2
    move-object v5, v7

    .line 168
    .end local v2    # "$this$lastOrNull$iv":Ljava/util/List;
    .end local v3    # "$i$f$lastOrNull":I
    .end local v4    # "iterator$iv":Ljava/util/ListIterator;
    :goto_1
    check-cast v5, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .line 174
    if-eqz v5, :cond_3

    .line 167
    nop

    .line 174
    invoke-virtual {v5}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getFragment()Landroid/support/v4/app/Fragment;

    move-result-object v7

    .line 166
    :cond_3
    nop

    .line 177
    .local v7, "lastEnteringFragment":Landroid/support/v4/app/Fragment;
    if-eqz v7, :cond_4

    invoke-virtual {v7}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v6

    :cond_4
    iput-boolean v6, p0, Landroid/support/v4/app/SpecialEffectsController;->isContainerPostponed:Z

    .line 178
    nop

    .end local v1    # "$i$a$-synchronized-SpecialEffectsController$markPostponedState$1":I
    .end local v7    # "lastEnteringFragment":Landroid/support/v4/app/Fragment;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit v0

    .line 179
    return-void

    .line 164
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final processProgress(Landroidx/activity/BackEventCompat;)V
    .locals 10
    .param p1, "backEvent"    # Landroidx/activity/BackEventCompat;

    const-string v0, "backEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 458
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 460
    nop

    .line 461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecialEffectsController: Processing Progress "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/activity/BackEventCompat;->getProgress()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/SpecialEffectsController;->runningOperations:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$flatMap$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 904
    .local v1, "$i$f$flatMap":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 905
    .local v4, "$i$f$flatMapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 906
    .local v6, "element$iv$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroid/support/v4/app/SpecialEffectsController$Operation;

    .local v7, "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    const/4 v8, 0x0

    .line 465
    .local v8, "$i$a$-flatMap-SpecialEffectsController$processProgress$set$1":I
    invoke-virtual {v7}, Landroid/support/v4/app/SpecialEffectsController$Operation;->getEffects$fragment_release()Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    .line 906
    .end local v7    # "it":Landroid/support/v4/app/SpecialEffectsController$Operation;
    .end local v8    # "$i$a$-flatMap-SpecialEffectsController$processProgress$set$1":I
    nop

    .line 907
    .local v9, "list$iv$iv":Ljava/lang/Iterable;
    invoke-static {v2, v9}, Lkotlin/collections/CollectionsKt;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_0

    .line 909
    .end local v6    # "element$iv$iv":Ljava/lang/Object;
    .end local v9    # "list$iv$iv":Ljava/lang/Iterable;
    :cond_1
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$flatMapTo$iv$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$flatMapTo":I
    check-cast v2, Ljava/util/List;

    .line 904
    nop

    .end local v0    # "$this$flatMap$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$flatMap":I
    check-cast v2, Ljava/lang/Iterable;

    .line 465
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 466
    .local v0, "set":Ljava/util/List;
    const/4 v1, 0x0

    .local v1, "j":I
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_1
    if-ge v1, v2, :cond_2

    .line 467
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/SpecialEffectsController$Effect;

    .line 468
    .local v3, "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    iget-object v4, p0, Landroid/support/v4/app/SpecialEffectsController;->container:Landroid/view/ViewGroup;

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/SpecialEffectsController$Effect;->onProgress(Landroidx/activity/BackEventCompat;Landroid/view/ViewGroup;)V

    .line 466
    .end local v3    # "effect":Landroid/support/v4/app/SpecialEffectsController$Effect;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public final updateOperationDirection(Z)V
    .locals 0
    .param p1, "isPop"    # Z

    .line 160
    iput-boolean p1, p0, Landroid/support/v4/app/SpecialEffectsController;->operationDirectionIsPop:Z

    .line 161
    return-void
.end method

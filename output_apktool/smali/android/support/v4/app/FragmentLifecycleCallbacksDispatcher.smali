.class public final Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0000\u0018\u00002\u00020\u0001:\u0001&B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0016\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u0016\u0010\u0010\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ \u0010\u0015\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0013\u001a\u00020\u000eJ \u0010\u0018\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0013\u001a\u00020\u000eJ \u0010\u0019\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0013\u001a\u00020\u000eJ(\u0010\u001a\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010\u001d\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010\u001e\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010\u001f\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010 \u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u001e\u0010!\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\"\u001a\u00020\u00172\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010#\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010$\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eJ\u0016\u0010%\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u000eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;",
        "",
        "fragmentManager",
        "Landroid/support/v4/app/FragmentManager;",
        "<init>",
        "(Landroid/support/v4/app/FragmentManager;)V",
        "lifecycleCallbacks",
        "Ljava/util/concurrent/CopyOnWriteArrayList;",
        "Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;",
        "registerFragmentLifecycleCallbacks",
        "",
        "cb",
        "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
        "recursive",
        "",
        "unregisterFragmentLifecycleCallbacks",
        "dispatchOnFragmentPreAttached",
        "f",
        "Landroid/support/v4/app/Fragment;",
        "onlyRecursive",
        "dispatchOnFragmentAttached",
        "dispatchOnFragmentPreCreated",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "dispatchOnFragmentCreated",
        "dispatchOnFragmentActivityCreated",
        "dispatchOnFragmentViewCreated",
        "v",
        "Landroid/view/View;",
        "dispatchOnFragmentStarted",
        "dispatchOnFragmentResumed",
        "dispatchOnFragmentPaused",
        "dispatchOnFragmentStopped",
        "dispatchOnFragmentSaveInstanceState",
        "outState",
        "dispatchOnFragmentViewDestroyed",
        "dispatchOnFragmentDestroyed",
        "dispatchOnFragmentDetached",
        "FragmentLifecycleCallbacksHolder",
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
.field private final fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private final lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .param p1, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 29
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 23
    return-void
.end method


# virtual methods
.method public final dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 144
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 147
    nop

    .line 148
    nop

    .line 149
    nop

    .line 146
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentActivityCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 152
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 153
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 154
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentActivityCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 157
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Z)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 83
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 84
    .local v1, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "getParentFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .local v2, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentAttached(Landroid/support/v4/app/Fragment;Z)V

    .line 88
    .end local v2    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "iterator(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 89
    .local v3, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v5, p1, v0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .end local v3    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 93
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 122
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 125
    nop

    .line 126
    nop

    .line 127
    nop

    .line 124
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 130
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 131
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 135
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 266
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 270
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 271
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 272
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 275
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 279
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentDetached(Landroid/support/v4/app/Fragment;Z)V

    .line 283
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 284
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentDetached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 288
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 210
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPaused(Landroid/support/v4/app/Fragment;Z)V

    .line 214
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 215
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPaused(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 219
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Z)V
    .locals 6
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getHost()Landroid/support/v4/app/FragmentHostCallback;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 69
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v1

    .line 70
    .local v1, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "getParentFragmentManager(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .local v2, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreAttached(Landroid/support/v4/app/Fragment;Z)V

    .line 74
    .end local v2    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, "iterator(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 75
    .local v3, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    :cond_2
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    iget-object v5, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v5, p1, v0}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreAttached(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/content/Context;)V

    .end local v3    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 79
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 101
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 104
    nop

    .line 105
    nop

    .line 106
    nop

    .line 103
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentPreCreated(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 109
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 110
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentPreCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 114
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 197
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentResumed(Landroid/support/v4/app/Fragment;Z)V

    .line 201
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 202
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentResumed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 206
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "outState"    # Landroid/os/Bundle;
    .param p3, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 236
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 238
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 238
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentSaveInstanceState(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;Z)V

    .line 244
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 245
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p3, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 246
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentSaveInstanceState(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 249
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 184
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStarted(Landroid/support/v4/app/Fragment;Z)V

    .line 188
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 189
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStarted(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 193
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 223
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 225
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentStopped(Landroid/support/v4/app/Fragment;Z)V

    .line 227
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 228
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 229
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentStopped(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 232
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .param p4, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 166
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    .line 169
    nop

    .line 170
    nop

    .line 171
    nop

    .line 172
    nop

    .line 168
    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, p3, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewCreated(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 175
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 176
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p4, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 177
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1, p2, p3}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewCreated(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/os/Bundle;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 180
    :cond_3
    return-void
.end method

.method public final dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V
    .locals 5
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "onlyRecursive"    # Z

    const-string v0, "f"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getParent()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 253
    .local v0, "parent":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getParentFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "getParentFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    .local v1, "parentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getLifecycleCallbacksDispatcher()Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->dispatchOnFragmentViewDestroyed(Landroid/support/v4/app/Fragment;Z)V

    .line 257
    .end local v1    # "parentManager":Landroid/support/v4/app/FragmentManager;
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, "iterator(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    .line 258
    .local v2, "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    if-eqz p2, :cond_2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getRecursive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    :cond_2
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v4, p1}, Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;->onFragmentViewDestroyed(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;)V

    .end local v2    # "holder":Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
    goto :goto_0

    .line 262
    :cond_3
    return-void
.end method

.method public final registerFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 2
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v1, p1, p2}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    return-void
.end method

.method public final unregisterFragmentLifecycleCallbacks(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;)V
    .locals 5
    .param p1, "cb"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    monitor-enter v0

    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-synchronized-FragmentLifecycleCallbacksDispatcher$unregisterFragmentLifecycleCallbacks$1":I
    const/4 v2, 0x0

    .line 56
    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    .line 57
    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 58
    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 59
    iget-object v4, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;->lifecycleCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    .line 60
    goto :goto_1

    .line 62
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    :goto_1
    nop

    .end local v1    # "$i$a$-synchronized-FragmentLifecycleCallbacksDispatcher$unregisterFragmentLifecycleCallbacks$1":I
    .end local v2    # "i":I
    .end local v3    # "count":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    .line 65
    return-void

    .line 54
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

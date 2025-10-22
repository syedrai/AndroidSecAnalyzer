.class public final Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;
.super Ljava/lang/Object;
.source "MulticastConsumerApi2.kt"

# interfaces
.implements Landroidx/core/util/Consumer;
.implements Landroidx/window/reflection/Consumer2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/core/util/Consumer<",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        ">;",
        "Landroidx/window/reflection/Consumer2<",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMulticastConsumerApi2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MulticastConsumerApi2.kt\nandroidx/window/layout/adapter/extensions/MulticastConsumerApi2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1863#2,2:63\n1#3:65\n*S KotlinDebug\n*F\n+ 1 MulticastConsumerApi2.kt\nandroidx/window/layout/adapter/extensions/MulticastConsumerApi2\n*L\n43#1:63,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010#\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00020\u0003B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0002H\u0016J\u0014\u0010\u0011\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001J\u0014\u0010\u0013\u001a\u00020\u000f2\u000c\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0001J\u0006\u0010\u0014\u001a\u00020\u0015R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0004\u0018\u00010\u000b8\u0002@\u0002X\u0083\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u000b0\u00010\r8\u0002X\u0083\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;",
        "Landroidx/core/util/Consumer;",
        "Landroidx/window/extensions/layout/WindowLayoutInfo;",
        "Landroidx/window/reflection/Consumer2;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "globalLock",
        "Ljava/util/concurrent/locks/ReentrantLock;",
        "lastKnownValue",
        "Landroidx/window/layout/WindowLayoutInfo;",
        "registeredListeners",
        "",
        "accept",
        "",
        "value",
        "addListener",
        "listener",
        "removeListener",
        "isEmpty",
        "",
        "window_release"
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
.field private final context:Landroid/content/Context;

.field private final globalLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

.field private final registeredListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->context:Landroid/content/Context;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 37
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->registeredListeners:Ljava/util/Set;

    .line 31
    return-void
.end method


# virtual methods
.method public accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V
    .locals 9
    .param p1, "value"    # Landroidx/window/extensions/layout/WindowLayoutInfo;

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 41
    .local v1, "$i$a$-withLock-MulticastConsumerApi2$accept$1":I
    :try_start_0
    sget-object v2, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->INSTANCE:Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;

    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->context:Landroid/content/Context;

    invoke-virtual {v2, v3, p1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object v2

    .line 42
    .local v2, "newValue":Landroidx/window/layout/WindowLayoutInfo;
    iput-object v2, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    .line 43
    iget-object v3, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->registeredListeners:Ljava/util/Set;

    check-cast v3, Ljava/lang/Iterable;

    .local v3, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v4, 0x0

    .line 63
    .local v4, "$i$f$forEach":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Landroidx/core/util/Consumer;

    .local v7, "consumer":Landroidx/core/util/Consumer;
    const/4 v8, 0x0

    .line 43
    .local v8, "$i$a$-forEach-MulticastConsumerApi2$accept$1$1":I
    invoke-interface {v7, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 63
    .end local v7    # "consumer":Landroidx/core/util/Consumer;
    .end local v8    # "$i$a$-forEach-MulticastConsumerApi2$accept$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 64
    :cond_0
    nop

    .line 44
    .end local v3    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v4    # "$i$f$forEach":I
    nop

    .end local v1    # "$i$a$-withLock-MulticastConsumerApi2$accept$1":I
    .end local v2    # "newValue":Landroidx/window/layout/WindowLayoutInfo;
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 45
    return-void

    .line 40
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 1
    .param p1, "p0"    # Ljava/lang/Object;

    .line 30
    move-object v0, p1

    check-cast v0, Landroidx/window/extensions/layout/WindowLayoutInfo;

    invoke-virtual {p0, v0}, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->accept(Landroidx/window/extensions/layout/WindowLayoutInfo;)V

    return-void
.end method

.method public final addListener(Landroidx/core/util/Consumer;)V
    .locals 4
    .param p1, "listener"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v1, 0x0

    .line 49
    .local v1, "$i$a$-withLock-MulticastConsumerApi2$addListener$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->lastKnownValue:Landroidx/window/layout/WindowLayoutInfo;

    if-eqz v2, :cond_0

    .line 65
    .local v2, "value":Landroidx/window/layout/WindowLayoutInfo;
    const/4 v3, 0x0

    .line 49
    .local v3, "$i$a$-let-MulticastConsumerApi2$addListener$1$1":I
    invoke-interface {p1, v2}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 50
    .end local v2    # "value":Landroidx/window/layout/WindowLayoutInfo;
    .end local v3    # "$i$a$-let-MulticastConsumerApi2$addListener$1$1":I
    :cond_0
    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->registeredListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    .end local v1    # "$i$a$-withLock-MulticastConsumerApi2$addListener$1":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 52
    return-void

    .line 48
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 59
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->registeredListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final removeListener(Landroidx/core/util/Consumer;)V
    .locals 3
    .param p1, "listener"    # Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroidx/window/layout/WindowLayoutInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->globalLock:Ljava/util/concurrent/locks/ReentrantLock;

    check-cast v0, Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 65
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-withLock-MulticastConsumerApi2$removeListener$1":I
    :try_start_0
    iget-object v2, p0, Landroidx/window/layout/adapter/extensions/MulticastConsumerApi2;->registeredListeners:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "$i$a$-withLock-MulticastConsumerApi2$removeListener$1":I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 56
    return-void

    .line 55
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.class public abstract Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
        "TN;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,265:1\n103#1,7:266\n1#2:273\n163#3,4:274\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n*L\n111#1:266,7\n158#1:274,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0010\u0001\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008 \u0018\u0000*\u000e\u0008\u0000\u0010\u0001*\u0008\u0012\u0004\u0012\u0002H\u00010\u00002\u00020\u0002B\u0011\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001e\u0010\u000c\u001a\u0004\u0018\u00018\u00002\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000eH\u0086\u0008\u00a2\u0006\u0002\u0010\u0010J\u0013\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0017J\u0006\u0010\u001b\u001a\u00020\u001cJ\u0006\u0010\u001d\u001a\u00020\u0015J\u0006\u0010\u001f\u001a\u00020\u001cR\u0016\u0010\u0006\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0008\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00028BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0011\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0018\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0013\u0010\u0003\u001a\u0004\u0018\u00018\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001a\u0010\u0013R\u0012\u0010\u001e\u001a\u00020\u0015X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001e\u0010\u0019R\u0016\u0010 \u001a\u0004\u0018\u00018\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008!\u0010\u0013R\u0014\u0010\"\u001a\u00028\u00008BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010\u0013\u00a8\u0006$"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "N",
        "",
        "prev",
        "<init>",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V",
        "_next",
        "Lkotlinx/atomicfu/AtomicRef;",
        "_prev",
        "nextOrClosed",
        "getNextOrClosed",
        "()Ljava/lang/Object;",
        "nextOrIfClosed",
        "onClosedAction",
        "Lkotlin/Function0;",
        "",
        "(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "next",
        "getNext",
        "()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "trySetNext",
        "",
        "value",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z",
        "isTail",
        "()Z",
        "getPrev",
        "cleanPrev",
        "",
        "markAsClosed",
        "isRemoved",
        "remove",
        "aliveSegmentLeft",
        "getAliveSegmentLeft",
        "aliveSegmentRight",
        "getAliveSegmentRight",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final _next:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _prev:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)V
    .locals 1
    .param p1, "prev"    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prev"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 94
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .line 90
    return-void
.end method

.method public static final synthetic access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;
    .locals 1
    .param p0, "$this"    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 90
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNextOrClosed()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private final getAliveSegmentLeft()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    .line 170
    .local v0, "cur":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    goto :goto_0

    .line 172
    :cond_0
    return-object v0
.end method

.method private final getAliveSegmentRight()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 176
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x0

    .line 176
    .local v0, "$i$a$-assert-ConcurrentLinkedListNode$aliveSegmentRight$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v1

    .end local v0    # "$i$a$-assert-ConcurrentLinkedListNode$aliveSegmentRight$1":I
    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 177
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    .local v0, "cur":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 180
    :cond_3
    return-object v0
.end method

.method private final getNextOrClosed()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final cleanPrev()V
    .locals 2

    .line 128
    iget-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicRef;->lazySet(Ljava/lang/Object;)V

    return-void
.end method

.method public final getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 111
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v1, 0x0

    .line 266
    .local v1, "$i$f$nextOrIfClosed":I
    invoke-static {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v2

    .local v2, "it$iv":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 267
    .local v3, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v4

    if-ne v2, v4, :cond_0

    .line 268
    const/4 v4, 0x0

    .line 111
    .local v4, "$i$a$-nextOrIfClosed-ConcurrentLinkedListNode$next$1":I
    const/4 v5, 0x0

    return-object v5

    .line 270
    .end local v4    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListNode$next$1":I
    :cond_0
    move-object v4, v2

    check-cast v4, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 271
    nop

    .line 266
    .end local v2    # "it$iv":Ljava/lang/Object;
    .end local v3    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    nop

    .line 272
    nop

    .line 111
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v1    # "$i$f$nextOrIfClosed":I
    return-object v4
.end method

.method public final getPrev()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    return-object v0
.end method

.method public abstract isRemoved()Z
.end method

.method public final isTail()Z
    .locals 1

    .line 121
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getNext()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final markAsClosed()Z
    .locals 3

    .line 133
    iget-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final nextOrIfClosed(Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 4
    .param p1, "onClosedAction"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onClosedAction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")TN;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 103
    .local v0, "$i$f$nextOrIfClosed":I
    invoke-static {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v1

    .local v1, "it":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v3

    if-eq v1, v3, :cond_0

    .line 107
    move-object v3, v1

    check-cast v3, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 108
    nop

    .line 103
    .end local v1    # "it":Ljava/lang/Object;
    .end local v2    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1":I
    nop

    .line 109
    return-object v3

    .line 105
    .restart local v1    # "it":Ljava/lang/Object;
    .restart local v2    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1":I
    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    new-instance v3, Lkotlin/KotlinNothingValueException;

    invoke-direct {v3}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw v3
.end method

.method public final remove()V
    .locals 8

    .line 149
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 273
    const/4 v0, 0x0

    .line 149
    .local v0, "$i$a$-assert-ConcurrentLinkedListNode$remove$1":I
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .end local v0    # "$i$a$-assert-ConcurrentLinkedListNode$remove$1":I
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 153
    :cond_4
    nop

    .line 155
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getAliveSegmentLeft()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v0

    .line 156
    .local v0, "prev":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    invoke-direct {p0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->getAliveSegmentRight()Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    move-result-object v1

    .line 158
    .local v1, "next":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    iget-object v2, v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_prev:Lkotlinx/atomicfu/AtomicRef;

    .local v2, "$this$update$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v3, 0x0

    .line 274
    .local v3, "$i$f$update":I
    :cond_5
    nop

    .line 275
    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 276
    .local v4, "cur$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .local v5, "it":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v6, 0x0

    .line 158
    .local v6, "$i$a$-update-ConcurrentLinkedListNode$remove$2":I
    if-nez v5, :cond_6

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    move-object v7, v0

    .line 276
    .end local v5    # "it":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v6    # "$i$a$-update-ConcurrentLinkedListNode$remove$2":I
    :goto_3
    nop

    .line 277
    .local v7, "upd$iv":Ljava/lang/Object;
    invoke-virtual {v2, v4, v7}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 159
    .end local v2    # "$this$update$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v3    # "$i$f$update":I
    .end local v4    # "cur$iv":Ljava/lang/Object;
    .end local v7    # "upd$iv":Ljava/lang/Object;
    if-eqz v0, :cond_7

    iget-object v2, v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    invoke-virtual {v2, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 161
    :cond_7
    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isRemoved()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isTail()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 162
    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_4

    .line 164
    :cond_9
    return-void
.end method

.method public final trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z
    .locals 2
    .param p1, "value"    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->_next:Lkotlinx/atomicfu/AtomicRef;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.class public final Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
.super Ljava/lang/Object;
.source "OnDemandAllocatingPool.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOnDemandAllocatingPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n+ 2 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPoolKt\n*L\n1#1,103:1\n37#1:106\n37#1:109\n30#1:110\n31#1,7:113\n37#1:130\n350#2,2:104\n350#2,2:107\n350#2,2:111\n1563#3:120\n1634#3,2:121\n1636#3:125\n1563#3:126\n1634#3,3:127\n97#4,2:123\n*S KotlinDebug\n*F\n+ 1 OnDemandAllocatingPool.kt\nkotlinx/coroutines/internal/OnDemandAllocatingPool\n*L\n31#1:106\n50#1:109\n72#1:110\n72#1:113,7\n88#1:130\n30#1:104,2\n49#1:107,2\n72#1:111,2\n73#1:120\n73#1:121,2\n73#1:125\n87#1:126\n87#1:127,3\n75#1:123,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\t\u0010\r\u001a\u00020\u0004H\u0082\u0008J\r\u0010\u000e\u001a\u00020\u000f*\u00020\u0004H\u0082\u0008J\u0006\u0010\u0010\u001a\u00020\u000fJ\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0012J\r\u0010\u0013\u001a\u00020\u0014H\u0000\u00a2\u0006\u0002\u0008\u0015J\u0008\u0010\u0016\u001a\u00020\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00028\u00000\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/OnDemandAllocatingPool;",
        "T",
        "",
        "maxCapacity",
        "",
        "create",
        "Lkotlin/Function1;",
        "<init>",
        "(ILkotlin/jvm/functions/Function1;)V",
        "controlState",
        "Lkotlinx/atomicfu/AtomicInt;",
        "elements",
        "Lkotlinx/atomicfu/AtomicArray;",
        "tryForbidNewElements",
        "isClosed",
        "",
        "allocate",
        "close",
        "",
        "stateRepresentation",
        "",
        "stateRepresentation$kotlinx_coroutines_core",
        "toString",
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
.field private final controlState:Lkotlinx/atomicfu/AtomicInt;

.field private final create:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final elements:Lkotlinx/atomicfu/AtomicArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicArray<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxCapacity:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1, "maxCapacity"    # I
    .param p2, "create"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxCapacity",
            "create"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    .line 16
    iput-object p2, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    .line 22
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(I)Lkotlinx/atomicfu/AtomicInt;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    .line 23
    iget v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU_commonKt;->atomicArrayOfNulls(I)Lkotlinx/atomicfu/AtomicArray;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Lkotlinx/atomicfu/AtomicArray;

    .line 14
    return-void
.end method

.method private final isClosed(I)Z
    .locals 2
    .param p1, "$this$isClosed"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$isClosed"
        }
    .end annotation

    const/4 v0, 0x0

    .line 37
    .local v0, "$i$f$isClosed":I
    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final tryForbidNewElements()I
    .locals 11

    const/4 v0, 0x0

    .line 30
    .local v0, "$i$f$tryForbidNewElements":I
    iget-object v1, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    .local v1, "$this$loop$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v2, 0x0

    .line 104
    .local v2, "$i$f$loop":I
    :goto_0
    nop

    .line 105
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v3

    .local v3, "it":I
    const/4 v4, 0x0

    .line 31
    .local v4, "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1":I
    move v5, v3

    .local v5, "$this$isClosed$iv":I
    move-object v6, p0

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v7, 0x0

    .line 106
    .local v7, "$i$f$isClosed":I
    const/high16 v8, -0x80000000

    and-int v9, v5, v8

    const/4 v10, 0x0

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 31
    .end local v5    # "$this$isClosed$iv":I
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v7    # "$i$f$isClosed":I
    :goto_1
    if-eqz v9, :cond_1

    return v10

    .line 32
    :cond_1
    iget-object v5, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    or-int v6, v3, v8

    invoke-virtual {v5, v3, v6}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    .line 33
    :cond_2
    nop

    .line 105
    .end local v3    # "it":I
    .end local v4    # "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1":I
    goto :goto_0
.end method


# virtual methods
.method public final allocate()Z
    .locals 10

    .line 49
    iget-object v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v1, 0x0

    .line 107
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 108
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v2

    .local v2, "ctl":I
    const/4 v3, 0x0

    .line 50
    .local v3, "$i$a$-loop-OnDemandAllocatingPool$allocate$1":I
    move v4, v2

    .local v4, "$this$isClosed$iv":I
    move-object v5, p0

    .local v5, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v6, 0x0

    .line 109
    .local v6, "$i$f$isClosed":I
    const/high16 v7, -0x80000000

    and-int/2addr v7, v4

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 50
    .end local v4    # "$this$isClosed$iv":I
    .end local v5    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v6    # "$i$f$isClosed":I
    :goto_1
    if-eqz v4, :cond_1

    return v8

    .line 51
    :cond_1
    iget v4, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->maxCapacity:I

    if-lt v2, v4, :cond_2

    return v9

    .line 52
    :cond_2
    iget-object v4, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v2, v5}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 53
    iget-object v4, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Lkotlinx/atomicfu/AtomicArray;

    invoke-virtual {v4, v2}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v4

    iget-object v5, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->create:Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 54
    return v9

    .line 56
    :cond_3
    nop

    .line 108
    .end local v2    # "ctl":I
    .end local v3    # "$i$a$-loop-OnDemandAllocatingPool$allocate$1":I
    goto :goto_0
.end method

.method public final close()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 72
    move-object v0, p0

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v1, 0x0

    .line 110
    .local v1, "$i$f$tryForbidNewElements":I
    iget-object v2, v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    .local v2, "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicInt;
    const/4 v3, 0x0

    .line 111
    .local v3, "$i$f$loop":I
    :goto_0
    nop

    .line 112
    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v4

    .local v4, "it$iv":I
    const/4 v5, 0x0

    .line 113
    .local v5, "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    move v6, v4

    .local v6, "$this$isClosed$iv$iv":I
    move-object v7, v0

    .local v7, "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v8, 0x0

    .line 119
    .local v8, "$i$f$isClosed":I
    const/high16 v9, -0x80000000

    and-int v10, v6, v9

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    goto :goto_1

    :cond_0
    const/4 v10, 0x0

    .line 113
    .end local v6    # "$this$isClosed$iv$iv":I
    .end local v7    # "this_$iv$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v8    # "$i$f$isClosed":I
    :goto_1
    if-eqz v10, :cond_1

    const/4 v4, 0x0

    goto :goto_2

    .line 114
    :cond_1
    iget-object v6, v0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    or-int v7, v4, v9

    invoke-virtual {v6, v4, v7}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 72
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v1    # "$i$f$tryForbidNewElements":I
    .end local v2    # "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicInt;
    .end local v3    # "$i$f$loop":I
    .end local v4    # "it$iv":I
    .end local v5    # "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    :goto_2
    nop

    .line 73
    .local v4, "elementsExisting":I
    invoke-static {v11, v4}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .local v0, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v1, 0x0

    .line 120
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v5, 0x0

    .line 121
    .local v5, "$i$f$mapTo":I
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v6

    check-cast v7, Lkotlin/collections/IntIterator;

    invoke-virtual {v7}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v7

    .line 122
    .local v7, "item$iv$iv":I
    move v8, v7

    .local v8, "i":I
    const/4 v9, 0x0

    .line 75
    .local v9, "$i$a$-map-OnDemandAllocatingPool$close$1":I
    const/4 v10, 0x0

    .line 123
    .local v10, "$i$f$loop":I
    :goto_4
    nop

    .line 124
    const/4 v11, 0x0

    .line 76
    .local v11, "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    iget-object v12, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Lkotlinx/atomicfu/AtomicArray;

    invoke-virtual {v12, v8}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Lkotlinx/atomicfu/AtomicRef;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 77
    .local v12, "element":Ljava/lang/Object;
    if-eqz v12, :cond_2

    .line 78
    nop

    .line 122
    .end local v8    # "i":I
    .end local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .end local v10    # "$i$f$loop":I
    .end local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .end local v12    # "element":Ljava/lang/Object;
    invoke-interface {v2, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 80
    .restart local v8    # "i":I
    .restart local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .restart local v10    # "$i$f$loop":I
    .restart local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .restart local v12    # "element":Ljava/lang/Object;
    :cond_2
    nop

    .line 124
    .end local v11    # "$i$a$-loop-OnDemandAllocatingPool$close$1$1":I
    .end local v12    # "element":Ljava/lang/Object;
    goto :goto_4

    .line 125
    .end local v7    # "item$iv$iv":I
    .end local v8    # "i":I
    .end local v9    # "$i$a$-map-OnDemandAllocatingPool$close$1":I
    .end local v10    # "$i$f$loop":I
    :cond_3
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v5    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 120
    nop

    .line 73
    .end local v0    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v1    # "$i$f$map":I
    return-object v2

    .line 115
    .local v0, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .local v1, "$i$f$tryForbidNewElements":I
    .local v2, "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicInt;
    .local v3, "$i$f$loop":I
    .local v4, "it$iv":I
    .local v5, "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    :cond_4
    nop

    .line 112
    .end local v4    # "it$iv":I
    .end local v5    # "$i$a$-loop-OnDemandAllocatingPool$tryForbidNewElements$1$iv":I
    goto :goto_0
.end method

.method public final stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;
    .locals 12

    .line 86
    iget-object v0, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->controlState:Lkotlinx/atomicfu/AtomicInt;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v0

    .line 87
    .local v0, "ctl":I
    const v1, 0x7fffffff

    and-int/2addr v1, v0

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lkotlin/ranges/RangesKt;->until(II)Lkotlin/ranges/IntRange;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$map$iv":Ljava/lang/Iterable;
    const/4 v3, 0x0

    .line 126
    .local v3, "$i$f$map":I
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v1, v5}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v4, Ljava/util/Collection;

    .local v4, "destination$iv$iv":Ljava/util/Collection;
    move-object v5, v1

    .local v5, "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    const/4 v6, 0x0

    .line 127
    .local v6, "$i$f$mapTo":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lkotlin/collections/IntIterator;

    invoke-virtual {v8}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v8

    .line 128
    .local v8, "item$iv$iv":I
    move v9, v8

    .local v9, "it":I
    const/4 v10, 0x0

    .line 87
    .local v10, "$i$a$-map-OnDemandAllocatingPool$stateRepresentation$elementsStr$1":I
    iget-object v11, p0, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->elements:Lkotlinx/atomicfu/AtomicArray;

    invoke-virtual {v11, v9}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v11

    invoke-virtual {v11}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 128
    .end local v9    # "it":I
    .end local v10    # "$i$a$-map-OnDemandAllocatingPool$stateRepresentation$elementsStr$1":I
    invoke-interface {v4, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 129
    .end local v8    # "item$iv$iv":I
    :cond_0
    nop

    .end local v4    # "destination$iv$iv":Ljava/util/Collection;
    .end local v5    # "$this$mapTo$iv$iv":Ljava/lang/Iterable;
    .end local v6    # "$i$f$mapTo":I
    check-cast v4, Ljava/util/List;

    .line 126
    nop

    .line 87
    .end local v1    # "$this$map$iv":Ljava/lang/Iterable;
    .end local v3    # "$i$f$map":I
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "elementsStr":Ljava/lang/String;
    move v3, v0

    .local v3, "$this$isClosed$iv":I
    move-object v4, p0

    .local v4, "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    const/4 v5, 0x0

    .line 130
    .local v5, "$i$f$isClosed":I
    const/high16 v6, -0x80000000

    and-int/2addr v6, v3

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    .line 88
    .end local v3    # "$this$isClosed$iv":I
    .end local v4    # "this_$iv":Lkotlinx/coroutines/internal/OnDemandAllocatingPool;
    .end local v5    # "$i$f$isClosed":I
    :cond_1
    if-eqz v2, :cond_2

    const-string v2, "[closed]"

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 89
    .local v2, "closedStr":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/OnDemandAllocatingPool;->stateRepresentation$kotlinx_coroutines_core()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDemandAllocatingPool("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

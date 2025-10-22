.class public final Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;
.super Ljava/lang/Object;
.source "ConcurrentLinkedList.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nConcurrentLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 2 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListNode\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,265:1\n41#1:275\n42#1,8:278\n103#2,7:266\n103#2,7:286\n154#3,2:273\n154#3,2:276\n*S KotlinDebug\n*F\n+ 1 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n*L\n70#1:275\n70#1:278,8\n23#1:266,7\n81#1:286,7\n41#1:273,2\n70#1:276,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u001ag\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003*\u0002H\u00022\u0006\u0010\u0004\u001a\u00020\u000526\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u0002H\u00020\u0007H\u0000\u00a2\u0006\u0002\u0010\u000b\u001a0\u0010\u000c\u001a\u00020\r\"\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0006\u0010\u000f\u001a\u0002H\u0002H\u0080\u0008\u00a2\u0006\u0002\u0010\u0010\u001ax\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u0002H\u00020\u0001\"\u000e\u0008\u0000\u0010\u0002*\u0008\u0012\u0004\u0012\u0002H\u00020\u0003*\u0008\u0012\u0004\u0012\u0002H\u00020\u000e2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u0002H\u000228\u0008\u0008\u0010\u0006\u001a2\u0012\u0013\u0012\u00110\u0005\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u0004\u0012\u0013\u0012\u0011H\u0002\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\n\u0012\u0004\u0012\u0002H\u00020\u0007H\u0080\u0008\u00a2\u0006\u0002\u0010\u0013\u001a!\u0010\u0014\u001a\u0002H\u0015\"\u000e\u0008\u0000\u0010\u0015*\u0008\u0012\u0004\u0012\u0002H\u00150\u0016*\u0002H\u0015H\u0000\u00a2\u0006\u0002\u0010\u0017\u001a8\u0010\u0018\u001a\u00020\r*\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u001b\u00a2\u0006\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\r0\u001dH\u0082\u0008\"\u000e\u0010\u001f\u001a\u00020\u001bX\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "findSegmentInternal",
        "Lkotlinx/coroutines/internal/SegmentOrClosed;",
        "S",
        "Lkotlinx/coroutines/internal/Segment;",
        "id",
        "",
        "createNewSegment",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "prev",
        "(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "moveForward",
        "",
        "Lkotlinx/atomicfu/AtomicRef;",
        "to",
        "(Lkotlinx/atomicfu/AtomicRef;Lkotlinx/coroutines/internal/Segment;)Z",
        "findSegmentAndMoveForward",
        "startFrom",
        "(Lkotlinx/atomicfu/AtomicRef;JLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;",
        "close",
        "N",
        "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;",
        "addConditionally",
        "Lkotlinx/atomicfu/AtomicInt;",
        "delta",
        "",
        "condition",
        "Lkotlin/Function1;",
        "cur",
        "POINTERS_SHIFT",
        "CLOSED",
        "Lkotlinx/coroutines/internal/Symbol;",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final CLOSED:Lkotlinx/coroutines/internal/Symbol;

.field private static final POINTERS_SHIFT:I = 0x10


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 264
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "CLOSED"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public static final synthetic access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    return-object v0
.end method

.method private static final addConditionally(Lkotlinx/atomicfu/AtomicInt;ILkotlin/jvm/functions/Function1;)Z
    .locals 3
    .param p0, "$this$addConditionally"    # Lkotlinx/atomicfu/AtomicInt;
    .param p1, "delta"    # I
    .param p2, "condition"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$addConditionally",
            "delta",
            "condition"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/atomicfu/AtomicInt;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 248
    .local v0, "$i$f$addConditionally":I
    :cond_0
    nop

    .line 249
    invoke-virtual {p0}, Lkotlinx/atomicfu/AtomicInt;->getValue()I

    move-result v1

    .line 250
    .local v1, "cur":I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p2, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    return v2

    .line 251
    :cond_1
    add-int v2, v1, p1

    invoke-virtual {p0, v1, v2}, Lkotlinx/atomicfu/AtomicInt;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2
.end method

.method public static final close(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .locals 6
    .param p0, "$this$close"    # Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "$this$close"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lkotlinx/coroutines/internal/ConcurrentLinkedListNode<",
            "TN;>;>(TN;)TN;"
        }
    .end annotation

    .line 79
    const/4 v0, 0x0

    .local v0, "cur":Ljava/lang/Object;
    move-object v0, p0

    .line 80
    :cond_0
    :goto_0
    nop

    .line 81
    move-object v1, v0

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v2, 0x0

    .line 286
    .local v2, "$i$f$nextOrIfClosed":I
    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 287
    .local v4, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_1

    .line 288
    const/4 v5, 0x0

    .line 81
    .local v5, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$close$next$1":I
    return-object v0

    .line 290
    .end local v5    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$close$next$1":I
    :cond_1
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 291
    nop

    .line 286
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    nop

    .line 292
    nop

    .line 81
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v2    # "$i$f$nextOrIfClosed":I
    nop

    .line 82
    .local v5, "next":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    if-nez v5, :cond_2

    .line 83
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->markAsClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 85
    :cond_2
    move-object v0, v5

    .end local v5    # "next":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    goto :goto_0
.end method

.method public static final findSegmentAndMoveForward(Lkotlinx/atomicfu/AtomicRef;JLkotlinx/coroutines/internal/Segment;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 17
    .param p0, "$this$findSegmentAndMoveForward"    # Lkotlinx/atomicfu/AtomicRef;
    .param p1, "id"    # J
    .param p3, "startFrom"    # Lkotlinx/coroutines/internal/Segment;
    .param p4, "createNewSegment"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$findSegmentAndMoveForward",
            "id",
            "startFrom",
            "createNewSegment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Lkotlinx/atomicfu/AtomicRef<",
            "TS;>;JTS;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 68
    .local v0, "$i$f$findSegmentAndMoveForward":I
    :goto_0
    nop

    .line 69
    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {v3, v1, v2, v4}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "s":Ljava/lang/Object;
    invoke-static {v5}, Lkotlinx/coroutines/internal/SegmentOrClosed;->isClosed-impl(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v5}, Lkotlinx/coroutines/internal/SegmentOrClosed;->getSegment-impl(Ljava/lang/Object;)Lkotlinx/coroutines/internal/Segment;

    move-result-object v6

    .local v6, "to$iv":Lkotlinx/coroutines/internal/Segment;
    move-object/from16 v7, p0

    .local v7, "$this$moveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v8, 0x0

    .line 275
    .local v8, "$i$f$moveForward":I
    move-object v9, v7

    .local v9, "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v10, 0x0

    .line 276
    .local v10, "$i$f$loop":I
    :goto_1
    nop

    .line 277
    invoke-virtual {v9}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lkotlinx/coroutines/internal/Segment;

    .local v11, "cur$iv":Lkotlinx/coroutines/internal/Segment;
    const/4 v12, 0x0

    .line 278
    .local v12, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv":I
    iget-wide v13, v11, Lkotlinx/coroutines/internal/Segment;->id:J

    move v15, v0

    .end local v0    # "$i$f$findSegmentAndMoveForward":I
    .local v15, "$i$f$findSegmentAndMoveForward":I
    iget-wide v0, v6, Lkotlinx/coroutines/internal/Segment;->id:J

    const/4 v2, 0x1

    cmp-long v16, v13, v0

    if-ltz v16, :cond_0

    goto :goto_2

    .line 279
    :cond_0
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto :goto_2

    .line 280
    :cond_1
    invoke-virtual {v7, v11, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 281
    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v11}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 282
    :cond_2
    nop

    .line 70
    .end local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$this$moveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v8    # "$i$f$moveForward":I
    .end local v9    # "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v10    # "$i$f$loop":I
    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv":I
    :goto_2
    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v15

    goto :goto_0

    .line 284
    .restart local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v7    # "$this$moveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v8    # "$i$f$moveForward":I
    .restart local v9    # "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .restart local v10    # "$i$f$loop":I
    .restart local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .restart local v12    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv":I
    :cond_4
    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v6}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 285
    :cond_5
    nop

    .line 277
    .end local v11    # "cur$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v12    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1$iv":I
    move-wide/from16 v1, p1

    move v0, v15

    goto :goto_1

    .line 70
    .end local v6    # "to$iv":Lkotlinx/coroutines/internal/Segment;
    .end local v7    # "$this$moveForward$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v8    # "$i$f$moveForward":I
    .end local v9    # "$this$loop$iv$iv":Lkotlinx/atomicfu/AtomicRef;
    .end local v10    # "$i$f$loop":I
    .end local v15    # "$i$f$findSegmentAndMoveForward":I
    .restart local v0    # "$i$f$findSegmentAndMoveForward":I
    :cond_6
    move v15, v0

    .end local v0    # "$i$f$findSegmentAndMoveForward":I
    .restart local v15    # "$i$f$findSegmentAndMoveForward":I
    :goto_3
    return-object v5
.end method

.method public static final findSegmentInternal(Lkotlinx/coroutines/internal/Segment;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$findSegmentInternal"    # Lkotlinx/coroutines/internal/Segment;
    .param p1, "id"    # J
    .param p3, "createNewSegment"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "$this$findSegmentInternal",
            "id",
            "createNewSegment"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(TS;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TS;+TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 21
    move-object v0, p0

    .line 22
    .local v0, "cur":Lkotlinx/coroutines/internal/Segment;
    :cond_0
    :goto_0
    iget-wide v1, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    cmp-long v3, v1, p1

    if-ltz v3, :cond_2

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 34
    :cond_1
    invoke-static {v0}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 23
    :cond_2
    :goto_1
    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    const/4 v2, 0x0

    .line 266
    .local v2, "$i$f$nextOrIfClosed":I
    invoke-static {v1}, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;->access$getNextOrClosed(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Ljava/lang/Object;

    move-result-object v3

    .local v3, "it$iv":Ljava/lang/Object;
    const/4 v4, 0x0

    .line 267
    .local v4, "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    invoke-static {}, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->access$getCLOSED$p()Lkotlinx/coroutines/internal/Symbol;

    move-result-object v5

    if-ne v3, v5, :cond_3

    .line 268
    const/4 v5, 0x0

    .line 23
    .local v5, "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1":I
    sget-object v6, Lkotlinx/coroutines/internal/ConcurrentLinkedListKt;->CLOSED:Lkotlinx/coroutines/internal/Symbol;

    invoke-static {v6}, Lkotlinx/coroutines/internal/SegmentOrClosed;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    return-object v6

    .line 270
    .end local v5    # "$i$a$-nextOrIfClosed-ConcurrentLinkedListKt$findSegmentInternal$next$1":I
    :cond_3
    move-object v5, v3

    check-cast v5, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    .line 271
    nop

    .line 266
    .end local v3    # "it$iv":Ljava/lang/Object;
    .end local v4    # "$i$a$-let-ConcurrentLinkedListNode$nextOrIfClosed$1$iv":I
    nop

    .line 272
    nop

    .line 23
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;
    .end local v2    # "$i$f$nextOrIfClosed":I
    move-object v1, v5

    check-cast v1, Lkotlinx/coroutines/internal/Segment;

    .line 24
    .local v1, "next":Lkotlinx/coroutines/internal/Segment;
    if-eqz v1, :cond_4

    .line 25
    move-object v0, v1

    .line 26
    goto :goto_0

    .line 28
    :cond_4
    iget-wide v2, v0, Lkotlinx/coroutines/internal/Segment;->id:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p3, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/Segment;

    .line 29
    .local v2, "newTail":Lkotlinx/coroutines/internal/Segment;
    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;

    invoke-virtual {v0, v3}, Lkotlinx/coroutines/internal/Segment;->trySetNext(Lkotlinx/coroutines/internal/ConcurrentLinkedListNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 30
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 31
    :cond_5
    move-object v0, v2

    .end local v1    # "next":Lkotlinx/coroutines/internal/Segment;
    .end local v2    # "newTail":Lkotlinx/coroutines/internal/Segment;
    goto :goto_0
.end method

.method public static final moveForward(Lkotlinx/atomicfu/AtomicRef;Lkotlinx/coroutines/internal/Segment;)Z
    .locals 11
    .param p0, "$this$moveForward"    # Lkotlinx/atomicfu/AtomicRef;
    .param p1, "to"    # Lkotlinx/coroutines/internal/Segment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "$this$moveForward",
            "to"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Lkotlinx/coroutines/internal/Segment<",
            "TS;>;>(",
            "Lkotlinx/atomicfu/AtomicRef<",
            "TS;>;TS;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 41
    .local v0, "$i$f$moveForward":I
    move-object v1, p0

    .local v1, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v2, 0x0

    .line 273
    .local v2, "$i$f$loop":I
    :goto_0
    nop

    .line 274
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlinx/coroutines/internal/Segment;

    .local v3, "cur":Lkotlinx/coroutines/internal/Segment;
    const/4 v4, 0x0

    .line 42
    .local v4, "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1":I
    iget-wide v5, v3, Lkotlinx/coroutines/internal/Segment;->id:J

    iget-wide v7, p1, Lkotlinx/coroutines/internal/Segment;->id:J

    const/4 v9, 0x1

    cmp-long v10, v5, v7

    if-ltz v10, :cond_0

    return v9

    .line 43
    :cond_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->tryIncPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    return v5

    .line 44
    :cond_1
    invoke-virtual {p0, v3, p1}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 45
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 46
    :cond_2
    return v9

    .line 48
    :cond_3
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->decPointers$kotlinx_coroutines_core()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p1}, Lkotlinx/coroutines/internal/Segment;->remove()V

    .line 49
    :cond_4
    nop

    .line 274
    .end local v3    # "cur":Lkotlinx/coroutines/internal/Segment;
    .end local v4    # "$i$a$-loop-ConcurrentLinkedListKt$moveForward$1":I
    goto :goto_0
.end method

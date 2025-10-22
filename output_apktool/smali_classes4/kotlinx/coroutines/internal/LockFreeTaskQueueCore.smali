.class public final Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
.super Ljava/lang/Object;
.source "LockFreeTaskQueue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;,
        Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n295#2,3:305\n295#2,3:308\n295#2,3:317\n295#2,3:322\n295#2,3:327\n295#2,3:337\n295#2,3:340\n476#3,4:311\n467#3,2:315\n467#3,2:320\n467#3,2:325\n498#3,4:331\n154#3,2:335\n1#4:330\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n87#1:305,3\n88#1:308,3\n103#1:317,3\n163#1:322,3\n196#1:327,3\n227#1:337,3\n243#1:340,3\n91#1:311,4\n101#1:315,2\n161#1:320,2\n195#1:325,2\n213#1:331,4\n219#1:335,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 .*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u0002:\u0002-.B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u0016\u001a\u00020\u0006J\u0013\u0010\u0017\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0019J1\u0010\u001a\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c2\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00028\u0000H\u0002\u00a2\u0006\u0002\u0010\u001cJ\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0002J,\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c2\u0006\u0010\u001f\u001a\u00020\u00042\u0006\u0010 \u001a\u00020\u0004H\u0002J\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0000J\u0008\u0010\"\u001a\u00020#H\u0002J \u0010$\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000c2\u0006\u0010%\u001a\u00020#H\u0002J \u0010&\u001a\u0012\u0012\u0004\u0012\u00028\u00000\u0000j\u0008\u0012\u0004\u0012\u00028\u0000`\u000c2\u0006\u0010%\u001a\u00020#H\u0002J&\u0010\'\u001a\u0008\u0012\u0004\u0012\u0002H)0(\"\u0004\u0008\u0001\u0010)2\u0012\u0010*\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u0002H)0+J\u0006\u0010,\u001a\u00020\u0006R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R(\u0010\n\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0000j\n\u0012\u0004\u0012\u00028\u0000\u0018\u0001`\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000f\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0013\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0015\u00a8\u0006/"
    }
    d2 = {
        "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "E",
        "",
        "capacity",
        "",
        "singleConsumer",
        "",
        "<init>",
        "(IZ)V",
        "mask",
        "_next",
        "Lkotlinx/atomicfu/AtomicRef;",
        "Lkotlinx/coroutines/internal/Core;",
        "_state",
        "Lkotlinx/atomicfu/AtomicLong;",
        "array",
        "Lkotlinx/atomicfu/AtomicArray;",
        "isEmpty",
        "()Z",
        "size",
        "getSize",
        "()I",
        "close",
        "addLast",
        "element",
        "(Ljava/lang/Object;)I",
        "fillPlaceholder",
        "index",
        "(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;",
        "removeFirstOrNull",
        "removeSlowPath",
        "oldHead",
        "newHead",
        "next",
        "markFrozen",
        "",
        "allocateOrGetNextCopy",
        "state",
        "allocateNextCopy",
        "map",
        "",
        "R",
        "transform",
        "Lkotlin/Function1;",
        "isClosed",
        "Placeholder",
        "Companion",
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


# static fields
.field public static final ADD_CLOSED:I = 0x2

.field public static final ADD_FROZEN:I = 0x1

.field public static final ADD_SUCCESS:I = 0x0

.field public static final CAPACITY_BITS:I = 0x1e

.field public static final CLOSED_MASK:J = 0x2000000000000000L

.field public static final CLOSED_SHIFT:I = 0x3d

.field public static final Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

.field public static final FROZEN_MASK:J = 0x1000000000000000L

.field public static final FROZEN_SHIFT:I = 0x3c

.field public static final HEAD_MASK:J = 0x3fffffffL

.field public static final HEAD_SHIFT:I = 0x0

.field public static final INITIAL_CAPACITY:I = 0x8

.field public static final MAX_CAPACITY_MASK:I = 0x3fffffff

.field public static final MIN_ADD_SPIN_CAPACITY:I = 0x400

.field public static final REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

.field public static final TAIL_MASK:J = 0xfffffffc0000000L

.field public static final TAIL_SHIFT:I = 0x1e


# instance fields
.field private final _next:Lkotlinx/atomicfu/AtomicRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicRef<",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final _state:Lkotlinx/atomicfu/AtomicLong;

.field private final array:Lkotlinx/atomicfu/AtomicArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/atomicfu/AtomicArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final capacity:I

.field private final mask:I

.field private final singleConsumer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .line 284
    new-instance v0, Lkotlinx/coroutines/internal/Symbol;

    const-string v1, "REMOVE_FROZEN"

    invoke-direct {v0, v1}, Lkotlinx/coroutines/internal/Symbol;-><init>(Ljava/lang/String;)V

    sput-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 5
    .param p1, "capacity"    # I
    .param p2, "singleConsumer"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "singleConsumer"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput p1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    .line 74
    iput-boolean p2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    .line 76
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 77
    const/4 v0, 0x0

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU;->atomic(Ljava/lang/Object;)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .line 78
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lkotlinx/atomicfu/AtomicFU;->atomic(J)Lkotlinx/atomicfu/AtomicLong;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .line 79
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    invoke-static {v0}, Lkotlinx/atomicfu/AtomicFU_commonKt;->atomicArrayOfNulls(I)Lkotlinx/atomicfu/AtomicArray;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    .line 81
    nop

    .line 82
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    const v2, 0x3fffffff    # 1.9999999f

    const/4 v3, 0x0

    if-gt v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v2, "Check failed."

    if-eqz v0, :cond_3

    .line 83
    iget v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    iget v4, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v0, v4

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 84
    nop

    .line 72
    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final allocateNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 17
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 226
    move-object/from16 v0, p0

    new-instance v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    iget v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    mul-int/lit8 v2, v2, 0x2

    iget-boolean v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    invoke-direct {v1, v2, v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;-><init>(IZ)V

    .line 227
    .local v1, "next":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    sget-object v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v2, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide/from16 v3, p1

    .local v3, "$this$withState$iv":J
    const/4 v5, 0x0

    .line 337
    .local v5, "$i$f$withState":I
    const-wide/32 v6, 0x3fffffff

    and-long/2addr v6, v3

    const/4 v8, 0x0

    shr-long/2addr v6, v8

    long-to-int v7, v6

    .line 338
    .local v7, "head$iv":I
    const-wide v8, 0xfffffffc0000000L

    and-long/2addr v8, v3

    const/16 v6, 0x1e

    shr-long/2addr v8, v6

    long-to-int v6, v8

    .line 339
    .local v6, "tail$iv":I
    move v8, v7

    .local v8, "head":I
    move v9, v6

    .local v9, "tail":I
    const/4 v10, 0x0

    .line 228
    .local v10, "$i$a$-withState-LockFreeTaskQueueCore$allocateNextCopy$1":I
    move v11, v8

    .line 229
    .local v11, "index":I
    :goto_0
    iget v12, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v12, v11

    iget v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v13, v9

    if-eq v12, v13, :cond_1

    .line 231
    iget-object v12, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v13, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v13, v11

    invoke-virtual {v12, v13}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v12

    invoke-virtual {v12}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_0

    new-instance v12, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    invoke-direct {v12, v11}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;-><init>(I)V

    .line 232
    .local v12, "value":Ljava/lang/Object;
    :cond_0
    iget-object v13, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v14, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v14, v11

    invoke-virtual {v13, v14}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v13

    invoke-virtual {v13, v12}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 233
    nop

    .end local v12    # "value":Ljava/lang/Object;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 235
    :cond_1
    iget-object v12, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    sget-object v13, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    const-wide/high16 v14, 0x1000000000000000L

    move-object/from16 v16, v1

    move-wide/from16 v0, p1

    .end local v1    # "next":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .local v16, "next":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    invoke-virtual {v13, v0, v1, v14, v15}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->wo(JJ)J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lkotlinx/atomicfu/AtomicLong;->setValue(J)V

    .line 236
    nop

    .line 339
    .end local v8    # "head":I
    .end local v9    # "tail":I
    .end local v10    # "$i$a$-withState-LockFreeTaskQueueCore$allocateNextCopy$1":I
    .end local v11    # "index":I
    nop

    .line 237
    .end local v2    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v3    # "$this$withState$iv":J
    .end local v5    # "$i$f$withState":I
    .end local v6    # "tail$iv":I
    .end local v7    # "head$iv":I
    return-object v16
.end method

.method private final allocateOrGetNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 7
    .param p1, "state"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    .local v0, "$this$loop$iv":Lkotlinx/atomicfu/AtomicRef;
    const/4 v1, 0x0

    .line 335
    .local v1, "$i$f$loop":I
    :goto_0
    nop

    .line 336
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    .local v2, "next":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    const/4 v3, 0x0

    .line 220
    .local v3, "$i$a$-loop-LockFreeTaskQueueCore$allocateOrGetNextCopy$1":I
    if-eqz v2, :cond_0

    return-object v2

    .line 221
    :cond_0
    iget-object v4, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_next:Lkotlinx/atomicfu/AtomicRef;

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->allocateNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lkotlinx/atomicfu/AtomicRef;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 222
    nop

    .line 336
    .end local v2    # "next":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v3    # "$i$a$-loop-LockFreeTaskQueueCore$allocateOrGetNextCopy$1":I
    goto :goto_0
.end method

.method private final fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 3
    .param p1, "index"    # I
    .param p2, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "index",
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 150
    .local v0, "old":Ljava/lang/Object;
    instance-of v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    iget v1, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;->index:I

    if-ne v1, p1, :cond_0

    .line 151
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v2, p1

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v1

    invoke-virtual {v1, p2}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 153
    return-object p0

    .line 156
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private final markFrozen()J
    .locals 14

    .line 213
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .local v0, "$this$updateAndGet$iv":Lkotlinx/atomicfu/AtomicLong;
    const/4 v1, 0x0

    .line 331
    .local v1, "$i$f$updateAndGet":I
    :cond_0
    nop

    .line 332
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v2

    .line 333
    .local v2, "cur$iv":J
    move-wide v4, v2

    .local v4, "state":J
    const/4 v6, 0x0

    .line 214
    .local v6, "$i$a$-updateAndGet-LockFreeTaskQueueCore$markFrozen$1":I
    const-wide/high16 v7, 0x1000000000000000L

    and-long v9, v4, v7

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-eqz v13, :cond_1

    return-wide v4

    .line 215
    :cond_1
    or-long/2addr v4, v7

    .line 333
    .end local v4    # "state":J
    .end local v6    # "$i$a$-updateAndGet-LockFreeTaskQueueCore$markFrozen$1":I
    nop

    .line 334
    .local v4, "upd$iv":J
    invoke-virtual {v0, v2, v3, v4, v5}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 216
    .end local v0    # "$this$updateAndGet$iv":Lkotlinx/atomicfu/AtomicLong;
    .end local v1    # "$i$f$updateAndGet":I
    .end local v2    # "cur$iv":J
    .end local v4    # "upd$iv":J
    return-wide v4
.end method

.method private final removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 20
    .param p1, "oldHead"    # I
    .param p2, "newHead"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldHead",
            "newHead"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 195
    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .local v1, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    const/4 v2, 0x0

    .line 325
    .local v2, "$i$f$loop":I
    :goto_0
    nop

    .line 326
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v3

    .local v3, "state":J
    const/4 v5, 0x0

    .line 196
    .local v5, "$i$a$-loop-LockFreeTaskQueueCore$removeSlowPath$1":I
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide v7, v3

    .local v7, "$this$withState$iv":J
    const/4 v9, 0x0

    .line 327
    .local v9, "$i$f$withState":I
    const-wide/32 v10, 0x3fffffff

    and-long/2addr v10, v7

    const/4 v12, 0x0

    shr-long/2addr v10, v12

    long-to-int v11, v10

    .line 328
    .local v11, "head$iv":I
    const-wide v13, 0xfffffffc0000000L

    and-long/2addr v13, v7

    const/16 v10, 0x1e

    shr-long/2addr v13, v10

    long-to-int v10, v13

    .line 329
    .local v10, "tail$iv":I
    move v13, v11

    .local v13, "head":I
    const/4 v14, 0x0

    .line 197
    .local v14, "$i$a$-withState-LockFreeTaskQueueCore$removeSlowPath$1$1":I
    invoke-static {}, Lkotlinx/coroutines/DebugKt;->getASSERTIONS_ENABLED()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 330
    const/4 v15, 0x0

    .line 197
    .local v15, "$i$a$-assert-LockFreeTaskQueueCore$removeSlowPath$1$1$1":I
    move/from16 v12, p1

    if-ne v13, v12, :cond_0

    const/16 v16, 0x1

    goto :goto_1

    :cond_0
    const/16 v16, 0x0

    .end local v15    # "$i$a$-assert-LockFreeTaskQueueCore$removeSlowPath$1$1$1":I
    :goto_1
    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    new-instance v15, Ljava/lang/AssertionError;

    invoke-direct {v15}, Ljava/lang/AssertionError;-><init>()V

    throw v15

    :cond_2
    move/from16 v12, p1

    .line 198
    :goto_2
    const-wide/high16 v15, 0x1000000000000000L

    and-long/2addr v15, v3

    const-wide/16 v17, 0x0

    cmp-long v19, v15, v17

    if-eqz v19, :cond_3

    .line 200
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v15

    return-object v15

    .line 202
    :cond_3
    iget-object v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    move-object/from16 v16, v1

    .end local v1    # "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    .local v16, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    move/from16 v17, v2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move/from16 v2, p2

    .end local v2    # "$i$f$loop":I
    .end local v5    # "$i$a$-loop-LockFreeTaskQueueCore$removeSlowPath$1":I
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .local v17, "$i$f$loop":I
    .local v18, "$i$a$-loop-LockFreeTaskQueueCore$removeSlowPath$1":I
    .local v19, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    invoke-virtual {v1, v3, v4, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v5

    invoke-virtual {v15, v3, v4, v5, v6}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v5, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v5, v13

    invoke-virtual {v1, v5}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v1

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 204
    return-object v5

    .line 206
    :cond_4
    nop

    .line 329
    .end local v13    # "head":I
    .end local v14    # "$i$a$-withState-LockFreeTaskQueueCore$removeSlowPath$1$1":I
    nop

    .line 207
    .end local v7    # "$this$withState$iv":J
    .end local v9    # "$i$f$withState":I
    .end local v10    # "tail$iv":I
    .end local v11    # "head$iv":I
    .end local v19    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    nop

    .line 326
    .end local v3    # "state":J
    .end local v18    # "$i$a$-loop-LockFreeTaskQueueCore$removeSlowPath$1":I
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto :goto_0
.end method


# virtual methods
.method public final addLast(Ljava/lang/Object;)I
    .locals 26
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .line 101
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .local v2, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    const/4 v3, 0x0

    .line 315
    .local v3, "$i$f$loop":I
    :goto_0
    nop

    .line 316
    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v4

    .local v4, "state":J
    const/4 v6, 0x0

    .line 102
    .local v6, "$i$a$-loop-LockFreeTaskQueueCore$addLast$1":I
    const-wide/high16 v7, 0x3000000000000000L    # 1.727233711018889E-77

    and-long/2addr v7, v4

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_0

    sget-object v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    invoke-virtual {v7, v4, v5}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->addFailReason(J)I

    move-result v7

    return v7

    .line 103
    :cond_0
    sget-object v7, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v7, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide v11, v4

    .local v11, "$this$withState$iv":J
    const/4 v8, 0x0

    .line 317
    .local v8, "$i$f$withState":I
    const-wide/32 v13, 0x3fffffff

    and-long/2addr v13, v11

    const/4 v15, 0x0

    shr-long/2addr v13, v15

    long-to-int v14, v13

    .line 318
    .local v14, "head$iv":I
    const-wide v16, 0xfffffffc0000000L

    and-long v16, v11, v16

    const/16 v13, 0x1e

    move-wide/from16 v18, v9

    shr-long v9, v16, v13

    long-to-int v10, v9

    .line 319
    .local v10, "tail$iv":I
    move v9, v14

    .local v9, "head":I
    move v13, v10

    .local v13, "tail":I
    const/16 v16, 0x0

    .line 104
    .local v16, "$i$a$-withState-LockFreeTaskQueueCore$addLast$1$1":I
    const/16 v17, 0x0

    iget v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    .line 107
    .local v15, "mask":I
    add-int/lit8 v20, v13, 0x2

    move-object/from16 v21, v2

    .end local v2    # "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    .local v21, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    and-int v2, v20, v15

    move/from16 v20, v3

    .end local v3    # "$i$f$loop":I
    .local v20, "$i$f$loop":I
    and-int v3, v9, v15

    const/16 v22, 0x1

    if-ne v2, v3, :cond_1

    return v22

    .line 110
    :cond_1
    iget-boolean v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    const v23, 0x3fffffff    # 1.9999999f

    and-int v3, v13, v15

    invoke-virtual {v2, v3}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v2

    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 116
    iget v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    const/16 v3, 0x400

    if-lt v2, v3, :cond_3

    sub-int v2, v13, v9

    and-int v2, v2, v23

    iget v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    shr-int/lit8 v3, v3, 0x1

    if-le v2, v3, :cond_2

    goto :goto_1

    .line 120
    :cond_2
    goto :goto_4

    .line 117
    :cond_3
    :goto_1
    return v22

    .line 110
    :cond_4
    const v23, 0x3fffffff    # 1.9999999f

    .line 122
    :cond_5
    add-int/lit8 v2, v13, 0x1

    and-int v2, v2, v23

    .line 123
    .local v2, "newTail":I
    iget-object v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    move/from16 v22, v6

    .end local v6    # "$i$a$-loop-LockFreeTaskQueueCore$addLast$1":I
    .local v22, "$i$a$-loop-LockFreeTaskQueueCore$addLast$1":I
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    move-object/from16 v23, v7

    .end local v7    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .local v23, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    invoke-virtual {v6, v4, v5, v2}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateTail(JI)J

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 125
    iget-object v3, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    and-int v6, v13, v15

    invoke-virtual {v3, v6}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v3

    invoke-virtual {v3, v1}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 127
    move-object/from16 v3, p0

    .line 128
    .local v3, "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :goto_2
    nop

    .line 129
    iget-object v6, v3, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v6}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v6

    const-wide/high16 v24, 0x1000000000000000L

    and-long v6, v6, v24

    cmp-long v24, v6, v18

    if-eqz v24, :cond_7

    .line 130
    invoke-virtual {v3}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    invoke-direct {v6, v13, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->fillPlaceholder(ILjava/lang/Object;)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v6

    if-nez v6, :cond_6

    goto :goto_3

    :cond_6
    move-object v3, v6

    goto :goto_2

    .line 132
    :cond_7
    :goto_3
    return v17

    .line 134
    .end local v3    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :cond_8
    nop

    .line 319
    .end local v2    # "newTail":I
    .end local v9    # "head":I
    .end local v13    # "tail":I
    .end local v15    # "mask":I
    .end local v16    # "$i$a$-withState-LockFreeTaskQueueCore$addLast$1$1":I
    nop

    .line 135
    .end local v8    # "$i$f$withState":I
    .end local v10    # "tail$iv":I
    .end local v11    # "$this$withState$iv":J
    .end local v14    # "head$iv":I
    .end local v23    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    nop

    .line 316
    .end local v4    # "state":J
    .end local v22    # "$i$a$-loop-LockFreeTaskQueueCore$addLast$1":I
    :goto_4
    move/from16 v3, v20

    move-object/from16 v2, v21

    goto/16 :goto_0
.end method

.method public final close()Z
    .locals 15

    .line 91
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .local v0, "$this$update$iv":Lkotlinx/atomicfu/AtomicLong;
    const/4 v1, 0x0

    .line 311
    .local v1, "$i$f$update":I
    :cond_0
    nop

    .line 312
    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v2

    .line 313
    .local v2, "cur$iv":J
    move-wide v4, v2

    .local v4, "state":J
    const/4 v6, 0x0

    .line 92
    .local v6, "$i$a$-update-LockFreeTaskQueueCore$close$1":I
    const-wide/high16 v7, 0x2000000000000000L

    and-long v9, v4, v7

    const/4 v11, 0x1

    const-wide/16 v12, 0x0

    cmp-long v14, v9, v12

    if-eqz v14, :cond_1

    return v11

    .line 93
    :cond_1
    const-wide/high16 v9, 0x1000000000000000L

    and-long/2addr v9, v4

    cmp-long v14, v9, v12

    if-eqz v14, :cond_2

    const/4 v7, 0x0

    return v7

    .line 94
    :cond_2
    or-long/2addr v4, v7

    .line 313
    .end local v4    # "state":J
    .end local v6    # "$i$a$-update-LockFreeTaskQueueCore$close$1":I
    nop

    .line 314
    .local v4, "upd$iv":J
    invoke-virtual {v0, v2, v3, v4, v5}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 96
    .end local v0    # "$this$update$iv":Lkotlinx/atomicfu/AtomicLong;
    .end local v1    # "$i$f$update":I
    .end local v2    # "cur$iv":J
    .end local v4    # "upd$iv":J
    return v11
.end method

.method public final getSize()I
    .locals 11

    .line 88
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v1

    .local v1, "$this$withState$iv":J
    const/4 v3, 0x0

    .line 308
    .local v3, "$i$f$withState":I
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v1

    const/4 v6, 0x0

    shr-long/2addr v4, v6

    long-to-int v5, v4

    .line 309
    .local v5, "head$iv":I
    const-wide v6, 0xfffffffc0000000L

    and-long/2addr v6, v1

    const/16 v4, 0x1e

    shr-long/2addr v6, v4

    long-to-int v4, v6

    .line 310
    .local v4, "tail$iv":I
    move v6, v5

    .local v6, "head":I
    move v7, v4

    .local v7, "tail":I
    const/4 v8, 0x0

    .line 88
    .local v8, "$i$a$-withState-LockFreeTaskQueueCore$size$1":I
    sub-int v9, v7, v6

    const v10, 0x3fffffff    # 1.9999999f

    and-int v6, v9, v10

    .line 310
    .end local v6    # "head":I
    .end local v7    # "tail":I
    .end local v8    # "$i$a$-withState-LockFreeTaskQueueCore$size$1":I
    nop

    .line 88
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v1    # "$this$withState$iv":J
    .end local v3    # "$i$f$withState":I
    .end local v4    # "tail$iv":I
    .end local v5    # "head$iv":I
    return v6
.end method

.method public final isClosed()Z
    .locals 5

    .line 257
    iget-object v0, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v0}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v0

    const-wide/high16 v2, 0x2000000000000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isEmpty()Z
    .locals 10

    .line 87
    sget-object v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v0, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    iget-object v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v1

    .local v1, "$this$withState$iv":J
    const/4 v3, 0x0

    .line 305
    .local v3, "$i$f$withState":I
    const-wide/32 v4, 0x3fffffff

    and-long/2addr v4, v1

    const/4 v6, 0x0

    shr-long/2addr v4, v6

    long-to-int v5, v4

    .line 306
    .local v5, "head$iv":I
    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v1

    const/16 v4, 0x1e

    shr-long/2addr v7, v4

    long-to-int v4, v7

    .line 307
    .local v4, "tail$iv":I
    move v7, v5

    .local v7, "head":I
    move v8, v4

    .local v8, "tail":I
    const/4 v9, 0x0

    .line 87
    .local v9, "$i$a$-withState-LockFreeTaskQueueCore$isEmpty$1":I
    if-ne v7, v8, :cond_0

    const/4 v6, 0x1

    .line 307
    .end local v7    # "head":I
    .end local v8    # "tail":I
    .end local v9    # "$i$a$-withState-LockFreeTaskQueueCore$isEmpty$1":I
    :cond_0
    nop

    .line 87
    .end local v0    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v1    # "$this$withState$iv":J
    .end local v3    # "$i$f$withState":I
    .end local v4    # "tail$iv":I
    .end local v5    # "head$iv":I
    return v6
.end method

.method public final map(Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 13
    .param p1, "transform"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transform"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;+TR;>;)",
            "Ljava/util/List<",
            "TR;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->capacity:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 243
    .local v0, "res":Ljava/util/ArrayList;
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v1, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    iget-object v2, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    invoke-virtual {v2}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v2

    .local v2, "$this$withState$iv":J
    const/4 v4, 0x0

    .line 340
    .local v4, "$i$f$withState":I
    const-wide/32 v5, 0x3fffffff

    and-long/2addr v5, v2

    const/4 v7, 0x0

    shr-long/2addr v5, v7

    long-to-int v6, v5

    .line 341
    .local v6, "head$iv":I
    const-wide v7, 0xfffffffc0000000L

    and-long/2addr v7, v2

    const/16 v5, 0x1e

    shr-long/2addr v7, v5

    long-to-int v5, v7

    .line 342
    .local v5, "tail$iv":I
    move v7, v6

    .local v7, "head":I
    move v8, v5

    .local v8, "tail":I
    const/4 v9, 0x0

    .line 244
    .local v9, "$i$a$-withState-LockFreeTaskQueueCore$map$1":I
    move v10, v7

    .line 245
    .local v10, "index":I
    :goto_0
    iget v11, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v11, v10

    iget v12, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v12, v8

    if-eq v11, v12, :cond_1

    .line 247
    iget-object v11, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v12, p0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v12, v10

    invoke-virtual {v11, v12}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v11

    invoke-virtual {v11}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v11

    .line 249
    .local v11, "element":Ljava/lang/Object;
    if-eqz v11, :cond_0

    instance-of v12, v11, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-nez v12, :cond_0

    invoke-interface {p1, v11}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_0
    nop

    .end local v11    # "element":Ljava/lang/Object;
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 252
    :cond_1
    nop

    .line 342
    .end local v7    # "head":I
    .end local v8    # "tail":I
    .end local v9    # "$i$a$-withState-LockFreeTaskQueueCore$map$1":I
    .end local v10    # "index":I
    nop

    .line 253
    .end local v1    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .end local v2    # "$this$withState$iv":J
    .end local v4    # "$i$f$withState":I
    .end local v5    # "tail$iv":I
    .end local v6    # "head$iv":I
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    return-object v1
.end method

.method public final next()Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore<",
            "TE;>;"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->markFrozen()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->allocateOrGetNextCopy(J)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v0

    return-object v0
.end method

.method public final removeFirstOrNull()Ljava/lang/Object;
    .locals 22

    .line 161
    move-object/from16 v0, p0

    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    .local v1, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    const/4 v2, 0x0

    .line 320
    .local v2, "$i$f$loop":I
    :goto_0
    nop

    .line 321
    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicLong;->getValue()J

    move-result-wide v3

    .local v3, "state":J
    const/4 v5, 0x0

    .line 162
    .local v5, "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNull$1":I
    const-wide/high16 v6, 0x1000000000000000L

    and-long/2addr v6, v3

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_0

    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->REMOVE_FROZEN:Lkotlinx/coroutines/internal/Symbol;

    return-object v6

    .line 163
    :cond_0
    sget-object v6, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    .local v6, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    move-wide v7, v3

    .local v7, "$this$withState$iv":J
    const/4 v9, 0x0

    .line 322
    .local v9, "$i$f$withState":I
    const-wide/32 v10, 0x3fffffff

    and-long/2addr v10, v7

    const/4 v12, 0x0

    shr-long/2addr v10, v12

    long-to-int v11, v10

    .line 323
    .local v11, "head$iv":I
    const-wide v12, 0xfffffffc0000000L

    and-long/2addr v12, v7

    const/16 v10, 0x1e

    shr-long/2addr v12, v10

    long-to-int v10, v12

    .line 324
    .local v10, "tail$iv":I
    move v12, v11

    .local v12, "head":I
    move v13, v10

    .local v13, "tail":I
    const/4 v14, 0x0

    .line 164
    .local v14, "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNull$1$1":I
    iget v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v15, v13

    move-object/from16 v16, v1

    .end local v1    # "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    .local v16, "$this$loop$iv":Lkotlinx/atomicfu/AtomicLong;
    iget v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v1, v12

    move/from16 v17, v2

    .end local v2    # "$i$f$loop":I
    .local v17, "$i$f$loop":I
    const/4 v2, 0x0

    if-ne v15, v1, :cond_1

    return-object v2

    .line 165
    :cond_1
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v15, v12

    invoke-virtual {v1, v15}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v1

    invoke-virtual {v1}, Lkotlinx/atomicfu/AtomicRef;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 166
    .local v1, "element":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 168
    iget-boolean v15, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-eqz v15, :cond_2

    return-object v2

    .line 170
    :cond_2
    goto :goto_2

    .line 173
    :cond_3
    instance-of v15, v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Placeholder;

    if-eqz v15, :cond_4

    return-object v2

    .line 175
    :cond_4
    add-int/lit8 v15, v12, 0x1

    const v18, 0x3fffffff    # 1.9999999f

    and-int v15, v15, v18

    .line 176
    .local v15, "newHead":I
    iget-object v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->_state:Lkotlinx/atomicfu/AtomicLong;

    move-object/from16 v19, v1

    .end local v1    # "element":Ljava/lang/Object;
    .local v19, "element":Ljava/lang/Object;
    sget-object v1, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->Companion:Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;

    move/from16 v20, v5

    move-object/from16 v21, v6

    .end local v5    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNull$1":I
    .end local v6    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    .local v20, "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNull$1":I
    .local v21, "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    invoke-virtual {v1, v3, v4, v15}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;->updateHead(JI)J

    move-result-wide v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lkotlinx/atomicfu/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 179
    iget-object v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->array:Lkotlinx/atomicfu/AtomicArray;

    iget v2, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->mask:I

    and-int/2addr v2, v12

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/AtomicArray;->get(I)Lkotlinx/atomicfu/AtomicRef;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lkotlinx/atomicfu/AtomicRef;->setValue(Ljava/lang/Object;)V

    .line 180
    return-object v19

    .line 183
    :cond_5
    iget-boolean v1, v0, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->singleConsumer:Z

    if-eqz v1, :cond_7

    .line 185
    move-object/from16 v1, p0

    .line 186
    .local v1, "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    :goto_1
    nop

    .line 188
    invoke-direct {v1, v12, v15}, Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;->removeSlowPath(II)Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;

    move-result-object v2

    if-nez v2, :cond_6

    return-object v19

    :cond_6
    move-object v1, v2

    goto :goto_1

    .line 321
    .end local v1    # "cur":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;
    .end local v3    # "state":J
    .end local v7    # "$this$withState$iv":J
    .end local v9    # "$i$f$withState":I
    .end local v10    # "tail$iv":I
    .end local v11    # "head$iv":I
    .end local v12    # "head":I
    .end local v13    # "tail":I
    .end local v14    # "$i$a$-withState-LockFreeTaskQueueCore$removeFirstOrNull$1$1":I
    .end local v15    # "newHead":I
    .end local v19    # "element":Ljava/lang/Object;
    .end local v20    # "$i$a$-loop-LockFreeTaskQueueCore$removeFirstOrNull$1":I
    .end local v21    # "this_$iv":Lkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion;
    :cond_7
    :goto_2
    move-object/from16 v1, v16

    move/from16 v2, v17

    goto/16 :goto_0
.end method

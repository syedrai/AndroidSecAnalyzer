.class public final Landroidx/collection/CircularArray;
.super Ljava/lang/Object;
.source "CircularArray.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCircularArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n+ 2 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n+ 3 CollectionPlatformUtils.jvm.kt\nandroidx/collection/CollectionPlatformUtils\n*L\n1#1,266:1\n60#2,4:267\n60#2,4:271\n24#3:275\n24#3:276\n24#3:277\n24#3:278\n24#3:279\n24#3:280\n24#3:281\n*S KotlinDebug\n*F\n+ 1 CircularArray.kt\nandroidx/collection/CircularArray\n*L\n38#1:267,4\n39#1:271,4\n104#1:275\n121#1:276\n148#1:277\n183#1:278\n217#1:279\n231#1:280\n245#1:281\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0000\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002B\u0013\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\r\u001a\u00020\u000eH\u0002J\u0013\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u0013\u0010\u0012\u001a\u00020\u000e2\u0006\u0010\u0010\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0011J\u000b\u0010\u0013\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0014J\u000b\u0010\u0015\u001a\u00028\u0000\u00a2\u0006\u0002\u0010\u0014J\u0006\u0010\u0016\u001a\u00020\u000eJ\u000e\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u0004J\u0016\u0010\u001e\u001a\u00028\u00002\u0006\u0010\u001f\u001a\u00020\u0004H\u0086\u0002\u00a2\u0006\u0002\u0010 J\u0006\u0010!\u001a\u00020\u0004J\u0006\u0010\"\u001a\u00020#R\u0018\u0010\u0007\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0008X\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\tR\u000e\u0010\n\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u001a\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u0014R\u0011\u0010\u001c\u001a\u00028\u00008F\u00a2\u0006\u0006\u001a\u0004\u0008\u001d\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Landroidx/collection/CircularArray;",
        "E",
        "",
        "minCapacity",
        "",
        "<init>",
        "(I)V",
        "elements",
        "",
        "[Ljava/lang/Object;",
        "head",
        "tail",
        "capacityBitmask",
        "doubleCapacity",
        "",
        "addFirst",
        "element",
        "(Ljava/lang/Object;)V",
        "addLast",
        "popFirst",
        "()Ljava/lang/Object;",
        "popLast",
        "clear",
        "removeFromStart",
        "count",
        "removeFromEnd",
        "first",
        "getFirst",
        "last",
        "getLast",
        "get",
        "index",
        "(I)Ljava/lang/Object;",
        "size",
        "isEmpty",
        "",
        "collection"
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
.field private capacityBitmask:I

.field private elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private head:I

.field private tail:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Landroidx/collection/CircularArray;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 31
    return-void
.end method

.method public constructor <init>(I)V
    .locals 5
    .param p1, "minCapacity"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    nop

    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 267
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 268
    const/4 v4, 0x0

    .line 38
    .local v4, "$i$a$-requirePrecondition-CircularArray$1":I
    nop

    .line 268
    .end local v4    # "$i$a$-requirePrecondition-CircularArray$1":I
    const-string v4, "capacity must be >= 1"

    invoke-static {v4}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 270
    :cond_1
    nop

    .line 39
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    const/high16 v2, 0x40000000    # 2.0f

    if-gt p1, v2, :cond_2

    const/4 v0, 0x1

    .local v0, "value$iv":Z
    :cond_2
    const/4 v2, 0x0

    .line 271
    .local v2, "$i$f$requirePrecondition":I
    if-nez v0, :cond_3

    .line 272
    const/4 v3, 0x0

    .line 39
    .local v3, "$i$a$-requirePrecondition-CircularArray$2":I
    nop

    .line 272
    .end local v3    # "$i$a$-requirePrecondition-CircularArray$2":I
    const-string v3, "capacity must be <= 2^30"

    invoke-static {v3}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 274
    :cond_3
    nop

    .line 44
    .end local v0    # "value$iv":Z
    .end local v2    # "$i$f$requirePrecondition":I
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 45
    add-int/lit8 v0, p1, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    shl-int/2addr v0, v1

    goto :goto_1

    .line 47
    :cond_4
    move v0, p1

    .line 44
    :goto_1
    nop

    .line 43
    nop

    .line 49
    .local v0, "arrayCapacity":I
    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 51
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 52
    .end local v0    # "arrayCapacity":I
    nop

    .line 31
    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 31
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/16 p1, 0x8

    :cond_0
    invoke-direct {p0, p1}, Landroidx/collection/CircularArray;-><init>(I)V

    return-void
.end method

.method private final doubleCapacity()V
    .locals 7

    .line 55
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v0, v0

    .line 56
    .local v0, "n":I
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    sub-int v1, v0, v1

    .line 57
    .local v1, "r":I
    shl-int/lit8 v2, v0, 0x1

    .line 58
    .local v2, "newCapacity":I
    if-ltz v2, :cond_0

    .line 61
    new-array v3, v2, [Ljava/lang/Object;

    .line 62
    .local v3, "a":[Ljava/lang/Object;
    iget-object v4, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v5, p0, Landroidx/collection/CircularArray;->head:I

    const/4 v6, 0x0

    invoke-static {v4, v3, v6, v5, v0}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 63
    iget-object v4, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v5, p0, Landroidx/collection/CircularArray;->head:I

    invoke-static {v4, v3, v1, v6, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 64
    iput-object v3, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    .line 65
    iput v6, p0, Landroidx/collection/CircularArray;->head:I

    .line 66
    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 67
    add-int/lit8 v4, v2, -0x1

    iput v4, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    .line 68
    return-void

    .line 59
    .end local v3    # "a":[Ljava/lang/Object;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Max array capacity exceeded"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public final addFirst(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 76
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->head:I

    .line 77
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    aput-object p1, v0, v1

    .line 78
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-ne v0, v1, :cond_0

    .line 79
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 81
    :cond_0
    return-void
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    aput-object p1, v0, v1

    .line 90
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v0, v1

    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 91
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    if-ne v0, v1, :cond_0

    .line 92
    invoke-direct {p0}, Landroidx/collection/CircularArray;->doubleCapacity()V

    .line 94
    :cond_0
    return-void
.end method

.method public final clear()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/collection/CircularArray;->removeFromStart(I)V

    .line 134
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 244
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 247
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/2addr v1, p1

    iget v2, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 245
    :cond_0
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 281
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 216
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 217
    :cond_0
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 279
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final getLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 230
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-eq v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 231
    :cond_0
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 280
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final isEmpty()Z
    .locals 2

    .line 264
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final popFirst()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 103
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-eq v0, v1, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    aget-object v0, v0, v1

    .line 107
    .local v0, "result":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 108
    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v1, v2

    iput v1, p0, Landroidx/collection/CircularArray;->head:I

    .line 110
    return-object v0

    .line 104
    .end local v0    # "result":Ljava/lang/Object;
    :cond_0
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 275
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final popLast()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 120
    iget v0, p0, Landroidx/collection/CircularArray;->head:I

    iget v1, p0, Landroidx/collection/CircularArray;->tail:I

    if-eq v0, v1, :cond_0

    .line 123
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v0, v1

    .line 124
    .local v0, "t":I
    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 125
    .local v1, "result":Ljava/lang/Object;
    iget-object v2, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 126
    iput v0, p0, Landroidx/collection/CircularArray;->tail:I

    .line 128
    return-object v1

    .line 121
    .end local v0    # "t":I
    .end local v1    # "result":Ljava/lang/Object;
    :cond_0
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 276
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final removeFromEnd(I)V
    .locals 8
    .param p1, "count"    # I

    .line 179
    if-gtz p1, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 186
    move v0, p1

    .line 187
    .local v0, "numOfElements":I
    const/4 v1, 0x0

    .line 188
    .local v1, "start":I
    iget v2, p0, Landroidx/collection/CircularArray;->tail:I

    if-ge v0, v2, :cond_1

    .line 189
    iget v2, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int v1, v2, v0

    .line 191
    :cond_1
    move v2, v1

    .local v2, "i":I
    iget v3, p0, Landroidx/collection/CircularArray;->tail:I

    :goto_0
    const/4 v4, 0x0

    if-ge v2, v3, :cond_2

    .line 192
    iget-object v5, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v4, v5, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int/2addr v2, v1

    .line 195
    .local v2, "removed":I
    sub-int/2addr v0, v2

    .line 196
    iget v3, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int/2addr v3, v2

    iput v3, p0, Landroidx/collection/CircularArray;->tail:I

    .line 197
    if-lez v0, :cond_4

    .line 199
    iget-object v3, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v3, v3

    iput v3, p0, Landroidx/collection/CircularArray;->tail:I

    .line 200
    iget v3, p0, Landroidx/collection/CircularArray;->tail:I

    sub-int/2addr v3, v0

    .line 201
    .local v3, "newTail":I
    move v5, v3

    .local v5, "i":I
    iget v6, p0, Landroidx/collection/CircularArray;->tail:I

    :goto_1
    if-ge v5, v6, :cond_3

    .line 202
    iget-object v7, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v4, v7, v5

    .line 201
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 204
    .end local v5    # "i":I
    :cond_3
    iput v3, p0, Landroidx/collection/CircularArray;->tail:I

    .line 206
    .end local v3    # "newTail":I
    :cond_4
    return-void

    .line 183
    .end local v0    # "numOfElements":I
    .end local v1    # "start":I
    .end local v2    # "removed":I
    :cond_5
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 278
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final removeFromStart(I)V
    .locals 6
    .param p1, "count"    # I

    .line 144
    if-gtz p1, :cond_0

    .line 145
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroidx/collection/CircularArray;->size()I

    move-result v0

    if-gt p1, v0, :cond_5

    .line 151
    move v0, p1

    .line 152
    .local v0, "numOfElements":I
    iget-object v1, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    array-length v1, v1

    .line 153
    .local v1, "end":I
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    sub-int v2, v1, v2

    if-ge v0, v2, :cond_1

    .line 154
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    add-int v1, v2, v0

    .line 156
    :cond_1
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_2

    .line 157
    iget-object v4, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v3, v4, v2

    .line 156
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Landroidx/collection/CircularArray;->head:I

    sub-int v2, v1, v2

    .line 160
    .local v2, "removed":I
    sub-int/2addr v0, v2

    .line 161
    iget v4, p0, Landroidx/collection/CircularArray;->head:I

    add-int/2addr v4, v2

    iget v5, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v4, v5

    iput v4, p0, Landroidx/collection/CircularArray;->head:I

    .line 162
    if-lez v0, :cond_4

    .line 164
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v0, :cond_3

    .line 165
    iget-object v5, p0, Landroidx/collection/CircularArray;->elements:[Ljava/lang/Object;

    aput-object v3, v5, v4

    .line 164
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 167
    .end local v4    # "i":I
    :cond_3
    iput v0, p0, Landroidx/collection/CircularArray;->head:I

    .line 169
    :cond_4
    return-void

    .line 148
    .end local v0    # "numOfElements":I
    .end local v1    # "end":I
    .end local v2    # "removed":I
    :cond_5
    sget-object v0, Landroidx/collection/CollectionPlatformUtils;->INSTANCE:Landroidx/collection/CollectionPlatformUtils;

    .local v0, "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    const/4 v1, 0x0

    .line 277
    .local v1, "$i$f$createIndexOutOfBoundsException$collection":I
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    check-cast v2, Ljava/lang/IndexOutOfBoundsException;

    .end local v0    # "this_$iv":Landroidx/collection/CollectionPlatformUtils;
    .end local v1    # "$i$f$createIndexOutOfBoundsException$collection":I
    throw v2
.end method

.method public final size()I
    .locals 2

    .line 256
    iget v0, p0, Landroidx/collection/CircularArray;->tail:I

    iget v1, p0, Landroidx/collection/CircularArray;->head:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/collection/CircularArray;->capacityBitmask:I

    and-int/2addr v0, v1

    return v0
.end method

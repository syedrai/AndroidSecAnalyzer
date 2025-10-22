.class public final Landroidx/collection/LongSparseArrayKt;
.super Ljava/lang/Object;
.source "LongSparseArray.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLongSparseArray.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RuntimeHelpers.kt\nandroidx/collection/internal/RuntimeHelpersKt\n*L\n1#1,573:1\n229#1,5:574\n229#1,5:579\n299#1,18:584\n299#1,18:603\n299#1,18:625\n299#1,18:647\n299#1,18:669\n299#1,18:687\n299#1,18:705\n299#1,18:723\n1#2:602\n60#3,4:621\n60#3,4:643\n60#3,4:665\n*S KotlinDebug\n*F\n+ 1 LongSparseArray.kt\nandroidx/collection/LongSparseArrayKt\n*L\n218#1:574,5\n223#1:579,5\n331#1:584,18\n374#1:603,18\n389#1:625,18\n401#1:647,18\n414#1:669,18\n422#1:687,18\n430#1:705,18\n468#1:723,18\n384#1:621,4\n396#1:643,4\n409#1:665,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u001a\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\u001a(\u0010\u0002\u001a\u0004\u0018\u0001H\u0003\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\u0008\u00a2\u0006\u0002\u0010\u0007\u001a.\u0010\u0002\u001a\u0002H\u0003\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\t\u001a%\u0010\n\u001a\u0004\u0018\u00010\u0001*\u0006\u0012\u0002\u0008\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u0080\u0008\u001a!\u0010\u000b\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\u0008\u001a.\u0010\u000b\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\u000f\u001a!\u0010\u0010\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0080\u0008\u001a0\u0010\u0013\u001a\u0004\u0018\u0001H\u0003\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\t\u001a6\u0010\u0013\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u0002H\u00032\u0006\u0010\u0015\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\u0016\u001a\u0019\u0010\u0017\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a.\u0010\u0018\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\u0019\u001a)\u0010\u001a\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u000e\u0010\u001b\u001a\n\u0012\u0006\u0008\u0001\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a0\u0010\u001c\u001a\u0004\u0018\u0001H\u0003\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\t\u001a\u0019\u0010\u001d\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a\u0019\u0010\u001e\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a!\u0010\u001f\u001a\u00020\u0006\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0080\u0008\u001a&\u0010 \u001a\u0002H\u0003\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0011\u001a\u00020\u0012H\u0080\u0008\u00a2\u0006\u0002\u0010!\u001a.\u0010\"\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010#\u001a!\u0010$\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\u0008\u001a&\u0010%\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010&\u001a!\u0010\'\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0080\u0008\u001a&\u0010(\u001a\u00020\r\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010)\u001a\u0019\u0010*\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a.\u0010+\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0003H\u0080\u0008\u00a2\u0006\u0002\u0010\u0019\u001a\u0019\u0010,\u001a\u00020-\"\u0004\u0008\u0000\u0010\u0003*\u0008\u0012\u0004\u0012\u0002H\u00030\u0004H\u0080\u0008\u001a!\u00104\u001a\u00020\r\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0086\n\u001a.\u00105\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H/H\u0086\n\u00a2\u0006\u0002\u0010\u0019\u001a-\u00106\u001a\u0008\u0012\u0004\u0012\u0002H/0\u0004\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u000c\u0010\u001b\u001a\u0008\u0012\u0004\u0012\u0002H/0\u0004H\u0086\u0002\u001a.\u00107\u001a\u0002H/\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u0002H/H\u0086\u0008\u00a2\u0006\u0002\u0010\t\u001a7\u00108\u001a\u0002H/\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u0002H/09H\u0086\u0008\u00f8\u0001\u0000\u00a2\u0006\u0002\u0010:\u001a\u0019\u0010;\u001a\u00020\r\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u0004H\u0086\u0008\u001a-\u0010<\u001a\u00020\r\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u0002H/H\u0007\u00a2\u0006\u0002\u0010\u000f\u001aT\u0010=\u001a\u00020\u000c\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u000426\u0010>\u001a2\u0012\u0013\u0012\u00110\u0006\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(\u0005\u0012\u0013\u0012\u0011H/\u00a2\u0006\u000c\u0008@\u0012\u0008\u0008A\u0012\u0004\u0008\u0008(\u000e\u0012\u0004\u0012\u00020\u000c0?H\u0086\u0008\u00f8\u0001\u0000\u001a\u0016\u0010B\u001a\u00020C\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u0004\u001a\u001c\u0010D\u001a\u0008\u0012\u0004\u0012\u0002H/0E\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"(\u0010.\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010/*\u0008\u0012\u0004\u0012\u0002H/0\u00048\u00c6\u0002\u00a2\u0006\u000c\u0012\u0004\u00080\u00101\u001a\u0004\u00082\u00103\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006F"
    }
    d2 = {
        "DELETED",
        "",
        "commonGet",
        "E",
        "Landroidx/collection/LongSparseArray;",
        "key",
        "",
        "(Landroidx/collection/LongSparseArray;J)Ljava/lang/Object;",
        "defaultValue",
        "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;",
        "commonGetInternal",
        "commonRemove",
        "",
        "",
        "value",
        "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z",
        "commonRemoveAt",
        "index",
        "",
        "commonReplace",
        "oldValue",
        "newValue",
        "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;Ljava/lang/Object;)Z",
        "commonGc",
        "commonPut",
        "(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V",
        "commonPutAll",
        "other",
        "commonPutIfAbsent",
        "commonSize",
        "commonIsEmpty",
        "commonKeyAt",
        "commonValueAt",
        "(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;",
        "commonSetValueAt",
        "(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V",
        "commonIndexOfKey",
        "commonIndexOfValue",
        "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)I",
        "commonContainsKey",
        "commonContainsValue",
        "(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)Z",
        "commonClear",
        "commonAppend",
        "commonToString",
        "",
        "size",
        "T",
        "getSize$annotations",
        "(Landroidx/collection/LongSparseArray;)V",
        "getSize",
        "(Landroidx/collection/LongSparseArray;)I",
        "contains",
        "set",
        "plus",
        "getOrDefault",
        "getOrElse",
        "Lkotlin/Function0;",
        "(Landroidx/collection/LongSparseArray;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;",
        "isNotEmpty",
        "remove",
        "forEach",
        "action",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "keyIterator",
        "Lkotlin/collections/LongIterator;",
        "valueIterator",
        "",
        "collection"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic access$getDELETED$p()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Landroidx/collection/LongSparseArrayKt;->DELETED:Ljava/lang/Object;

    return-object v0
.end method

.method public static final commonAppend(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V
    .locals 11
    .param p0, "$this$commonAppend"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 463
    .local v0, "$i$f$commonAppend":I
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    cmp-long v1, p1, v2

    if-gtz v1, :cond_0

    .line 464
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 465
    return-void

    .line 467
    :cond_0
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_4

    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_4

    .line 468
    move-object v1, p0

    .local v1, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v2, 0x0

    .line 723
    .local v2, "$i$f$commonGc":I
    iget v3, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 724
    .local v3, "n$iv":I
    const/4 v4, 0x0

    .line 725
    .local v4, "newSize$iv":I
    iget-object v5, v1, Landroidx/collection/LongSparseArray;->keys:[J

    .line 726
    .local v5, "keys$iv":[J
    iget-object v6, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 727
    .local v6, "values$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i$iv":I
    :goto_0
    if-ge v7, v3, :cond_3

    .line 728
    aget-object v8, v6, v7

    .line 729
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_2

    .line 730
    if-eq v7, v4, :cond_1

    .line 731
    aget-wide v9, v5, v7

    aput-wide v9, v5, v4

    .line 732
    aput-object v8, v6, v4

    .line 733
    const/4 v9, 0x0

    aput-object v9, v6, v7

    .line 735
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 727
    .end local v8    # "value$iv":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 738
    .end local v7    # "i$iv":I
    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 739
    iput v4, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 740
    nop

    .line 470
    .end local v1    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v2    # "$i$f$commonGc":I
    .end local v3    # "n$iv":I
    .end local v4    # "newSize$iv":I
    .end local v5    # "keys$iv":[J
    .end local v6    # "values$iv":[Ljava/lang/Object;
    :cond_4
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 471
    .local v1, "pos":I
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .line 472
    add-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v2

    .line 473
    .local v2, "newSize":I
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    const-string v4, "copyOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 474
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 476
    .end local v2    # "newSize":I
    :cond_5
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide p1, v2, v1

    .line 477
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 478
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 479
    return-void
.end method

.method public static final commonClear(Landroidx/collection/LongSparseArray;)V
    .locals 5
    .param p0, "$this$commonClear"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 452
    .local v0, "$i$f$commonClear":I
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 453
    .local v1, "n":I
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 454
    .local v2, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 455
    const/4 v4, 0x0

    aput-object v4, v2, v3

    .line 454
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 457
    .end local v3    # "i":I
    :cond_0
    const/4 v3, 0x0

    iput v3, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 458
    iput-boolean v3, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 459
    return-void
.end method

.method public static final commonContainsKey(Landroidx/collection/LongSparseArray;J)Z
    .locals 2
    .param p0, "$this$commonContainsKey"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;J)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 442
    .local v0, "$i$f$commonContainsKey":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final commonContainsValue(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "$this$commonContainsValue"    # Landroidx/collection/LongSparseArray;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;TE;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 447
    .local v0, "$i$f$commonContainsValue":I
    invoke-virtual {p0, p1}, Landroidx/collection/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final commonGc(Landroidx/collection/LongSparseArray;)V
    .locals 9
    .param p0, "$this$commonGc"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 299
    .local v0, "$i$f$commonGc":I
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 300
    .local v1, "n":I
    const/4 v2, 0x0

    .line 301
    .local v2, "newSize":I
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 302
    .local v3, "keys":[J
    iget-object v4, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 303
    .local v4, "values":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 304
    aget-object v6, v4, v5

    .line 305
    .local v6, "value":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v7

    if-eq v6, v7, :cond_1

    .line 306
    if-eq v5, v2, :cond_0

    .line 307
    aget-wide v7, v3, v5

    aput-wide v7, v3, v2

    .line 308
    aput-object v6, v4, v2

    .line 309
    const/4 v7, 0x0

    aput-object v7, v4, v5

    .line 311
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 303
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 314
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 315
    iput v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 316
    return-void
.end method

.method public static final commonGet(Landroidx/collection/LongSparseArray;J)Ljava/lang/Object;
    .locals 7
    .param p0, "$this$commonGet"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;J)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 218
    .local v0, "$i$f$commonGet":I
    const/4 v1, 0x0

    .local v1, "defaultValue$iv":Ljava/lang/Object;
    move-object v2, p0

    .local v2, "$this$commonGetInternal$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 574
    .local v3, "$i$f$commonGetInternal":I
    iget-object v4, v2, Landroidx/collection/LongSparseArray;->keys:[J

    iget v5, v2, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v4, v5, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v4

    .line 575
    .local v4, "i$iv":I
    if-ltz v4, :cond_1

    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v4

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-object v5, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v4

    goto :goto_1

    .line 576
    :cond_1
    :goto_0
    move-object v5, v1

    .line 575
    :goto_1
    nop

    .line 218
    .end local v1    # "defaultValue$iv":Ljava/lang/Object;
    .end local v2    # "$this$commonGetInternal$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGetInternal":I
    .end local v4    # "i$iv":I
    return-object v5
.end method

.method public static final commonGet(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "$this$commonGet"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 223
    .local v0, "$i$f$commonGet":I
    move-object v1, p0

    .local v1, "$this$commonGetInternal$iv":Landroidx/collection/LongSparseArray;
    const/4 v2, 0x0

    .line 579
    .local v2, "$i$f$commonGetInternal":I
    iget-object v3, v1, Landroidx/collection/LongSparseArray;->keys:[J

    iget v4, v1, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v3, v4, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v3

    .line 580
    .local v3, "i$iv":I
    if-ltz v3, :cond_1

    iget-object v4, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 583
    :cond_0
    iget-object v4, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v4, v4, v3

    goto :goto_1

    .line 581
    :cond_1
    :goto_0
    move-object v4, p3

    .line 580
    :goto_1
    nop

    .line 223
    .end local v1    # "$this$commonGetInternal$iv":Landroidx/collection/LongSparseArray;
    .end local v2    # "$i$f$commonGetInternal":I
    .end local v3    # "i$iv":I
    return-object v4
.end method

.method public static final commonGetInternal(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$commonGetInternal"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/LongSparseArray<",
            "*>;J",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 229
    .local v0, "$i$f$commonGetInternal":I
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v1

    .line 230
    .local v1, "i":I
    if-ltz v1, :cond_1

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    goto :goto_1

    .line 231
    :cond_1
    :goto_0
    move-object v2, p3

    .line 230
    :goto_1
    return-object v2
.end method

.method public static final commonIndexOfKey(Landroidx/collection/LongSparseArray;J)I
    .locals 11
    .param p0, "$this$commonIndexOfKey"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;J)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 421
    .local v0, "$i$f$commonIndexOfKey":I
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_3

    .line 422
    move-object v1, p0

    .local v1, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v2, 0x0

    .line 687
    .local v2, "$i$f$commonGc":I
    iget v3, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 688
    .local v3, "n$iv":I
    const/4 v4, 0x0

    .line 689
    .local v4, "newSize$iv":I
    iget-object v5, v1, Landroidx/collection/LongSparseArray;->keys:[J

    .line 690
    .local v5, "keys$iv":[J
    iget-object v6, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 691
    .local v6, "values$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i$iv":I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 692
    aget-object v8, v6, v7

    .line 693
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 694
    if-eq v7, v4, :cond_0

    .line 695
    aget-wide v9, v5, v7

    aput-wide v9, v5, v4

    .line 696
    aput-object v8, v6, v4

    .line 697
    const/4 v9, 0x0

    aput-object v9, v6, v7

    .line 699
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 691
    .end local v8    # "value$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 702
    .end local v7    # "i$iv":I
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 703
    iput v4, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 704
    nop

    .line 424
    .end local v1    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v2    # "$i$f$commonGc":I
    .end local v3    # "n$iv":I
    .end local v4    # "newSize$iv":I
    .end local v5    # "keys$iv":[J
    .end local v6    # "values$iv":[Ljava/lang/Object;
    :cond_3
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v1

    return v1
.end method

.method public static final commonIndexOfValue(Landroidx/collection/LongSparseArray;Ljava/lang/Object;)I
    .locals 12
    .param p0, "$this$commonIndexOfValue"    # Landroidx/collection/LongSparseArray;
    .param p1, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;TE;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 429
    .local v0, "$i$f$commonIndexOfValue":I
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 430
    move-object v1, p0

    .local v1, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 705
    .local v3, "$i$f$commonGc":I
    iget v4, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 706
    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 707
    .local v5, "newSize$iv":I
    iget-object v6, v1, Landroidx/collection/LongSparseArray;->keys:[J

    .line 708
    .local v6, "keys$iv":[J
    iget-object v7, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 709
    .local v7, "values$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_0
    if-ge v8, v4, :cond_2

    .line 710
    aget-object v9, v7, v8

    .line 711
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 712
    if-eq v8, v5, :cond_0

    .line 713
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 714
    aput-object v9, v7, v5

    .line 715
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 717
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 709
    .end local v9    # "value$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 720
    .end local v8    # "i$iv":I
    :cond_2
    iput-boolean v2, v1, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 721
    iput v5, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 722
    nop

    .line 432
    .end local v1    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv":I
    .end local v5    # "newSize$iv":I
    .end local v6    # "keys$iv":[J
    .end local v7    # "values$iv":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    :goto_1
    if-ge v2, v1, :cond_5

    move v3, v2

    .local v3, "i":I
    const/4 v4, 0x0

    .line 433
    .local v4, "$i$a$-repeat-LongSparseArrayKt$commonIndexOfValue$1":I
    iget-object v5, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v5, v5, v3

    if-ne v5, p1, :cond_4

    .line 434
    return v3

    .line 436
    :cond_4
    nop

    .line 432
    .end local v3    # "i":I
    .end local v4    # "$i$a$-repeat-LongSparseArrayKt$commonIndexOfValue$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 437
    :cond_5
    const/4 v1, -0x1

    return v1
.end method

.method public static final commonIsEmpty(Landroidx/collection/LongSparseArray;)Z
    .locals 2
    .param p0, "$this$commonIsEmpty"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 380
    .local v0, "$i$f$commonIsEmpty":I
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final commonKeyAt(Landroidx/collection/LongSparseArray;I)J
    .locals 12
    .param p0, "$this$commonKeyAt"    # Landroidx/collection/LongSparseArray;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;I)J"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 384
    .local v0, "$i$f$commonKeyAt":I
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 621
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 622
    const/4 v4, 0x0

    .line 385
    .local v4, "$i$a$-requirePrecondition-LongSparseArrayKt$commonKeyAt$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 622
    .end local v4    # "$i$a$-requirePrecondition-LongSparseArrayKt$commonKeyAt$1":I
    invoke-static {v4}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 624
    :cond_1
    nop

    .line 388
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_5

    .line 389
    move-object v2, p0

    .local v2, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 625
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 626
    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 627
    .local v5, "newSize$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 628
    .local v6, "keys$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 629
    .local v7, "values$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 630
    aget-object v9, v7, v8

    .line 631
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 632
    if-eq v8, v5, :cond_2

    .line 633
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 634
    aput-object v9, v7, v5

    .line 635
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 637
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 629
    .end local v9    # "value$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 640
    .end local v8    # "i$iv":I
    :cond_4
    iput-boolean v1, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 641
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 642
    nop

    .line 391
    .end local v2    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv":I
    .end local v5    # "newSize$iv":I
    .end local v6    # "keys$iv":[J
    .end local v7    # "values$iv":[Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    aget-wide v2, v1, p1

    return-wide v2
.end method

.method public static final commonPut(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V
    .locals 12
    .param p0, "$this$commonPut"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 320
    .local v0, "$i$f$commonPut":I
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v1

    .line 321
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 322
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v2, v1

    goto/16 :goto_1

    .line 324
    :cond_0
    not-int v1, v1

    .line 325
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 326
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide p1, v2, v1

    .line 327
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 328
    return-void

    .line 330
    :cond_1
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_5

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v3, v3

    if-lt v2, v3, :cond_5

    .line 331
    move-object v2, p0

    .local v2, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 584
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 585
    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 586
    .local v5, "newSize$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 587
    .local v6, "keys$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 588
    .local v7, "values$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_0
    if-ge v8, v4, :cond_4

    .line 589
    aget-object v9, v7, v8

    .line 590
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 591
    if-eq v8, v5, :cond_2

    .line 592
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 593
    aput-object v9, v7, v5

    .line 594
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 596
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 588
    .end local v9    # "value$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 599
    .end local v8    # "i$iv":I
    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 600
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 601
    nop

    .line 334
    .end local v2    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv":I
    .end local v5    # "newSize$iv":I
    .end local v6    # "keys$iv":[J
    .end local v7    # "values$iv":[Ljava/lang/Object;
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v3, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v2, v3, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v2

    not-int v1, v2

    .line 336
    :cond_5
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    array-length v3, v3

    if-lt v2, v3, :cond_6

    .line 337
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroidx/collection/internal/ContainerHelpersKt;->idealLongArraySize(I)I

    move-result v2

    .line 338
    .local v2, "newSize":I
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    const-string v4, "copyOf(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    .line 339
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 341
    .end local v2    # "newSize":I
    :cond_6
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    sub-int/2addr v2, v1

    if-eqz v2, :cond_7

    .line 342
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget-object v3, p0, Landroidx/collection/LongSparseArray;->keys:[J

    add-int/lit8 v4, v1, 0x1

    iget v5, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v2, v3, v4, v1, v5}, Lkotlin/collections/ArraysKt;->copyInto([J[JIII)[J

    .line 343
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 344
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 345
    add-int/lit8 v4, v1, 0x1

    .line 346
    nop

    .line 347
    iget v5, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 343
    invoke-static {v2, v3, v4, v1, v5}, Lkotlin/collections/ArraysKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    .line 350
    :cond_7
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->keys:[J

    aput-wide p1, v2, v1

    .line 351
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v2, v1

    .line 352
    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/collection/LongSparseArray;->size:I

    .line 354
    :goto_1
    return-void
.end method

.method public static final commonPutAll(Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)V
    .locals 8
    .param p0, "$this$commonPutAll"    # Landroidx/collection/LongSparseArray;
    .param p1, "other"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;",
            "Landroidx/collection/LongSparseArray<",
            "+TE;>;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 358
    .local v0, "$i$f$commonPutAll":I
    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    .line 359
    .local v1, "size":I
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    move v3, v2

    .line 602
    .local v3, "i":I
    const/4 v4, 0x0

    .line 359
    .local v4, "$i$a$-repeat-LongSparseArrayKt$commonPutAll$1":I
    invoke-virtual {p1, v3}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-virtual {p1, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .end local v3    # "i":I
    .end local v4    # "$i$a$-repeat-LongSparseArrayKt$commonPutAll$1":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    :cond_0
    return-void
.end method

.method public static final commonPutIfAbsent(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$commonPutIfAbsent"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 364
    .local v0, "$i$f$commonPutIfAbsent":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    .line 365
    .local v1, "mapValue":Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 366
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 368
    :cond_0
    return-object v1
.end method

.method public static final commonRemove(Landroidx/collection/LongSparseArray;J)V
    .locals 4
    .param p0, "$this$commonRemove"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;J)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 239
    .local v0, "$i$f$commonRemove":I
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->keys:[J

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    invoke-static {v1, v2, p1, p2}, Landroidx/collection/internal/ContainerHelpersKt;->binarySearch([JIJ)I

    move-result v1

    .line 240
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 241
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    if-eq v2, v3, :cond_0

    .line 242
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 243
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 246
    :cond_0
    return-void
.end method

.method public static final commonRemove(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z
    .locals 4
    .param p0, "$this$commonRemove"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 250
    .local v0, "$i$f$commonRemove":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    .line 251
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 252
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 253
    .local v2, "mapValue":Ljava/lang/Object;
    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->removeAt(I)V

    .line 255
    const/4 v3, 0x1

    return v3

    .line 258
    .end local v2    # "mapValue":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static final commonRemoveAt(Landroidx/collection/LongSparseArray;I)V
    .locals 3
    .param p0, "$this$commonRemoveAt"    # Landroidx/collection/LongSparseArray;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;I)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 263
    .local v0, "$i$f$commonRemoveAt":I
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v1, v1, p1

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 264
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v1, p1

    .line 265
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 267
    :cond_0
    return-void
.end method

.method public static final commonReplace(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "$this$commonReplace"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 271
    .local v0, "$i$f$commonReplace":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    .line 272
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 273
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 274
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p3, v3, v1

    .line 275
    return-object v2

    .line 277
    .end local v2    # "oldValue":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method public static final commonReplace(Landroidx/collection/LongSparseArray;JLjava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "$this$commonReplace"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "oldValue"    # Ljava/lang/Object;
    .param p4, "newValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;JTE;TE;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 286
    .local v0, "$i$f$commonReplace":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v1

    .line 287
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 288
    iget-object v2, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 289
    .local v2, "mapValue":Ljava/lang/Object;
    invoke-static {v2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 290
    iget-object v3, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p4, v3, v1

    .line 291
    const/4 v3, 0x1

    return v3

    .line 294
    .end local v2    # "mapValue":Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public static final commonSetValueAt(Landroidx/collection/LongSparseArray;ILjava/lang/Object;)V
    .locals 12
    .param p0, "$this$commonSetValueAt"    # Landroidx/collection/LongSparseArray;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;ITE;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 409
    .local v0, "$i$f$commonSetValueAt":I
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 665
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 666
    const/4 v4, 0x0

    .line 410
    .local v4, "$i$a$-requirePrecondition-LongSparseArrayKt$commonSetValueAt$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 666
    .end local v4    # "$i$a$-requirePrecondition-LongSparseArrayKt$commonSetValueAt$1":I
    invoke-static {v4}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 668
    :cond_1
    nop

    .line 413
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_5

    .line 414
    move-object v2, p0

    .local v2, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 669
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 670
    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 671
    .local v5, "newSize$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 672
    .local v6, "keys$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 673
    .local v7, "values$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 674
    aget-object v9, v7, v8

    .line 675
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 676
    if-eq v8, v5, :cond_2

    .line 677
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 678
    aput-object v9, v7, v5

    .line 679
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 681
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 673
    .end local v9    # "value$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 684
    .end local v8    # "i$iv":I
    :cond_4
    iput-boolean v1, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 685
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 686
    nop

    .line 416
    .end local v2    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv":I
    .end local v5    # "newSize$iv":I
    .end local v6    # "keys$iv":[J
    .end local v7    # "values$iv":[Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 417
    return-void
.end method

.method public static final commonSize(Landroidx/collection/LongSparseArray;)I
    .locals 11
    .param p0, "$this$commonSize"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 373
    .local v0, "$i$f$commonSize":I
    iget-boolean v1, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v1, :cond_3

    .line 374
    move-object v1, p0

    .local v1, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v2, 0x0

    .line 603
    .local v2, "$i$f$commonGc":I
    iget v3, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 604
    .local v3, "n$iv":I
    const/4 v4, 0x0

    .line 605
    .local v4, "newSize$iv":I
    iget-object v5, v1, Landroidx/collection/LongSparseArray;->keys:[J

    .line 606
    .local v5, "keys$iv":[J
    iget-object v6, v1, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 607
    .local v6, "values$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .local v7, "i$iv":I
    :goto_0
    if-ge v7, v3, :cond_2

    .line 608
    aget-object v8, v6, v7

    .line 609
    .local v8, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 610
    if-eq v7, v4, :cond_0

    .line 611
    aget-wide v9, v5, v7

    aput-wide v9, v5, v4

    .line 612
    aput-object v8, v6, v4

    .line 613
    const/4 v9, 0x0

    aput-object v9, v6, v7

    .line 615
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 607
    .end local v8    # "value$iv":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 618
    .end local v7    # "i$iv":I
    :cond_2
    const/4 v7, 0x0

    iput-boolean v7, v1, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 619
    iput v4, v1, Landroidx/collection/LongSparseArray;->size:I

    .line 620
    nop

    .line 376
    .end local v1    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v2    # "$i$f$commonGc":I
    .end local v3    # "n$iv":I
    .end local v4    # "newSize$iv":I
    .end local v5    # "keys$iv":[J
    .end local v6    # "values$iv":[Ljava/lang/Object;
    :cond_3
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    return v1
.end method

.method public static final commonToString(Landroidx/collection/LongSparseArray;)Ljava/lang/String;
    .locals 10
    .param p0, "$this$commonToString"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 483
    .local v0, "$i$f$commonToString":I
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    .line 484
    const-string/jumbo v1, "{}"

    return-object v1

    .line 486
    :cond_0
    iget v1, p0, Landroidx/collection/LongSparseArray;->size:I

    mul-int/lit8 v1, v1, 0x1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .local v1, "$this$commonToString_u24lambda_u245":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 487
    .local v3, "$i$a$-buildString-LongSparseArrayKt$commonToString$1":I
    const/16 v4, 0x7b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 488
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Landroidx/collection/LongSparseArray;->size:I

    :goto_0
    if-ge v4, v5, :cond_3

    .line 489
    if-lez v4, :cond_1

    .line 490
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    :cond_1
    invoke-virtual {p0, v4}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    .line 493
    .local v6, "key":J
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 494
    const/16 v8, 0x3d

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    invoke-virtual {p0, v4}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    .line 496
    .local v8, "value":Ljava/lang/Object;
    if-eq v8, v1, :cond_2

    .line 497
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 499
    :cond_2
    const-string v9, "(this Map)"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .end local v6    # "key":J
    .end local v8    # "value":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 502
    .end local v4    # "i":I
    :cond_3
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    nop

    .line 486
    .end local v1    # "$this$commonToString_u24lambda_u245":Ljava/lang/StringBuilder;
    .end local v3    # "$i$a$-buildString-LongSparseArrayKt$commonToString$1":I
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final commonValueAt(Landroidx/collection/LongSparseArray;I)Ljava/lang/Object;
    .locals 12
    .param p0, "$this$commonValueAt"    # Landroidx/collection/LongSparseArray;
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TE;>;I)TE;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 396
    .local v0, "$i$f$commonValueAt":I
    const/4 v1, 0x0

    if-ltz p1, :cond_0

    iget v2, p0, Landroidx/collection/LongSparseArray;->size:I

    if-ge p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .local v2, "value$iv":Z
    :goto_0
    const/4 v3, 0x0

    .line 643
    .local v3, "$i$f$requirePrecondition":I
    if-nez v2, :cond_1

    .line 644
    const/4 v4, 0x0

    .line 397
    .local v4, "$i$a$-requirePrecondition-LongSparseArrayKt$commonValueAt$1":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected index to be within 0..size()-1, but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 644
    .end local v4    # "$i$a$-requirePrecondition-LongSparseArrayKt$commonValueAt$1":I
    invoke-static {v4}, Landroidx/collection/internal/RuntimeHelpersKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 646
    :cond_1
    nop

    .line 400
    .end local v2    # "value$iv":Z
    .end local v3    # "$i$f$requirePrecondition":I
    iget-boolean v2, p0, Landroidx/collection/LongSparseArray;->garbage:Z

    if-eqz v2, :cond_5

    .line 401
    move-object v2, p0

    .local v2, "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    const/4 v3, 0x0

    .line 647
    .local v3, "$i$f$commonGc":I
    iget v4, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 648
    .local v4, "n$iv":I
    const/4 v5, 0x0

    .line 649
    .local v5, "newSize$iv":I
    iget-object v6, v2, Landroidx/collection/LongSparseArray;->keys:[J

    .line 650
    .local v6, "keys$iv":[J
    iget-object v7, v2, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    .line 651
    .local v7, "values$iv":[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, "i$iv":I
    :goto_1
    if-ge v8, v4, :cond_4

    .line 652
    aget-object v9, v7, v8

    .line 653
    .local v9, "value$iv":Ljava/lang/Object;
    invoke-static {}, Landroidx/collection/LongSparseArrayKt;->access$getDELETED$p()Ljava/lang/Object;

    move-result-object v10

    if-eq v9, v10, :cond_3

    .line 654
    if-eq v8, v5, :cond_2

    .line 655
    aget-wide v10, v6, v8

    aput-wide v10, v6, v5

    .line 656
    aput-object v9, v7, v5

    .line 657
    const/4 v10, 0x0

    aput-object v10, v7, v8

    .line 659
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 651
    .end local v9    # "value$iv":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 662
    .end local v8    # "i$iv":I
    :cond_4
    iput-boolean v1, v2, Landroidx/collection/LongSparseArray;->garbage:Z

    .line 663
    iput v5, v2, Landroidx/collection/LongSparseArray;->size:I

    .line 664
    nop

    .line 404
    .end local v2    # "$this$commonGc$iv":Landroidx/collection/LongSparseArray;
    .end local v3    # "$i$f$commonGc":I
    .end local v4    # "n$iv":I
    .end local v5    # "newSize$iv":I
    .end local v6    # "keys$iv":[J
    .end local v7    # "values$iv":[Ljava/lang/Object;
    :cond_5
    iget-object v1, p0, Landroidx/collection/LongSparseArray;->values:[Ljava/lang/Object;

    aget-object v1, v1, p1

    return-object v1
.end method

.method public static final contains(Landroidx/collection/LongSparseArray;J)Z
    .locals 2
    .param p0, "$this$contains"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;J)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 513
    .local v0, "$i$f$contains":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->containsKey(J)Z

    move-result v1

    return v1
.end method

.method public static final forEach(Landroidx/collection/LongSparseArray;Lkotlin/jvm/functions/Function2;)V
    .locals 5
    .param p0, "$this$forEach"    # Landroidx/collection/LongSparseArray;
    .param p1, "action"    # Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 549
    .local v0, "$i$f$forEach":I
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    .line 550
    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    .end local v1    # "index":I
    :cond_0
    return-void
.end method

.method public static final getOrDefault(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getOrDefault"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "defaultValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;JTT;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 530
    .local v0, "$i$f$getOrDefault":I
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static final getOrElse(Landroidx/collection/LongSparseArray;JLkotlin/jvm/functions/Function0;)Ljava/lang/Object;
    .locals 2
    .param p0, "$this$getOrElse"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "defaultValue"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;J",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 535
    .local v0, "$i$f$getOrElse":I
    invoke-virtual {p0, p1, p2}, Landroidx/collection/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static final getSize(Landroidx/collection/LongSparseArray;)I
    .locals 2
    .param p0, "$this$size"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;)I"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 509
    .local v0, "$i$f$getSize":I
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    return v1
.end method

.method public static synthetic getSize$annotations(Landroidx/collection/LongSparseArray;)V
    .locals 0

    return-void
.end method

.method public static final isNotEmpty(Landroidx/collection/LongSparseArray;)Z
    .locals 2
    .param p0, "$this$isNotEmpty"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;)Z"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 539
    .local v0, "$i$f$isNotEmpty":I
    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static final keyIterator(Landroidx/collection/LongSparseArray;)Lkotlin/collections/LongIterator;
    .locals 1
    .param p0, "$this$keyIterator"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;)",
            "Lkotlin/collections/LongIterator;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    new-instance v0, Landroidx/collection/LongSparseArrayKt$keyIterator$1;

    invoke-direct {v0, p0}, Landroidx/collection/LongSparseArrayKt$keyIterator$1;-><init>(Landroidx/collection/LongSparseArray;)V

    check-cast v0, Lkotlin/collections/LongIterator;

    .line 562
    return-object v0
.end method

.method public static final plus(Landroidx/collection/LongSparseArray;Landroidx/collection/LongSparseArray;)Landroidx/collection/LongSparseArray;
    .locals 3
    .param p0, "$this$plus"    # Landroidx/collection/LongSparseArray;
    .param p1, "other"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;)",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 521
    new-instance v0, Landroidx/collection/LongSparseArray;

    invoke-virtual {p0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    invoke-virtual {p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroidx/collection/LongSparseArray;-><init>(I)V

    .line 522
    .local v0, "new":Landroidx/collection/LongSparseArray;
    invoke-virtual {v0, p0}, Landroidx/collection/LongSparseArray;->putAll(Landroidx/collection/LongSparseArray;)V

    .line 523
    invoke-virtual {v0, p1}, Landroidx/collection/LongSparseArray;->putAll(Landroidx/collection/LongSparseArray;)V

    .line 524
    return-object v0
.end method

.method public static final synthetic remove(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)Z
    .locals 1
    .param p0, "$this$remove"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "Replaced with member function. Remove extension import!"
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 544
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->remove(JLjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final set(Landroidx/collection/LongSparseArray;JLjava/lang/Object;)V
    .locals 1
    .param p0, "$this$set"    # Landroidx/collection/LongSparseArray;
    .param p1, "key"    # J
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;JTT;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 517
    .local v0, "$i$f$set":I
    invoke-virtual {p0, p1, p2, p3}, Landroidx/collection/LongSparseArray;->put(JLjava/lang/Object;)V

    return-void
.end method

.method public static final valueIterator(Landroidx/collection/LongSparseArray;)Ljava/util/Iterator;
    .locals 1
    .param p0, "$this$valueIterator"    # Landroidx/collection/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/LongSparseArray<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 566
    new-instance v0, Landroidx/collection/LongSparseArrayKt$valueIterator$1;

    invoke-direct {v0, p0}, Landroidx/collection/LongSparseArrayKt$valueIterator$1;-><init>(Landroidx/collection/LongSparseArray;)V

    check-cast v0, Ljava/util/Iterator;

    .line 572
    return-object v0
.end method

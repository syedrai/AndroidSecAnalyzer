.class interface abstract Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;
.super Ljava/lang/Object;
.source "CollectSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InElementT:",
        "Ljava/lang/Object;",
        "OutSpliteratorT::",
        "Lj$/util/Spliterator<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract newFlatMapSpliterator(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefix",
            "fromSplit",
            "function",
            "splitCharacteristics",
            "estSplitSize"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TOutSpliteratorT;",
            "Lj$/util/Spliterator<",
            "TInElementT;>;",
            "Ljava/util/function/Function<",
            "-TInElementT;TOutSpliteratorT;>;IJ)TOutSpliteratorT;"
        }
    .end annotation
.end method

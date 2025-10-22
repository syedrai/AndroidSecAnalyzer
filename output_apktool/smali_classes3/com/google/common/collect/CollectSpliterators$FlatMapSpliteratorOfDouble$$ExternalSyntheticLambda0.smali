.class public final synthetic Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/common/collect/CollectSpliterators$FlatMapSpliterator$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newFlatMapSpliterator(Lj$/util/Spliterator;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)Lj$/util/Spliterator;
    .locals 7

    new-instance v0, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;

    move-object v1, p1

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/CollectSpliterators$FlatMapSpliteratorOfDouble;-><init>(Lj$/util/Spliterator$OfDouble;Lj$/util/Spliterator;Ljava/util/function/Function;IJ)V

    check-cast v0, Lj$/util/Spliterator$OfDouble;

    return-object v0
.end method

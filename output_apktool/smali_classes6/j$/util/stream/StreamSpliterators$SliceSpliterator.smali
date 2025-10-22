.class abstract Lj$/util/stream/StreamSpliterators$SliceSpliterator;
.super Ljava/lang/Object;
.source "StreamSpliterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/StreamSpliterators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "SliceSpliterator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfPrimitive;,
        Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "T_SP",
        "LITR::Lj$/util/Spliterator<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field fence:J

.field index:J

.field s:Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT_SP",
            "LITR;"
        }
    .end annotation
.end field

.field final sliceFence:J

.field final sliceOrigin:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 610
    const-class v0, Lj$/util/stream/StreamSpliterators;

    return-void
.end method

.method constructor <init>(Lj$/util/Spliterator;JJJJ)V
    .locals 0
    .param p2, "sliceOrigin"    # J
    .param p4, "sliceFence"    # J
    .param p6, "origin"    # J
    .param p8, "fence"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)V"
        }
    .end annotation

    .line 623
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    .local p1, "s":Lj$/util/Spliterator;, "TT_SPLITR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 624
    nop

    .line 625
    iput-object p1, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    .line 626
    iput-wide p2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    .line 627
    iput-wide p4, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    .line 628
    iput-wide p6, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 629
    iput-wide p8, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 630
    return-void
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 686
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->characteristics()I

    move-result v0

    return v0
.end method

.method public estimateSize()J
    .locals 6

    .line 681
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    .line 682
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v4, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 681
    :goto_0
    return-wide v0
.end method

.method protected abstract makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT_SP",
            "LITR;",
            "JJJJ)TT_SP",
            "LITR;"
        }
    .end annotation
.end method

.method public trySplit()Lj$/util/Spliterator;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT_SP",
            "LITR;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lj$/util/stream/StreamSpliterators$SliceSpliterator;, "Ljava/util/stream/StreamSpliterators$SliceSpliterator<TT;TT_SPLITR;>;"
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-ltz v5, :cond_0

    .line 636
    return-object v4

    .line 638
    :cond_0
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    .line 639
    return-object v4

    .line 648
    :cond_1
    :goto_0
    iget-object v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    invoke-interface {v0}, Lj$/util/Spliterator;->trySplit()Lj$/util/Spliterator;

    move-result-object v6

    .line 649
    .local v6, "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    if-nez v6, :cond_2

    .line 650
    return-object v4

    .line 652
    :cond_2
    iget-wide v0, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    invoke-interface {v6}, Lj$/util/Spliterator;->estimateSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    .line 653
    .local v0, "leftSplitFenceUnbounded":J
    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 654
    .local v13, "leftSplitFence":J
    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v5, v2, v13

    if-ltz v5, :cond_3

    .line 658
    iput-wide v13, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    goto :goto_1

    .line 660
    :cond_3
    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v5, v13, v2

    if-ltz v5, :cond_4

    .line 664
    iput-object v6, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->s:Lj$/util/Spliterator;

    .line 665
    iput-wide v13, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->fence:J

    .line 677
    .end local v0    # "leftSplitFenceUnbounded":J
    .end local v6    # "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    .end local v13    # "leftSplitFence":J
    :goto_1
    goto :goto_0

    .line 667
    .restart local v0    # "leftSplitFenceUnbounded":J
    .restart local v6    # "leftSplit":Lj$/util/Spliterator;, "TT_SPLITR;"
    .restart local v13    # "leftSplitFence":J
    :cond_4
    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iget-wide v4, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    cmp-long v7, v2, v4

    if-ltz v7, :cond_5

    iget-wide v2, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_5

    .line 670
    iput-wide v13, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    .line 671
    return-object v6

    .line 675
    :cond_5
    iget-wide v7, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceOrigin:J

    iget-wide v9, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->sliceFence:J

    iget-wide v11, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    iput-wide v13, p0, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->index:J

    move-object v5, p0

    invoke-virtual/range {v5 .. v14}, Lj$/util/stream/StreamSpliterators$SliceSpliterator;->makeSpliterator(Lj$/util/Spliterator;JJJJ)Lj$/util/Spliterator;

    move-result-object v2

    return-object v2
.end method

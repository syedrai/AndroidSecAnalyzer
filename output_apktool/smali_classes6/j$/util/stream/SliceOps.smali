.class final Lj$/util/stream/SliceOps;
.super Ljava/lang/Object;
.source "SliceOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/SliceOps$SliceTask;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static bridge synthetic -$$Nest$smcalcSize(JJJ)J
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/SliceOps;->calcSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smcalcSliceFence(JJ)J
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lj$/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smsliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/SliceOps;->sliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calcSize(JJJ)J
    .locals 5
    .param p0, "size"    # J
    .param p2, "skip"    # J
    .param p4, "limit"    # J

    .line 53
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p0, v0

    if-ltz v4, :cond_0

    sub-long v0, p0, p2

    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :cond_0
    return-wide v2
.end method

.method private static calcSliceFence(JJ)J
    .locals 7
    .param p0, "skip"    # J
    .param p2, "limit"    # J

    .line 65
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-ltz v4, :cond_0

    add-long v4, p0, p2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    .line 67
    .local v4, "sliceFence":J
    :goto_0
    cmp-long v6, v4, v2

    if-ltz v6, :cond_1

    move-wide v0, v4

    :cond_1
    return-wide v0
.end method

.method private static flags(J)I
    .locals 4
    .param p0, "limit"    # J

    .line 544
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    const-wide/16 v1, -0x1

    cmp-long v3, p0, v1

    if-eqz v3, :cond_0

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public static makeDouble(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/DoubleStream;
    .locals 11
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;JJ)",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 445
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 448
    new-instance v3, Lj$/util/stream/SliceOps$4;

    sget-object v5, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    .line 449
    invoke-static {p3, p4}, Lj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .end local p1    # "skip":J
    .end local p3    # "limit":J
    .local v4, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .local v7, "skip":J
    .local v9, "limit":J
    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$4;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V

    .line 448
    return-object v3

    .line 446
    .end local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .end local v7    # "skip":J
    .end local v9    # "limit":J
    .restart local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .restart local p1    # "skip":J
    .restart local p3    # "limit":J
    :cond_0
    move-object v4, p0

    move-wide v7, p1

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .end local p1    # "skip":J
    .restart local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    .restart local v7    # "skip":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeInt(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/IntStream;
    .locals 11
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;JJ)",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 227
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 230
    new-instance v3, Lj$/util/stream/SliceOps$2;

    sget-object v5, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    .line 231
    invoke-static {p3, p4}, Lj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .end local p1    # "skip":J
    .end local p3    # "limit":J
    .local v4, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .local v7, "skip":J
    .local v9, "limit":J
    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$2;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V

    .line 230
    return-object v3

    .line 228
    .end local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .end local v7    # "skip":J
    .end local v9    # "limit":J
    .restart local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .restart local p1    # "skip":J
    .restart local p3    # "limit":J
    :cond_0
    move-object v4, p0

    move-wide v7, p1

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .end local p1    # "skip":J
    .restart local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    .restart local v7    # "skip":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeLong(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/LongStream;
    .locals 11
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;JJ)",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 336
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 339
    new-instance v3, Lj$/util/stream/SliceOps$3;

    sget-object v5, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    .line 340
    invoke-static {p3, p4}, Lj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .end local p1    # "skip":J
    .end local p3    # "limit":J
    .local v4, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .local v7, "skip":J
    .local v9, "limit":J
    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$3;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V

    .line 339
    return-object v3

    .line 337
    .end local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .end local v7    # "skip":J
    .end local v9    # "limit":J
    .restart local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .restart local p1    # "skip":J
    .restart local p3    # "limit":J
    :cond_0
    move-object v4, p0

    move-wide v7, p1

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .end local p1    # "skip":J
    .restart local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    .restart local v7    # "skip":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static makeRef(Lj$/util/stream/AbstractPipeline;JJ)Lj$/util/stream/Stream;
    .locals 11
    .param p1, "skip"    # J
    .param p3, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;JJ)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 111
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 114
    new-instance v3, Lj$/util/stream/SliceOps$1;

    sget-object v5, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    .line 115
    invoke-static {p3, p4}, Lj$/util/stream/SliceOps;->flags(J)I

    move-result v6

    move-object v4, p0

    move-wide v7, p1

    move-wide v9, p3

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .end local p1    # "skip":J
    .end local p3    # "limit":J
    .local v4, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local v7, "skip":J
    .local v9, "limit":J
    invoke-direct/range {v3 .. v10}, Lj$/util/stream/SliceOps$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;IJJ)V

    .line 114
    return-object v3

    .line 112
    .end local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .end local v7    # "skip":J
    .end local v9    # "limit":J
    .restart local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .restart local p1    # "skip":J
    .restart local p3    # "limit":J
    :cond_0
    move-object v4, p0

    move-wide v7, p1

    .end local p0    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .end local p1    # "skip":J
    .restart local v4    # "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .restart local v7    # "skip":J
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skip must be non-negative: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static sliceSpliterator(Lj$/util/stream/StreamShape;Lj$/util/Spliterator;JJ)Lj$/util/Spliterator;
    .locals 6
    .param p0, "shape"    # Lj$/util/stream/StreamShape;
    .param p2, "skip"    # J
    .param p4, "limit"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/StreamShape;",
            "Lj$/util/Spliterator<",
            "TP_IN;>;JJ)",
            "Lj$/util/Spliterator<",
            "TP_IN;>;"
        }
    .end annotation

    .line 79
    .local p1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    nop

    .line 80
    invoke-static {p2, p3, p4, p5}, Lj$/util/stream/SliceOps;->calcSliceFence(JJ)J

    move-result-wide v4

    .line 81
    .local v4, "sliceFence":J
    sget-object v0, Lj$/util/stream/SliceOps$5;->$SwitchMap$java$util$stream$StreamShape:[I

    invoke-virtual {p0}, Lj$/util/stream/StreamShape;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 95
    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local p2    # "skip":J
    .local v1, "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .local v2, "skip":J
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown shape "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    .end local v1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .end local v2    # "skip":J
    .restart local p1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local p2    # "skip":J
    :pswitch_0
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;

    move-object v1, p1

    check-cast v1, Lj$/util/Spliterator$OfDouble;

    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfDouble;-><init>(Lj$/util/Spliterator$OfDouble;JJ)V

    return-object v0

    .line 89
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_1
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;

    move-object v1, p1

    check-cast v1, Lj$/util/Spliterator$OfLong;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfLong;-><init>(Lj$/util/Spliterator$OfLong;JJ)V

    return-object v0

    .line 86
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_2
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;

    move-object v1, p1

    check-cast v1, Lj$/util/Spliterator$OfInt;

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfInt;-><init>(Lj$/util/Spliterator$OfInt;JJ)V

    return-object v0

    .line 83
    .end local v2    # "skip":J
    .restart local p2    # "skip":J
    :pswitch_3
    move-wide v2, p2

    .end local p2    # "skip":J
    .restart local v2    # "skip":J
    new-instance v0, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;

    move-object v1, p1

    .end local p1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    .restart local v1    # "s":Lj$/util/Spliterator;, "Ljava/util/Spliterator<TP_IN;>;"
    invoke-direct/range {v0 .. v5}, Lj$/util/stream/StreamSpliterators$SliceSpliterator$OfRef;-><init>(Lj$/util/Spliterator;JJ)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

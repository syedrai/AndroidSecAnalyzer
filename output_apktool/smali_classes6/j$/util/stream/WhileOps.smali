.class final Lj$/util/stream/WhileOps;
.super Ljava/lang/Object;
.source "WhileOps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/WhileOps$DropWhileTask;,
        Lj$/util/stream/WhileOps$TakeWhileTask;,
        Lj$/util/stream/WhileOps$UnorderedWhileSpliterator;,
        Lj$/util/stream/WhileOps$DropWhileSink;,
        Lj$/util/stream/WhileOps$DropWhileOp;
    }
.end annotation


# static fields
.field static final DROP_FLAGS:I

.field static final TAKE_FLAGS:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sget v1, Lj$/util/stream/StreamOpFlag;->IS_SHORT_CIRCUIT:I

    or-int/2addr v0, v1

    sput v0, Lj$/util/stream/WhileOps;->TAKE_FLAGS:I

    .line 52
    sget v0, Lj$/util/stream/StreamOpFlag;->NOT_SIZED:I

    sput v0, Lj$/util/stream/WhileOps;->DROP_FLAGS:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static makeDropWhileDouble(Lj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava/util/function/DoublePredicate;",
            ")",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 558
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    new-instance v0, Lj$/util/stream/WhileOps$4Op;

    sget-object v1, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$4Op;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeDropWhileInt(Lj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 408
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    new-instance v0, Lj$/util/stream/WhileOps$2Op;

    sget-object v1, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$2Op;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeDropWhileLong(Lj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava/util/function/LongPredicate;",
            ")",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 483
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    new-instance v0, Lj$/util/stream/WhileOps$3Op;

    sget-object v1, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$3Op;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeDropWhileRef(Lj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 332
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    new-instance v0, Lj$/util/stream/WhileOps$1Op;

    sget-object v1, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->DROP_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$1Op;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

.method static makeTakeWhileDouble(Lj$/util/stream/AbstractPipeline;Ljava/util/function/DoublePredicate;)Lj$/util/stream/DoubleStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/DoublePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Double;",
            "*>;",
            "Ljava/util/function/DoublePredicate;",
            ")",
            "Lj$/util/stream/DoubleStream;"
        }
    .end annotation

    .line 234
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Double;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    new-instance v0, Lj$/util/stream/WhileOps$4;

    sget-object v1, Lj$/util/stream/StreamShape;->DOUBLE_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$4;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/DoublePredicate;)V

    return-object v0
.end method

.method static makeTakeWhileInt(Lj$/util/stream/AbstractPipeline;Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/IntPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Integer;",
            "*>;",
            "Ljava/util/function/IntPredicate;",
            ")",
            "Lj$/util/stream/IntStream;"
        }
    .end annotation

    .line 120
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Integer;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Lj$/util/stream/WhileOps$2;

    sget-object v1, Lj$/util/stream/StreamShape;->INT_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$2;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/IntPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileLong(Lj$/util/stream/AbstractPipeline;Ljava/util/function/LongPredicate;)Lj$/util/stream/LongStream;
    .locals 3
    .param p1, "predicate"    # Ljava/util/function/LongPredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj$/util/stream/AbstractPipeline<",
            "*",
            "Ljava/lang/Long;",
            "*>;",
            "Ljava/util/function/LongPredicate;",
            ")",
            "Lj$/util/stream/LongStream;"
        }
    .end annotation

    .line 177
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*Ljava/lang/Long;*>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    new-instance v0, Lj$/util/stream/WhileOps$3;

    sget-object v1, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$3;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/LongPredicate;)V

    return-object v0
.end method

.method static makeTakeWhileRef(Lj$/util/stream/AbstractPipeline;Ljava/util/function/Predicate;)Lj$/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lj$/util/stream/AbstractPipeline<",
            "*TT;*>;",
            "Ljava/util/function/Predicate<",
            "-TT;>;)",
            "Lj$/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 63
    .local p0, "upstream":Lj$/util/stream/AbstractPipeline;, "Ljava/util/stream/AbstractPipeline<*TT;*>;"
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Lj$/util/stream/WhileOps$1;

    sget-object v1, Lj$/util/stream/StreamShape;->REFERENCE:Lj$/util/stream/StreamShape;

    sget v2, Lj$/util/stream/WhileOps;->TAKE_FLAGS:I

    invoke-direct {v0, p0, v1, v2, p1}, Lj$/util/stream/WhileOps$1;-><init>(Lj$/util/stream/AbstractPipeline;Lj$/util/stream/StreamShape;ILjava/util/function/Predicate;)V

    return-object v0
.end method

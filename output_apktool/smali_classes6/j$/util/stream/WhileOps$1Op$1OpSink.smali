.class Lj$/util/stream/WhileOps$1Op$1OpSink;
.super Lj$/util/stream/Sink$ChainedReference;
.source "WhileOps.java"

# interfaces
.implements Lj$/util/stream/WhileOps$DropWhileSink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj$/util/stream/WhileOps$1Op;->opWrapSink(Lj$/util/stream/Sink;Z)Lj$/util/stream/WhileOps$DropWhileSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OpSink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/Sink$ChainedReference<",
        "TT;TT;>;",
        "Lj$/util/stream/WhileOps$DropWhileSink<",
        "TT;>;"
    }
.end annotation


# instance fields
.field dropCount:J

.field take:Z

.field final synthetic val$predicate:Ljava/util/function/Predicate;

.field final synthetic val$retainAndCountDroppedElements:Z

.field final synthetic val$sink:Lj$/util/stream/Sink;


# direct methods
.method constructor <init>(Lj$/util/stream/WhileOps$1Op;Lj$/util/stream/Sink;Ljava/util/function/Predicate;Z)V
    .locals 0
    .param p1, "this$0"    # Lj$/util/stream/WhileOps$1Op;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 370
    iput-object p2, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$sink:Lj$/util/stream/Sink;

    iput-object p3, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$predicate:Ljava/util/function/Predicate;

    iput-boolean p4, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$retainAndCountDroppedElements:Z

    .line 371
    invoke-direct {p0, p2}, Lj$/util/stream/Sink$ChainedReference;-><init>(Lj$/util/stream/Sink;)V

    .line 372
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 376
    .local p1, "t":Ljava/lang/Object;, "TT;"
    iget-boolean v0, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->take:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$predicate:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->take:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 380
    .local v0, "takeElement":Z
    :goto_1
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    .line 381
    iget-wide v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->dropCount:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->dropCount:J

    .line 385
    :cond_2
    iget-boolean v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->val$retainAndCountDroppedElements:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_4

    .line 386
    :cond_3
    iget-object v1, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->downstream:Lj$/util/stream/Sink;

    invoke-interface {v1, p1}, Lj$/util/stream/Sink;->accept(Ljava/lang/Object;)V

    .line 387
    :cond_4
    return-void
.end method

.method public getDropCount()J
    .locals 2

    .line 391
    iget-wide v0, p0, Lj$/util/stream/WhileOps$1Op$1OpSink;->dropCount:J

    return-wide v0
.end method

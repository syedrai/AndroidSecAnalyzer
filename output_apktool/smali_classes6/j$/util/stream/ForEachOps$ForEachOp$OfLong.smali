.class final Lj$/util/stream/ForEachOps$ForEachOp$OfLong;
.super Lj$/util/stream/ForEachOps$ForEachOp;
.source "ForEachOps.java"

# interfaces
.implements Lj$/util/stream/Sink$OfLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/stream/ForEachOps$ForEachOp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OfLong"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj$/util/stream/ForEachOps$ForEachOp<",
        "Ljava/lang/Long;",
        ">;",
        "Lj$/util/stream/Sink$OfLong;"
    }
.end annotation


# instance fields
.field final consumer:Ljava/util/function/LongConsumer;


# direct methods
.method constructor <init>(Ljava/util/function/LongConsumer;Z)V
    .locals 0
    .param p1, "consumer"    # Ljava/util/function/LongConsumer;
    .param p2, "ordered"    # Z

    .line 214
    invoke-direct {p0, p2}, Lj$/util/stream/ForEachOps$ForEachOp;-><init>(Z)V

    .line 215
    iput-object p1, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    .line 216
    return-void
.end method


# virtual methods
.method public accept(J)V
    .locals 1
    .param p1, "t"    # J

    .line 225
    iget-object v0, p0, Lj$/util/stream/ForEachOps$ForEachOp$OfLong;->consumer:Ljava/util/function/LongConsumer;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    .line 226
    return-void
.end method

.method public synthetic accept(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfLong$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Long;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/Sink$OfLong$-CC;->$default$accept(Lj$/util/stream/Sink$OfLong;Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/LongConsumer$-CC;->$default$andThen(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;

    move-result-object p1

    return-object p1
.end method

.method public inputShape()Lj$/util/stream/StreamShape;
    .locals 1

    .line 220
    sget-object v0, Lj$/util/stream/StreamShape;->LONG_VALUE:Lj$/util/stream/StreamShape;

    return-object v0
.end method

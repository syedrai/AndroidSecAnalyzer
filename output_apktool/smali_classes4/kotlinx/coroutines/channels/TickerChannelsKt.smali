.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "TickerChannels.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,108:1\n1#2:109\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a4\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007\u001a,\u0010\n\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\r\u001a,\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u000cH\u0082@\u00a2\u0006\u0002\u0010\r\u00a8\u0006\u000f"
    }
    d2 = {
        "ticker",
        "Lkotlinx/coroutines/channels/ReceiveChannel;",
        "",
        "delayMillis",
        "",
        "initialDelayMillis",
        "context",
        "Lkotlin/coroutines/CoroutineContext;",
        "mode",
        "Lkotlinx/coroutines/channels/TickerMode;",
        "fixedPeriodTicker",
        "channel",
        "Lkotlinx/coroutines/channels/SendChannel;",
        "(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;",
        "fixedDelayTicker",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final synthetic access$fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic access$fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "channel"    # Lkotlinx/coroutines/channels/SendChannel;
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;

    .line 1
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static final fixedDelayTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delayMillis",
            "initialDelayMillis",
            "channel",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 97
    iget v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    .local p0, "delayMillis":J
    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    .local p2, "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    .end local p0    # "delayMillis":J
    .end local p2    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_1
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    .restart local p0    # "delayMillis":J
    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    .restart local p2    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    .end local p0    # "delayMillis":J
    .end local p2    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_2
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    .restart local p0    # "delayMillis":J
    iget-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/SendChannel;

    .restart local p2    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .end local p0    # "delayMillis":J
    .end local p2    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_3
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 102
    .restart local p0    # "delayMillis":J
    .local p2, "initialDelayMillis":J
    .local p4, "channel":Lkotlinx/coroutines/channels/SendChannel;
    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    const/4 v3, 0x1

    iput v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "initialDelayMillis":J
    if-ne p2, v2, :cond_1

    .line 97
    return-object v2

    .line 102
    :cond_1
    move-object p2, p4

    .line 103
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    .local p2, "channel":Lkotlinx/coroutines/channels/SendChannel;
    :goto_1
    nop

    .line 104
    :goto_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    const/4 p4, 0x2

    iput p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p2, p3, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_2

    .line 97
    return-object v2

    .line 105
    :cond_2
    :goto_3
    iput-object p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    const/4 p3, 0x3

    iput p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p0, p1, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v2, :cond_3

    .line 97
    return-object v2

    .line 105
    :cond_3
    :goto_4
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final fixedPeriodTicker(JJLkotlinx/coroutines/channels/SendChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10
    .param p5, "$completion"    # Lkotlin/coroutines/Continuation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delayMillis",
            "initialDelayMillis",
            "channel",
            "$completion"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/SendChannel<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .local v0, "$continuation":Lkotlin/coroutines/Continuation;
    :goto_0
    iget-object v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    .local v1, "$result":Ljava/lang/Object;
    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v2

    .line 74
    iget v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    packed-switch v3, :pswitch_data_0

    .end local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .end local v1    # "$result":Ljava/lang/Object;
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .restart local v0    # "$continuation":Lkotlin/coroutines/Continuation;
    .restart local v1    # "$result":Ljava/lang/Object;
    :pswitch_0
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .local p0, "delayNs":J
    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .local p2, "deadline":J
    iget-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    .local p4, "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v3, p0

    move-wide p0, p2

    goto/16 :goto_7

    .end local p0    # "delayNs":J
    .end local p2    # "deadline":J
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_1
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .restart local p0    # "delayNs":J
    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .restart local p2    # "deadline":J
    iget-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-wide v3, p0

    move-wide p0, p2

    goto/16 :goto_6

    .end local p0    # "delayNs":J
    .end local p2    # "deadline":J
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_2
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .restart local p0    # "delayNs":J
    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .restart local p2    # "deadline":J
    iget-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_4

    .end local p0    # "delayNs":J
    .end local p2    # "deadline":J
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_3
    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    .local p0, "deadline":J
    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    .local p2, "delayMillis":J
    iget-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast p4, Lkotlinx/coroutines/channels/SendChannel;

    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .end local p0    # "deadline":J
    .end local p2    # "delayMillis":J
    .end local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    :pswitch_4
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 79
    .local p0, "delayMillis":J
    .local p2, "initialDelayMillis":J
    .restart local p4    # "channel":Lkotlinx/coroutines/channels/SendChannel;
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    :goto_1
    invoke-static {p2, p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 80
    .local v3, "deadline":J
    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 v5, 0x1

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    .end local p2    # "initialDelayMillis":J
    if-ne p2, v2, :cond_2

    .line 74
    return-object v2

    .line 80
    :cond_2
    move-wide p2, p0

    move-wide p0, v3

    .line 81
    .end local v3    # "deadline":J
    .local p0, "deadline":J
    .local p2, "delayMillis":J
    :goto_2
    invoke-static {p2, p3}, Lkotlinx/coroutines/EventLoop_commonKt;->delayToNanos(J)J

    move-result-wide v3

    .line 82
    .end local p2    # "delayMillis":J
    .local v3, "delayNs":J
    :goto_3
    nop

    .line 83
    add-long/2addr p0, v3

    .line 84
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 p3, 0x2

    iput p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {p4, p2, v0}, Lkotlinx/coroutines/channels/SendChannel;->send(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_3

    .line 74
    return-object v2

    .line 84
    :cond_3
    move-wide p2, p0

    move-wide p0, v3

    .line 85
    .end local v3    # "delayNs":J
    .local p0, "delayNs":J
    .local p2, "deadline":J
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/AbstractTimeSourceKt;->access$getTimeSource$p()Lkotlinx/coroutines/AbstractTimeSource;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lkotlinx/coroutines/AbstractTimeSource;->nanoTime()J

    move-result-wide v3

    goto :goto_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 86
    .local v3, "now":J
    :goto_5
    sub-long v5, p2, v3

    const-wide/16 v7, 0x0

    invoke-static {v5, v6, v7, v8}, Lkotlin/ranges/RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v5

    .line 87
    .local v5, "nextDelay":J
    cmp-long v9, v5, v7

    if-nez v9, :cond_6

    cmp-long v9, p0, v7

    if-eqz v9, :cond_6

    .line 88
    .end local v5    # "nextDelay":J
    sub-long v5, v3, p2

    rem-long/2addr v5, p0

    sub-long v5, p0, v5

    .line 89
    .local v5, "adjustedDelay":J
    add-long p2, v3, v5

    .line 90
    .end local v3    # "now":J
    invoke-static {v5, v6}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v3

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 v7, 0x3

    iput v7, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v5    # "adjustedDelay":J
    if-ne v3, v2, :cond_5

    .line 74
    return-object v2

    .line 90
    :cond_5
    move-wide v3, p0

    move-wide p0, p2

    .end local p2    # "deadline":J
    .local v3, "delayNs":J
    .local p0, "deadline":J
    :goto_6
    goto :goto_3

    .line 92
    .end local v3    # "delayNs":J
    .local v5, "nextDelay":J
    .local p0, "delayNs":J
    .restart local p2    # "deadline":J
    :cond_6
    invoke-static {v5, v6}, Lkotlinx/coroutines/EventLoop_commonKt;->delayNanosToMillis(J)J

    move-result-wide v3

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    const/4 v7, 0x4

    iput v7, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v3, v4, v0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    .end local v5    # "nextDelay":J
    if-ne v3, v2, :cond_7

    .line 74
    return-object v2

    .line 92
    :cond_7
    move-wide v3, p0

    move-wide p0, p2

    .end local p2    # "deadline":J
    .restart local v3    # "delayNs":J
    .local p0, "deadline":J
    :goto_7
    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 10
    .param p0, "delayMillis"    # J
    .param p2, "initialDelayMillis"    # J
    .param p4, "context"    # Lkotlin/coroutines/CoroutineContext;
    .param p5, "mode"    # Lkotlinx/coroutines/channels/TickerMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "delayMillis",
            "initialDelayMillis",
            "context",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lkotlinx/coroutines/channels/TickerMode;",
            ")",
            "Lkotlinx/coroutines/channels/ReceiveChannel<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, " ms"

    if-eqz v4, :cond_3

    .line 65
    cmp-long v4, p2, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 66
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->INSTANCE:Lkotlinx/coroutines/GlobalScope;

    check-cast v0, Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getUnconfined()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    invoke-virtual {v2, p4}, Lkotlinx/coroutines/CoroutineDispatcher;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    new-instance v3, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;

    const/4 v9, 0x0

    move-wide v5, p0

    move-wide v7, p2

    move-object v4, p5

    .end local p0    # "delayMillis":J
    .end local p2    # "initialDelayMillis":J
    .end local p5    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .local v4, "mode":Lkotlinx/coroutines/channels/TickerMode;
    .local v5, "delayMillis":J
    .local v7, "initialDelayMillis":J
    invoke-direct/range {v3 .. v9}, Lkotlinx/coroutines/channels/TickerChannelsKt$ticker$3;-><init>(Lkotlinx/coroutines/channels/TickerMode;JJLkotlin/coroutines/Continuation;)V

    .end local v5    # "delayMillis":J
    .restart local p0    # "delayMillis":J
    check-cast v3, Lkotlin/jvm/functions/Function2;

    invoke-static {v0, v2, v1, v3}, Lkotlinx/coroutines/channels/ProduceKt;->produce(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;ILkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p2

    return-object p2

    .line 109
    .end local v4    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .end local v7    # "initialDelayMillis":J
    .restart local p2    # "initialDelayMillis":J
    .restart local p5    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    :cond_2
    move-wide v7, p2

    move-object v4, p5

    .end local p2    # "initialDelayMillis":J
    .end local p5    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .restart local v4    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .restart local v7    # "initialDelayMillis":J
    const/4 p2, 0x0

    .line 65
    .local p2, "$i$a$-require-TickerChannelsKt$ticker$2":I
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Expected non-negative initial delay, but has "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "$i$a$-require-TickerChannelsKt$ticker$2":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 109
    .end local v4    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .end local v7    # "initialDelayMillis":J
    .local p2, "initialDelayMillis":J
    .restart local p5    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    :cond_3
    move-wide v7, p2

    move-object v4, p5

    .end local p2    # "initialDelayMillis":J
    .end local p5    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .restart local v4    # "mode":Lkotlinx/coroutines/channels/TickerMode;
    .restart local v7    # "initialDelayMillis":J
    const/4 p2, 0x0

    .line 64
    .local p2, "$i$a$-require-TickerChannelsKt$ticker$1":I
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Expected non-negative delay, but has "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2    # "$i$a$-require-TickerChannelsKt$ticker$1":I
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public static synthetic ticker$default(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;ILjava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveChannel;
    .locals 0

    .line 57
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    .line 60
    move-wide p2, p0

    .line 57
    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    .line 61
    sget-object p4, Lkotlin/coroutines/EmptyCoroutineContext;->INSTANCE:Lkotlin/coroutines/EmptyCoroutineContext;

    check-cast p4, Lkotlin/coroutines/CoroutineContext;

    .line 57
    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    .line 62
    sget-object p5, Lkotlinx/coroutines/channels/TickerMode;->FIXED_PERIOD:Lkotlinx/coroutines/channels/TickerMode;

    .line 57
    :cond_2
    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/channels/TickerChannelsKt;->ticker(JJLkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/channels/TickerMode;)Lkotlinx/coroutines/channels/ReceiveChannel;

    move-result-object p0

    return-object p0
.end method

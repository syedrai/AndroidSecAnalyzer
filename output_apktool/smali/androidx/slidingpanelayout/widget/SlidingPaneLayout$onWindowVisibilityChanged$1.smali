.class final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SlidingPaneLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "androidx.slidingpanelayout.widget.SlidingPaneLayout$onWindowVisibilityChanged$1"
    f = "SlidingPaneLayout.kt"
    i = {}
    l = {
        0x3b6,
        0x3b7
    }
    m = "invokeSuspend"
    n = {}
    s = {}
.end annotation


# instance fields
.field final synthetic $toJoin:Lkotlinx/coroutines/Job;

.field label:I

.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/Job;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Lkotlin/coroutines/Continuation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/Job;",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->$toJoin:Lkotlinx/coroutines/Job;

    iput-object p2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->$toJoin:Lkotlinx/coroutines/Job;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {v0, v1, v2, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;-><init>(Lkotlinx/coroutines/Job;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Lkotlin/coroutines/Continuation;)V

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 948
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->label:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .local p1, "$result":Ljava/lang/Object;
    :pswitch_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    .end local p1    # "$result":Ljava/lang/Object;
    :pswitch_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 950
    .restart local p1    # "$result":Ljava/lang/Object;
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->$toJoin:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_0

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x1

    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->label:I

    invoke-interface {v1, v2}, Lkotlinx/coroutines/Job;->join(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 948
    return-object v0

    .line 950
    :cond_0
    :goto_0
    nop

    .line 951
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v2, p0

    check-cast v2, Lkotlin/coroutines/Continuation;

    const/4 v3, 0x2

    iput v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$onWindowVisibilityChanged$1;->label:I

    invoke-static {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$whileAttachedToVisibleWindow(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_1

    .line 948
    return-object v0

    .line 952
    :cond_1
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

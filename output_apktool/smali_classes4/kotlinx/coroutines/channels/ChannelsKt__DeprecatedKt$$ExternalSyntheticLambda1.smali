.class public final synthetic Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public synthetic f$0:[Lkotlinx/coroutines/channels/ReceiveChannel;


# direct methods
.method public synthetic constructor <init>([Lkotlinx/coroutines/channels/ReceiveChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$$ExternalSyntheticLambda1;->f$0:[Lkotlinx/coroutines/channels/ReceiveChannel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$$ExternalSyntheticLambda1;->f$0:[Lkotlinx/coroutines/channels/ReceiveChannel;

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt;->$r8$lambda$Pnlf7xJwYiqoh8L1-HZzjr5nMtM([Lkotlinx/coroutines/channels/ReceiveChannel;Ljava/lang/Throwable;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

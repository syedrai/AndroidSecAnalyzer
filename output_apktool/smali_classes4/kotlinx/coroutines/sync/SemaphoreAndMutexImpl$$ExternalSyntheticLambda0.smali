.class public final synthetic Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public synthetic f$0:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl$$ExternalSyntheticLambda0;->f$0:Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;

    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lkotlin/Unit;

    check-cast p3, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0, p1, p2, p3}, Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;->$r8$lambda$quHWd3GaEfdSVzfk9OcZcQLfclQ(Lkotlinx/coroutines/sync/SemaphoreAndMutexImpl;Ljava/lang/Throwable;Lkotlin/Unit;Lkotlin/coroutines/CoroutineContext;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method

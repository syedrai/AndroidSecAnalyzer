.class final Lkotlinx/coroutines/DisposeOnCancel;
.super Ljava/lang/Object;
.source "CancellableContinuation.kt"

# interfaces
.implements Lkotlinx/coroutines/CancelHandler;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lkotlinx/coroutines/DisposeOnCancel;",
        "Lkotlinx/coroutines/CancelHandler;",
        "handle",
        "Lkotlinx/coroutines/DisposableHandle;",
        "<init>",
        "(Lkotlinx/coroutines/DisposableHandle;)V",
        "invoke",
        "",
        "cause",
        "",
        "toString",
        "",
        "kotlinx-coroutines-core"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final handle:Lkotlinx/coroutines/DisposableHandle;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/DisposableHandle;)V
    .locals 0
    .param p1, "handle"    # Lkotlinx/coroutines/DisposableHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/DisposeOnCancel;->handle:Lkotlinx/coroutines/DisposableHandle;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lkotlinx/coroutines/DisposeOnCancel;->handle:Lkotlinx/coroutines/DisposableHandle;

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 421
    iget-object v0, p0, Lkotlinx/coroutines/DisposeOnCancel;->handle:Lkotlinx/coroutines/DisposableHandle;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisposeOnCancel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

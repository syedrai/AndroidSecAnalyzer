.class public final Lkotlin/coroutines/cancellation/CancellationExceptionKt;
.super Ljava/lang/Object;
.source "CancellationException.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCancellationException.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellationException.kt\nkotlin/coroutines/cancellation/CancellationExceptionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,22:1\n1#2:23\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0000\u001a!\u0010\u0000\u001a\u00060\u0001j\u0002`\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0087\u0008\u001a\u0017\u0010\u0000\u001a\u00060\u0001j\u0002`\u00052\u0008\u0010\u0008\u001a\u0004\u0018\u00010\tH\u0087\u0008*\u001a\u0008\u0007\u0010\u0000\"\u00020\u00012\u00020\u0001B\u000c\u0008\u0002\u0012\u0008\u0008\u0003\u0012\u0004\u0008\u0008(\u0004\u00a8\u0006\n"
    }
    d2 = {
        "CancellationException",
        "Ljava/util/concurrent/CancellationException;",
        "Lkotlin/SinceKotlin;",
        "version",
        "1.4",
        "Lkotlin/coroutines/cancellation/CancellationException;",
        "message",
        "",
        "cause",
        "",
        "kotlin_stdlib"
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
.method private static final CancellationException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "cause"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 23
    .local v1, "it":Ljava/util/concurrent/CancellationException;
    const/4 v2, 0x0

    .line 16
    .local v2, "$i$a$-also-CancellationExceptionKt$CancellationException$1":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "it":Ljava/util/concurrent/CancellationException;
    .end local v2    # "$i$a$-also-CancellationExceptionKt$CancellationException$1":I
    return-object v0
.end method

.method private static final CancellationException(Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;
    .locals 4
    .param p0, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cause"
        }
    .end annotation

    .line 21
    new-instance v0, Ljava/util/concurrent/CancellationException;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 23
    .local v1, "it":Ljava/util/concurrent/CancellationException;
    const/4 v2, 0x0

    .line 21
    .local v2, "$i$a$-also-CancellationExceptionKt$CancellationException$2":I
    move-object v3, v1

    check-cast v3, Ljava/lang/Throwable;

    invoke-virtual {v3, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .end local v1    # "it":Ljava/util/concurrent/CancellationException;
    .end local v2    # "$i$a$-also-CancellationExceptionKt$CancellationException$2":I
    return-object v0
.end method

.method public static synthetic CancellationException$annotations()V
    .locals 0

    return-void
.end method

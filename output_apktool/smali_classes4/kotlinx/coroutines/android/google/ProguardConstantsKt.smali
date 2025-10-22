.class public final Lkotlinx/coroutines/android/google/ProguardConstantsKt;
.super Ljava/lang/Object;
.source "ProguardConstants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\"\u0010\u0010\u0000\u001a\u00020\u00018\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0002"
    }
    d2 = {
        "MAIN_DISPATCHER",
        "Lkotlinx/coroutines/MainCoroutineDispatcher;",
        "kotlinx-coroutines-android"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final MAIN_DISPATCHER:Lkotlinx/coroutines/MainCoroutineDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/os/HandlerCompat;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    const-string v1, "main"

    invoke-static {v0, v1}, Lkotlinx/coroutines/android/HandlerDispatcherKt;->from(Landroid/os/Handler;Ljava/lang/String;)Lkotlinx/coroutines/android/HandlerDispatcher;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/MainCoroutineDispatcher;

    sput-object v0, Lkotlinx/coroutines/android/google/ProguardConstantsKt;->MAIN_DISPATCHER:Lkotlinx/coroutines/MainCoroutineDispatcher;

    return-void
.end method

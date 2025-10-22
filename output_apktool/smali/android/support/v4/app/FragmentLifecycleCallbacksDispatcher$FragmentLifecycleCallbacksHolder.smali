.class final Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentLifecycleCallbacksDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;",
        "",
        "callback",
        "Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
        "recursive",
        "",
        "<init>",
        "(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V",
        "getCallback",
        "()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;",
        "getRecursive",
        "()Z",
        "fragment_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final callback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

.field private final recursive:Z


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .param p2, "recursive"    # Z

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->callback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    .line 26
    iput-boolean p2, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->recursive:Z

    .line 24
    return-void
.end method


# virtual methods
.method public final getCallback()Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;
    .locals 1

    .line 25
    iget-object v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->callback:Landroid/support/v4/app/FragmentManager$FragmentLifecycleCallbacks;

    return-object v0
.end method

.method public final getRecursive()Z
    .locals 1

    .line 26
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;->recursive:Z

    return v0
.end method

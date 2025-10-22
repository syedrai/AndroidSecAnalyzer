.class Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/FragmentResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LifecycleAwareResultListener"
.end annotation


# instance fields
.field private final mLifecycle:Landroidx/lifecycle/Lifecycle;

.field private final mListener:Landroid/support/v4/app/FragmentResultListener;

.field private final mObserver:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method constructor <init>(Landroidx/lifecycle/Lifecycle;Landroid/support/v4/app/FragmentResultListener;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0
    .param p1, "lifecycle"    # Landroidx/lifecycle/Lifecycle;
    .param p2, "listener"    # Landroid/support/v4/app/FragmentResultListener;
    .param p3, "observer"    # Landroidx/lifecycle/LifecycleEventObserver;

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    .line 328
    iput-object p2, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mListener:Landroid/support/v4/app/FragmentResultListener;

    .line 329
    iput-object p3, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    .line 330
    return-void
.end method


# virtual methods
.method public isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z
    .locals 1
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 333
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0}, Landroidx/lifecycle/Lifecycle;->getCurrentState()Landroidx/lifecycle/Lifecycle$State;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/Lifecycle$State;->isAtLeast(Landroidx/lifecycle/Lifecycle$State;)Z

    move-result v0

    return v0
.end method

.method public onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "requestKey"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 338
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mListener:Landroid/support/v4/app/FragmentResultListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/app/FragmentResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method public removeObserver()V
    .locals 2

    .line 342
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mLifecycle:Landroidx/lifecycle/Lifecycle;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$LifecycleAwareResultListener;->mObserver:Landroidx/lifecycle/LifecycleEventObserver;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 343
    return-void
.end method

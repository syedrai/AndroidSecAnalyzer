.class Landroid/support/v4/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/FragmentManager;->setFragmentResultListener(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroid/support/v4/app/FragmentResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentManager;

.field final synthetic val$lifecycle:Landroidx/lifecycle/Lifecycle;

.field final synthetic val$listener:Landroid/support/v4/app/FragmentResultListener;

.field final synthetic val$requestKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Landroid/support/v4/app/FragmentResultListener;Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1193
    iput-object p1, p0, Landroid/support/v4/app/FragmentManager$6;->this$0:Landroid/support/v4/app/FragmentManager;

    iput-object p2, p0, Landroid/support/v4/app/FragmentManager$6;->val$requestKey:Ljava/lang/String;

    iput-object p3, p0, Landroid/support/v4/app/FragmentManager$6;->val$listener:Landroid/support/v4/app/FragmentResultListener;

    iput-object p4, p0, Landroid/support/v4/app/FragmentManager$6;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3
    .param p1, "source"    # Landroidx/lifecycle/LifecycleOwner;
    .param p2, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 1197
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_0

    .line 1199
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$6;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->access$100(Landroid/support/v4/app/FragmentManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$6;->val$requestKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1200
    .local v0, "storedResult":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 1202
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$6;->val$listener:Landroid/support/v4/app/FragmentResultListener;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager$6;->val$requestKey:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/support/v4/app/FragmentResultListener;->onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1204
    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$6;->this$0:Landroid/support/v4/app/FragmentManager;

    iget-object v2, p0, Landroid/support/v4/app/FragmentManager$6;->val$requestKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->clearFragmentResult(Ljava/lang/String;)V

    .line 1208
    .end local v0    # "storedResult":Landroid/os/Bundle;
    :cond_0
    sget-object v0, Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;

    if-ne p2, v0, :cond_1

    .line 1209
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$6;->val$lifecycle:Landroidx/lifecycle/Lifecycle;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 1210
    iget-object v0, p0, Landroid/support/v4/app/FragmentManager$6;->this$0:Landroid/support/v4/app/FragmentManager;

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->access$200(Landroid/support/v4/app/FragmentManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentManager$6;->val$requestKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    :cond_1
    return-void
.end method

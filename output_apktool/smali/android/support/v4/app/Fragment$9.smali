.class Landroid/support/v4/app/Fragment$9;
.super Landroid/support/v4/app/Fragment$OnPreAttachedListener;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/Fragment;->prepareCallInternal(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/arch/core/util/Function;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/Fragment;

.field final synthetic val$callback:Landroidx/activity/result/ActivityResultCallback;

.field final synthetic val$contract:Landroidx/activity/result/contract/ActivityResultContract;

.field final synthetic val$ref:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$registryProvider:Landroidx/arch/core/util/Function;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroidx/arch/core/util/Function;Ljava/util/concurrent/atomic/AtomicReference;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3562
    iput-object p1, p0, Landroid/support/v4/app/Fragment$9;->this$0:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Landroid/support/v4/app/Fragment$9;->val$registryProvider:Landroidx/arch/core/util/Function;

    iput-object p3, p0, Landroid/support/v4/app/Fragment$9;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Landroid/support/v4/app/Fragment$9;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iput-object p5, p0, Landroid/support/v4/app/Fragment$9;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Landroid/support/v4/app/Fragment$OnPreAttachedListener;-><init>(Landroid/support/v4/app/Fragment$1;)V

    return-void
.end method


# virtual methods
.method onPreAttached()V
    .locals 6

    .line 3565
    iget-object v0, p0, Landroid/support/v4/app/Fragment$9;->this$0:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->generateActivityResultKey()Ljava/lang/String;

    move-result-object v0

    .line 3566
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/support/v4/app/Fragment$9;->val$registryProvider:Landroidx/arch/core/util/Function;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroidx/arch/core/util/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/activity/result/ActivityResultRegistry;

    .line 3567
    .local v1, "registry":Landroidx/activity/result/ActivityResultRegistry;
    iget-object v2, p0, Landroid/support/v4/app/Fragment$9;->val$ref:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Landroid/support/v4/app/Fragment$9;->this$0:Landroid/support/v4/app/Fragment;

    iget-object v4, p0, Landroid/support/v4/app/Fragment$9;->val$contract:Landroidx/activity/result/contract/ActivityResultContract;

    iget-object v5, p0, Landroid/support/v4/app/Fragment$9;->val$callback:Landroidx/activity/result/ActivityResultCallback;

    invoke-virtual {v1, v0, v3, v4, v5}, Landroidx/activity/result/ActivityResultRegistry;->register(Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 3568
    return-void
.end method

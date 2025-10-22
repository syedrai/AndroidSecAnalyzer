.class Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;
.super Ljava/lang/Object;
.source "DefaultKeyedAppStatesReporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->setStates(Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

.field final synthetic val$callback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

.field final synthetic val$immediate:Z

.field final synthetic val$states:Ljava/util/Collection;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;Ljava/util/Collection;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V
    .locals 0
    .param p1, "this$0"    # Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$states",
            "val$callback",
            "val$immediate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 103
    iput-object p2, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    iput-object p3, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$callback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    iput-boolean p4, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$immediate:Z

    iput-object p1, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 106
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$callback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$callback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/enterprise/feedback/KeyedAppStatesCallback;->onResult(ILjava/lang/Throwable;)V

    .line 111
    :cond_0
    return-void

    .line 114
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->unbindOldBindings()V

    .line 115
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->bind()V

    .line 117
    iget-object v0, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->this$0:Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;

    iget-object v1, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$states:Ljava/util/Collection;

    invoke-static {v1}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->buildStatesBundle(Ljava/util/Collection;)Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$callback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    iget-boolean v3, p0, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter$1;->val$immediate:Z

    invoke-virtual {v0, v1, v2, v3}, Landroidx/enterprise/feedback/DefaultKeyedAppStatesReporter;->send(Landroid/os/Bundle;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V

    .line 118
    return-void
.end method

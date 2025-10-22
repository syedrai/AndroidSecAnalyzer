.class Landroidx/enterprise/feedback/BufferedServiceConnection$1;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/enterprise/feedback/BufferedServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;


# direct methods
.method constructor <init>(Landroidx/enterprise/feedback/BufferedServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/enterprise/feedback/BufferedServiceConnection;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;

    invoke-direct {v1, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$1;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 129
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "componentName",
            "service"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;

    invoke-direct {v1, p0, p1, p2}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$2;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 150
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentName"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/enterprise/feedback/BufferedServiceConnection$1$3;

    invoke-direct {v1, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1$3;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 175
    return-void
.end method

.method reportSuccessOnBufferedMessages()V
    .locals 1

    .line 161
    nop

    :goto_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/SendableMessage;

    invoke-virtual {v0}, Landroidx/enterprise/feedback/SendableMessage;->onSuccess()V

    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method sendBufferedMessages()V
    .locals 2

    .line 154
    nop

    :goto_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v0, v0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;->this$0:Landroidx/enterprise/feedback/BufferedServiceConnection;

    iget-object v1, v1, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/enterprise/feedback/SendableMessage;

    invoke-virtual {v0, v1}, Landroidx/enterprise/feedback/BufferedServiceConnection;->trySendMessage(Landroidx/enterprise/feedback/SendableMessage;)V

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

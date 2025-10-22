.class Landroidx/enterprise/feedback/BufferedServiceConnection;
.super Ljava/lang/Object;
.source "BufferedServiceConnection.java"


# static fields
.field static final MAX_BUFFER_SIZE:I = 0x64


# instance fields
.field private final mBindIntent:Landroid/content/Intent;

.field final mBuffer:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroidx/enterprise/feedback/SendableMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field private final mFlags:I

.field mHasBeenDisconnected:Z

.field private mHasBound:Z

.field mIsDead:Z

.field mMessenger:Landroid/os/Messenger;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "bindIntent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "executor",
            "context",
            "bindIntent",
            "flags"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBeenDisconnected:Z

    .line 62
    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 64
    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    .line 65
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    .line 116
    new-instance v0, Landroidx/enterprise/feedback/BufferedServiceConnection$1;

    invoke-direct {v0, p0}, Landroidx/enterprise/feedback/BufferedServiceConnection$1;-><init>(Landroidx/enterprise/feedback/BufferedServiceConnection;)V

    iput-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    .line 78
    if-eqz p1, :cond_2

    .line 81
    if-eqz p2, :cond_1

    .line 84
    if-eqz p3, :cond_0

    .line 87
    iput-object p1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mExecutor:Ljava/util/concurrent/Executor;

    .line 88
    iput-object p2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    .line 89
    iput-object p3, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBindIntent:Landroid/content/Intent;

    .line 90
    iput p4, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mFlags:I

    .line 91
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bindIntent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "context must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "executor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method bindService()V
    .locals 4

    .line 100
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    .line 105
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBindIntent:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    iget v3, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 106
    return-void

    .line 101
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Each BufferedServiceConnection can only be bound once."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method hasBeenDisconnected()Z
    .locals 1

    .line 229
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBeenDisconnected:Z

    return v0
.end method

.method isDead()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    return v0
.end method

.method send(Landroidx/enterprise/feedback/SendableMessage;)V
    .locals 3
    .param p1, "message"    # Landroidx/enterprise/feedback/SendableMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Landroidx/enterprise/feedback/SendableMessage;->onSuccess()V

    .line 191
    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    if-nez v0, :cond_2

    .line 195
    :goto_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/enterprise/feedback/SendableMessage;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/enterprise/feedback/SendableMessage;->dealWithError(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mBuffer:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 199
    return-void

    .line 202
    :cond_2
    invoke-virtual {p0, p1}, Landroidx/enterprise/feedback/BufferedServiceConnection;->trySendMessage(Landroidx/enterprise/feedback/SendableMessage;)V

    .line 203
    return-void
.end method

.method trySendMessage(Landroidx/enterprise/feedback/SendableMessage;)V
    .locals 2
    .param p1, "message"    # Landroidx/enterprise/feedback/SendableMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 208
    :try_start_0
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroidx/enterprise/feedback/SendableMessage;->createStateMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 209
    invoke-virtual {p1}, Landroidx/enterprise/feedback/SendableMessage;->onSuccess()V
    :try_end_0
    .catch Landroid/os/TransactionTooLargeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroidx/enterprise/feedback/SendableMessage;->dealWithError(ILjava/lang/Throwable;)V

    goto :goto_1

    .line 210
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroidx/enterprise/feedback/SendableMessage;->dealWithError(ILjava/lang/Throwable;)V

    .line 214
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    :goto_0
    nop

    .line 215
    :goto_1
    return-void
.end method

.method unbind()V
    .locals 2

    .line 109
    iget-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mHasBound:Z

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mIsDead:Z

    .line 113
    iget-object v0, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroidx/enterprise/feedback/BufferedServiceConnection;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 114
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "bindService must be called before unbind"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

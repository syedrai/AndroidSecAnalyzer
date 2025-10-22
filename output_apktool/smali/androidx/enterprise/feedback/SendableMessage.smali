.class final Landroidx/enterprise/feedback/SendableMessage;
.super Ljava/lang/Object;
.source "SendableMessage.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SendableMessage"


# instance fields
.field private final mAppStatesBundle:Landroid/os/Bundle;

.field private final mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

.field private final mImmediate:Z


# direct methods
.method constructor <init>(Landroid/os/Bundle;Landroidx/enterprise/feedback/KeyedAppStatesCallback;Z)V
    .locals 0
    .param p1, "appStatesBundle"    # Landroid/os/Bundle;
    .param p2, "callback"    # Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .param p3, "immediate"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "appStatesBundle",
            "callback",
            "immediate"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/enterprise/feedback/SendableMessage;->mAppStatesBundle:Landroid/os/Bundle;

    .line 39
    iput-object p2, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    .line 40
    iput-boolean p3, p0, Landroidx/enterprise/feedback/SendableMessage;->mImmediate:Z

    .line 41
    return-void
.end method


# virtual methods
.method createStateMessage()Landroid/os/Message;
    .locals 2

    .line 49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 50
    .local v0, "message":Landroid/os/Message;
    iget-boolean v1, p0, Landroidx/enterprise/feedback/SendableMessage;->mImmediate:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->what:I

    .line 51
    iget-object v1, p0, Landroidx/enterprise/feedback/SendableMessage;->mAppStatesBundle:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 52
    return-object v0
.end method

.method dealWithError(ILjava/lang/Throwable;)V
    .locals 2
    .param p1, "errorType"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorType",
            "throwable"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    invoke-interface {v0, p1, p2}, Landroidx/enterprise/feedback/KeyedAppStatesCallback;->onResult(ILjava/lang/Throwable;)V

    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error sending message. error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SendableMessage"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    :goto_0
    return-void
.end method

.method getCallback()Landroidx/enterprise/feedback/KeyedAppStatesCallback;
    .locals 1

    .line 45
    iget-object v0, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    return-object v0
.end method

.method onSuccess()V
    .locals 3

    .line 56
    iget-object v0, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Landroidx/enterprise/feedback/SendableMessage;->mCallback:Landroidx/enterprise/feedback/KeyedAppStatesCallback;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroidx/enterprise/feedback/KeyedAppStatesCallback;->onResult(ILjava/lang/Throwable;)V

    .line 59
    :cond_0
    return-void
.end method

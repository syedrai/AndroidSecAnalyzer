.class public abstract Landroidx/enterprise/feedback/KeyedAppStatesService;
.super Landroid/app/Service;
.source "KeyedAppStatesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;,
        Landroidx/enterprise/feedback/KeyedAppStatesService$KeyedAppStatesServiceAsyncTask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KeyedAppStatesService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 187
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;

    invoke-direct {v1, p0}, Landroidx/enterprise/feedback/KeyedAppStatesService$IncomingHandler;-><init>(Landroidx/enterprise/feedback/KeyedAppStatesService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    .line 188
    .local v0, "messenger":Landroid/os/Messenger;
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public abstract onReceive(Ljava/util/Collection;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "states",
            "requestSync"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroidx/enterprise/feedback/ReceivedKeyedAppState;",
            ">;Z)V"
        }
    .end annotation
.end method

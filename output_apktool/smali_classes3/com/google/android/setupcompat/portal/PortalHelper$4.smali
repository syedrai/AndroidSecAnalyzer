.class Lcom/google/android/setupcompat/portal/PortalHelper$4;
.super Ljava/lang/Object;
.source "PortalHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/portal/PortalHelper;->isProgressServiceAlive(Landroid/content/Context;Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$component:Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$component",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 236
    iput-object p1, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;

    iput-object p2, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$component:Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    iput-object p3, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "binder"
        }
    .end annotation

    .line 239
    if-eqz p2, :cond_1

    .line 240
    nop

    .line 241
    invoke-static {p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/ISetupNotificationService;

    move-result-object v0

    .line 244
    .local v0, "service":Lcom/google/android/setupcompat/portal/ISetupNotificationService;
    const/4 v1, 0x0

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 245
    iget-object v2, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;

    iget-object v3, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$component:Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    .line 246
    invoke-static {}, Lcom/google/android/setupcompat/portal/PortalHelper;->-$$Nest$smgetCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lcom/google/android/setupcompat/portal/ISetupNotificationService;->isProgressServiceAlive(Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/os/UserHandle;)Z

    move-result v3

    .line 245
    invoke-interface {v2, v3}, Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;->onResult(Z)V

    goto :goto_0

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;

    invoke-interface {v2, v1}, Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;->onResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    goto :goto_1

    .line 251
    :catch_0
    move-exception v2

    .line 252
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/android/setupcompat/portal/PortalHelper;->-$$Nest$sfgetLOG()Lcom/google/android/setupcompat/util/Logger;

    move-result-object v3

    const-string v4, "Failed to invoke SetupNotificationService#isProgressServiceAlive"

    invoke-virtual {v3, v4}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 253
    iget-object v3, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;

    invoke-interface {v3, v1}, Lcom/google/android/setupcompat/portal/PortalHelper$ProgressServiceAliveResultListener;->onResult(Z)V

    .line 256
    .end local v0    # "service":Lcom/google/android/setupcompat/portal/ISetupNotificationService;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/google/android/setupcompat/portal/PortalHelper$4;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 257
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 260
    return-void
.end method

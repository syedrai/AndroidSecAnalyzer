.class Lcom/google/android/setupcompat/portal/PortalHelper$3;
.super Ljava/lang/Object;
.source "PortalHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/setupcompat/portal/PortalHelper;->isPortalReady(Landroid/content/Context;Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/google/android/setupcompat/portal/PortalHelper$3;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;

    iput-object p2, p0, Lcom/google/android/setupcompat/portal/PortalHelper$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
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

    .line 194
    if-eqz p2, :cond_0

    .line 195
    nop

    .line 196
    invoke-static {p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/ISetupNotificationService;

    move-result-object v0

    .line 199
    .local v0, "service":Lcom/google/android/setupcompat/portal/ISetupNotificationService;
    :try_start_0
    iget-object v1, p0, Lcom/google/android/setupcompat/portal/PortalHelper$3;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;

    invoke-interface {v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService;->isPortalReady()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;->onResult(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/android/setupcompat/portal/PortalHelper;->-$$Nest$sfgetLOG()Lcom/google/android/setupcompat/util/Logger;

    move-result-object v2

    const-string v3, "Failed to invoke SetupNotificationService#isPortalAvailable"

    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->e(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/google/android/setupcompat/portal/PortalHelper$3;->val$listener:Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/setupcompat/portal/PortalHelper$PortalReadyToRegisterResultListener;->onResult(Z)V

    .line 205
    .end local v0    # "service":Lcom/google/android/setupcompat/portal/ISetupNotificationService;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/setupcompat/portal/PortalHelper$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 206
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

    .line 209
    return-void
.end method

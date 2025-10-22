.class Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;
.super Ljava/lang/Object;
.source "BindDeviceAdminServiceHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->crossUserCall(Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

.field final synthetic val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    iput-object p2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "componentName",
            "iBinder"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    const-string v0, "onServiceConnected() called"

    const-string v1, "BindDeviceAdminService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->-$$Nest$fgetmServiceInterfaceConverter(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/afwsamples/testdpc/comp/ServiceInterfaceConverter;->convert(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "service":Ljava/lang/Object;, "TT;"
    :try_start_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->val$listener:Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;

    invoke-interface {v2, v0}, Lcom/afwsamples/testdpc/comp/OnServiceConnectedListener;->onServiceConnected(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    :goto_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v1}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->-$$Nest$fgetmContext(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 87
    goto :goto_1

    .line 86
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 83
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "onServiceConnected: "

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 88
    :goto_1
    return-void

    .line 86
    :goto_2
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v2}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->-$$Nest$fgetmContext(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 87
    throw v1
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

    .line 92
    .local p0, "this":Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;, "Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;"
    const-string v0, "BindDeviceAdminService"

    const-string v1, "onServiceDisconnected() called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper$1;->this$0:Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;

    invoke-static {v0}, Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;->-$$Nest$fgetmContext(Lcom/afwsamples/testdpc/comp/BindDeviceAdminServiceHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    return-void
.end method

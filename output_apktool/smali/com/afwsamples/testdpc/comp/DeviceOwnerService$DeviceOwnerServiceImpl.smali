.class Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;
.super Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;
.source "DeviceOwnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/DeviceOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeviceOwnerServiceImpl"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    .line 52
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/afwsamples/testdpc/comp/DeviceOwnerService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notifyUserIsUnlocked(Landroid/os/UserHandle;)V
    .locals 9
    .param p1, "callingUserHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callingUserHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 58
    .local v0, "userSerialNumber":J
    iget-object v2, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    sget v3, Lcom/afwsamples/testdpc/R$string;->po_user_status:I

    iget-object v4, p0, Lcom/afwsamples/testdpc/comp/DeviceOwnerService$DeviceOwnerServiceImpl;->mContext:Landroid/content/Context;

    sget v5, Lcom/afwsamples/testdpc/R$string;->po_user_is_unlocked:I

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 58
    invoke-static {v2, v3, v4, v8}, Lcom/afwsamples/testdpc/common/NotificationUtil;->showNotification(Landroid/content/Context;ILjava/lang/String;I)V

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUserIsUnlocked() called for user with serial "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceOwnerService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void
.end method

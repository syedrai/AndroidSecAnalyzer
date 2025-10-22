.class public Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IDeviceOwnerService.java"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/IDeviceOwnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "remote"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remote"
        }
    .end annotation

    .line 63
    const-string v0, "com.afwsamples.testdpc.comp.IDeviceOwnerService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 64
    return-void
.end method


# virtual methods
.method public notifyUserIsUnlocked(Landroid/os/UserHandle;)V
    .locals 2
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

    .line 68
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 69
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 70
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/comp/IDeviceOwnerService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 71
    return-void
.end method

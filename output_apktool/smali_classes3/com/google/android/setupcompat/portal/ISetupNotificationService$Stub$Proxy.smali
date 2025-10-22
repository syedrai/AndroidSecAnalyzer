.class public Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "ISetupNotificationService.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/ISetupNotificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;
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

    .line 143
    const-string v0, "com.google.android.setupcompat.portal.ISetupNotificationService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 144
    return-void
.end method


# virtual methods
.method public isPortalAvailable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 187
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 188
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 189
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 190
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 191
    return v2
.end method

.method public isPortalReady()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 198
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 199
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    return v2
.end method

.method public isProgressServiceAlive(Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "component"    # Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "component",
            "userHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 177
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 178
    invoke-static {v0, p2}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 179
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 180
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 181
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 182
    return v2
.end method

.method public registerNotification(Lcom/google/android/setupcompat/portal/NotificationComponent;)Z
    .locals 3
    .param p1, "component"    # Lcom/google/android/setupcompat/portal/NotificationComponent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 150
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 151
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 152
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 153
    return v2
.end method

.method public registerProgressService(Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/os/UserHandle;Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;)V
    .locals 2
    .param p1, "component"    # Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "listener"    # Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "component",
            "userHandle",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 166
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 168
    invoke-static {v0, p2}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 169
    invoke-static {v0, p3}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 170
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 171
    return-void
.end method

.method public unregisterNotification(Lcom/google/android/setupcompat/portal/NotificationComponent;)V
    .locals 2
    .param p1, "component"    # Lcom/google/android/setupcompat/portal/NotificationComponent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "component"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 159
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 160
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 161
    return-void
.end method

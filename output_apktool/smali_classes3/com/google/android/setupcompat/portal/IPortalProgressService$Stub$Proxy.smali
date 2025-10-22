.class public Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IPortalProgressService.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/IPortalProgressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;
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

    .line 124
    const-string v0, "com.google.android.setupcompat.portal.IPortalProgressService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 125
    return-void
.end method


# virtual methods
.method public onAllowMobileData(Z)V
    .locals 2
    .param p1, "allowed"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 149
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 150
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 151
    return-void
.end method

.method public onGetRemainingValues()Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 156
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 157
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 158
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 159
    return-object v2
.end method

.method public onPortalSessionStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 131
    return-void
.end method

.method public onSetCallback(Lcom/google/android/setupcompat/portal/IPortalProgressCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/google/android/setupcompat/portal/IPortalProgressCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 136
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeStrongBinder(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 137
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 138
    return-void
.end method

.method public onSuspend()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 143
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 144
    return-void
.end method

.class public Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IProfileOwnerService.java"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/IProfileOwnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
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

    .line 86
    const-string v0, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z
    .locals 3
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "afd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 107
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 108
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 109
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 110
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 111
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 112
    return v2
.end method

.method public isLauncherIconHidden()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 99
    .local v0, "data":Landroid/os/Parcel;
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, "reply":Landroid/os/Parcel;
    invoke-static {v1}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v2

    .line 101
    .local v2, "retval":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 102
    return v2
.end method

.method public setLauncherIconHidden(Z)V
    .locals 2
    .param p1, "hidden"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 92
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;->transactOneway(ILandroid/os/Parcel;)V

    .line 94
    return-void
.end method

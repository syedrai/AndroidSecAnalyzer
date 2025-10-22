.class public Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IPortalRegisterResultListener.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub;
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

    .line 64
    const-string v0, "com.google.android.setupcompat.portal.IPortalRegisterResultListener"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "result"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 70
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {v0, p1}, Lcom/google/android/aidl/Codecs;->writeParcelable(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 71
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;->transactAndReadExceptionReturnVoid(ILandroid/os/Parcel;)V

    .line 72
    return-void
.end method

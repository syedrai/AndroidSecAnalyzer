.class public abstract Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPortalProgressService.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/IPortalProgressService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/IPortalProgressService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.setupcompat.portal.IPortalProgressService"

.field static final TRANSACTION_onAllowMobileData:I = 0x4

.field static final TRANSACTION_onGetRemainingValues:I = 0x5

.field static final TRANSACTION_onPortalSessionStart:I = 0x1

.field static final TRANSACTION_onSetCallback:I = 0x2

.field static final TRANSACTION_onSuspend:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    const-string v0, "com.google.android.setupcompat.portal.IPortalProgressService"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/IPortalProgressService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    const-string v0, "com.google.android.setupcompat.portal.IPortalProgressService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/google/android/setupcompat/portal/IPortalProgressService;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupcompat/portal/IPortalProgressService;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 1
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 88
    packed-switch p1, :pswitch_data_0

    .line 116
    const/4 v0, 0x0

    return v0

    .line 110
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->onGetRemainingValues()Landroid/os/Bundle;

    move-result-object v0

    .line 111
    .local v0, "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-static {p3, v0}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 113
    goto :goto_0

    .line 104
    .end local v0    # "retval":Landroid/os/Bundle;
    :pswitch_1
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v0

    .line 105
    .local v0, "allowed":Z
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 106
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->onAllowMobileData(Z)V

    .line 107
    goto :goto_0

    .line 100
    .end local v0    # "allowed":Z
    :pswitch_2
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->onSuspend()V

    .line 101
    goto :goto_0

    .line 94
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/portal/IPortalProgressCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/IPortalProgressCallback;

    move-result-object v0

    .line 95
    .local v0, "callback":Lcom/google/android/setupcompat/portal/IPortalProgressCallback;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->onSetCallback(Lcom/google/android/setupcompat/portal/IPortalProgressCallback;)V

    .line 97
    goto :goto_0

    .line 90
    .end local v0    # "callback":Lcom/google/android/setupcompat/portal/IPortalProgressCallback;
    :pswitch_4
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/IPortalProgressService$Stub;->onPortalSessionStart()V

    .line 91
    nop

    .line 119
    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

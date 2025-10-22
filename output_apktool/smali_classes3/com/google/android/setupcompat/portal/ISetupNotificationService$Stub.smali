.class public abstract Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "ISetupNotificationService.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/ISetupNotificationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/ISetupNotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.setupcompat.portal.ISetupNotificationService"

.field static final TRANSACTION_isPortalAvailable:I = 0x5

.field static final TRANSACTION_isPortalReady:I = 0x6

.field static final TRANSACTION_isProgressServiceAlive:I = 0x4

.field static final TRANSACTION_registerNotification:I = 0x1

.field static final TRANSACTION_registerProgressService:I = 0x3

.field static final TRANSACTION_unregisterNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    const-string v0, "com.google.android.setupcompat.portal.ISetupNotificationService"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/ISetupNotificationService;
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
    const-string v0, "com.google.android.setupcompat.portal.ISetupNotificationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 79
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/google/android/setupcompat/portal/ISetupNotificationService;

    if-eqz v1, :cond_1

    .line 80
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupcompat/portal/ISetupNotificationService;

    return-object v1

    .line 82
    :cond_1
    new-instance v1, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
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

    .line 135
    const/4 v0, 0x0

    return v0

    .line 129
    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->isPortalReady()Z

    move-result v0

    .line 130
    .local v0, "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-static {p3, v0}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 132
    goto :goto_0

    .line 123
    .end local v0    # "retval":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->isPortalAvailable()Z

    move-result v0

    .line 124
    .restart local v0    # "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-static {p3, v0}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 126
    goto :goto_0

    .line 114
    .end local v0    # "retval":Z
    :pswitch_2
    sget-object v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    .line 115
    .local v0, "component":Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 116
    .local v1, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 117
    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->isProgressServiceAlive(Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/os/UserHandle;)Z

    move-result v2

    .line 118
    .local v2, "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, v2}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 120
    goto :goto_0

    .line 105
    .end local v0    # "component":Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "retval":Z
    :pswitch_3
    sget-object v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/portal/ProgressServiceComponent;

    .line 106
    .restart local v0    # "component":Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    sget-object v1, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 107
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;

    move-result-object v2

    .line 108
    .local v2, "listener":Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 109
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->registerProgressService(Lcom/google/android/setupcompat/portal/ProgressServiceComponent;Landroid/os/UserHandle;Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;)V

    .line 110
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    goto :goto_0

    .line 98
    .end local v0    # "component":Lcom/google/android/setupcompat/portal/ProgressServiceComponent;
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    .end local v2    # "listener":Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;
    :pswitch_4
    sget-object v0, Lcom/google/android/setupcompat/portal/NotificationComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/portal/NotificationComponent;

    .line 99
    .local v0, "component":Lcom/google/android/setupcompat/portal/NotificationComponent;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 100
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->unregisterNotification(Lcom/google/android/setupcompat/portal/NotificationComponent;)V

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    goto :goto_0

    .line 90
    .end local v0    # "component":Lcom/google/android/setupcompat/portal/NotificationComponent;
    :pswitch_5
    sget-object v0, Lcom/google/android/setupcompat/portal/NotificationComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/portal/NotificationComponent;

    .line 91
    .restart local v0    # "component":Lcom/google/android/setupcompat/portal/NotificationComponent;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 92
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/ISetupNotificationService$Stub;->registerNotification(Lcom/google/android/setupcompat/portal/NotificationComponent;)Z

    move-result v1

    .line 93
    .local v1, "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-static {p3, v1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 95
    nop

    .line 138
    .end local v0    # "component":Lcom/google/android/setupcompat/portal/NotificationComponent;
    .end local v1    # "retval":Z
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

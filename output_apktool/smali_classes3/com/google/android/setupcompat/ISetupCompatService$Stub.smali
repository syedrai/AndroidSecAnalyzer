.class public abstract Lcom/google/android/setupcompat/ISetupCompatService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "ISetupCompatService.java"

# interfaces
.implements Lcom/google/android/setupcompat/ISetupCompatService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/ISetupCompatService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.setupcompat.ISetupCompatService"

.field static final TRANSACTION_logMetric:I = 0x2

.field static final TRANSACTION_onFocusStatusChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    const-string v0, "com.google.android.setupcompat.ISetupCompatService"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/ISetupCompatService;
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

    .line 42
    if-nez p0, :cond_0

    .line 43
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    const-string v0, "com.google.android.setupcompat.ISetupCompatService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/google/android/setupcompat/ISetupCompatService;

    if-eqz v1, :cond_1

    .line 47
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupcompat/ISetupCompatService;

    return-object v1

    .line 49
    :cond_1
    new-instance v1, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/ISetupCompatService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 55
    packed-switch p1, :pswitch_data_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 65
    :pswitch_0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 66
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 67
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->onFocusStatusChanged(Landroid/os/Bundle;)V

    .line 68
    goto :goto_0

    .line 57
    .end local v0    # "bundle":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, "metricType":I
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 59
    .local v1, "arguments":Landroid/os/Bundle;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 60
    .local v2, "extras":Landroid/os/Bundle;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 61
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->logMetric(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 62
    nop

    .line 74
    .end local v0    # "metricType":I
    .end local v1    # "arguments":Landroid/os/Bundle;
    .end local v2    # "extras":Landroid/os/Bundle;
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

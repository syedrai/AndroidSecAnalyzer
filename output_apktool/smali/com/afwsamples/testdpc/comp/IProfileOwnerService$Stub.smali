.class public abstract Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IProfileOwnerService.java"

# interfaces
.implements Lcom/afwsamples/testdpc/comp/IProfileOwnerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.afwsamples.testdpc.comp.IProfileOwnerService"

.field static final TRANSACTION_installCaCertificate:I = 0x3

.field static final TRANSACTION_isLauncherIconHidden:I = 0x2

.field static final TRANSACTION_setLauncherIconHidden:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    const-string v0, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/afwsamples/testdpc/comp/IProfileOwnerService;
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

    .line 43
    if-nez p0, :cond_0

    .line 44
    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_0
    const-string v0, "com.afwsamples.testdpc.comp.IProfileOwnerService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 47
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    if-eqz v1, :cond_1

    .line 48
    move-object v1, v0

    check-cast v1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService;

    return-object v1

    .line 50
    :cond_1
    new-instance v1, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
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

    .line 56
    packed-switch p1, :pswitch_data_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 70
    :pswitch_0
    sget-object v0, Landroid/content/res/AssetFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetFileDescriptor;

    .line 71
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->installCaCertificate(Landroid/content/res/AssetFileDescriptor;)Z

    move-result v1

    .line 73
    .local v1, "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    invoke-static {p3, v1}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 75
    goto :goto_0

    .line 64
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v1    # "retval":Z
    :pswitch_1
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->isLauncherIconHidden()Z

    move-result v0

    .line 65
    .local v0, "retval":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-static {p3, v0}, Lcom/google/android/aidl/Codecs;->writeBoolean(Landroid/os/Parcel;Z)V

    .line 67
    goto :goto_0

    .line 58
    .end local v0    # "retval":Z
    :pswitch_2
    invoke-static {p2}, Lcom/google/android/aidl/Codecs;->createBoolean(Landroid/os/Parcel;)Z

    move-result v0

    .line 59
    .local v0, "hidden":Z
    invoke-virtual {p0, p2}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 60
    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/comp/IProfileOwnerService$Stub;->setLauncherIconHidden(Z)V

    .line 61
    nop

    .line 81
    .end local v0    # "hidden":Z
    :goto_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public abstract Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPortalRegisterResultListener.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.setupcompat.portal.IPortalRegisterResultListener"

.field static final TRANSACTION_onResult:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    const-string v0, "com.google.android.setupcompat.portal.IPortalRegisterResultListener"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;
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

    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    return-object v0

    .line 41
    :cond_0
    const-string v0, "com.google.android.setupcompat.portal.IPortalRegisterResultListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 42
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;

    if-eqz v1, :cond_1

    .line 43
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener;

    return-object v1

    .line 45
    :cond_1
    new-instance v1, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 51
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 52
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v1}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 53
    .local v1, "result":Landroid/os/Bundle;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/portal/IPortalRegisterResultListener$Stub;->onResult(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 56
    return v0

    .line 58
    .end local v1    # "result":Landroid/os/Bundle;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

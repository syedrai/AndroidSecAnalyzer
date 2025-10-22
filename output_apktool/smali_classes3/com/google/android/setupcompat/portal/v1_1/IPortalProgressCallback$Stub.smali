.class public abstract Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;
.super Lcom/google/android/aidl/BaseStub;
.source "IPortalProgressCallback.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.setupcompat.portal.v1_1.IPortalProgressCallback"

.field static final TRANSACTION_setComplete:I = 0x5

.field static final TRANSACTION_setFailure:I = 0x6

.field static final TRANSACTION_setPendingReason:I = 0x4

.field static final TRANSACTION_setProgressCount:I = 0x1

.field static final TRANSACTION_setProgressPercentage:I = 0x2

.field static final TRANSACTION_setSummary:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    const-string v0, "com.google.android.setupcompat.portal.v1_1.IPortalProgressCallback"

    invoke-direct {p0, v0}, Lcom/google/android/aidl/BaseStub;-><init>(Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;
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

    .line 98
    if-nez p0, :cond_0

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 101
    :cond_0
    const-string v0, "com.google.android.setupcompat.portal.v1_1.IPortalProgressCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 102
    .local v0, "iin":Landroid/os/IInterface;
    instance-of v1, v0, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;

    if-eqz v1, :cond_1

    .line 103
    move-object v1, v0

    check-cast v1, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;

    return-object v1

    .line 105
    :cond_1
    new-instance v1, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method protected dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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

    .line 111
    packed-switch p1, :pswitch_data_0

    .line 170
    const/4 v0, 0x0

    return v0

    .line 160
    :pswitch_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "resName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .local v1, "quantity":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 163
    .local v2, "formatArgs":[I
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 164
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setFailure(Ljava/lang/String;I[I)Landroid/os/Bundle;

    move-result-object v3

    .line 165
    .local v3, "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-static {p3, v3}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 167
    goto/16 :goto_0

    .line 150
    .end local v0    # "resName":Ljava/lang/String;
    .end local v1    # "quantity":I
    .end local v2    # "formatArgs":[I
    .end local v3    # "retval":Landroid/os/Bundle;
    :pswitch_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0    # "resName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 152
    .restart local v1    # "quantity":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 153
    .restart local v2    # "formatArgs":[I
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 154
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setComplete(Ljava/lang/String;I[I)Landroid/os/Bundle;

    move-result-object v3

    .line 155
    .restart local v3    # "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-static {p3, v3}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 157
    goto :goto_0

    .line 139
    .end local v0    # "resName":Ljava/lang/String;
    .end local v1    # "quantity":I
    .end local v2    # "formatArgs":[I
    .end local v3    # "retval":Landroid/os/Bundle;
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "reasonResName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 141
    .restart local v1    # "quantity":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 142
    .restart local v2    # "formatArgs":[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 143
    .local v3, "reason":I
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 144
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setPendingReason(Ljava/lang/String;I[II)Landroid/os/Bundle;

    move-result-object v4

    .line 145
    .local v4, "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-static {p3, v4}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 147
    goto :goto_0

    .line 131
    .end local v0    # "reasonResName":Ljava/lang/String;
    .end local v1    # "quantity":I
    .end local v2    # "formatArgs":[I
    .end local v3    # "reason":I
    .end local v4    # "retval":Landroid/os/Bundle;
    :pswitch_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "summary":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setSummary(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 134
    .local v1, "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-static {p3, v1}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 136
    goto :goto_0

    .line 123
    .end local v0    # "summary":Ljava/lang/String;
    .end local v1    # "retval":Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 124
    .local v0, "percentage":I
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 125
    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setProgressPercentage(I)Landroid/os/Bundle;

    move-result-object v1

    .line 126
    .restart local v1    # "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 127
    invoke-static {p3, v1}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 128
    goto :goto_0

    .line 113
    .end local v0    # "percentage":I
    .end local v1    # "retval":Landroid/os/Bundle;
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 114
    .local v0, "completed":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 115
    .local v1, "failed":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 116
    .local v2, "total":I
    invoke-virtual {p0, p2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->enforceNoDataAvail(Landroid/os/Parcel;)V

    .line 117
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;->setProgressCount(III)Landroid/os/Bundle;

    move-result-object v3

    .line 118
    .local v3, "retval":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-static {p3, v3}, Lcom/google/android/aidl/Codecs;->writeParcelableAsReturnValue(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 120
    nop

    .line 173
    .end local v0    # "completed":I
    .end local v1    # "failed":I
    .end local v2    # "total":I
    .end local v3    # "retval":Landroid/os/Bundle;
    :goto_0
    const/4 v0, 0x1

    return v0

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

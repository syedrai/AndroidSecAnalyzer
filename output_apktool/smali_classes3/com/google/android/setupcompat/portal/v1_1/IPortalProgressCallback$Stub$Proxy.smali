.class public Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;
.super Lcom/google/android/aidl/BaseProxy;
.source "IPortalProgressCallback.java"

# interfaces
.implements Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub;
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

    .line 178
    const-string v0, "com.google.android.setupcompat.portal.v1_1.IPortalProgressCallback"

    invoke-direct {p0, p1, v0}, Lcom/google/android/aidl/BaseProxy;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 179
    return-void
.end method


# virtual methods
.method public setComplete(Ljava/lang/String;I[I)Landroid/os/Bundle;
    .locals 3
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resName",
            "quantity",
            "formatArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 230
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 231
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 233
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 234
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 235
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 236
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 237
    return-object v2
.end method

.method public setFailure(Ljava/lang/String;I[I)Landroid/os/Bundle;
    .locals 3
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "resName",
            "quantity",
            "formatArgs"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 244
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 247
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 248
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 249
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-object v2
.end method

.method public setPendingReason(Ljava/lang/String;I[II)Landroid/os/Bundle;
    .locals 3
    .param p1, "reasonResName"    # Ljava/lang/String;
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [I
    .param p4, "reason"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "reasonResName",
            "quantity",
            "formatArgs",
            "reason"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 220
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 222
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 223
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 224
    return-object v2
.end method

.method public setProgressCount(III)Landroid/os/Bundle;
    .locals 3
    .param p1, "completed"    # I
    .param p2, "failed"    # I
    .param p3, "total"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "completed",
            "failed",
            "total"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 184
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 188
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 189
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 190
    return-object v2
.end method

.method public setProgressPercentage(I)Landroid/os/Bundle;
    .locals 3
    .param p1, "percentage"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "percentage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 196
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 198
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 199
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 200
    return-object v2
.end method

.method public setSummary(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3
    .param p1, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "summary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-virtual {p0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    .line 206
    .local v0, "data":Landroid/os/Parcel;
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/google/android/setupcompat/portal/v1_1/IPortalProgressCallback$Stub$Proxy;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    .line 208
    .local v1, "reply":Landroid/os/Parcel;
    sget-object v2, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {v1, v2}, Lcom/google/android/aidl/Codecs;->createParcelable(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 209
    .local v2, "retval":Landroid/os/Bundle;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 210
    return-object v2
.end method

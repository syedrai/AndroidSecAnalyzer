.class Landroid/support/v4/app/BackStackRecordState$1;
.super Ljava/lang/Object;
.source "BackStackRecordState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/BackStackRecordState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/support/v4/app/BackStackRecordState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackRecordState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 214
    new-instance v0, Landroid/support/v4/app/BackStackRecordState;

    invoke-direct {v0, p1}, Landroid/support/v4/app/BackStackRecordState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1}, Landroid/support/v4/app/BackStackRecordState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/support/v4/app/BackStackRecordState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/support/v4/app/BackStackRecordState;
    .locals 1
    .param p1, "size"    # I

    .line 219
    new-array v0, p1, [Landroid/support/v4/app/BackStackRecordState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 211
    invoke-virtual {p0, p1}, Landroid/support/v4/app/BackStackRecordState$1;->newArray(I)[Landroid/support/v4/app/BackStackRecordState;

    move-result-object p1

    return-object p1
.end method

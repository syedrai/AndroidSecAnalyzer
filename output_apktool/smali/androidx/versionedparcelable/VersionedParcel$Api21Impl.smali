.class final Landroidx/versionedparcelable/VersionedParcel$Api21Impl;
.super Ljava/lang/Object;
.source "VersionedParcel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/versionedparcelable/VersionedParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readSize(Landroidx/versionedparcelable/VersionedParcel;)Landroid/util/Size;
    .locals 3
    .param p0, "self"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 1659
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v0

    .line 1661
    .local v0, "width":I
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readInt()I

    move-result v1

    .line 1662
    .local v1, "height":I
    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v1}, Landroid/util/Size;-><init>(II)V

    return-object v2

    .line 1664
    .end local v0    # "width":I
    .end local v1    # "height":I
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static readSizeF(Landroidx/versionedparcelable/VersionedParcel;)Landroid/util/SizeF;
    .locals 3
    .param p0, "self"    # Landroidx/versionedparcelable/VersionedParcel;

    .line 1668
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v0

    .line 1670
    .local v0, "width":F
    invoke-virtual {p0}, Landroidx/versionedparcelable/VersionedParcel;->readFloat()F

    move-result v1

    .line 1671
    .local v1, "height":F
    new-instance v2, Landroid/util/SizeF;

    invoke-direct {v2, v0, v1}, Landroid/util/SizeF;-><init>(FF)V

    return-object v2

    .line 1673
    .end local v0    # "width":F
    .end local v1    # "height":F
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static writeSize(Landroidx/versionedparcelable/VersionedParcel;Landroid/util/Size;)V
    .locals 1
    .param p0, "self"    # Landroidx/versionedparcelable/VersionedParcel;
    .param p1, "val"    # Landroid/util/Size;

    .line 1643
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 1644
    if-eqz p1, :cond_1

    .line 1645
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1646
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeInt(I)V

    .line 1648
    :cond_1
    return-void
.end method

.method static writeSizeF(Landroidx/versionedparcelable/VersionedParcel;Landroid/util/SizeF;)V
    .locals 1
    .param p0, "self"    # Landroidx/versionedparcelable/VersionedParcel;
    .param p1, "val"    # Landroid/util/SizeF;

    .line 1651
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeBoolean(Z)V

    .line 1652
    if-eqz p1, :cond_1

    .line 1653
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 1654
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/versionedparcelable/VersionedParcel;->writeFloat(F)V

    .line 1656
    :cond_1
    return-void
.end method

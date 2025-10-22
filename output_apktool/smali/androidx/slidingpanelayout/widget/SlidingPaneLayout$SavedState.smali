.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;
.super Landroidx/customview/view/AbsSavedState;
.source "SlidingPaneLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u0013\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u001b\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0004\u0008\u0004\u0010\nJ\u0018\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u001e\u001a\u00020\u0011H\u0016R\u001a\u0010\u000b\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u0015\"\u0004\u0008\u001a\u0010\u0017\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;",
        "Landroidx/customview/view/AbsSavedState;",
        "superState",
        "Landroid/os/Parcelable;",
        "<init>",
        "(Landroid/os/Parcelable;)V",
        "parcel",
        "Landroid/os/Parcel;",
        "loader",
        "Ljava/lang/ClassLoader;",
        "(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V",
        "isOpen",
        "",
        "()Z",
        "setOpen",
        "(Z)V",
        "lockMode",
        "",
        "getLockMode$annotations",
        "()V",
        "getLockMode",
        "()I",
        "setLockMode",
        "(I)V",
        "splitDividerPosition",
        "getSplitDividerPosition",
        "setSplitDividerPosition",
        "writeToParcel",
        "",
        "out",
        "flags",
        "Companion",
        "slidingpanelayout_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion;


# instance fields
.field private isOpen:Z

.field private lockMode:I

.field private splitDividerPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->Companion:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion;

    .line 2047
    new-instance v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion$CREATOR$1;

    invoke-direct {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState$Companion$CREATOR$1;-><init>()V

    check-cast v0, Landroid/os/Parcelable$Creator;

    sput-object v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2031
    invoke-direct {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    .line 2032
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    .line 2033
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->lockMode:I

    .line 2034
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    .line 2035
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 1
    .param p1, "superState"    # Landroid/os/Parcelable;

    .line 2029
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Landroidx/customview/view/AbsSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 2027
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    .line 2029
    return-void
.end method

.method public static synthetic getLockMode$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getLockMode()I
    .locals 1

    .line 2018
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->lockMode:I

    return v0
.end method

.method public final getSplitDividerPosition()I
    .locals 1

    .line 2027
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    return v0
.end method

.method public final isOpen()Z
    .locals 1

    .line 2016
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return v0
.end method

.method public final setLockMode(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 2018
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->lockMode:I

    return-void
.end method

.method public final setOpen(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 2016
    iput-boolean p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    return-void
.end method

.method public final setSplitDividerPosition(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 2027
    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    const-string v0, "out"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2038
    invoke-super {p0, p1, p2}, Landroidx/customview/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2039
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->isOpen:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2040
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->lockMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2041
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SavedState;->splitDividerPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2042
    return-void
.end method

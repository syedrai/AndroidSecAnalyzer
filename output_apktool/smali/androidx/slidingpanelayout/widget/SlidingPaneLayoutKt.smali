.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u001a(\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0003H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0004\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0005\u001a\u00020\u0001X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0006\u001a\u00020\u0003X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u0019\u0010\u0011\u001a\u00020\n*\u00020\u00128\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\"\u0019\u0010\u0015\u001a\u00020\n*\u00020\u00128\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0016\u0010\u0014\"\u0019\u0010\u0017\u001a\u00020\n*\u00020\u00128\u00c2\u0002X\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0014\u00a8\u0006\u0019"
    }
    d2 = {
        "TAG",
        "",
        "MIN_FLING_VELOCITY",
        "",
        "MIN_TOUCH_TARGET_SIZE",
        "ACCESSIBILITY_CLASS_NAME",
        "DIVIDER_VIRTUAL_VIEW_ID",
        "ACCESSIBILITY_EVENT_TIMEOUT_MS",
        "",
        "edgeSizeUsingSystemGestureInsets",
        "",
        "getChildHeightMeasureSpec",
        "child",
        "Landroid/view/View;",
        "skippedFirstPass",
        "spec",
        "padding",
        "canInfluenceParentSize",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;",
        "getCanInfluenceParentSize",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)Z",
        "weightOnlyWidth",
        "getWeightOnlyWidth",
        "canExpandWidth",
        "getCanExpandWidth",
        "slidingpanelayout_release"
    }
    k = 0x2
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ACCESSIBILITY_CLASS_NAME:Ljava/lang/String; = "androidx.slidingpanelayout.widget.SlidingPaneLayout"

.field private static final ACCESSIBILITY_EVENT_TIMEOUT_MS:J = 0xc8L

.field private static final DIVIDER_VIRTUAL_VIEW_ID:I = 0x0

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final MIN_TOUCH_TARGET_SIZE:I = 0x30

.field private static final TAG:Ljava/lang/String; = "SlidingPaneLayout"

.field private static final edgeSizeUsingSystemGestureInsets:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;->edgeSizeUsingSystemGestureInsets:Z

    return-void
.end method

.method public static final synthetic access$getChildHeightMeasureSpec(Landroid/view/View;ZII)I
    .locals 1
    .param p0, "child"    # Landroid/view/View;
    .param p1, "skippedFirstPass"    # Z
    .param p2, "spec"    # I
    .param p3, "padding"    # I

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;->getChildHeightMeasureSpec(Landroid/view/View;ZII)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getEdgeSizeUsingSystemGestureInsets$p()Z
    .locals 1

    .line 1
    sget-boolean v0, Landroidx/slidingpanelayout/widget/SlidingPaneLayoutKt;->edgeSizeUsingSystemGestureInsets:Z

    return v0
.end method

.method private static final getCanExpandWidth(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)Z
    .locals 3
    .param p0, "$this$canExpandWidth"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v0, 0x0

    .line 127
    .local v0, "$i$f$getCanExpandWidth":I
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method private static final getCanInfluenceParentSize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)Z
    .locals 3
    .param p0, "$this$canInfluenceParentSize"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v0, 0x0

    .line 121
    .local v0, "$i$f$getCanInfluenceParentSize":I
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v1, :cond_1

    :cond_0
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    if-eq v1, v2, :cond_2

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->height:I

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static final getChildHeightMeasureSpec(Landroid/view/View;ZII)I
    .locals 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "skippedFirstPass"    # Z
    .param p2, "spec"    # I
    .param p3, "padding"    # I

    .line 111
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 112
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz p1, :cond_0

    .line 114
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, p3, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 112
    :goto_0
    return v1
.end method

.method private static final getWeightOnlyWidth(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;)Z
    .locals 3
    .param p0, "$this$weightOnlyWidth"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    const/4 v0, 0x0

    .line 124
    .local v0, "$i$f$getWeightOnlyWidth":I
    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->width:I

    if-nez v1, :cond_0

    iget v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->weight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

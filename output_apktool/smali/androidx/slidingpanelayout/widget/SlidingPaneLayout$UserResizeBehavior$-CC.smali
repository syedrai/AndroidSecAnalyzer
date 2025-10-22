.class public final synthetic Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior$-CC;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.kt"


# direct methods
.method public static $default$onAccessibilityResize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 3
    .param p0, "_this"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;
    .param p1, "slidingPaneLayout"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p2, "direction"    # I

    const-string/jumbo v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2996
    const/4 v0, -0x1

    if-nez p2, :cond_1

    .line 2997
    nop

    .line 2998
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSplitDividerPosition()I

    move-result v1

    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2999
    const/4 v1, -0x1

    goto :goto_0

    .line 3003
    :cond_0
    const/4 v1, 0x0

    .line 2997
    :goto_0
    invoke-virtual {p1, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setSplitDividerPosition(I)V

    .line 3007
    :cond_1
    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    .line 3008
    nop

    .line 3009
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getSplitDividerPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 3010
    goto :goto_1

    .line 3014
    :cond_2
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v0

    .line 3008
    :goto_1
    invoke-virtual {p1, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setSplitDividerPosition(I)V

    .line 3017
    :cond_3
    return-void
.end method

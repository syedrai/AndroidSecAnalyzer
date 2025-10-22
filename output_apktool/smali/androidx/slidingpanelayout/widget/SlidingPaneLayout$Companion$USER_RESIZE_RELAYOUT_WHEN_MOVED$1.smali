.class public final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_MOVED$1;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.kt"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\u0008\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "androidx/slidingpanelayout/widget/SlidingPaneLayout$Companion$USER_RESIZE_RELAYOUT_WHEN_MOVED$1",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;",
        "onUserResizeStarted",
        "",
        "slidingPaneLayout",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "dividerPositionX",
        "",
        "onUserResizeProgress",
        "onUserResizeComplete",
        "onUserResizeCancelled",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAccessibilityResize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior$-CC;->$default$onAccessibilityResize(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    return-void
.end method

.method public onUserResizeCancelled(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 1
    .param p1, "slidingPaneLayout"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p2, "dividerPositionX"    # I

    const-string/jumbo v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3136
    return-void
.end method

.method public onUserResizeComplete(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 1
    .param p1, "slidingPaneLayout"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p2, "dividerPositionX"    # I

    const-string/jumbo v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3129
    return-void
.end method

.method public onUserResizeProgress(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 1
    .param p1, "slidingPaneLayout"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p2, "dividerPositionX"    # I

    const-string/jumbo v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3121
    invoke-virtual {p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->setSplitDividerPosition(I)V

    .line 3122
    return-void
.end method

.method public onUserResizeStarted(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V
    .locals 1
    .param p1, "slidingPaneLayout"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p2, "dividerPositionX"    # I

    const-string/jumbo v0, "slidingPaneLayout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3115
    return-void
.end method

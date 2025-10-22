.class public abstract Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.kt"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbsDraggableDividerHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008 \u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\u00032\u0006\u0010\u0011\u001a\u00020\u0003H&J\u0010\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0016J\u0008\u0010\u0014\u001a\u00020\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0015H\u0016J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\tH\u0016J\u0008\u0010\u0019\u001a\u00020\u0015H\u0016J\u0010\u0010\u001a\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u0010\u0010\u001d\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cH\u0002J\u000e\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cJ\u000e\u0010\u001f\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001e\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\t@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001e\u0010\u000c\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\u0003@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006 "
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;",
        "touchSlop",
        "",
        "<init>",
        "(I)V",
        "xDown",
        "",
        "value",
        "",
        "isDragging",
        "()Z",
        "dragPositionX",
        "getDragPositionX",
        "()I",
        "dividerBoundsContains",
        "x",
        "y",
        "clampDraggingDividerPosition",
        "proposedPositionX",
        "onUserResizeStarted",
        "",
        "onUserResizeProgress",
        "onUserResizeComplete",
        "wasCancelled",
        "onDividerClicked",
        "commonActionDown",
        "ev",
        "Landroid/view/MotionEvent;",
        "commonActionMove",
        "onInterceptTouchEvent",
        "onTouchEvent",
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


# instance fields
.field private dragPositionX:I

.field private isDragging:Z

.field private final touchSlop:I

.field private xDown:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "touchSlop"    # I

    .line 2843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->touchSlop:I

    .line 2845
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    .line 2852
    const/4 v0, -0x1

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dragPositionX:I

    .line 2843
    return-void
.end method

.method private final commonActionDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2873
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dividerBoundsContains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    .line 2875
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->touchSlop:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2876
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    .line 2877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->clampDraggingDividerPosition(I)I

    move-result v0

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dragPositionX:I

    .line 2878
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->onUserResizeStarted()V

    .line 2880
    :cond_0
    goto :goto_0

    .line 2881
    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final commonActionMove(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2884
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2885
    const/4 v0, 0x0

    .line 2886
    .local v0, "startedDrag":Z
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2887
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    sub-float/2addr v1, v3

    .line 2888
    .local v1, "dx":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->touchSlop:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    .line 2889
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    .line 2890
    const/4 v0, 0x1

    .line 2894
    .end local v1    # "dx":F
    :cond_0
    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    if-eqz v1, :cond_2

    .line 2895
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->clampDraggingDividerPosition(I)I

    move-result v1

    .line 2896
    .local v1, "newPosition":I
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dragPositionX:I

    .line 2897
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->onUserResizeStarted()V

    .line 2898
    :cond_1
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->onUserResizeProgress()V

    .line 2900
    .end local v1    # "newPosition":I
    :cond_2
    nop

    .end local v0    # "startedDrag":Z
    goto :goto_0

    .line 2901
    :cond_3
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public clampDraggingDividerPosition(I)I
    .locals 0
    .param p1, "proposedPositionX"    # I

    .line 2858
    return p1
.end method

.method public abstract dividerBoundsContains(II)Z
.end method

.method public final getDragPositionX()I
    .locals 1

    .line 2852
    iget v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dragPositionX:I

    return v0
.end method

.method public final isDragging()Z
    .locals 1

    .line 2848
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    return v0
.end method

.method public onDividerClicked()V
    .locals 0

    .line 2870
    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2904
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2906
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->commonActionMove(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    if-eqz v0, :cond_0

    return v1

    .line 2909
    :pswitch_1
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    if-nez v0, :cond_0

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    goto :goto_0

    .line 2905
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->commonActionDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    if-eqz v0, :cond_0

    return v1

    .line 2912
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2916
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .local v0, "action":I
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2936
    goto :goto_1

    .line 2935
    :pswitch_0
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->commonActionMove(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 2920
    :pswitch_1
    iget v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2921
    const/high16 v2, 0x7fc00000    # Float.NaN

    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->xDown:F

    .line 2922
    iget-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 2923
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->isDragging:Z

    .line 2924
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->onUserResizeComplete(Z)V

    .line 2925
    const/4 v1, -0x1

    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dragPositionX:I

    goto :goto_0

    .line 2927
    :cond_1
    if-ne v0, v3, :cond_2

    .line 2928
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->dividerBoundsContains(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2930
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->onDividerClicked()V

    .line 2932
    :cond_2
    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    .line 2933
    :cond_3
    goto :goto_1

    .line 2917
    :pswitch_2
    invoke-direct {p0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;->commonActionDown(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 2937
    .end local v0    # "action":I
    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onUserResizeComplete(Z)V
    .locals 0
    .param p1, "wasCancelled"    # Z

    .line 2867
    return-void
.end method

.method public onUserResizeProgress()V
    .locals 0

    .line 2864
    return-void
.end method

.method public onUserResizeStarted()V
    .locals 0

    .line 2861
    return-void
.end method

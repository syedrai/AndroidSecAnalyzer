.class final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;
.super Landroidx/customview/widget/ViewDragHelper$Callback;
.source "SlidingPaneLayout.kt"

# interfaces
.implements Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlappingPaneHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingPaneLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout\n*L\n1#1,3152:1\n1#2:3153\n3142#3,6:3154\n3142#3,6:3160\n3142#3,6:3166\n*S KotlinDebug\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler\n*L\n2590#1:3154,6\n2624#1:3160,6\n2650#1:3166,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008)\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0082\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0006\u0010\u0015\u001a\u00020\u0016J\u0006\u0010\u0017\u001a\u00020\u0016J\u001e\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001cJ.\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001f\u001a\u00020 J\u0010\u0010!\u001a\u00020\u00162\u0008\u0010\"\u001a\u0004\u0018\u00010\u000eJ\u000e\u0010#\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000cJ\u000e\u0010$\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000cJ\u000e\u0010%\u001a\u00020\u00162\u0006\u0010&\u001a\u00020\u0006J\u000e\u0010\'\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000eJ\u000e\u0010(\u001a\u00020\u00162\u0006\u0010\"\u001a\u00020\u000eJ\u0016\u0010)\u001a\u00020\u00162\u0006\u0010*\u001a\u00020\u001a2\u0006\u0010+\u001a\u00020\u0008J\u0010\u0010,\u001a\u00020\u00162\u0008\u0010*\u001a\u0004\u0018\u00010\u001aJ\u0010\u0010-\u001a\u00020\u00162\u0008\u0010*\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\u001cH\u0016J\u0010\u00101\u001a\u00020\u00162\u0006\u00102\u001a\u00020\u001cH\u0016J\u0018\u00103\u001a\u00020\u00162\u0006\u00104\u001a\u00020\u001a2\u0006\u00105\u001a\u00020\u001cH\u0016J0\u00106\u001a\u00020\u00162\u0006\u00107\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u001cH\u0016J \u0010:\u001a\u00020\u00162\u0006\u0010;\u001a\u00020\u001a2\u0006\u0010<\u001a\u00020\u00082\u0006\u0010=\u001a\u00020\u0008H\u0016J\u0010\u0010>\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u001aH\u0016J \u0010?\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u001c2\u0006\u00108\u001a\u00020\u001cH\u0016J \u0010@\u001a\u00020\u001c2\u0006\u0010/\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u00109\u001a\u00020\u001cH\u0016J\u0018\u0010A\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u001cH\u0016J\u0018\u0010C\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001c2\u0006\u00100\u001a\u00020\u001cH\u0016J\u0016\u0010E\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001c2\u0006\u0010F\u001a\u00020\u001cJ\u0006\u0010G\u001a\u00020\u0016J\u0010\u0010H\u001a\u00020\u00062\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020\u00062\u0006\u0010I\u001a\u00020JH\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0013\u0010\u0010\u001a\u00070\u0011\u00a2\u0006\u0002\u0008\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0013\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010D\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008D\u0010\u0014\u00a8\u0006L"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;",
        "Landroidx/customview/widget/ViewDragHelper$Callback;",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$TouchHandler;",
        "<init>",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V",
        "isUnableToDrag",
        "",
        "initialMotionX",
        "",
        "initialMotionY",
        "slideableStateListeners",
        "",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;",
        "panelSlideListeners",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;",
        "singlePanelSlideListener",
        "dragHelper",
        "Landroidx/customview/widget/ViewDragHelper;",
        "Lorg/jspecify/annotations/NonNull;",
        "isIdle",
        "()Z",
        "abort",
        "",
        "onComputeScroll",
        "smoothSlideViewTo",
        "view",
        "Landroid/view/View;",
        "left",
        "",
        "top",
        "duration",
        "interpolator",
        "Landroid/view/animation/Interpolator;",
        "setPanelSlideListener",
        "listener",
        "addSlideableStateListener",
        "removeSlideableStateListener",
        "dispatchSlideableState",
        "isSlideable",
        "addPanelSlideListener",
        "removePanelSlideListener",
        "dispatchOnPanelSlide",
        "panel",
        "slideOffset",
        "dispatchOnPanelOpened",
        "dispatchOnPanelClosed",
        "tryCaptureView",
        "child",
        "pointerId",
        "onViewDragStateChanged",
        "state",
        "onViewCaptured",
        "capturedChild",
        "activePointerId",
        "onViewPositionChanged",
        "changedView",
        "dx",
        "dy",
        "onViewReleased",
        "releasedChild",
        "xvel",
        "yvel",
        "getViewHorizontalDragRange",
        "clampViewPositionHorizontal",
        "clampViewPositionVertical",
        "onEdgeTouched",
        "edgeFlags",
        "onEdgeDragStarted",
        "isDraggable",
        "setEdgeTrackingEnabled",
        "size",
        "disableEdgeTracking",
        "onInterceptTouchEvent",
        "ev",
        "Landroid/view/MotionEvent;",
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
.field private final dragHelper:Landroidx/customview/widget/ViewDragHelper;

.field private initialMotionX:F

.field private initialMotionY:F

.field private isUnableToDrag:Z

.field private final panelSlideListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;",
            ">;"
        }
    .end annotation
.end field

.field private singlePanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

.field private final slideableStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 5
    .param p1, "this$0"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2487
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-direct {p0}, Landroidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    .line 2497
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->slideableStateListeners:Ljava/util/List;

    .line 2498
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    .line 2501
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v0, Landroid/view/ViewGroup;

    const/high16 v1, 0x3f000000    # 0.5f

    move-object v2, p0

    check-cast v2, Landroidx/customview/widget/ViewDragHelper$Callback;

    invoke-static {v0, v1, v2}, Landroidx/customview/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroidx/customview/widget/ViewDragHelper$Callback;)Landroidx/customview/widget/ViewDragHelper;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    move-object v2, v0

    .local v2, "$this$dragHelper_u24lambda_u240":Landroidx/customview/widget/ViewDragHelper;
    const/4 v3, 0x0

    .line 2502
    .local v3, "$i$a$-apply-SlidingPaneLayout$OverlappingPaneHandler$dragHelper$1":I
    const/16 v4, 0x190

    int-to-float v4, v4

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v1

    invoke-virtual {v2, v4}, Landroidx/customview/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 2503
    nop

    .line 2501
    .end local v2    # "$this$dragHelper_u24lambda_u240":Landroidx/customview/widget/ViewDragHelper;
    .end local v3    # "$i$a$-apply-SlidingPaneLayout$OverlappingPaneHandler$dragHelper$1":I
    const-string v1, "apply(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    .line 2487
    return-void
.end method


# virtual methods
.method public final abort()V
    .locals 1

    .line 2508
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    return-void
.end method

.method public final addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2556
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2557
    return-void
.end method

.method public final addSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2542
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->slideableStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2543
    return-void
.end method

.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2648
    move v0, p2

    .line 2649
    .local v0, "newLeft":I
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2650
    .local v1, "slideableView":Landroid/view/View;
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .local v2, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v3, v1

    .local v3, "$this$spLayoutParams$iv":Landroid/view/View;
    const/4 v4, 0x0

    .line 3166
    .local v4, "$i$f$getSpLayoutParams":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 3167
    .local v5, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3168
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected child: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " had unexpected LayoutParams: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "SlidingPaneLayout"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3169
    invoke-virtual {v2, v5}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    goto :goto_0

    .line 3171
    :cond_0
    move-object v6, v5

    .line 3167
    :goto_0
    nop

    .line 3168
    const-string v7, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3167
    nop

    .line 2650
    .end local v2    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v3    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v4    # "$i$f$getSpLayoutParams":I
    .end local v5    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 2652
    .local v6, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2653
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    iget v4, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 2654
    .local v2, "startBound":I
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I

    move-result v3

    sub-int v3, v2, v3

    .line 2655
    .local v3, "endBound":I
    invoke-static {v0, v3, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    .end local v2    # "startBound":I
    .end local v3    # "endBound":I
    goto :goto_1

    .line 2657
    :cond_1
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v6, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    .line 2658
    .restart local v2    # "startBound":I
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I

    move-result v3

    add-int/2addr v3, v2

    .line 2659
    .restart local v3    # "endBound":I
    invoke-static {v0, v2, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v4

    move v2, v4

    .line 2651
    .end local v2    # "startBound":I
    .end local v3    # "endBound":I
    :goto_1
    nop

    .line 2661
    .end local v0    # "newLeft":I
    .local v2, "newLeft":I
    return v2

    .line 2649
    .end local v1    # "slideableView":Landroid/view/View;
    .end local v2    # "newLeft":I
    .end local v6    # "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    .restart local v0    # "newLeft":I
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Required value was null."

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2667
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public final disableEdgeTracking()V
    .locals 2

    .line 2698
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 2699
    return-void
.end method

.method public final dispatchOnPanelClosed(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .line 2579
    if-eqz p1, :cond_1

    .line 2580
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 2581
    .local v1, "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-interface {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelClosed(Landroid/view/View;)V

    .end local v1    # "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    goto :goto_0

    .line 2583
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 2585
    :cond_1
    return-void
.end method

.method public final dispatchOnPanelOpened(Landroid/view/View;)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;

    .line 2570
    if-eqz p1, :cond_1

    .line 2571
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 2572
    .local v1, "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-interface {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelOpened(Landroid/view/View;)V

    .end local v1    # "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    goto :goto_0

    .line 2574
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->sendAccessibilityEvent(I)V

    .line 2576
    :cond_1
    return-void
.end method

.method public final dispatchOnPanelSlide(Landroid/view/View;F)V
    .locals 2
    .param p1, "panel"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    const-string v0, "panel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2564
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 2565
    .local v1, "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    invoke-interface {v1, p1, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;->onPanelSlide(Landroid/view/View;F)V

    .end local v1    # "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    goto :goto_0

    .line 2567
    :cond_0
    return-void
.end method

.method public final dispatchSlideableState(Z)V
    .locals 2
    .param p1, "isSlideable"    # Z

    .line 2550
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->slideableStateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;

    .line 2551
    .local v1, "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;
    invoke-interface {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;->onSlideableStateChanged(Z)V

    .end local v1    # "listener":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;
    goto :goto_0

    .line 2553
    :cond_0
    return-void
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I

    move-result v0

    return v0
.end method

.method public final isDraggable()Z
    .locals 4

    .line 2686
    iget-boolean v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isUnableToDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2687
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    return v1

    .line 2688
    :cond_1
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    if-ne v0, v2, :cond_2

    return v1

    .line 2689
    :cond_2
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isOpen()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getLockMode()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public final isIdle()Z
    .locals 1

    .line 2506
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onComputeScroll()V
    .locals 2

    .line 2511
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2512
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2513
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->abort()V

    .line 2514
    return-void

    .line 2516
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->postInvalidateOnAnimation()V

    .line 2518
    :cond_1
    return-void
.end method

.method public onEdgeDragStarted(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2678
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2679
    return-void

    .line 2681
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2682
    return-void
.end method

.method public onEdgeTouched(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "pointerId"    # I

    .line 2671
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2672
    return-void

    .line 2674
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, p2}, Landroidx/customview/widget/ViewDragHelper;->captureChildView(Landroid/view/View;I)V

    .line 2675
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2702
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2705
    .local v0, "action":I
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildCount()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 2707
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2708
    .local v1, "secondChild":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 2709
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2710
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v4

    .line 2709
    invoke-static {v3, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$setPreservedOpenState$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Z)V

    .line 2713
    .end local v1    # "secondChild":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isUnableToDrag:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 2717
    :cond_1
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2721
    :pswitch_0
    const/4 v3, 0x0

    .line 2722
    .local v3, "interceptTap":Z
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 2718
    .end local v3    # "interceptTap":Z
    :pswitch_2
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v2}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 2719
    return v1

    .line 2737
    .restart local v3    # "interceptTap":Z
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 2738
    .local v4, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2739
    .local v5, "y":F
    iget v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionX:F

    sub-float v6, v4, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 2740
    .local v6, "adx":F
    iget v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2741
    .local v7, "ady":F
    iget-object v8, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v8}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v8

    .line 2742
    .local v8, "slop":I
    int-to-float v9, v8

    cmpl-float v9, v6, v9

    if-lez v9, :cond_2

    cmpl-float v9, v7, v6

    if-lez v9, :cond_2

    .line 2743
    iget-object v9, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v9}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    .line 2744
    iput-boolean v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isUnableToDrag:Z

    .line 2745
    return v1

    .line 2724
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "adx":F
    .end local v7    # "ady":F
    .end local v8    # "slop":I
    :pswitch_4
    iput-boolean v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isUnableToDrag:Z

    .line 2725
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 2726
    .restart local v4    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 2727
    .restart local v5    # "y":F
    iput v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionX:F

    .line 2728
    iput v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionY:F

    .line 2729
    nop

    .line 2730
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v7

    float-to-int v8, v4

    float-to-int v9, v5

    invoke-virtual {v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2731
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v7

    invoke-static {v6, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isDimmed(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2733
    const/4 v3, 0x1

    .line 2749
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_2
    :goto_0
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v4, p1}, Landroidx/customview/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 2750
    .local v4, "interceptForDrag":Z
    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2

    .line 2714
    .end local v3    # "interceptTap":Z
    .end local v4    # "interceptForDrag":Z
    :cond_5
    :goto_2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->cancel()V

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2715
    invoke-static {v1, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$onInterceptTouchEvent$s408734394(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    const-string v0, "ev"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2754
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->isSlideable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2755
    invoke-static {v0, p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$onTouchEvent$s408734394(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 2757
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 2758
    const/4 v0, 0x1

    .line 2759
    .local v0, "wantTouchEvents":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 2767
    :pswitch_0
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isDimmed(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2768
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2769
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2770
    .local v2, "y":F
    iget v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionX:F

    sub-float v3, v1, v3

    .line 2771
    .local v3, "dx":F
    iget v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionY:F

    sub-float v4, v2, v4

    .line 2772
    .local v4, "dy":F
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v5}, Landroidx/customview/widget/ViewDragHelper;->getTouchSlop()I

    move-result v5

    .line 2773
    .local v5, "slop":I
    nop

    .line 2774
    mul-float v6, v3, v3

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    mul-int v7, v5, v5

    int-to-float v7, v7

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 2775
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v7, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v7

    float-to-int v8, v1

    float-to-int v9, v2

    invoke-virtual {v6, v7, v8, v9}, Landroidx/customview/widget/ViewDragHelper;->isViewUnder(Landroid/view/View;II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2778
    iget-object v6, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$closePane(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)Z

    goto :goto_0

    .line 2761
    .end local v1    # "x":F
    .end local v2    # "y":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    .end local v5    # "slop":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2762
    .restart local v1    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2763
    .restart local v2    # "y":F
    iput v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionX:F

    .line 2764
    iput v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->initialMotionY:F

    .line 2783
    .end local v1    # "x":F
    .end local v2    # "y":F
    :cond_1
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCaptured(Landroid/view/View;I)V
    .locals 1
    .param p1, "capturedChild"    # Landroid/view/View;
    .param p2, "activePointerId"    # I

    const-string v0, "capturedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2609
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$setAllChildrenVisible(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V

    .line 2610
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .line 2594
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroidx/customview/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    if-nez v0, :cond_2

    .line 2595
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2596
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getCurrentSlideOffset$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 2597
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$updateObscuredViewsVisibility(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)V

    .line 2598
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dispatchOnPanelClosed(Landroid/view/View;)V

    .line 2599
    const/4 v3, 0x0

    goto :goto_1

    .line 2601
    :cond_1
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dispatchOnPanelOpened(Landroid/view/View;)V

    .line 2602
    nop

    .line 2595
    :goto_1
    invoke-static {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$setPreservedOpenState$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Z)V

    .line 2605
    :cond_2
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    const-string v0, "changedView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2619
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0, p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$onPanelDragged(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2620
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2621
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2624
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .local v0, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "$this$spLayoutParams$iv":Landroid/view/View;
    const/4 v2, 0x0

    .line 3160
    .local v2, "$i$f$getSpLayoutParams":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3161
    .local v3, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 3162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had unexpected LayoutParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SlidingPaneLayout"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_0

    .line 3165
    :cond_0
    move-object v4, v3

    .line 3161
    :goto_0
    nop

    .line 3162
    const-string v5, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3161
    nop

    .line 2624
    .end local v0    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v1    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v2    # "$i$f$getSpLayoutParams":I
    .end local v3    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .line 2625
    .local v4, "lp":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v0, 0x0

    .line 2626
    .local v0, "left":I
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_4

    .line 2627
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v1

    iget v7, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v7

    .line 2628
    .local v1, "startToRight":I
    cmpg-float v7, p2, v6

    if-ltz v7, :cond_2

    cmpg-float v6, p2, v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getCurrentSlideOffset$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    .line 2629
    :cond_2
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2631
    :cond_3
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideableView$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 2632
    .local v2, "childWidth":I
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    .end local v0    # "left":I
    .end local v1    # "startToRight":I
    .end local v2    # "childWidth":I
    .local v3, "left":I
    goto :goto_4

    .line 2634
    .end local v3    # "left":I
    .restart local v0    # "left":I
    :cond_4
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    iget v7, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    add-int v0, v1, v7

    .line 2635
    cmpl-float v1, p2, v6

    if-gtz v1, :cond_7

    cmpg-float v1, p2, v6

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getCurrentSlideOffset$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_6

    goto :goto_3

    .line 2639
    :cond_6
    move v3, v0

    goto :goto_4

    .line 2636
    :cond_7
    :goto_3
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getSlideRange$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)I

    move-result v1

    add-int v3, v0, v1

    .line 2639
    .end local v0    # "left":I
    .restart local v3    # "left":I
    :goto_4
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroidx/customview/widget/ViewDragHelper;->settleCapturedViewAt(II)Z

    .line 2640
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2641
    return-void
.end method

.method public final removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2560
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->panelSlideListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2561
    return-void
.end method

.method public final removeSlideableStateListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;)V
    .locals 1
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$SlideableStateListener;

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2546
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->slideableStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2547
    return-void
.end method

.method public final setEdgeTrackingEnabled(II)V
    .locals 2
    .param p1, "edgeFlags"    # I
    .param p2, "size"    # I

    .line 2693
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 2694
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroidx/customview/widget/ViewDragHelper;->getDefaultEdgeSize()I

    move-result v1

    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/customview/widget/ViewDragHelper;->setEdgeSize(I)V

    .line 2695
    return-void
.end method

.method public final setPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V
    .locals 2
    .param p1, "listener"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 2534
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->singlePanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    if-eqz v0, :cond_0

    .line 3153
    .local v0, "it":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    const/4 v1, 0x0

    .line 2534
    .local v1, "$i$a$-let-SlidingPaneLayout$OverlappingPaneHandler$setPanelSlideListener$1":I
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->removePanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 2535
    .end local v0    # "it":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    .end local v1    # "$i$a$-let-SlidingPaneLayout$OverlappingPaneHandler$setPanelSlideListener$1":I
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    .line 3153
    .restart local v0    # "it":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    const/4 v1, 0x0

    .line 2535
    .local v1, "$i$a$-let-SlidingPaneLayout$OverlappingPaneHandler$setPanelSlideListener$2":I
    invoke-virtual {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->addPanelSlideListener(Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;)V

    .line 2538
    .end local v0    # "it":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;
    .end local v1    # "$i$a$-let-SlidingPaneLayout$OverlappingPaneHandler$setPanelSlideListener$2":I
    :cond_1
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->singlePanelSlideListener:Landroidx/slidingpanelayout/widget/SlidingPaneLayout$PanelSlideListener;

    .line 2539
    return-void
.end method

.method public final smoothSlideViewTo(Landroid/view/View;II)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2521
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public final smoothSlideViewTo(Landroid/view/View;IIILandroid/view/animation/Interpolator;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "duration"    # I
    .param p5, "interpolator"    # Landroid/view/animation/Interpolator;

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interpolator"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2529
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->dragHelper:Landroidx/customview/widget/ViewDragHelper;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .end local p1    # "view":Landroid/view/View;
    .end local p2    # "left":I
    .end local p3    # "top":I
    .end local p4    # "duration":I
    .end local p5    # "interpolator":Landroid/view/animation/Interpolator;
    .local v2, "view":Landroid/view/View;
    .local v3, "left":I
    .local v4, "top":I
    .local v5, "duration":I
    .local v6, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual/range {v1 .. v6}, Landroidx/customview/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;IIILandroid/view/animation/Interpolator;)Z

    move-result p1

    return p1
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    const-string v0, "child"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2588
    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->isDraggable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2589
    const/4 v0, 0x0

    goto :goto_1

    .line 2590
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$OverlappingPaneHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .local v0, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v1, p1

    .local v1, "$this$spLayoutParams$iv":Landroid/view/View;
    const/4 v2, 0x0

    .line 3154
    .local v2, "$i$f$getSpLayoutParams":I
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 3155
    .local v3, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3156
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected child: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " had unexpected LayoutParams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SlidingPaneLayout"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3157
    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    goto :goto_0

    .line 3159
    :cond_1
    move-object v4, v3

    .line 3155
    :goto_0
    nop

    .line 3156
    const-string v5, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3155
    nop

    .end local v0    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v1    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v2    # "$i$f$getSpLayoutParams":I
    .end local v3    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v0, v4, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->slideable:Z

    .line 2588
    :goto_1
    return v0
.end method

.class final Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;
.super Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;
.source "SlidingPaneLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DraggableDividerHandler"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingPaneLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler\n+ 2 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout\n+ 3 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams\n*L\n1#1,3152:1\n3142#2,6:3153\n3142#2,6:3160\n1994#3:3159\n1994#3:3166\n*S KotlinDebug\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler\n*L\n2808#1:3153,6\n2812#1:3160,6\n2808#1:3159\n2812#1:3166\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016J\u0010\u0010\u000b\u001a\u00020\t2\u0006\u0010\u000c\u001a\u00020\tH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u000eH\u0016J\u0010\u0010\u0010\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0008\u0010\u0012\u001a\u00020\u000eH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;",
        "<init>",
        "(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V",
        "tmpTargetRect",
        "Landroid/graphics/Rect;",
        "dividerBoundsContains",
        "",
        "x",
        "",
        "y",
        "clampDraggingDividerPosition",
        "proposedPositionX",
        "onUserResizeStarted",
        "",
        "onUserResizeProgress",
        "onUserResizeComplete",
        "wasCancelled",
        "onDividerClicked",
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
.field final synthetic this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

.field private final tmpTargetRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)V
    .locals 1
    .param p1, "this$0"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2787
    iput-object p1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .line 2788
    invoke-virtual {p1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    invoke-direct {p0, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$AbsDraggableDividerHandler;-><init>(I)V

    .line 2789
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->tmpTargetRect:Landroid/graphics/Rect;

    .line 2787
    return-void
.end method


# virtual methods
.method public clampDraggingDividerPosition(I)I
    .locals 14
    .param p1, "proposedPositionX"    # I

    .line 2797
    const/4 v0, 0x0

    .line 2798
    .local v0, "leftChild":Landroid/view/View;
    const/4 v1, 0x0

    .line 2799
    .local v1, "rightChild":Landroid/view/View;
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$isLayoutRtl(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "getChildAt(...)"

    if-eqz v2, :cond_0

    .line 2800
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2801
    .end local v0    # "leftChild":Landroid/view/View;
    .local v2, "leftChild":Landroid/view/View;
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v1    # "rightChild":Landroid/view/View;
    .local v0, "rightChild":Landroid/view/View;
    goto :goto_0

    .line 2803
    .end local v2    # "leftChild":Landroid/view/View;
    .local v0, "leftChild":Landroid/view/View;
    .restart local v1    # "rightChild":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2, v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2804
    .end local v0    # "leftChild":Landroid/view/View;
    .restart local v2    # "leftChild":Landroid/view/View;
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0, v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2806
    .end local v1    # "rightChild":Landroid/view/View;
    .local v0, "rightChild":Landroid/view/View;
    :goto_0
    nop

    .line 2807
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v1

    .line 2808
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .local v3, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v4, v2

    .local v4, "$this$spLayoutParams$iv":Landroid/view/View;
    const/4 v5, 0x0

    .line 3153
    .local v5, "$i$f$getSpLayoutParams":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 3154
    .local v6, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v7

    const/16 v8, 0x20

    const-string v9, " had unexpected LayoutParams: "

    const-string v10, "Unexpected child: "

    const-string v11, "SlidingPaneLayout"

    if-nez v7, :cond_1

    .line 3155
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3156
    invoke-virtual {v3, v6}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    goto :goto_1

    .line 3158
    :cond_1
    move-object v7, v6

    .line 3154
    :goto_1
    nop

    .line 3155
    const-string v12, "null cannot be cast to non-null type androidx.slidingpanelayout.widget.SlidingPaneLayout.LayoutParams"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3154
    nop

    .line 2808
    .end local v3    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v4    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v5    # "$i$f$getSpLayoutParams":I
    .end local v6    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .local v7, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v3, 0x0

    .line 3159
    .local v3, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v4, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v5, v7, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 2807
    .end local v3    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    .end local v7    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    add-int/2addr v1, v4

    .line 2809
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v3, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getMinimumChildWidth(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)I

    move-result v3

    .line 2807
    add-int/2addr v1, v3

    .line 2810
    iget-object v3, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v3}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v3

    .line 2811
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v4}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v4

    .line 2810
    sub-int/2addr v3, v4

    .line 2812
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    .local v4, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    move-object v5, v0

    .local v5, "$this$spLayoutParams$iv":Landroid/view/View;
    const/4 v6, 0x0

    .line 3160
    .local v6, "$i$f$getSpLayoutParams":I
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 3161
    .local v7, "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v4, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 3162
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3163
    invoke-virtual {v4, v7}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    goto :goto_2

    .line 3165
    :cond_2
    move-object v8, v7

    .line 3161
    :goto_2
    nop

    .line 3162
    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;

    .line 3161
    nop

    .line 2812
    .end local v4    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .end local v5    # "$this$spLayoutParams$iv":Landroid/view/View;
    .end local v6    # "$i$f$getSpLayoutParams":I
    .end local v7    # "layoutParams$iv":Landroid/view/ViewGroup$LayoutParams;
    nop

    .local v8, "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    const/4 v4, 0x0

    .line 3166
    .local v4, "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    iget v5, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->leftMargin:I

    iget v6, v8, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;->rightMargin:I

    add-int/2addr v5, v6

    .line 2810
    .end local v4    # "$i$f$getHorizontalMargin$slidingpanelayout_release":I
    .end local v8    # "this_$iv":Landroidx/slidingpanelayout/widget/SlidingPaneLayout$LayoutParams;
    sub-int/2addr v3, v5

    .line 2813
    iget-object v4, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v4, v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getMinimumChildWidth(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/view/View;)I

    move-result v4

    .line 2810
    sub-int/2addr v3, v4

    .line 2806
    invoke-static {p1, v1, v3}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v1

    return v1
.end method

.method public dividerBoundsContains(II)Z
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2794
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->tmpTargetRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getVisualDividerPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$computeDividerTargetRect(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public onDividerClicked()V
    .locals 2

    .line 2838
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getOnUserResizingDividerClickListener$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    check-cast v1, Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 2839
    :cond_0
    return-void
.end method

.method public onUserResizeComplete(Z)V
    .locals 3
    .param p1, "wasCancelled"    # Z

    .line 2828
    if-eqz p1, :cond_0

    .line 2829
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->getDragPositionX()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onUserResizeCancelled(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    goto :goto_0

    .line 2831
    :cond_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->getDragPositionX()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onUserResizeComplete(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2833
    :goto_0
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->drawableStateChanged()V

    .line 2834
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2835
    return-void
.end method

.method public onUserResizeProgress()V
    .locals 3

    .line 2823
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->getDragPositionX()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onUserResizeProgress(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2824
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->invalidate()V

    .line 2825
    return-void
.end method

.method public onUserResizeStarted()V
    .locals 3

    .line 2818
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-static {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->access$getUserResizeBehavior$p(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;)Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;

    move-result-object v0

    iget-object v1, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {p0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->getDragPositionX()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$UserResizeBehavior;->onUserResizeStarted(Landroidx/slidingpanelayout/widget/SlidingPaneLayout;I)V

    .line 2819
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/SlidingPaneLayout$DraggableDividerHandler;->this$0:Landroidx/slidingpanelayout/widget/SlidingPaneLayout;

    invoke-virtual {v0}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->drawableStateChanged()V

    .line 2820
    return-void
.end method

.class final Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;
.super Ljava/lang/Object;
.source "SlidingPaneLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSlidingPaneLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingPaneLayout.kt\nandroidx/slidingpanelayout/widget/FoldBoundsCalculator\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3152:1\n1#2:3153\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0015\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J(\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0007J \u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0007H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;",
        "",
        "<init>",
        "()V",
        "tmpIntArray",
        "",
        "splitViewPositionsTmpRect",
        "Landroid/graphics/Rect;",
        "getFoldBoundsInViewTmpRect",
        "splitViewPositions",
        "",
        "foldingFeature",
        "Landroidx/window/layout/FoldingFeature;",
        "parentView",
        "Landroidx/slidingpanelayout/widget/SlidingPaneLayout;",
        "outLeftRect",
        "outRightRect",
        "getFoldBoundsInView",
        "view",
        "Landroid/view/View;",
        "outRect",
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
.field private final getFoldBoundsInViewTmpRect:Landroid/graphics/Rect;

.field private final splitViewPositionsTmpRect:Landroid/graphics/Rect;

.field private final tmpIntArray:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->tmpIntArray:[I

    .line 136
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->splitViewPositionsTmpRect:Landroid/graphics/Rect;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->getFoldBoundsInViewTmpRect:Landroid/graphics/Rect;

    .line 133
    return-void
.end method

.method private final getFoldBoundsInView(Landroidx/window/layout/FoldingFeature;Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 10
    .param p1, "foldingFeature"    # Landroidx/window/layout/FoldingFeature;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;

    .line 189
    iget-object v0, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->tmpIntArray:[I

    .line 190
    .local v0, "viewLocationInWindow":[I
    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 191
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 192
    .local v2, "x":I
    const/4 v3, 0x1

    aget v4, v0, v3

    .line 194
    .local v4, "y":I
    iget-object v5, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->getFoldBoundsInViewTmpRect:Landroid/graphics/Rect;

    move-object v6, v5

    .line 3153
    .local v6, "$this$getFoldBoundsInView_u24lambda_u240":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 194
    .local v7, "$i$a$-apply-FoldBoundsCalculator$getFoldBoundsInView$viewRect$1":I
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v4

    invoke-virtual {v6, v2, v4, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 193
    .end local v6    # "$this$getFoldBoundsInView_u24lambda_u240":Landroid/graphics/Rect;
    .end local v7    # "$i$a$-apply-FoldBoundsCalculator$getFoldBoundsInView$viewRect$1":I
    nop

    .line 195
    .local v5, "viewRect":Landroid/graphics/Rect;
    move-object v6, p3

    .line 3153
    .local v6, "$this$getFoldBoundsInView_u24lambda_u241":Landroid/graphics/Rect;
    const/4 v7, 0x0

    .line 195
    .local v7, "$i$a$-apply-FoldBoundsCalculator$getFoldBoundsInView$foldRectInView$1":I
    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 198
    .end local v7    # "$i$a$-apply-FoldBoundsCalculator$getFoldBoundsInView$foldRectInView$1":I
    .local v6, "foldRectInView":Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v7

    .line 200
    .local v7, "intersects":Z
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    if-nez v7, :cond_2

    .line 201
    :cond_1
    return v1

    .line 203
    :cond_2
    neg-int v1, v2

    neg-int v8, v4

    invoke-virtual {v6, v1, v8}, Landroid/graphics/Rect;->offset(II)V

    .line 204
    return v3
.end method


# virtual methods
.method public final splitViewPositions(Landroidx/window/layout/FoldingFeature;Landroidx/slidingpanelayout/widget/SlidingPaneLayout;Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .locals 7
    .param p1, "foldingFeature"    # Landroidx/window/layout/FoldingFeature;
    .param p2, "parentView"    # Landroidx/slidingpanelayout/widget/SlidingPaneLayout;
    .param p3, "outLeftRect"    # Landroid/graphics/Rect;
    .param p4, "outRightRect"    # Landroid/graphics/Rect;

    const-string v0, "parentView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outLeftRect"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outRightRect"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 151
    :cond_0
    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->isSeparating()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 154
    :cond_1
    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-nez v1, :cond_2

    return v0

    .line 157
    :cond_2
    iget-object v1, p0, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->splitViewPositionsTmpRect:Landroid/graphics/Rect;

    .line 158
    .local v1, "splitPosition":Landroid/graphics/Rect;
    nop

    .line 159
    invoke-interface {p1}, Landroidx/window/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-nez v2, :cond_3

    .line 160
    move-object v2, p2

    check-cast v2, Landroid/view/View;

    invoke-direct {p0, p1, v2, v1}, Landroidx/slidingpanelayout/widget/FoldBoundsCalculator;->getFoldBoundsInView(Landroidx/window/layout/FoldingFeature;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 162
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaneSpacing()I

    move-result v0

    .line 163
    .local v0, "paneSpacing":I
    nop

    .line 164
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v2

    .line 165
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v3

    .line 166
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingLeft()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->left:I

    div-int/lit8 v6, v0, 0x2

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 167
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 163
    invoke-virtual {p3, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 169
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 170
    .local v2, "rightBound":I
    nop

    .line 171
    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 172
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingTop()I

    move-result v4

    .line 173
    nop

    .line 174
    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getHeight()I

    move-result v5

    invoke-virtual {p2}, Landroidx/slidingpanelayout/widget/SlidingPaneLayout;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    .line 170
    invoke-virtual {p4, v3, v4, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 176
    const/4 v3, 0x1

    return v3

    .line 178
    .end local v0    # "paneSpacing":I
    .end local v2    # "rightBound":I
    :cond_3
    return v0
.end method

.class Landroidx/transition/GhostViewPort;
.super Landroid/view/ViewGroup;
.source "GhostViewPort.java"

# interfaces
.implements Landroidx/transition/GhostView;


# instance fields
.field private mMatrix:Landroid/graphics/Matrix;

.field private final mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mReferences:I

.field mStartParent:Landroid/view/ViewGroup;

.field mStartView:Landroid/view/View;

.field final mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 49
    new-instance v0, Landroidx/transition/GhostViewPort$1;

    invoke-direct {v0, p0}, Landroidx/transition/GhostViewPort$1;-><init>(Landroidx/transition/GhostViewPort;)V

    iput-object v0, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 67
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/transition/GhostViewPort;->setWillNotDraw(Z)V

    .line 69
    invoke-virtual {p0, v0}, Landroidx/transition/GhostViewPort;->setClipChildren(Z)V

    .line 70
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/transition/GhostViewPort;->setLayerType(ILandroid/graphics/Paint;)V

    .line 71
    return-void
.end method

.method static addGhost(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)Landroidx/transition/GhostViewPort;
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 162
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 165
    invoke-static {p1}, Landroidx/transition/GhostViewHolder;->getHolder(Landroid/view/ViewGroup;)Landroidx/transition/GhostViewHolder;

    move-result-object v0

    .line 166
    .local v0, "holder":Landroidx/transition/GhostViewHolder;
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v1

    .line 167
    .local v1, "ghostView":Landroidx/transition/GhostViewPort;
    const/4 v2, 0x0

    .line 168
    .local v2, "previousRefCount":I
    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v1}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroidx/transition/GhostViewHolder;

    .line 170
    .local v3, "oldHolder":Landroidx/transition/GhostViewHolder;
    if-eq v3, v0, :cond_0

    .line 171
    iget v2, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 172
    invoke-virtual {v3, v1}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    .line 173
    const/4 v1, 0x0

    .line 176
    .end local v3    # "oldHolder":Landroidx/transition/GhostViewHolder;
    :cond_0
    if-nez v1, :cond_3

    .line 177
    if-nez p2, :cond_1

    .line 178
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    move-object p2, v3

    .line 179
    invoke-static {p0, p1, p2}, Landroidx/transition/GhostViewPort;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 181
    :cond_1
    new-instance v3, Landroidx/transition/GhostViewPort;

    invoke-direct {v3, p0}, Landroidx/transition/GhostViewPort;-><init>(Landroid/view/View;)V

    move-object v1, v3

    .line 182
    invoke-virtual {v1, p2}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    .line 183
    if-nez v0, :cond_2

    .line 184
    new-instance v3, Landroidx/transition/GhostViewHolder;

    invoke-direct {v3, p1}, Landroidx/transition/GhostViewHolder;-><init>(Landroid/view/ViewGroup;)V

    move-object v0, v3

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {v0}, Landroidx/transition/GhostViewHolder;->popToOverlayTop()V

    .line 188
    :goto_0
    invoke-static {p1, v0}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 189
    invoke-static {p1, v1}, Landroidx/transition/GhostViewPort;->copySize(Landroid/view/View;Landroid/view/View;)V

    .line 190
    invoke-virtual {v0, v1}, Landroidx/transition/GhostViewHolder;->addGhostView(Landroidx/transition/GhostViewPort;)V

    .line 191
    iput v2, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    goto :goto_1

    .line 192
    :cond_3
    if-eqz p2, :cond_4

    .line 193
    invoke-virtual {v1, p2}, Landroidx/transition/GhostViewPort;->setMatrix(Landroid/graphics/Matrix;)V

    .line 195
    :cond_4
    :goto_1
    iget v3, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v1, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 196
    return-object v1

    .line 163
    .end local v0    # "holder":Landroidx/transition/GhostViewHolder;
    .end local v1    # "ghostView":Landroidx/transition/GhostViewPort;
    .end local v2    # "previousRefCount":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Ghosted views must be parented by a ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "host"    # Landroid/view/ViewGroup;
    .param p2, "matrix"    # Landroid/graphics/Matrix;

    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 155
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 156
    invoke-static {v0, p2}, Landroidx/transition/ViewUtils;->transformMatrixToGlobal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 157
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 158
    invoke-static {p1, p2}, Landroidx/transition/ViewUtils;->transformMatrixToLocal(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 159
    return-void
.end method

.method static copySize(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p0, "from"    # Landroid/view/View;
    .param p1, "to"    # Landroid/view/View;

    .line 138
    nop

    .line 139
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 138
    invoke-static {p1, v0, v1, v2, v3}, Landroidx/transition/ViewUtils;->setLeftTopRightBottom(Landroid/view/View;IIII)V

    .line 143
    return-void
.end method

.method static getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 146
    sget v0, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/transition/GhostViewPort;

    return-object v0
.end method

.method static removeGhost(Landroid/view/View;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 200
    invoke-static {p0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v0

    .line 201
    .local v0, "ghostView":Landroidx/transition/GhostViewPort;
    if-eqz v0, :cond_0

    .line 202
    iget v1, v0, Landroidx/transition/GhostViewPort;->mReferences:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroidx/transition/GhostViewPort;->mReferences:I

    .line 203
    iget v1, v0, Landroidx/transition/GhostViewPort;->mReferences:I

    if-gtz v1, :cond_0

    .line 204
    invoke-virtual {v0}, Landroidx/transition/GhostViewPort;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroidx/transition/GhostViewHolder;

    .line 205
    .local v1, "holder":Landroidx/transition/GhostViewHolder;
    invoke-virtual {v1, v0}, Landroidx/transition/GhostViewHolder;->removeView(Landroid/view/View;)V

    .line 208
    .end local v1    # "holder":Landroidx/transition/GhostViewHolder;
    :cond_0
    return-void
.end method

.method static setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "ghostView"    # Landroidx/transition/GhostViewPort;

    .line 150
    sget v0, Landroidx/transition/R$id;->ghost_view:I

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 151
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 99
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 100
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v0, p0}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    .line 102
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 104
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 105
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 108
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 112
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 113
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 114
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/GhostViewPort;->setGhostView(Landroid/view/View;Landroidx/transition/GhostViewPort;)V

    .line 115
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 118
    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 119
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 123
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 124
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 129
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 130
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 131
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 133
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/transition/GhostViewPort;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Landroidx/transition/GhostViewPort;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 134
    invoke-static {p1, v1}, Landroidx/transition/CanvasUtils;->enableZ(Landroid/graphics/Canvas;Z)V

    .line 135
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 85
    return-void
.end method

.method public reserveEndViewTransition(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .line 93
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mStartParent:Landroid/view/ViewGroup;

    .line 94
    iput-object p2, p0, Landroidx/transition/GhostViewPort;->mStartView:Landroid/view/View;

    .line 95
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;)V
    .locals 0
    .param p1, "matrix"    # Landroid/graphics/Matrix;

    .line 88
    iput-object p1, p0, Landroidx/transition/GhostViewPort;->mMatrix:Landroid/graphics/Matrix;

    .line 89
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 75
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 76
    iget-object v0, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v0}, Landroidx/transition/GhostViewPort;->getGhostView(Landroid/view/View;)Landroidx/transition/GhostViewPort;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 77
    if-nez p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    .local v0, "inverseVisibility":I
    :goto_0
    iget-object v1, p0, Landroidx/transition/GhostViewPort;->mView:Landroid/view/View;

    invoke-static {v1, v0}, Landroidx/transition/ViewUtils;->setTransitionVisibility(Landroid/view/View;I)V

    .line 80
    .end local v0    # "inverseVisibility":I
    :cond_1
    return-void
.end method

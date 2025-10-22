.class public Lcom/google/android/setupdesign/view/StickyHeaderListView;
.super Landroid/widget/ListView;
.source "StickyHeaderListView.java"


# instance fields
.field private shouldApplyAdditionalMargin:Z

.field private statusBarInset:I

.field private sticky:Landroid/view/View;

.field private stickyContainer:Landroid/view/View;

.field private final stickyRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    .line 63
    const/4 v0, 0x0

    const v1, 0x1010074

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    .line 68
    const v0, 0x1010074

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    .line 59
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    .line 73
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->init(Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    return-void

    .line 81
    :cond_0
    nop

    .line 82
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/google/android/setupdesign/R$styleable;->SudStickyHeaderListView:[I

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/google/android/setupdesign/R$styleable;->SudStickyHeaderListView_sudHeader:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 86
    .local v1, "headerResId":I
    sget v3, Lcom/google/android/setupdesign/R$styleable;->SudStickyHeaderListView_sudShouldApplyAdditionalMargin:I

    .line 87
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->shouldApplyAdditionalMargin:Z

    .line 88
    if-eqz v1, :cond_1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 90
    .local v3, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v3, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 91
    .local v4, "header":Landroid/view/View;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v2}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 93
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    .end local v4    # "header":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 94
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ev"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    neg-float v0, v0

    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 117
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyContainer:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 119
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 125
    invoke-super {p0, p1}, Landroid/widget/ListView;->draw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 129
    .local v0, "saveCount":I
    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyContainer:Landroid/view/View;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    .line 131
    .local v1, "drawTarget":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyContainer:Landroid/view/View;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 133
    .local v2, "drawOffset":I
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 134
    .local v4, "drawTop":I
    add-int v5, v4, v2

    iget v6, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    if-lt v5, v6, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 145
    :cond_2
    iget-object v3, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->setEmpty()V

    goto :goto_3

    .line 136
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    neg-int v6, v2

    iget v7, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    .line 139
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v7

    int-to-float v7, v7

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v8

    sub-int/2addr v8, v2

    iget v9, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    .line 136
    const/4 v9, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 141
    iget-object v5, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v9, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 142
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p1, v3, v3, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 143
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 147
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 149
    .end local v0    # "saveCount":I
    .end local v1    # "drawTarget":Landroid/view/View;
    .end local v2    # "drawOffset":I
    .end local v4    # "drawTop":I
    :cond_4
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "insets"    # Landroid/view/WindowInsets;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "insets"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->getFitsSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    iput v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->statusBarInset:I

    .line 156
    nop

    .line 157
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    .line 159
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v1

    .line 160
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v2

    .line 156
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/view/WindowInsets;->replaceSystemWindowInsets(IIII)Landroid/view/WindowInsets;

    .line 162
    :cond_0
    return-object p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 167
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 171
    iget-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 172
    .local v0, "numberOfHeaders":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 173
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getFromIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 174
    nop

    .line 175
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getToIndex()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 177
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "l",
            "t",
            "r",
            "b"
        }
    .end annotation

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 99
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "b":I
    .local p2, "changed":Z
    .local p3, "l":I
    .local p4, "t":I
    .local p5, "r":I
    iget-object v1, p1, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    if-nez v1, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->updateStickyView()V

    .line 102
    :cond_0
    return-void
.end method

.method public shouldApplyAdditionalMargin()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->shouldApplyAdditionalMargin:Z

    return v0
.end method

.method public updateStickyView()V
    .locals 1

    .line 109
    const-string v0, "sticky"

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->sticky:Landroid/view/View;

    .line 110
    const-string v0, "stickyContainer"

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/view/StickyHeaderListView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupdesign/view/StickyHeaderListView;->stickyContainer:Landroid/view/View;

    .line 111
    return-void
.end method

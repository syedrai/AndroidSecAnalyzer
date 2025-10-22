.class public Lcom/google/android/setupdesign/view/WrapTextView;
.super Landroid/support/v7/widget/AppCompatTextView;
.source "WrapTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 48
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/view/WrapTextView;->wrapMeasure(I)I

    move-result v0

    .line 50
    .local v0, "newWidthSpec":I
    if-eq v0, p1, :cond_0

    .line 51
    invoke-super {p0, v0, p2}, Landroid/support/v7/widget/AppCompatTextView;->onMeasure(II)V

    .line 53
    :cond_0
    return-void
.end method

.method wrapMeasure(I)I
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widthMeasureSpec"
        }
    .end annotation

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/WrapTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 59
    .local v0, "layout":Landroid/text/Layout;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 60
    .local v2, "lineCount":I
    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 61
    const/4 v3, 0x0

    .line 62
    .local v3, "maxLineWidth":F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 64
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 62
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66
    .end local v4    # "i":I
    :cond_0
    float-to-double v4, v3

    .line 67
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/WrapTextView;->getTotalPaddingLeft()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/WrapTextView;->getTotalPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    .line 68
    .local v4, "newTotalWidth":I
    invoke-virtual {p0}, Lcom/google/android/setupdesign/view/WrapTextView;->getMeasuredWidth()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 70
    invoke-static {v4, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    return v1

    .line 74
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v2    # "lineCount":I
    .end local v3    # "maxLineWidth":F
    .end local v4    # "newTotalWidth":I
    :cond_1
    return p1
.end method

.class public Lcom/google/android/setupcompat/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "ButtonBarLayout.java"


# static fields
.field private static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field private originalPaddingLeft:I

.field private originalPaddingRight:I

.field private stacked:Z

.field private stackedButtonForExpressiveStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    const-class v1, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    .line 49
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

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    .line 53
    return-void
.end method

.method private getChildViewsInContainerInOrder(IZ)Ljava/util/ArrayList;
    .locals 8
    .param p1, "childCount"    # I
    .param p2, "isOnePrimaryButton"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childCount",
            "isOnePrimaryButton"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 175
    const/4 v0, 0x3

    .line 176
    .local v0, "childViewsInContainerCount":I
    const/4 v1, 0x0

    .line 177
    .local v1, "secondaryButtonIndex":I
    const/4 v2, 0x1

    .line 178
    .local v2, "spaceViewIndex":I
    const/4 v3, 0x2

    .line 180
    .local v3, "primaryButtonIndex":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v4, "childFooterButtons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz p2, :cond_0

    .line 183
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    :cond_0
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_5

    .line 187
    invoke-virtual {p0, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 188
    .local v6, "childAt":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 189
    invoke-direct {p0, v6}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->isPrimaryButtonStyle(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 190
    invoke-virtual {v4, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 191
    :cond_1
    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-nez v7, :cond_2

    .line 192
    invoke-virtual {v4, v2, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 194
    :cond_2
    invoke-virtual {v4, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 197
    :cond_3
    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-nez v7, :cond_4

    .line 198
    invoke-virtual {v4, v2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 200
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v6    # "childAt":Landroid/view/View;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 204
    .end local v5    # "i":I
    :cond_5
    return-object v4
.end method

.method private isFooterButtonsEvenlyWeighted(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildCount()I

    move-result v0

    .line 209
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 210
    .local v1, "primaryButtonCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 211
    invoke-virtual {p0, v2}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 212
    .local v3, "child":Landroid/view/View;
    instance-of v4, v3, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v4, :cond_0

    .line 213
    move-object v4, v3

    check-cast v4, Lcom/google/android/setupcompat/template/FooterActionButton;

    invoke-virtual {v4}, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    add-int/lit8 v1, v1, 0x1

    .line 210
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 218
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 219
    return v3

    .line 223
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v2, v4, :cond_3

    .line 224
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 225
    const/4 v2, 0x1

    return v2

    .line 227
    :cond_3
    return v3
.end method

.method private isPrimaryButtonStyle(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .line 162
    instance-of v0, p1, Lcom/google/android/setupcompat/template/FooterActionButton;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 163
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 162
    :goto_0
    return v0
.end method

.method private setStacked(Z)V
    .locals 9
    .param p1, "stacked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stacked"
        }
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    if-ne v0, p1, :cond_0

    .line 91
    return-void

    .line 93
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    .line 94
    const/4 v0, 0x0

    .line 95
    .local v0, "isUnstack":Z
    const/4 v1, 0x0

    .line 96
    .local v1, "primaryStyleButtonCount":I
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildCount()I

    move-result v2

    .line 97
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ge v3, v2, :cond_4

    .line 98
    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 99
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 100
    .local v6, "childParams":Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_1

    .line 101
    sget v7, Lcom/google/android/setupcompat/R$id;->suc_customization_original_weight:I

    iget v8, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 102
    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 103
    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_2

    .line 105
    :cond_1
    sget v4, Lcom/google/android/setupcompat/R$id;->suc_customization_original_weight:I

    invoke-virtual {v5, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 106
    .local v4, "weight":Ljava/lang/Float;
    if-eqz v4, :cond_2

    .line 107
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 111
    :cond_2
    const/4 v0, 0x1

    .line 113
    :goto_1
    invoke-direct {p0, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->isPrimaryButtonStyle(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 117
    .end local v4    # "weight":Ljava/lang/Float;
    :cond_3
    :goto_2
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childParams":Landroid/widget/LinearLayout$LayoutParams;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 120
    .end local v3    # "i":I
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setOrientation(I)V

    .line 121
    if-eqz v0, :cond_8

    .line 122
    sget-object v3, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    const-string v5, "Reorder the FooterActionButtons in the container"

    invoke-virtual {v3, v5}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 123
    const/4 v3, 0x1

    if-gt v1, v3, :cond_5

    const/4 v4, 0x1

    .line 124
    :cond_5
    invoke-direct {p0, v2, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildViewsInContainerInOrder(IZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 126
    .local v3, "childViewsInContainerInOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 127
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 128
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_6

    .line 129
    invoke-virtual {p0, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 126
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 132
    .end local v3    # "childViewsInContainerInOrder":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v4    # "i":I
    :cond_7
    goto :goto_5

    .line 133
    :cond_8
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_4
    if-ltz v3, :cond_9

    .line 134
    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->bringChildToFront(Landroid/view/View;)V

    .line 133
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 138
    .end local v3    # "i":I
    :cond_9
    :goto_5
    if-eqz p1, :cond_b

    .line 139
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/google/android/setupcompat/R$bool;->sucTwoPaneLayoutStyle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 140
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 143
    const v3, 0x800005

    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setHorizontalGravity(I)V

    goto :goto_6

    .line 146
    :cond_a
    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setHorizontalGravity(I)V

    .line 152
    :goto_6
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingLeft()I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    .line 153
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingRight()I

    move-result v3

    iput v3, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    .line 154
    iget v3, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    iget v4, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 155
    .local v3, "paddingHorizontal":I
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {p0, v3, v4, v3, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setPadding(IIII)V

    .line 156
    .end local v3    # "paddingHorizontal":I
    goto :goto_7

    .line 157
    :cond_b
    iget v3, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getPaddingBottom()I

    move-result v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setPadding(IIII)V

    .line 159
    :goto_7
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
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

    .line 57
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 59
    .local v0, "widthSize":I
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    .line 61
    const/4 v2, 0x0

    .line 63
    .local v2, "needsRemeasure":Z
    move v3, p1

    .line 64
    .local v3, "initialWidthMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    if-ne v4, v5, :cond_0

    .line 67
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 70
    const/4 v2, 0x1

    .line 73
    :cond_0
    invoke-super {p0, v3, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 75
    const/4 v4, 0x1

    if-lez v0, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getMeasuredWidth()I

    move-result v5

    if-gt v5, v0, :cond_2

    :cond_1
    iget-boolean v5, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stackedButtonForExpressiveStyle:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v1, 0x1

    .line 77
    .local v1, "childrenLargerThanContainer":Z
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->isFooterButtonsEvenlyWeighted(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    .line 78
    invoke-direct {p0, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    .line 81
    const/4 v2, 0x1

    .line 84
    :cond_4
    if-eqz v2, :cond_5

    .line 85
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 87
    :cond_5
    return-void
.end method

.method public setStackedButtonForExpressiveStyle(Z)V
    .locals 1
    .param p1, "isStacked"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isStacked"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stackedButtonForExpressiveStyle:Z

    goto :goto_0

    .line 235
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stackedButtonForExpressiveStyle:Z

    .line 237
    :goto_0
    return-void
.end method

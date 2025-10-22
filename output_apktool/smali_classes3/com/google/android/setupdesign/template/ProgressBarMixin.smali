.class public Lcom/google/android/setupdesign/template/ProgressBarMixin;
.super Ljava/lang/Object;
.source "ProgressBarMixin.java"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# static fields
.field private static final TAG:Ljava/lang/String; = "ProgressBarMixin"


# instance fields
.field private color:Landroid/content/res/ColorStateList;

.field private final isGlifExpressiveEnabled:Z

.field private final templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

.field private final useBottomProgressBar:Z


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layout"
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/setupdesign/template/ProgressBarMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "layout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "useBottomProgressBar":Z
    if-eqz p2, :cond_1

    .line 81
    nop

    .line 83
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/google/android/setupdesign/R$styleable;->SudProgressBarMixin:[I

    .line 84
    const/4 v3, 0x0

    invoke-virtual {v1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 86
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudProgressBarMixin_sudUseBottomProgressBar:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    sget v2, Lcom/google/android/setupdesign/R$styleable;->SudProgressBarMixin_sudUseBottomProgressBar:I

    .line 89
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 92
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, v3}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setShown(Z)V

    .line 98
    .end local v1    # "a":Landroid/content/res/TypedArray;
    :cond_1
    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    .line 99
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Z)V
    .locals 1
    .param p1, "layout"    # Lcom/google/android/setupcompat/internal/TemplateLayout;
    .param p2, "useBottomProgressBar"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layout",
            "useBottomProgressBar"
        }
    .end annotation

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 64
    iput-boolean p2, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    .line 65
    invoke-virtual {p1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    .line 66
    return-void
.end method


# virtual methods
.method public getColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method protected getProgressBar()Landroid/view/View;
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 149
    .local v0, "progressBarView":Landroid/view/View;
    if-nez v0, :cond_3

    .line 150
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_glif_progress_indicator_stub:I

    .line 152
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 153
    .local v1, "progressIndicatorStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_2

    .line 154
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto :goto_0

    .line 156
    .end local v1    # "progressIndicatorStub":Landroid/view/ViewStub;
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-nez v1, :cond_2

    .line 157
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v2, Lcom/google/android/setupdesign/R$id;->sud_layout_progress_stub:I

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 159
    .local v1, "progressBarStub":Landroid/view/ViewStub;
    if-eqz v1, :cond_1

    .line 160
    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 162
    :cond_1
    iget-object v2, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v2}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 156
    .end local v1    # "progressBarStub":Landroid/view/ViewStub;
    :cond_2
    :goto_0
    nop

    .line 165
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    return-object v1
.end method

.method public isShown()Z
    .locals 2

    .line 105
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress_indicator:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "progressBar":Landroid/view/View;
    goto :goto_1

    .line 108
    .end local v0    # "progressBar":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 110
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_glif_progress_bar:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress:I

    .line 109
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .restart local v0    # "progressBar":Landroid/view/View;
    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    return v1
.end method

.method public peekProgressBar()Landroid/widget/ProgressBar;
    .locals 2

    .line 177
    iget-boolean v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress_indicator:I

    .line 179
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 180
    .local v0, "progressIndicator":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    return-object v0

    .line 182
    .end local v0    # "progressIndicator":Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    .line 184
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-eqz v1, :cond_1

    sget v1, Lcom/google/android/setupdesign/R$id;->sud_glif_progress_bar:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_layout_progress:I

    .line 183
    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 182
    return-object v0
.end method

.method public setColor(Landroid/content/res/ColorStateList;)V
    .locals 4
    .param p1, "color"    # Landroid/content/res/ColorStateList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iput-object p1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->color:Landroid/content/res/ColorStateList;

    .line 197
    nop

    .line 198
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 199
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_3

    .line 200
    instance-of v1, v0, Landroid/widget/ProgressBar;

    if-eqz v1, :cond_2

    .line 201
    move-object v1, v0

    check-cast v1, Landroid/widget/ProgressBar;

    .line 202
    .local v1, "bar":Landroid/widget/ProgressBar;
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_0

    if-eqz p1, :cond_1

    .line 210
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    .end local v1    # "bar":Landroid/widget/ProgressBar;
    :cond_1
    goto :goto_0

    :cond_2
    instance-of v1, v0, Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 217
    .end local v0    # "view":Landroid/view/View;
    :cond_3
    :goto_0
    return-void
.end method

.method public setShown(Z)V
    .locals 3
    .param p1, "shown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shown"
        }
    .end annotation

    .line 122
    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->getProgressBar()Landroid/view/View;

    move-result-object v0

    .line 124
    .local v0, "progressBar":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 125
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .end local v0    # "progressBar":Landroid/view/View;
    :cond_0
    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 129
    .restart local v0    # "progressBar":Landroid/view/View;
    if-eqz v0, :cond_4

    .line 130
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->isGlifExpressiveEnabled:Z

    const/16 v2, 0x8

    if-eqz v1, :cond_2

    .line 131
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_2
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-eqz v1, :cond_3

    const/4 v2, 0x4

    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .end local v0    # "progressBar":Landroid/view/View;
    :cond_4
    :goto_0
    return-void
.end method

.method public tryApplyPartnerCustomizationStyle()V
    .locals 9

    .line 233
    invoke-virtual {p0}, Lcom/google/android/setupdesign/template/ProgressBarMixin;->peekProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 234
    .local v0, "progressBar":Landroid/view/View;
    iget-boolean v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->useBottomProgressBar:Z

    if-eqz v1, :cond_4

    if-nez v0, :cond_0

    goto :goto_1

    .line 238
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/template/ProgressBarMixin;->templateLayout:Lcom/google/android/setupcompat/internal/TemplateLayout;

    invoke-static {v1}, Lcom/google/android/setupdesign/util/PartnerStyleHelper;->isPartnerHeavyThemeLayout(Lcom/google/android/setupcompat/internal/TemplateLayout;)Z

    move-result v1

    .line 240
    .local v1, "partnerHeavyThemeLayout":Z
    if-eqz v1, :cond_2

    .line 241
    instance-of v2, v0, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    .line 242
    move-object v2, v0

    check-cast v2, Landroid/widget/ProgressBar;

    invoke-static {v2}, Lcom/google/android/setupdesign/util/HeaderAreaStyler;->applyPartnerCustomizationProgressBarStyle(Landroid/widget/ProgressBar;)V

    goto :goto_0

    .line 244
    :cond_1
    const-string v2, "ProgressBarMixin"

    const-string v3, "The view is not a ProgressBar"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 248
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 250
    .local v3, "lp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_3

    .line 251
    nop

    .line 252
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/google/android/setupdesign/R$dimen;->sud_progress_bar_margin_top:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 253
    .local v4, "marginTop":I
    nop

    .line 254
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/google/android/setupdesign/R$dimen;->sud_progress_bar_margin_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 256
    .local v5, "marginBottom":I
    move-object v6, v3

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 257
    .local v6, "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v6, v7, v4, v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 260
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "marginTop":I
    .end local v5    # "marginBottom":I
    .end local v6    # "mlp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_0
    return-void

    .line 235
    .end local v1    # "partnerHeavyThemeLayout":Z
    :cond_4
    :goto_1
    return-void
.end method

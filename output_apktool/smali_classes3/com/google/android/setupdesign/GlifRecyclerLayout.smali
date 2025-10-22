.class public Lcom/google/android/setupdesign/GlifRecyclerLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "GlifRecyclerLayout.java"


# instance fields
.field private onRecyclerViewScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;


# direct methods
.method static bridge synthetic -$$Nest$mcanWholeViewsScrollDown(Lcom/google/android/setupdesign/GlifRecyclerLayout;Landroid/widget/ScrollView;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->canWholeViewsScrollDown(Landroid/widget/ScrollView;Landroid/support/v7/widget/RecyclerView;)Z

    move-result p0

    return p0
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

    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "template"
        }
    .end annotation

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "template"    # I
    .param p3, "containerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "template",
            "containerId"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 60
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    .line 61
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

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    .line 66
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

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->init(Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method private canWholeViewsScrollDown(Landroid/widget/ScrollView;Landroid/support/v7/widget/RecyclerView;)Z
    .locals 4
    .param p1, "headerScrollView"    # Landroid/widget/ScrollView;
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerScrollView",
            "recyclerView"
        }
    .end annotation

    .line 100
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 102
    return v0

    .line 105
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->canViewScrollDown(Landroid/widget/ScrollView;)Z

    move-result v1

    .line 106
    .local v1, "canHeaderViewScrollDown":Z
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v3

    .line 108
    .local v3, "canRecyclerViewScrollDown":Z
    if-nez v1, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3
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

    .line 75
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/template/RecyclerMixin;->parseAttributes(Landroid/util/AttributeSet;I)V

    .line 80
    const-class v0, Lcom/google/android/setupdesign/template/RecyclerMixin;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 82
    const-class v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 83
    .local v0, "requireScrollMixin":Lcom/google/android/setupdesign/template/RequireScrollMixin;
    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;

    .line 84
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/setupdesign/template/RecyclerViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/support/v7/widget/RecyclerView;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 86
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_landscape_content_area:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 87
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 88
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    .line 90
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 92
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->initScrollingListener()V

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->initBackButton()V

    .line 97
    return-void
.end method


# virtual methods
.method protected findContainer(I)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "containerId"
        }
    .end annotation

    .line 152
    if-nez p1, :cond_0

    .line 153
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_recycler_view:I

    .line 155
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public findManagedViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getHeader()Landroid/view/View;

    move-result-object v0

    .line 163
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, "view":Landroid/view/View;, "TT;"
    if-eqz v1, :cond_0

    .line 166
    return-object v1

    .line 169
    .end local v1    # "view":Landroid/view/View;, "TT;"
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method protected initScrollingListener()V
    .locals 4

    .line 174
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 175
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v0, :cond_0

    .line 178
    new-instance v1, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout$1;-><init>(Lcom/google/android/setupdesign/GlifRecyclerLayout;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onRecyclerViewScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 186
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onRecyclerViewScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 190
    .local v1, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v1, :cond_1

    .line 193
    new-instance v2, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;

    invoke-direct {v2, p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout$2;-><init>(Lcom/google/android/setupdesign/GlifRecyclerLayout;)V

    iput-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 200
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 202
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 206
    invoke-super {p0}, Lcom/google/android/setupdesign/GlifLayout;->onDetachedFromWindow()V

    .line 208
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    .line 209
    .local v0, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    .line 214
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onRecyclerViewScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_1

    .line 215
    iget-object v2, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onRecyclerViewScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 217
    :cond_1
    return-void
.end method

.method protected onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "template"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "inflater",
            "template"
        }
    .end annotation

    .line 119
    if-nez p2, :cond_3

    .line 120
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_recycler_template:I

    .line 123
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_recycler_embedded_template:I

    goto :goto_0

    .line 127
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_recycler_embedded_template:I

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_recycler_template:I

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 133
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_recycler_template_two_pane:I

    .line 136
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
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
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 113
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    .line 114
    move v0, p5

    move p5, p4

    move p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "changed":Z
    .local v0, "bottom":I
    .local p2, "changed":Z
    .local p3, "left":I
    .local p4, "top":I
    .local p5, "right":I
    iget-object v1, p1, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/RecyclerMixin;->onLayout()V

    .line 115
    return-void
.end method

.method protected onTemplateInflated()V
    .locals 3

    .line 141
    sget v0, Lcom/google/android/setupdesign/R$id;->sud_recycler_view:I

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 142
    .local v0, "recyclerView":Landroid/view/View;
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Lcom/google/android/setupdesign/template/RecyclerMixin;

    move-object v2, v0

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v1, p0, v2}, Lcom/google/android/setupdesign/template/RecyclerMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    .line 148
    return-void

    .line 145
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "GlifRecyclerLayout should use a template with recycler view"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$Adapter<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p1, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;, "Landroid/support/v7/widget/RecyclerView$Adapter<+Landroid/support/v7/widget/RecyclerView$ViewHolder;>;"
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 232
    return-void
.end method

.method public setDividerInset(I)V
    .locals 1
    .param p1, "inset"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inset"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setDividerInset(I)V

    .line 243
    return-void
.end method

.method public setDividerInsets(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "end"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setDividerInsets(II)V

    .line 248
    return-void
.end method

.method public setDividerItemDecoration(Lcom/google/android/setupdesign/DividerItemDecoration;)V
    .locals 1
    .param p1, "decoration"    # Lcom/google/android/setupdesign/DividerItemDecoration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decoration"
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifRecyclerLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/RecyclerMixin;->setDividerItemDecoration(Lcom/google/android/setupdesign/DividerItemDecoration;)V

    .line 222
    return-void
.end method

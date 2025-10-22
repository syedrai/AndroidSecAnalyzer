.class public Lcom/google/android/setupdesign/GlifListLayout;
.super Lcom/google/android/setupdesign/GlifLayout;
.source "GlifListLayout.java"


# instance fields
.field private listMixin:Lcom/google/android/setupdesign/template/ListMixin;

.field private onListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetlistMixin(Lcom/google/android/setupdesign/GlifListLayout;)Lcom/google/android/setupdesign/template/ListMixin;
    .locals 0

    iget-object p0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mcanWholeViewsScrollDown(Lcom/google/android/setupdesign/GlifListLayout;Landroid/widget/ScrollView;Landroid/widget/ListView;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifListLayout;->canWholeViewsScrollDown(Landroid/widget/ScrollView;Landroid/widget/ListView;)Z

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

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    .line 51
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

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/setupdesign/GlifListLayout;-><init>(Landroid/content/Context;II)V

    .line 55
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

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;II)V

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    .line 60
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

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    .line 65
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

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    invoke-direct {p0, p2, p3}, Lcom/google/android/setupdesign/GlifListLayout;->init(Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method private canWholeViewsScrollDown(Landroid/widget/ScrollView;Landroid/widget/ListView;)Z
    .locals 4
    .param p1, "headerScrollView"    # Landroid/widget/ScrollView;
    .param p2, "listView"    # Landroid/widget/ListView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerScrollView",
            "listView"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 97
    return v0

    .line 100
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifListLayout;->canViewScrollDown(Landroid/widget/ScrollView;)Z

    move-result v1

    .line 101
    .local v1, "canHeaderViewScrollDown":Z
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/ListView;->canScrollVertically(I)Z

    move-result v3

    .line 103
    .local v3, "canListViewScrollDown":Z
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

    .line 74
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/google/android/setupdesign/template/ListMixin;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    .line 79
    const-class v0, Lcom/google/android/setupdesign/template/ListMixin;

    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->registerMixin(Ljava/lang/Class;Lcom/google/android/setupcompat/template/Mixin;)V

    .line 81
    const-class v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifListLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupdesign/template/RequireScrollMixin;

    .line 82
    .local v0, "requireScrollMixin":Lcom/google/android/setupdesign/template/RequireScrollMixin;
    new-instance v1, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;

    .line 83
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/google/android/setupdesign/template/ListViewScrollHandlingDelegate;-><init>(Lcom/google/android/setupdesign/template/RequireScrollMixin;Landroid/widget/ListView;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/template/RequireScrollMixin;->setScrollHandlingDelegate(Lcom/google/android/setupdesign/template/RequireScrollMixin$ScrollHandlingDelegate;)V

    .line 85
    sget v1, Lcom/google/android/setupdesign/R$id;->sud_landscape_content_area:I

    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v1

    .line 86
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/android/setupdesign/GlifListLayout;->tryApplyPartnerCustomizationContentPaddingTopStyle(Landroid/view/View;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->updateLandscapeMiddleHorizontalSpacing()V

    .line 91
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->initBackButton()V

    .line 92
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

    .line 139
    if-nez p1, :cond_0

    .line 140
    const p1, 0x102000a

    .line 142
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDividerInset()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInset()I

    move-result v0

    return v0
.end method

.method public getDividerInsetEnd()I
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInsetEnd()I

    move-result v0

    return v0
.end method

.method public getDividerInsetStart()I
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getDividerInsetStart()I

    move-result v0

    return v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected initScrollingListener()V
    .locals 4

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "listView":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 150
    new-instance v1, Lcom/google/android/setupdesign/GlifListLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/setupdesign/GlifListLayout$1;-><init>(Lcom/google/android/setupdesign/GlifListLayout;)V

    iput-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->onListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 161
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->onListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v1

    .line 165
    .local v1, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v1, :cond_1

    .line 166
    new-instance v2, Lcom/google/android/setupdesign/GlifListLayout$2;

    invoke-direct {v2, p0}, Lcom/google/android/setupdesign/GlifListLayout$2;-><init>(Lcom/google/android/setupdesign/GlifListLayout;)V

    iput-object v2, p0, Lcom/google/android/setupdesign/GlifListLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 173
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/setupdesign/GlifListLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 175
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 179
    invoke-super {p0}, Lcom/google/android/setupdesign/GlifLayout;->onDetachedFromWindow()V

    .line 181
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getHeaderScrollView()Landroid/widget/ScrollView;

    move-result-object v0

    .line 182
    .local v0, "headerScrollView":Landroid/widget/ScrollView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/setupdesign/GlifListLayout;->onScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/ListMixin;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 187
    .local v1, "listView":Landroid/widget/ListView;
    if-eqz v1, :cond_1

    .line 188
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 190
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

    .line 117
    if-nez p2, :cond_3

    .line 118
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_list_template:I

    .line 121
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifListLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_list_embedded_template:I

    goto :goto_0

    .line 125
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_list_embedded_template:I

    goto :goto_0

    .line 128
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_list_template:I

    goto :goto_0

    .line 130
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 131
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_list_template_two_pane:I

    .line 134
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

    .line 108
    invoke-super/range {p0 .. p5}, Lcom/google/android/setupdesign/GlifLayout;->onLayout(ZIIII)V

    .line 109
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
    iget-object v1, p1, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v1}, Lcom/google/android/setupdesign/template/ListMixin;->onLayout()V

    .line 110
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->isGlifExpressiveEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifListLayout;->initScrollingListener()V

    .line 113
    :cond_0
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adapter"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ListMixin;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
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

    .line 207
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInset(I)V

    .line 208
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

    .line 221
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifListLayout;->listMixin:Lcom/google/android/setupdesign/template/ListMixin;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/setupdesign/template/ListMixin;->setDividerInsets(II)V

    .line 222
    return-void
.end method

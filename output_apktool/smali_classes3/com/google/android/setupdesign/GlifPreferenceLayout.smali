.class public Lcom/google/android/setupdesign/GlifPreferenceLayout;
.super Lcom/google/android/setupdesign/GlifRecyclerLayout;
.source "GlifPreferenceLayout.java"


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

    .line 71
    invoke-direct {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
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

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;II)V

    .line 76
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

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
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

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/setupdesign/GlifRecyclerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
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

    .line 88
    if-nez p1, :cond_0

    .line 89
    sget p1, Lcom/google/android/setupdesign/R$id;->sud_layout_content:I

    .line 91
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->findContainer(I)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "parent",
            "savedInstanceState"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-virtual {v0}, Lcom/google/android/setupdesign/template/RecyclerMixin;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
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

    .line 102
    if-nez p2, :cond_3

    .line 103
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_template:I

    .line 106
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->isEmbeddedActivityOnePaneEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_preference_embedded_template:I

    goto :goto_0

    .line 110
    :cond_0
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_embedded_template:I

    goto :goto_0

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->isGlifExpressiveEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_preference_template:I

    goto :goto_0

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 116
    sget p2, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_template_two_pane:I

    .line 119
    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/google/android/setupdesign/GlifRecyclerLayout;->onInflateTemplate(Landroid/view/LayoutInflater;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onTemplateInflated()V
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 127
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_recycler_view:I

    .line 128
    .local v1, "recyclerViewLayoutId":I
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupcompat/util/ForceTwoPaneHelper;->isForceTwoPaneEnable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_glif_preference_recycler_view_compat_two_pane:I

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifPreferenceLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/setupdesign/util/ThemeHelper;->shouldApplyGlifExpressiveStyle(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 134
    sget v1, Lcom/google/android/setupdesign/R$layout;->sud_glif_expressive_preference_recycler_view:I

    .line 136
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    .line 137
    .local v2, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v3, Lcom/google/android/setupdesign/template/RecyclerMixin;

    invoke-direct {v3, p0, v2}, Lcom/google/android/setupdesign/template/RecyclerMixin;-><init>(Lcom/google/android/setupcompat/internal/TemplateLayout;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v3, p0, Lcom/google/android/setupdesign/GlifPreferenceLayout;->recyclerMixin:Lcom/google/android/setupdesign/template/RecyclerMixin;

    .line 138
    return-void
.end method

.class public Lcom/afwsamples/testdpc/search/SearchItemAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SearchItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;,
        Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

.field private mPreferenceIndexList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnItemClickListener(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreferenceIndexList(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    return-object p0
.end method

.method public constructor <init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;)V
    .locals 1
    .param p1, "onItemClickListener"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "onItemClickListener"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    .line 19
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mOnItemClickListener:Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    .line 20
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 14
    check-cast p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .line 33
    .local v0, "preferenceIndex":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    iget-object v1, p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/afwsamples/testdpc/search/PreferenceIndex;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->textView:Landroid/widget/TextView;

    new-instance v2, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;-><init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter;Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 24
    nop

    .line 25
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->search_result_item:I

    .line 26
    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    invoke-direct {v1, v0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;-><init>(Landroid/view/View;)V

    return-object v1
.end method

.method public setSearchResult(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/afwsamples/testdpc/search/PreferenceIndex;",
            ">;)V"
        }
    .end annotation

    .line 51
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/PreferenceIndex;>;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->mPreferenceIndexList:Ljava/util/List;

    .line 52
    return-void
.end method

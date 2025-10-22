.class Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;
.super Ljava/lang/Object;
.source "SearchItemAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/search/SearchItemAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

.field final synthetic val$holder:Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter;Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/search/SearchItemAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$holder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p2, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;->val$holder:Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    iput-object p1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;->this$0:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;->val$holder:Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$SearchItemViewHolder;->getAdapterPosition()I

    move-result v0

    .line 39
    .local v0, "adapterPosition":I
    iget-object v1, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;->this$0:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-static {v1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->-$$Nest$fgetmPreferenceIndexList(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/afwsamples/testdpc/search/PreferenceIndex;

    .line 40
    .local v1, "clickedItem":Lcom/afwsamples/testdpc/search/PreferenceIndex;
    iget-object v2, p0, Lcom/afwsamples/testdpc/search/SearchItemAdapter$1;->this$0:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-static {v2}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;->-$$Nest$fgetmOnItemClickListener(Lcom/afwsamples/testdpc/search/SearchItemAdapter;)Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;->onItemClick(Lcom/afwsamples/testdpc/search/PreferenceIndex;)V

    .line 41
    return-void
.end method

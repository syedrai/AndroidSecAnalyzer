.class Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;
.super Ljava/lang/Object;
.source "StringArrayTypeInputAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->onBindViewHolder(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

.field final synthetic val$holder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;
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

    .line 55
    iput-object p2, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;->val$holder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;->val$holder:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$ViewHolder;->getAdapterPosition()I

    move-result v0

    .line 60
    .local v0, "adapterPosition":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->-$$Nest$fgetmStringList(Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 62
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->notifyItemRemoved(I)V

    .line 64
    :cond_0
    return-void
.end method

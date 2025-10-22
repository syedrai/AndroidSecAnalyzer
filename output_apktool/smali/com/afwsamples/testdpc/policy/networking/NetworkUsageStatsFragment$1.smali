.class Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;
.super Landroid/widget/ArrayAdapter;
.source "NetworkUsageStatsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/util/List<",
        "Landroid/app/usage/NetworkStats$Bucket;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

.field final synthetic val$inflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/content/Context;IILjava/util/List;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;
    .param p2, "arg0"    # Landroid/content/Context;
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "arg0",
            "arg1",
            "arg2",
            "arg3",
            "val$inflater"
        }
    .end annotation

    .line 115
    .local p5, "arg3":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;>;"
    iput-object p6, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 118
    move-object v0, p2

    .line 119
    .local v0, "appView":Landroid/view/View;
    if-nez p2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->val$inflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/afwsamples/testdpc/R$layout;->data_usage_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    const v1, 0x1020016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "title":Landroid/widget/TextView;
    const v2, 0x1020010

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    .local v2, "summary":Landroid/widget/TextView;
    sget v3, Lcom/afwsamples/testdpc/R$id;->state:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 124
    .local v3, "state":Landroid/widget/TextView;
    const v4, 0x1020006

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 125
    .local v4, "imageView":Landroid/widget/ImageView;
    new-instance v5, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$ViewHolder;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .end local v1    # "title":Landroid/widget/TextView;
    .end local v2    # "summary":Landroid/widget/TextView;
    .end local v3    # "state":Landroid/widget/TextView;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 128
    .local v1, "item":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/NetworkStats$Bucket;>;"
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment$1;->this$0:Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;

    invoke-static {v2, v0, v1}, Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;->-$$Nest$mbindView(Lcom/afwsamples/testdpc/policy/networking/NetworkUsageStatsFragment;Landroid/view/View;Ljava/util/List;)V

    .line 129
    return-object v0
.end method

.class Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;
.super Ljava/lang/Object;
.source "GetAvailableComponentsTask.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$availableComponentsInfoArrayAdapter"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;"
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;->val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "pos",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;->val$availableComponentsInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .end local p1    # "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local p2    # "view":Landroid/view/View;
    .end local p3    # "pos":I
    .end local p4    # "id":J
    .local v1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .local v2, "view":Landroid/view/View;
    .local v3, "pos":I
    .local v4, "id":J
    invoke-virtual/range {v0 .. v5}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 90
    return-void
.end method

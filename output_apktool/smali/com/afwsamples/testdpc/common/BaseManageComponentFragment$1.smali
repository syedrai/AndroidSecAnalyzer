.class Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;
.super Ljava/lang/Object;
.source "BaseManageComponentFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;->this$0:Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
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
            "position",
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

    .line 67
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;->this$0:Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;->this$0:Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->-$$Nest$mgetSpinnerSelectedItem(Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onSpinnerItemSelected(Ljava/lang/Object;)V

    .line 68
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;"
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

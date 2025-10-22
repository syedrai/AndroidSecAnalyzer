.class Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;
.super Ljava/lang/Object;
.source "ToggleComponentsArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 92
    iput p2, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->canModifyComponent(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    iget v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    move-object v2, p1

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->this$0:Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;

    iget-object v1, v1, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter;->mIsComponentCheckedList:Ljava/util/List;

    iget v2, p0, Lcom/afwsamples/testdpc/common/ToggleComponentsArrayAdapter$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 101
    :goto_0
    return-void
.end method

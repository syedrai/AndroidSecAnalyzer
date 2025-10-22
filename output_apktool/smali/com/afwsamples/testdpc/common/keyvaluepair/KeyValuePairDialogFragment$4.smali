.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->configureStringUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 316
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

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

    .line 319
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmStringArrayAdapter(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->getStringList()Ljava/util/List;

    move-result-object v0

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmStringArrayAdapter(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$4;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmStringArrayAdapter(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/StringArrayTypeInputAdapter;->notifyItemInserted(I)V

    .line 321
    return-void
.end method

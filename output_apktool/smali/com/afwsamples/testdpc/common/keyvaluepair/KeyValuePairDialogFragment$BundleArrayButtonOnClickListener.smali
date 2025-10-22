.class Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;
.super Ljava/lang/Object;
.source "KeyValuePairDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BundleArrayButtonOnClickListener"
.end annotation


# instance fields
.field private mBundles:[Landroid/os/Bundle;

.field final synthetic this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;


# direct methods
.method private constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 397
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;-><init>(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)V

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

    .line 406
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmKeyView(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 408
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    sget v2, Lcom/afwsamples/testdpc/R$string;->key_empty_error:I

    invoke-static {v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$mshowToast(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;I)V

    .line 409
    return-void

    .line 411
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->mBundles:[Landroid/os/Bundle;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$fgetmAppName(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;->newInstance(Ljava/lang/String;[Landroid/os/Bundle;Ljava/lang/String;)Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValueBundleArrayFragment;

    move-result-object v1

    .line 412
    .local v1, "fragment":Landroid/app/Fragment;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->this$0:Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;

    invoke-static {v2, v1}, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;->-$$Nest$mshowFragmentForFurtherInput(Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment;Landroid/app/Fragment;)V

    .line 413
    return-void
.end method

.method public setBundleArray([Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundles"    # [Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundles"
        }
    .end annotation

    .line 401
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/keyvaluepair/KeyValuePairDialogFragment$BundleArrayButtonOnClickListener;->mBundles:[Landroid/os/Bundle;

    .line 402
    return-void
.end method

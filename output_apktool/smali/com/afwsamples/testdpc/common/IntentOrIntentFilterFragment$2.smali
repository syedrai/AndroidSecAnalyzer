.class Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;
.super Ljava/lang/Object;
.source "IntentOrIntentFilterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->showCustomInputDialog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

.field final synthetic val$customInputEditText:Landroid/widget/EditText;

.field final synthetic val$customInputType:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;ILandroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$customInputType",
            "val$customInputEditText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 292
    iput p2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    iput-object p3, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog",
            "which"
        }
    .end annotation

    .line 295
    iget v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 306
    :pswitch_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataTypes:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 307
    goto :goto_0

    .line 303
    :pswitch_1
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mDataSchemes:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 304
    goto :goto_0

    .line 300
    :pswitch_2
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mCategories:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    goto :goto_0

    .line 297
    :pswitch_3
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget-object v0, v0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->mActions:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 298
    nop

    .line 311
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->val$customInputType:I

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->-$$Nest$mresetSpinners(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    .line 312
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 313
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$2;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->updateStatusTextView()V

    .line 314
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

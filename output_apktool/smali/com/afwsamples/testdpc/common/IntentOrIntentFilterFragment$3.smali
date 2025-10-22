.class Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;
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

.field final synthetic val$customInputType:I


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$customInputType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 318
    iput p2, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->val$customInputType:I

    iput-object p1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

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

    .line 321
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->this$0:Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;

    iget v1, p0, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment$3;->val$customInputType:I

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;->-$$Nest$mresetSpinners(Lcom/afwsamples/testdpc/common/IntentOrIntentFilterFragment;I)V

    .line 322
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 323
    return-void
.end method

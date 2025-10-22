.class Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;
.super Ljava/lang/Object;
.source "PolicyManagementFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;->showManageLockTaskListPrompt(ILcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

.field final synthetic val$callback:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/PolicyManagementFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$appInfoArrayAdapter",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1973
    iput-object p2, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;->val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    iput-object p3, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;->val$callback:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;

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

    .line 1976
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;->val$appInfoArrayAdapter:Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/policy/locktask/LockTaskAppInfoArrayAdapter;->getLockTaskList()[Ljava/lang/String;

    move-result-object v0

    .line 1977
    .local v0, "lockTaskEnabledArray":[Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$6;->val$callback:Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;

    invoke-interface {v1, v0}, Lcom/afwsamples/testdpc/policy/PolicyManagementFragment$ManageLockTaskListCallback;->onPositiveButtonClicked([Ljava/lang/String;)V

    .line 1978
    return-void
.end method

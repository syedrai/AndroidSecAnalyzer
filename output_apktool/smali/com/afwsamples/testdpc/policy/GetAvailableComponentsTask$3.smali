.class Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;
.super Ljava/lang/Object;
.source "GetAvailableComponentsTask.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 107
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;"
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

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

    .line 110
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->setPermittedComponentsList(Ljava/util/List;)V

    .line 111
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;->this$0:Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;

    invoke-static {v0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->-$$Nest$fgetmAlertDialog(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    return-void
.end method

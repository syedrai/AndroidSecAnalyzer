.class Lcom/afwsamples/testdpc/common/ColorPicker$2;
.super Ljava/lang/Object;
.source "ColorPicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/afwsamples/testdpc/common/ColorPicker;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/afwsamples/testdpc/common/ColorPicker;


# direct methods
.method constructor <init>(Lcom/afwsamples/testdpc/common/ColorPicker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/afwsamples/testdpc/common/ColorPicker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fputmDoneButton(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)V

    .line 118
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fgetmDoneButton(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fgetmCurrentColor(Lcom/afwsamples/testdpc/common/ColorPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    move-object v1, p1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fputmCancelButton(Lcom/afwsamples/testdpc/common/ColorPicker;Landroid/widget/Button;)V

    .line 120
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fgetmCancelButton(Lcom/afwsamples/testdpc/common/ColorPicker;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v1}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$fgetmCurrentColor(Lcom/afwsamples/testdpc/common/ColorPicker;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 121
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/ColorPicker$2;->this$0:Lcom/afwsamples/testdpc/common/ColorPicker;

    invoke-static {v0}, Lcom/afwsamples/testdpc/common/ColorPicker;->-$$Nest$mupdateViewsColor(Lcom/afwsamples/testdpc/common/ColorPicker;)V

    .line 122
    return-void
.end method

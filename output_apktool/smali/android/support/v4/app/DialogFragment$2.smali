.class Landroid/support/v4/app/DialogFragment$2;
.super Ljava/lang/Object;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/DialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/DialogFragment;


# direct methods
.method constructor <init>(Landroid/support/v4/app/DialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/DialogFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 361
    iput-object p1, p0, Landroid/support/v4/app/DialogFragment$2;->this$0:Landroid/support/v4/app/DialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$2;->this$0:Landroid/support/v4/app/DialogFragment;

    invoke-static {v0}, Landroid/support/v4/app/DialogFragment;->access$000(Landroid/support/v4/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$2;->this$0:Landroid/support/v4/app/DialogFragment;

    iget-object v1, p0, Landroid/support/v4/app/DialogFragment$2;->this$0:Landroid/support/v4/app/DialogFragment;

    invoke-static {v1}, Landroid/support/v4/app/DialogFragment;->access$000(Landroid/support/v4/app/DialogFragment;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 367
    :cond_0
    return-void
.end method

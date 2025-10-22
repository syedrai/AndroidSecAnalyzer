.class Landroid/support/v4/app/DialogFragment$5;
.super Landroid/support/v4/app/FragmentContainer;
.source "DialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/DialogFragment;->createFragmentContainer()Landroid/support/v4/app/FragmentContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/DialogFragment;

.field final synthetic val$fragmentContainer:Landroid/support/v4/app/FragmentContainer;


# direct methods
.method constructor <init>(Landroid/support/v4/app/DialogFragment;Landroid/support/v4/app/FragmentContainer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/DialogFragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 783
    iput-object p1, p0, Landroid/support/v4/app/DialogFragment$5;->this$0:Landroid/support/v4/app/DialogFragment;

    iput-object p2, p0, Landroid/support/v4/app/DialogFragment$5;->val$fragmentContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-direct {p0}, Landroid/support/v4/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 786
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$5;->val$fragmentContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$5;->val$fragmentContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentContainer;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 789
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$5;->this$0:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/DialogFragment;->onFindViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onHasView()Z
    .locals 1

    .line 794
    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$5;->val$fragmentContainer:Landroid/support/v4/app/FragmentContainer;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentContainer;->onHasView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/app/DialogFragment$5;->this$0:Landroid/support/v4/app/DialogFragment;

    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->onHasView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

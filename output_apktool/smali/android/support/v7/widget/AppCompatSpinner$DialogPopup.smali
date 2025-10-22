.class Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;
.super Ljava/lang/Object;
.source "AppCompatSpinner.java"

# interfaces
.implements Landroid/support/v7/widget/AppCompatSpinner$SpinnerPopup;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/AppCompatSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DialogPopup"
.end annotation


# instance fields
.field private mListAdapter:Landroid/widget/ListAdapter;

.field mPopup:Landroid/support/v7/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/support/v7/widget/AppCompatSpinner;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/AppCompatSpinner;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v7/widget/AppCompatSpinner;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 843
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 851
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V

    .line 853
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    .line 855
    :cond_0
    return-void
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .line 874
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .line 930
    const/4 v0, 0x0

    return v0
.end method

.method public getHorizontalOriginalOffset()I
    .locals 1

    .line 940
    const/4 v0, 0x0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 859
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 896
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/AppCompatSpinner;->setSelection(I)V

    .line 897
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v0}, Landroid/support/v7/widget/AppCompatSpinner;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 898
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;->performItemClick(Landroid/view/View;IJ)Z

    .line 900
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->dismiss()V

    .line 901
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .line 864
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 865
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 905
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set popup background for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 915
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 935
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set horizontal (original) offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .line 869
    iput-object p1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 870
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2
    .param p1, "px"    # I

    .line 910
    const-string v0, "AppCompatSpinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    return-void
.end method

.method public show(II)V
    .locals 3
    .param p1, "textDirection"    # I
    .param p2, "textAlignment"    # I

    .line 879
    iget-object v0, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 880
    return-void

    .line 882
    :cond_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatSpinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 883
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 884
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 886
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->this$0:Landroid/support/v7/widget/AppCompatSpinner;

    .line 887
    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatSpinner;->getSelectedItemPosition()I

    move-result v2

    .line 886
    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    .line 887
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    .line 888
    iget-object v1, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 889
    .local v1, "listView":Landroid/widget/ListView;
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 890
    invoke-virtual {v1, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 891
    iget-object v2, p0, Landroid/support/v7/widget/AppCompatSpinner$DialogPopup;->mPopup:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 892
    return-void
.end method

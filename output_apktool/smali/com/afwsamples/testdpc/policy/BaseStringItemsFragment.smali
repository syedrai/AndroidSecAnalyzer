.class public abstract Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;
.super Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.source "BaseStringItemsFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$ItemEntryArrayAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<",
        "Ljava/lang/Void;",
        ">;",
        "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final mDialogTitleResId:I

.field private final mEmptyItemResId:I

.field private final mFragmentTitleResId:I

.field private mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$LdfbUWcsk6U--6x7KeHnivxVLLk(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->lambda$onEditButtonClick$1(Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e1Gno25OTNOpDvohXt8YqN_9_Qo(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->lambda$onEditButtonClick$0(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "fragmentTitleResId"    # I
    .param p2, "dialogTitleResId"    # I
    .param p3, "emptyItemResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragmentTitleResId",
            "dialogTitleResId",
            "emptyItemResId"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItems:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mLastItems:Ljava/util/List;

    .line 53
    iput p1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mFragmentTitleResId:I

    .line 54
    iput p2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mDialogTitleResId:I

    .line 55
    iput p3, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mEmptyItemResId:I

    .line 56
    return-void
.end method

.method private synthetic lambda$onEditButtonClick$0(Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/AlertDialog;
    .param p2, "input"    # Landroid/widget/EditText;
    .param p3, "existingEntry"    # Ljava/lang/String;
    .param p4, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 131
    nop

    .line 132
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    return-void
.end method

.method private synthetic lambda$onEditButtonClick$1(Landroid/widget/EditText;Ljava/lang/String;Landroid/app/AlertDialog;Landroid/view/View;)V
    .locals 2
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "existingEntry"    # Ljava/lang/String;
    .param p3, "dialog"    # Landroid/app/AlertDialog;
    .param p4, "okButtonView"    # Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "item":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    iget v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mEmptyItemResId:I

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->showToast(I)V

    .line 138
    return-void

    .line 140
    :cond_0
    if-eqz p2, :cond_1

    .line 141
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v1, p2}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v1, v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->add(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p3}, Landroid/app/AlertDialog;->dismiss()V

    .line 145
    return-void
.end method

.method private showToast(I)V
    .locals 2
    .param p1, "stringResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stringResId"
        }
    .end annotation

    .line 154
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 155
    return-void
.end method


# virtual methods
.method protected addNewRow()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onEditButtonClick(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method protected createListAdapter()Landroid/widget/BaseAdapter;
    .locals 3

    .line 84
    new-instance v0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$ItemEntryArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1, v2, p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$ItemEntryArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter$OnEditButtonClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    .line 85
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    return-object v0
.end method

.method protected createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method protected loadDefault()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 110
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->loadItems()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mLastItems:Ljava/util/List;

    .line 112
    return-void
.end method

.method protected abstract loadItems()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layoutInflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 61
    invoke-super {p0, p1, p2, p3}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "view":Landroid/view/View;
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 64
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->loadDefault()V

    .line 65
    return-object v0
.end method

.method public bridge synthetic onEditButtonClick(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "existingEntry"
        }
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onEditButtonClick(Ljava/lang/String;)V

    return-void
.end method

.method public onEditButtonClick(Ljava/lang/String;)V
    .locals 5
    .param p1, "existingEntry"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "existingEntry"
        }
    .end annotation

    .line 116
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$layout;->simple_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 117
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->input:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 118
    .local v1, "input":Landroid/widget/EditText;
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v4, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mDialogTitleResId:I

    .line 124
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 126
    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 127
    const/high16 v4, 0x1040000

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 129
    .local v2, "dialog":Landroid/app/AlertDialog;
    new-instance v3, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, v1, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;Landroid/app/AlertDialog;Landroid/widget/EditText;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 146
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 147
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onResume()V

    .line 71
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mFragmentTitleResId:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 72
    return-void
.end method

.method protected bridge synthetic onSpinnerItemSelected(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "item"
        }
    .end annotation

    .line 41
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->onSpinnerItemSelected(Ljava/lang/Void;)V

    return-void
.end method

.method protected onSpinnerItemSelected(Ljava/lang/Void;)V
    .locals 0
    .param p1, "item"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .line 80
    return-void
.end method

.method protected resetConfig()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    invoke-virtual {v0}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->clear()V

    .line 91
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItemArrayAdapter:Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mLastItems:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/common/EditDeleteArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 92
    return-void
.end method

.method protected saveConfig()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItems:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->saveItems(Ljava/util/List;)V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mItems:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/policy/BaseStringItemsFragment;->mLastItems:Ljava/util/List;

    .line 99
    return-void
.end method

.method protected abstract saveItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

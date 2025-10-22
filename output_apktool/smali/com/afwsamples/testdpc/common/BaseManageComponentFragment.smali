.class public abstract Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;
.super Landroid/app/Fragment;
.source "BaseManageComponentFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/app/Fragment;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mAppListView:Landroid/widget/ListView;

.field protected mHeaderView:Landroid/widget/TextView;

.field protected mManagedAppsSpinner:Landroid/widget/Spinner;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static bridge synthetic -$$Nest$mgetSpinnerSelectedItem(Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getSpinnerSelectedItem()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private getSpinnerSelectedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 126
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract addNewRow()V
.end method

.method protected abstract createListAdapter()Landroid/widget/BaseAdapter;
.end method

.method protected abstract createSpinnerAdapter()Landroid/widget/SpinnerAdapter;
.end method

.method protected abstract loadDefault()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 87
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    invoke-direct {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getSpinnerSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->onSpinnerItemSelected(Ljava/lang/Object;)V

    .line 89
    return-void
.end method

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

    .line 104
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 105
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->reset_app:I

    if-ne v0, v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->resetConfig()V

    goto :goto_0

    .line 107
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->save_app:I

    if-ne v0, v1, :cond_1

    .line 108
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->saveConfig()V

    goto :goto_0

    .line 109
    :cond_1
    sget v1, Lcom/afwsamples/testdpc/R$id;->add_new_row:I

    if-ne v0, v1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->addNewRow()V

    goto :goto_0

    .line 111
    :cond_2
    sget v1, Lcom/afwsamples/testdpc/R$id;->load_default_button:I

    if-ne v0, v1, :cond_3

    .line 112
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->loadDefault()V

    .line 114
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 53
    return-void
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

    .line 58
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    sget v0, Lcom/afwsamples/testdpc/R$layout;->manage_apps:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->header_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mHeaderView:Landroid/widget/TextView;

    .line 61
    sget v1, Lcom/afwsamples/testdpc/R$id;->managed_apps_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    .line 62
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->createSpinnerAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 63
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mManagedAppsSpinner:Landroid/widget/Spinner;

    new-instance v2, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment$1;-><init>(Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 75
    sget v1, Lcom/afwsamples/testdpc/R$id;->app_list_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAppListView:Landroid/widget/ListView;

    .line 76
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->createListAdapter()Landroid/widget/BaseAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAdapter:Landroid/widget/BaseAdapter;

    .line 77
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAppListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    sget v1, Lcom/afwsamples/testdpc/R$id;->save_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v1, Lcom/afwsamples/testdpc/R$id;->reset_app:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v1, Lcom/afwsamples/testdpc/R$id;->add_new_row:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v1, Lcom/afwsamples/testdpc/R$id;->load_default_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-object v0
.end method

.method public onResume()V
    .locals 2

    .line 45
    .local p0, "this":Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;, "Lcom/afwsamples/testdpc/common/BaseManageComponentFragment<TT;>;"
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 46
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/BaseManageComponentFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/afwsamples/testdpc/R$string;->manage_apps:I

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 47
    return-void
.end method

.method protected abstract onSpinnerItemSelected(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "item"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected abstract resetConfig()V
.end method

.method protected abstract saveConfig()V
.end method

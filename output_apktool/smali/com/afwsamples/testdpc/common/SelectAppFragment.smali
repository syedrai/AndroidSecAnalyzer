.class public abstract Lcom/afwsamples/testdpc/common/SelectAppFragment;
.super Landroid/app/Fragment;
.source "SelectAppFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private mAppListView:Landroid/widget/ListView;

.field private mAppPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentSelectedPackage:Landroid/widget/EditText;

.field private mNewSelectedPackage:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract clearSelectedPackage()V
.end method

.method protected createAppList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "appList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 81
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 82
    .local v2, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v3, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    invoke-direct {v3, v1}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 84
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 85
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    goto :goto_0

    .line 88
    :cond_1
    return-object v0
.end method

.method protected getExtensionLayout(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 92
    sget v0, Lcom/afwsamples/testdpc/R$id;->extension:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected abstract getSelectedPackage()Ljava/lang/String;
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 98
    .local v0, "id":I
    sget v1, Lcom/afwsamples/testdpc/R$id;->selected_package_set:I

    if-ne v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->setSelectedPackage(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    goto :goto_0

    .line 101
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$id;->selected_package_clear:I

    if-ne v0, v1, :cond_1

    .line 102
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->clearSelectedPackage()V

    .line 104
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    .line 106
    :cond_1
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

    .line 56
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->createAppList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    .line 58
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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

    .line 63
    sget v0, Lcom/afwsamples/testdpc/R$layout;->select_app:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "view":Landroid/view/View;
    sget v1, Lcom/afwsamples/testdpc/R$id;->selected_package_current:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    .line 66
    sget v1, Lcom/afwsamples/testdpc/R$id;->selected_package_new:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    .line 67
    sget v1, Lcom/afwsamples/testdpc/R$id;->select_app_list:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    .line 68
    new-instance v1, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;

    .line 69
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->pkg_name:I

    iget-object v4, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Z)V

    .line 70
    .local v1, "appInfoArrayAdapter":Lcom/afwsamples/testdpc/common/AppInfoArrayAdapter;
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    sget v2, Lcom/afwsamples/testdpc/R$id;->selected_package_set:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    sget v2, Lcom/afwsamples/testdpc/R$id;->selected_package_clear:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v2, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppListView:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 74
    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 119
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mAppPackages:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mNewSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 50
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 51
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->reloadSelectedPackage()V

    .line 52
    return-void
.end method

.method protected reloadSelectedPackage()V
    .locals 3

    .line 109
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/common/SelectAppFragment;->getSelectedPackage()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "selectedPackage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 111
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/afwsamples/testdpc/common/SelectAppFragment;->mCurrentSelectedPackage:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_0
    return-void
.end method

.method protected abstract setSelectedPackage(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pkgName"
        }
    .end annotation
.end method

.class public abstract Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;
.super Landroid/os/AsyncTask;
.source "GetAvailableComponentsTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mListView:Landroid/widget/ListView;

.field private mNegativeButton:Landroid/widget/Button;

.field private mNeutralButton:Landroid/widget/Button;

.field private mPositiveButton:Landroid/widget/Button;

.field private mProgressView:Landroid/view/View;

.field private final mTitleResId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlertDialog(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "titleResId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "titleResId"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    .line 46
    iput p2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mTitleResId:I

    .line 47
    return-void
.end method

.method private showProgressBar(Z)V
    .locals 3
    .param p1, "show"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 117
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 121
    :cond_0
    iget-object v2, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 124
    :goto_0
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 126
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNegativeButton:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 127
    return-void
.end method


# virtual methods
.method protected abstract getPermittedComponentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableComponentsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "availableComponentsList"
        }
    .end annotation

    .line 33
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "availableComponentsList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 72
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    .local p1, "availableComponentsList":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    nop

    .line 76
    invoke-virtual {p0, p1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->getResolveInfoListFromAvailableComponents(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 77
    .local v0, "availableComponentsResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    invoke-direct {v2, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 80
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->getPermittedComponentsList()Ljava/util/List;

    move-result-object v2

    .line 81
    .local v2, "permittedComponentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;

    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v0, v2}, Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 84
    .local v3, "availableComponentsInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 85
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;

    invoke-direct {v5, p0, v3}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$1;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 93
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->showProgressBar(Z)V

    .line 94
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;

    invoke-direct {v5, p0, v3}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$2;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v4, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    new-instance v5, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;

    invoke-direct {v5, p0}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask$3;-><init>(Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    return-void

    .line 73
    .end local v0    # "availableComponentsResolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v2    # "permittedComponentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "availableComponentsInfoArrayAdapter":Lcom/afwsamples/testdpc/policy/AvailableComponentsInfoArrayAdapter;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 51
    .local p0, "this":Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;, "Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask<TT;>;"
    iget-object v0, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    sget v1, Lcom/afwsamples/testdpc/R$layout;->available_components_list:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v3, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mTitleResId:I

    .line 54
    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 56
    const v3, 0x104000a

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v3, Lcom/afwsamples/testdpc/R$string;->allow_all:I

    .line 57
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 58
    const/high16 v3, 0x1040000

    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    .line 60
    sget v1, Lcom/afwsamples/testdpc/R$id;->progress_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mProgressView:Landroid/view/View;

    .line 61
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mListView:Landroid/widget/ListView;

    .line 63
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mPositiveButton:Landroid/widget/Button;

    .line 64
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x3

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNeutralButton:Landroid/widget/Button;

    .line 65
    iget-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->mNegativeButton:Landroid/widget/Button;

    .line 67
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/afwsamples/testdpc/policy/GetAvailableComponentsTask;->showProgressBar(Z)V

    .line 68
    return-void
.end method

.method protected abstract setPermittedComponentsList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permittedComponentsList"
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

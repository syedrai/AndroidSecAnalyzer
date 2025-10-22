.class public Lcom/afwsamples/testdpc/search/PolicySearchFragment;
.super Landroid/app/Fragment;
.source "PolicySearchFragment.java"

# interfaces
.implements Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;


# static fields
.field private static final MIN_LENGTH_TO_SEARCH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "PolicySearchFragment"


# instance fields
.field private mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

.field private mAvailableFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchView:Landroid/widget/SearchView;

.field private mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAdapter(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/SearchItemAdapter;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAvailableFragments(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAvailableFragments:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSqliteOpenHelper(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;
    .locals 0

    iget-object p0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdoSearchAsync(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->doSearchAsync(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method private doSearchAsync(Ljava/lang/String;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "query"
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 111
    invoke-virtual {v0, v1}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 112
    return-void
.end method

.method private getAvailableFragments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    invoke-static {}, Lcom/afwsamples/testdpc/search/IndexableFragments;->values()Ljava/util/List;

    move-result-object v0

    .line 138
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/afwsamples/testdpc/search/BaseIndexableFragment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v1, "availableFragments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;

    .line 140
    .local v3, "fragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->isAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 141
    iget-object v4, v3, Lcom/afwsamples/testdpc/search/BaseIndexableFragment;->fragmentName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .end local v3    # "fragment":Lcom/afwsamples/testdpc/search/BaseIndexableFragment;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    return-object v1
.end method

.method public static newInstance()Lcom/afwsamples/testdpc/search/PolicySearchFragment;
    .locals 1

    .line 34
    new-instance v0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;

    invoke-direct {v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;-><init>()V

    return-object v0
.end method


# virtual methods
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

    .line 39
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->setHasOptionsMenu(Z)V

    .line 41
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;->getInstance(Landroid/content/Context;)Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSqliteOpenHelper:Lcom/afwsamples/testdpc/search/PreferenceIndexSqliteOpenHelper;

    .line 42
    new-instance v0, Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-direct {v0, p0}, Lcom/afwsamples/testdpc/search/SearchItemAdapter;-><init>(Lcom/afwsamples/testdpc/search/SearchItemAdapter$OnItemClickListener;)V

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    .line 43
    invoke-direct {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getAvailableFragments()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAvailableFragments:Ljava/util/List;

    .line 44
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "menu",
            "inflater"
        }
    .end annotation

    .line 59
    sget v0, Lcom/afwsamples/testdpc/R$id;->action_show_search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 60
    .local v0, "showSearchMenu":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 63
    :cond_0
    sget v1, Lcom/afwsamples/testdpc/R$menu;->policy_search_menu:I

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 64
    sget v1, Lcom/afwsamples/testdpc/R$id;->action_search:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 65
    .local v1, "searchItem":Landroid/view/MenuItem;
    invoke-interface {v1}, Landroid/view/MenuItem;->expandActionView()Z

    .line 66
    invoke-interface {v1}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SearchView;

    iput-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSearchView:Landroid/widget/SearchView;

    .line 67
    iget-object v2, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mSearchView:Landroid/widget/SearchView;

    new-instance v3, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;

    invoke-direct {v3, p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$1;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 84
    new-instance v2, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;

    invoke-direct {v2, p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment$2;-><init>(Lcom/afwsamples/testdpc/search/PolicySearchFragment;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnActionExpandListener(Landroid/view/MenuItem$OnActionExpandListener;)Landroid/view/MenuItem;

    .line 97
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 50
    sget v0, Lcom/afwsamples/testdpc/R$layout;->search_result:I

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    .line 52
    .local v0, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 53
    iget-object v1, p0, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->mAdapter:Lcom/afwsamples/testdpc/search/SearchItemAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 54
    return-object v0
.end method

.method public onItemClick(Lcom/afwsamples/testdpc/search/PreferenceIndex;)V
    .locals 6
    .param p1, "preferenceIndex"    # Lcom/afwsamples/testdpc/search/PreferenceIndex;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceIndex"
        }
    .end annotation

    .line 118
    :try_start_0
    iget-object v0, p1, Lcom/afwsamples/testdpc/search/PreferenceIndex;->fragmentClass:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    .line 119
    .local v0, "fragment":Landroid/app/Fragment;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v1, "arguments":Landroid/os/Bundle;
    const-string v2, "preference_key"

    iget-object v3, p1, Lcom/afwsamples/testdpc/search/PreferenceIndex;->key:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/afwsamples/testdpc/search/PolicySearchFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 124
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/afwsamples/testdpc/R$id;->container:I

    .line 125
    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "search_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 127
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    nop

    .end local v0    # "fragment":Landroid/app/Fragment;
    .end local v1    # "arguments":Landroid/os/Bundle;
    goto :goto_1

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 131
    .local v0, "ex":Ljava/lang/ReflectiveOperationException;
    :goto_0
    const-string v1, "PolicySearchFragment"

    const-string v2, "Fail to create the target fragment: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    .end local v0    # "ex":Ljava/lang/ReflectiveOperationException;
    :goto_1
    return-void
.end method

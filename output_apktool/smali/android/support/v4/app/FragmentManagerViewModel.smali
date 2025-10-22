.class final Landroid/support/v4/app/FragmentManagerViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "FragmentManagerViewModel.java"


# static fields
.field private static final FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private static final TAG:Ljava/lang/String; = "FragmentManager"


# instance fields
.field private final mChildNonConfigs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/FragmentManagerViewModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHasBeenCleared:Z

.field private mHasSavedSnapshot:Z

.field private mIsStateSaved:Z

.field private final mRetainedFragments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateAutomaticallySaved:Z

.field private final mViewModelStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/lifecycle/ViewModelStore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Landroid/support/v4/app/FragmentManagerViewModel$1;

    invoke-direct {v0}, Landroid/support/v4/app/FragmentManagerViewModel$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "stateAutomaticallySaved"    # Z

    .line 85
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 64
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 68
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 86
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    .line 87
    return-void
.end method

.method private clearNonConfigStateInternal(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "destroyChildNonConfig"    # Z

    .line 197
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerViewModel;

    .line 198
    .local v0, "childNonConfig":Landroid/support/v4/app/FragmentManagerViewModel;
    if-eqz v0, :cond_1

    .line 200
    if-eqz p2, :cond_0

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v1, "clearList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, v0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    .local v3, "childWho":Ljava/lang/String;
    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigState(Ljava/lang/String;Z)V

    .line 205
    .end local v3    # "childWho":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v1    # "clearList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManagerViewModel;->onCleared()V

    .line 208
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/ViewModelStore;

    .line 212
    .local v1, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-eqz v1, :cond_2

    .line 213
    invoke-virtual {v1}, Landroidx/lifecycle/ViewModelStore;->clear()V

    .line 214
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :cond_2
    return-void
.end method

.method static getInstance(Landroidx/lifecycle/ViewModelStore;)Landroid/support/v4/app/FragmentManagerViewModel;
    .locals 2
    .param p0, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;

    .line 51
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, Landroid/support/v4/app/FragmentManagerViewModel;->FACTORY:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStore;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 53
    .local v0, "viewModelProvider":Landroidx/lifecycle/ViewModelProvider;
    const-class v1, Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentManagerViewModel;

    return-object v1
.end method


# virtual methods
.method addRetainedFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 111
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 112
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "Ignoring addRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    return-void

    .line 120
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating retained Fragments: Added "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_3
    return-void
.end method

.method clearNonConfigState(Landroid/support/v4/app/Fragment;Z)V
    .locals 2
    .param p1, "f"    # Landroid/support/v4/app/Fragment;
    .param p2, "destroyChildNonConfig"    # Z

    .line 182
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_0
    iget-object v0, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigStateInternal(Ljava/lang/String;Z)V

    .line 186
    return-void
.end method

.method clearNonConfigState(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "who"    # Ljava/lang/String;
    .param p2, "destroyChildNonConfig"    # Z

    .line 189
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing non-config state for saved state of Fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/v4/app/FragmentManagerViewModel;->clearNonConfigStateInternal(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 287
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 288
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 290
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/FragmentManagerViewModel;

    .line 292
    .local v2, "that":Landroid/support/v4/app/FragmentManagerViewModel;
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    .line 293
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 294
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 292
    :goto_0
    return v0

    .line 288
    .end local v2    # "that":Landroid/support/v4/app/FragmentManagerViewModel;
    :cond_3
    :goto_1
    return v1
.end method

.method findRetainedFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 1
    .param p1, "who"    # Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method getChildNonConfig(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManagerViewModel;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 164
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentManagerViewModel;

    .line 165
    .local v0, "childNonConfig":Landroid/support/v4/app/FragmentManagerViewModel;
    if-nez v0, :cond_0

    .line 166
    new-instance v1, Landroid/support/v4/app/FragmentManagerViewModel;

    iget-boolean v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v1, v2}, Landroid/support/v4/app/FragmentManagerViewModel;-><init>(Z)V

    move-object v0, v1

    .line 167
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_0
    return-object v0
.end method

.method getRetainedFragments()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getSnapshot()Landroid/support/v4/app/FragmentManagerNonConfig;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 263
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    return-object v1

    .line 266
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 267
    .local v0, "childNonConfigs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 268
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerViewModel;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentManagerViewModel;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerViewModel;->getSnapshot()Landroid/support/v4/app/FragmentManagerNonConfig;

    move-result-object v4

    .line 269
    .local v4, "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    if-eqz v4, :cond_1

    .line 270
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerViewModel;>;"
    .end local v4    # "childNonConfig":Landroid/support/v4/app/FragmentManagerNonConfig;
    :cond_1
    goto :goto_0

    .line 274
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 275
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    .line 276
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 277
    return-object v1

    .line 279
    :cond_3
    new-instance v1, Landroid/support/v4/app/FragmentManagerNonConfig;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    .line 280
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/HashMap;

    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2, v0, v3}, Landroid/support/v4/app/FragmentManagerNonConfig;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    .line 279
    return-object v1
.end method

.method getViewModelStore(Landroid/support/v4/app/Fragment;)Landroidx/lifecycle/ViewModelStore;
    .locals 3
    .param p1, "f"    # Landroid/support/v4/app/Fragment;

    .line 173
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/lifecycle/ViewModelStore;

    .line 174
    .local v0, "viewModelStore":Landroidx/lifecycle/ViewModelStore;
    if-nez v0, :cond_0

    .line 175
    new-instance v1, Landroidx/lifecycle/ViewModelStore;

    invoke-direct {v1}, Landroidx/lifecycle/ViewModelStore;-><init>()V

    move-object v0, v1

    .line 176
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 299
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->hashCode()I

    move-result v0

    .line 300
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 301
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 302
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method isCleared()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return v0
.end method

.method protected onCleared()V
    .locals 2

    .line 100
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCleared called for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    .line 104
    return-void
.end method

.method removeRetainedFragment(Landroid/support/v4/app/Fragment;)V
    .locals 4
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 151
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mIsStateSaved:Z

    const-string v1, "FragmentManager"

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 152
    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const-string v0, "Ignoring removeRetainedFragment as the state is already saved"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 158
    .local v0, "removed":Z
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {v2}, Landroid/support/v4/app/FragmentManager;->isLoggingEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating retained Fragments: Removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_3
    return-void
.end method

.method restoreFromSnapshot(Landroid/support/v4/app/FragmentManagerNonConfig;)V
    .locals 7
    .param p1, "nonConfig"    # Landroid/support/v4/app/FragmentManagerNonConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 227
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 228
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 229
    if-eqz p1, :cond_3

    .line 230
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v0

    .line 231
    .local v0, "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    if-eqz v0, :cond_1

    .line 232
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/Fragment;

    .line 233
    .local v2, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v2, :cond_0

    .line 234
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .end local v2    # "fragment":Landroid/support/v4/app/Fragment;
    :cond_0
    goto :goto_0

    .line 238
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManagerNonConfig;->getChildNonConfigs()Ljava/util/Map;

    move-result-object v1

    .line 239
    .local v1, "childNonConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    if-eqz v1, :cond_2

    .line 241
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 242
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    new-instance v4, Landroid/support/v4/app/FragmentManagerViewModel;

    iget-boolean v5, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    invoke-direct {v4, v5}, Landroid/support/v4/app/FragmentManagerViewModel;-><init>(Z)V

    .line 244
    .local v4, "childViewModel":Landroid/support/v4/app/FragmentManagerViewModel;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/FragmentManagerNonConfig;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerViewModel;->restoreFromSnapshot(Landroid/support/v4/app/FragmentManagerNonConfig;)V

    .line 245
    iget-object v5, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .end local v4    # "childViewModel":Landroid/support/v4/app/FragmentManagerViewModel;
    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManagerNonConfig;->getViewModelStores()Ljava/util/Map;

    move-result-object v2

    .line 249
    .local v2, "viewModelStores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;>;"
    if-eqz v2, :cond_3

    .line 250
    iget-object v3, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 253
    .end local v0    # "fragments":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/support/v4/app/Fragment;>;"
    .end local v1    # "childNonConfigs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/support/v4/app/FragmentManagerNonConfig;>;"
    .end local v2    # "viewModelStores":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroidx/lifecycle/ViewModelStore;>;"
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    .line 254
    return-void
.end method

.method setIsStateSaved(Z)V
    .locals 0
    .param p1, "isStateSaved"    # Z

    .line 95
    iput-boolean p1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mIsStateSaved:Z

    .line 96
    return-void
.end method

.method shouldDestroy(Landroid/support/v4/app/Fragment;)Z
    .locals 2
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .line 135
    iget-object v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 137
    return v1

    .line 139
    :cond_0
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mStateAutomaticallySaved:Z

    if-eqz v0, :cond_1

    .line 142
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasBeenCleared:Z

    return v0

    .line 146
    :cond_1
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mHasSavedSnapshot:Z

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FragmentManagerViewModel{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    const-string/jumbo v1, "} Fragments ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mRetainedFragments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 311
    .local v1, "fragmentIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/v4/app/Fragment;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-eqz v2, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 313
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 317
    :cond_1
    const-string v2, ") Child Non Config ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v2, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mChildNonConfigs:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 319
    .local v2, "childNonConfigIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 320
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 325
    :cond_3
    const-string v4, ") ViewModelStores ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object v4, p0, Landroid/support/v4/app/FragmentManagerViewModel;->mViewModelStores:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 327
    .local v4, "viewModelStoreIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 328
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 333
    :cond_5
    const/16 v3, 0x29

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

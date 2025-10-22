.class Landroid/support/v4/app/FragmentViewLifecycleOwner;
.super Ljava/lang/Object;
.source "FragmentViewLifecycleOwner.java"

# interfaces
.implements Landroidx/lifecycle/HasDefaultViewModelProviderFactory;
.implements Landroidx/savedstate/SavedStateRegistryOwner;
.implements Landroidx/lifecycle/ViewModelStoreOwner;


# instance fields
.field private mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

.field private final mFragment:Landroid/support/v4/app/Fragment;

.field private mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

.field private final mRestoreViewSavedStateRunnable:Ljava/lang/Runnable;

.field private mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

.field private final mViewModelStore:Landroidx/lifecycle/ViewModelStore;


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroidx/lifecycle/ViewModelStore;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "viewModelStore"    # Landroidx/lifecycle/ViewModelStore;
    .param p3, "restoreViewSavedStateRunnable"    # Ljava/lang/Runnable;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 51
    iput-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 58
    iput-object p1, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    .line 59
    iput-object p2, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    .line 60
    iput-object p3, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mRestoreViewSavedStateRunnable:Ljava/lang/Runnable;

    .line 61
    return-void
.end method


# virtual methods
.method public getDefaultViewModelCreationExtras()Landroidx/lifecycle/viewmodel/CreationExtras;
    .locals 5

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "application":Landroid/app/Application;
    iget-object v1, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 144
    .local v1, "appContext":Landroid/content/Context;
    :goto_0
    instance-of v2, v1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 145
    instance-of v2, v1, Landroid/app/Application;

    if-eqz v2, :cond_0

    .line 146
    move-object v0, v1

    check-cast v0, Landroid/app/Application;

    .line 147
    goto :goto_1

    .line 149
    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/content/ContextWrapper;

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    new-instance v2, Landroidx/lifecycle/viewmodel/MutableCreationExtras;

    invoke-direct {v2}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;-><init>()V

    .line 152
    .local v2, "extras":Landroidx/lifecycle/viewmodel/MutableCreationExtras;
    if-eqz v0, :cond_2

    .line 153
    sget-object v3, Landroidx/lifecycle/ViewModelProvider$AndroidViewModelFactory;->APPLICATION_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v2, v3, v0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 155
    :cond_2
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->SAVED_STATE_REGISTRY_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    iget-object v4, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 156
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->VIEW_MODEL_STORE_OWNER_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    invoke-virtual {v2, v3, p0}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 157
    iget-object v3, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 158
    sget-object v3, Landroidx/lifecycle/SavedStateHandleSupport;->DEFAULT_ARGS_KEY:Landroidx/lifecycle/viewmodel/CreationExtras$Key;

    iget-object v4, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroidx/lifecycle/viewmodel/MutableCreationExtras;->set(Landroidx/lifecycle/viewmodel/CreationExtras$Key;Ljava/lang/Object;)V

    .line 160
    :cond_3
    return-object v2
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 6

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    .line 112
    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    .line 114
    .local v0, "currentFactory":Landroidx/lifecycle/ViewModelProvider$Factory;
    iget-object v1, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 115
    iput-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 116
    return-object v0

    .line 119
    :cond_0
    iget-object v1, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    if-nez v1, :cond_3

    .line 120
    const/4 v1, 0x0

    .line 121
    .local v1, "application":Landroid/app/Application;
    iget-object v2, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 122
    .local v2, "appContext":Landroid/content/Context;
    :goto_0
    instance-of v3, v2, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_2

    .line 123
    instance-of v3, v2, Landroid/app/Application;

    if-eqz v3, :cond_1

    .line 124
    move-object v1, v2

    check-cast v1, Landroid/app/Application;

    .line 125
    goto :goto_1

    .line 127
    :cond_1
    move-object v3, v2

    check-cast v3, Landroid/content/ContextWrapper;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    .line 130
    :cond_2
    :goto_1
    new-instance v3, Landroidx/lifecycle/SavedStateViewModelFactory;

    iget-object v4, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    iget-object v5, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mFragment:Landroid/support/v4/app/Fragment;

    .line 133
    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v3, v1, v4, v5}, Landroidx/lifecycle/SavedStateViewModelFactory;-><init>(Landroid/app/Application;Landroidx/savedstate/SavedStateRegistryOwner;Landroid/os/Bundle;)V

    iput-object v3, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    .line 136
    .end local v1    # "application":Landroid/app/Application;
    .end local v2    # "appContext":Landroid/content/Context;
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mDefaultFactory:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-object v1
.end method

.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1

    .line 90
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentViewLifecycleOwner;->initialize()V

    .line 91
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;
    .locals 1

    .line 165
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentViewLifecycleOwner;->initialize()V

    .line 166
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->getSavedStateRegistry()Landroidx/savedstate/SavedStateRegistry;

    move-result-object v0

    return-object v0
.end method

.method public getViewModelStore()Landroidx/lifecycle/ViewModelStore;
    .locals 1

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentViewLifecycleOwner;->initialize()V

    .line 66
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mViewModelStore:Landroidx/lifecycle/ViewModelStore;

    return-object v0
.end method

.method handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "event"    # Landroidx/lifecycle/Lifecycle$Event;

    .line 99
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    .line 100
    return-void
.end method

.method initialize()V
    .locals 1

    .line 73
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    .line 75
    invoke-static {p0}, Landroidx/savedstate/SavedStateRegistryController;->create(Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/savedstate/SavedStateRegistryController;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    .line 76
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0}, Landroidx/savedstate/SavedStateRegistryController;->performAttach()V

    .line 77
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mRestoreViewSavedStateRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 79
    :cond_0
    return-void
.end method

.method isInitialized()Z
    .locals 1

    .line 85
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method performRestore(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 170
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performRestore(Landroid/os/Bundle;)V

    .line 171
    return-void
.end method

.method performSave(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outBundle"    # Landroid/os/Bundle;

    .line 174
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mSavedStateRegistryController:Landroidx/savedstate/SavedStateRegistryController;

    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistryController;->performSave(Landroid/os/Bundle;)V

    .line 175
    return-void
.end method

.method setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V
    .locals 1
    .param p1, "state"    # Landroidx/lifecycle/Lifecycle$State;

    .line 95
    iget-object v0, p0, Landroid/support/v4/app/FragmentViewLifecycleOwner;->mLifecycleRegistry:Landroidx/lifecycle/LifecycleRegistry;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    .line 96
    return-void
.end method
